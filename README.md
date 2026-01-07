# Pong on PYNQ-Z2 (HDMI + UDP)

## Project Overview
This project implements a **two-player Pong game** running on a **PYNQ-Z2 board**.  
The game is displayed over **HDMI**, while both players control their paddles using **UDP packets** sent from their laptops (Python client).

The goal of the project was to combine:
- Programmable video output (HDMI)
- Networking (UDP using lwIP)
- Real-time game logic
- FreeRTOS task scheduling

All game logic runs on the **ARM Cortex-A9 (PS)**, while video output is handled through **VDMA in the PL**.

---

## Features
- HDMI video output (720p)
- Pong game with:
  - Two paddles
  - Ball physics
  - Collision detection
  - Score system (first to 5 wins)
- Heads-Up Display (HUD):
  - “Score 5 to win”
  - Player readiness indicators
  - Game over state
- Two players connected via UDP
- FreeRTOS-based architecture
- Python client for keyboard input

---

## Hardware & Tools
**Hardware**
- PYNQ-Z2
- HDMI monitor
- Ethernet connection

**Software**
- Vivado (hardware design & bitstream)
- Vitis 2024.x
- FreeRTOS
- lwIP (UDP socket mode)
- Python 3 (client)

---

## System Architecture
- **PL (Programmable Logic)**
  - AXI VDMA
  - AXI4-Stream to Video Out
  - rgb2dvi (TMDS output)

- **PS (Processing System)**
  - FreeRTOS
  - UDP server (lwIP)
  - Game logic & rendering

### Tasks
- **UDP Task**
  - Receives packets like `"1W"` or `"2S"`
  - Converts them into game commands
- **Game Task**
  - Applies player input
  - Updates game state
  - Renders the frame (~60 FPS)

---

## Controls
### Player Controls (via UDP)
| Command | Action |
|------|------|
| `1W` | Player 1 up |
| `1S` | Player 1 down |
| `2W` | Player 2 up |
| `2S` | Player 2 down |
| `1A` | Player 1 ready |
| `2A` | Player 2 ready |
| `E`  | Reset game |

---

## Python Client
A Python script is used to:
- Capture keyboard input
- Send UDP packets to the PYNQ board

Required Python package:
```bash
pip install keyboard
