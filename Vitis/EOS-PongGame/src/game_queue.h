#ifndef GAME_QUEUE_H
#define GAME_QUEUE_H

#include "FreeRTOS.h"
#include "queue.h"
#include "game.h"

/* Global command queue */
extern QueueHandle_t game_cmd_queue;

#endif
