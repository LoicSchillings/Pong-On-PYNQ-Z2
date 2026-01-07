#ifndef VIDEO_H
#define VIDEO_H

#include <stdint.h>

/* Initialize video subsystem (VDMA already configured elsewhere) */
void video_init(void);

/* Clear entire screen with solid color */
void video_clear(uint8_t r, uint8_t g, uint8_t b);

/* Draw filled rectangle */
void video_draw_rect(int x, int y, int w, int h, uint8_t r, uint8_t g, uint8_t b);

/* Flush framebuffer cache so VDMA sees updates */
void video_present(void);

#endif /* VIDEO_H */
