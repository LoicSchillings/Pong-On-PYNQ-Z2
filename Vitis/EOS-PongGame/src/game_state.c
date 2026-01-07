#include "game_state.h"

/* The ONLY definition of the global game state */
game_state_t game = {
    .p1 = { .y = 0 },
    .p2 = { .y = 0 },
    .ball = { .x = 0, .y = 0, .vx = 0, .vy = 0 },
    .score_p1 = 0,
    .score_p2 = 0,
    .p1_ready = 0,
    .p2_ready = 0,
    .mode = GAME_WAIT_START
};
