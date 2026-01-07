/******************************************************************************
 * PYNQ-Z2 HDMI VDMA test: solid ORANGE screen
 *
 * Your pipeline:
 *   DDR framebuffer -> AXI VDMA (MM2S/READ) -> AXI4-Stream Video -> rgb2dvi -> HDMI
 *
 * IMPORTANT:
 * - Your observed channel mapping is GBR (not RGB):
 *     R variable shows GREEN, G shows BLUE, B shows RED
 *   So we write pixels in byte order: G, B, R
 *
 * Assumptions:
 * - VDMA MM2S is used (READ channel only)
 * - Video timing / clocks (VTC, v_axi4s_vid_out, etc.) are already correct (720p, 74.25 MHz)
 *
 * Build: Standalone or FreeRTOS (no RTOS APIs used)
 ******************************************************************************/

#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xaxivdma.h"

/* ---------------------- USER CONFIG ---------------------- */

/* VDMA device id */
#define VDMA_DEV_ID       XPAR_AXI_VDMA_0_DEVICE_ID

/* Video mode */
#define FRAME_WIDTH       1280
#define FRAME_HEIGHT      720

/* 24-bit color = 3 bytes per pixel */
#define BYTES_PER_PIXEL   3
#define STRIDE_BYTES      (FRAME_WIDTH * BYTES_PER_PIXEL)

/* Framebuffer base in DDR (must be valid and aligned) */
#define FB0_ADDR          0x10000000U

/* Number of frame buffers configured in the VDMA IP (yours is 3) */
#define NUM_FRAME_BUFS    3

/* --------------------------------------------------------- */

static XAxiVdma Vdma;

/* Pack a pixel for YOUR pipeline's observed byte order: G, B, R */
static inline void write_pixel_gbr(volatile u8 *fb, u32 byte_index, u8 r, u8 g, u8 b)
{
    /* HDMI shows:
       - R variable -> GREEN channel on screen
       - G variable -> BLUE channel on screen
       - B variable -> RED channel on screen
       Therefore framebuffer byte order is: G, B, R
    */
    fb[byte_index + 0] = g;
    fb[byte_index + 1] = b;
    fb[byte_index + 2] = r;
}

static int start_vdma_mm2s(u32 fb0_addr)
{
    int Status;
    XAxiVdma_Config *CfgPtr;

    CfgPtr = XAxiVdma_LookupConfig(VDMA_DEV_ID);
    if (!CfgPtr) {
        xil_printf("ERROR: XAxiVdma_LookupConfig failed\r\n");
        return XST_FAILURE;
    }

    Status = XAxiVdma_CfgInitialize(&Vdma, CfgPtr, CfgPtr->BaseAddress);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: XAxiVdma_CfgInitialize failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    /* Configure MM2S (READ) channel */
    XAxiVdma_DmaSetup ReadCfg;
    ReadCfg.VertSizeInput       = FRAME_HEIGHT;
    ReadCfg.HoriSizeInput       = FRAME_WIDTH * BYTES_PER_PIXEL;
    ReadCfg.Stride              = STRIDE_BYTES;
    ReadCfg.FrameDelay          = 0;
    ReadCfg.EnableCircularBuf   = 1;  /* keep running */
    ReadCfg.EnableSync          = 0;
    ReadCfg.PointNum            = 0;
    ReadCfg.EnableFrameCounter  = 0;
    ReadCfg.FixedFrameStoreAddr = 0;

    Status = XAxiVdma_DmaConfig(&Vdma, XAXIVDMA_READ, &ReadCfg);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: XAxiVdma_DmaConfig (READ) failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    /* Framebuffer addresses for MM2S
       NOTE: These must match your VDMA "Frame Store" count. */
    static u32 FrameBufAddr[NUM_FRAME_BUFS];
    FrameBufAddr[0] = fb0_addr;
    FrameBufAddr[1] = fb0_addr + (FRAME_HEIGHT * STRIDE_BYTES);
    FrameBufAddr[2] = fb0_addr + (2U * FRAME_HEIGHT * STRIDE_BYTES);

    Status = XAxiVdma_DmaSetBufferAddr(&Vdma, XAXIVDMA_READ, FrameBufAddr);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: VDMA buffer address set failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    Status = XAxiVdma_DmaStart(&Vdma, XAXIVDMA_READ);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: XAxiVdma_DmaStart (READ) failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    /* Park on frame 0 (keeps output stable) */
    Status = XAxiVdma_StartParking(&Vdma, 0, XAXIVDMA_READ);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: XAxiVdma_StartParking failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

static void fill_screen_orange(u32 fb_addr)
{
    volatile u8 *fb = (volatile u8 *)fb_addr;

    /* Orange in normal RGB terms */
    const u8 R = 255;
    const u8 G = 165;
    const u8 B = 0;

    for (int y = 0; y < FRAME_HEIGHT; y++) {
        u32 row = (u32)y * (u32)STRIDE_BYTES;
        for (int x = 0; x < FRAME_WIDTH; x++) {
            u32 p = row + (u32)x * (u32)BYTES_PER_PIXEL;
            write_pixel_gbr(fb, p, R, G, B);
        }
    }

    /* Flush cache so VDMA sees the updated framebuffer */
    Xil_DCacheFlushRange((UINTPTR)fb_addr, (FRAME_HEIGHT * STRIDE_BYTES));
}

int main(void)
{
    xil_printf("\r\nVDMA HDMI ORANGE test starting...\r\n");

    Xil_ICacheEnable();
    Xil_DCacheEnable();

    xil_printf("Starting VDMA (MM2S/READ)...\r\n");
    if (start_vdma_mm2s(FB0_ADDR) != XST_SUCCESS) {
        xil_printf("VDMA FAILED\r\n");
        while (1) { }
    }

    xil_printf("Filling framebuffer with ORANGE...\r\n");
    fill_screen_orange(FB0_ADDR);

    xil_printf("Done. Monitor should be solid ORANGE.\r\n");

    while (1) {
        /* idle */
    }

    return 0;
}
