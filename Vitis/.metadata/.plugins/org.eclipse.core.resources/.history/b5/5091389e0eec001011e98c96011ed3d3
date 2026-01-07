#include "video.h"

#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_types.h"
#include "xaxivdma.h"

/* ------------ CONFIG (match your HDMI working setup) ------------ */

#define VDMA_DEV_ID       XPAR_AXI_VDMA_0_DEVICE_ID

#define FRAME_WIDTH       1280
#define FRAME_HEIGHT      720

#define BYTES_PER_PIXEL   3
#define STRIDE_BYTES      (FRAME_WIDTH * BYTES_PER_PIXEL)

/* Must match what worked for you before */
#define FB0_ADDR          0x10000000U
#define NUM_FRAME_BUFS    3

/* --------------------------------------------------------------- */

static XAxiVdma Vdma;
static volatile uint8_t *fb = (uint8_t *)FB0_ADDR;

static int start_vdma_mm2s(uint32_t fb0_addr)
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

    XAxiVdma_DmaSetup ReadCfg;
    ReadCfg.VertSizeInput       = FRAME_HEIGHT;
    ReadCfg.HoriSizeInput       = FRAME_WIDTH * BYTES_PER_PIXEL;
    ReadCfg.Stride              = STRIDE_BYTES;
    ReadCfg.FrameDelay          = 0;
    ReadCfg.EnableCircularBuf   = 1;
    ReadCfg.EnableSync          = 0;
    ReadCfg.PointNum            = 0;
    ReadCfg.EnableFrameCounter  = 0;
    ReadCfg.FixedFrameStoreAddr = 0;

    Status = XAxiVdma_DmaConfig(&Vdma, XAXIVDMA_READ, &ReadCfg);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: XAxiVdma_DmaConfig (READ) failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    uint32_t FrameBufAddr[NUM_FRAME_BUFS];
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

    Status = XAxiVdma_StartParking(&Vdma, 0, XAXIVDMA_READ);
    if (Status != XST_SUCCESS) {
        xil_printf("ERROR: XAxiVdma_StartParking failed: %d\r\n", Status);
        return XST_FAILURE;
    }

    return XST_SUCCESS;
}

void video_init(void)
{
    xil_printf("video_init(): starting VDMA...\r\n");

    /* In case your project doesn’t enable cache elsewhere */
    Xil_ICacheEnable();
    Xil_DCacheEnable();

    if (start_vdma_mm2s(FB0_ADDR) != XST_SUCCESS) {
        xil_printf("video_init(): VDMA start FAILED\r\n");
        while (1) { }
    }

    /* Clear to black */
    video_clear(0, 0, 0);
    video_present();

    xil_printf("video_init(): ok\r\n");
}

/* NOTE: your board shows RGB as GBR, so we write bytes as G,B,R */
void video_clear(uint8_t r, uint8_t g, uint8_t b)
{
    for (int y = 0; y < FRAME_HEIGHT; y++) {
        uint32_t row = (uint32_t)y * (uint32_t)STRIDE_BYTES;
        for (int x = 0; x < FRAME_WIDTH; x++) {
            uint32_t p = row + (uint32_t)x * (uint32_t)BYTES_PER_PIXEL;
            fb[p + 0] = g;  /* G */
            fb[p + 1] = b;  /* B */
            fb[p + 2] = r;  /* R */
        }
    }
}

void video_draw_rect(int x, int y, int w, int h,
                     uint8_t r, uint8_t g, uint8_t b)
{
    if (w <= 0 || h <= 0) return;

    /* clip */
    if (x < 0) { w += x; x = 0; }
    if (y < 0) { h += y; y = 0; }
    if (x + w > FRAME_WIDTH)  w = FRAME_WIDTH - x;
    if (y + h > FRAME_HEIGHT) h = FRAME_HEIGHT - y;
    if (w <= 0 || h <= 0) return;

    for (int j = 0; j < h; j++) {
        uint32_t row = (uint32_t)(y + j) * (uint32_t)STRIDE_BYTES;
        for (int i = 0; i < w; i++) {
            uint32_t p = row + (uint32_t)(x + i) * (uint32_t)BYTES_PER_PIXEL;
            fb[p + 0] = g;
            fb[p + 1] = b;
            fb[p + 2] = r;
        }
    }
}

void video_present(void)
{
    Xil_DCacheFlushRange((UINTPTR)fb, (FRAME_HEIGHT * STRIDE_BYTES));
}
