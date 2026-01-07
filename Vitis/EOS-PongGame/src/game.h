#ifndef GAME_H
#define GAME_H

#include "game_state.h"

/* Commands coming from UDP */
typedef enum {
    CMD_NONE = 0,
    CMD_P1_UP,
    CMD_P1_DOWN,
    CMD_P2_UP,
    CMD_P2_DOWN,
    CMD_P1_READY,   /* player 1 pressed A */
    CMD_P2_READY,   /* player 2 pressed A */
    CMD_RESET        /* E to reset game */
} game_cmd_t;

void game_init(void);
void game_update(void);
void game_apply_command(game_cmd_t cmd);

void game_reset_full(void);
void game_reset_ball(int dir); /* dir = +1 or -1 */

#endif
