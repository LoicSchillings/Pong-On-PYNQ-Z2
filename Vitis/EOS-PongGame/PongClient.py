import socket
import time
import keyboard
import sys

PYNQ_IP = "192.168.137.10"
PYNQ_PORT = 5001

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

SEND_INTERVAL = 0.1  # 200 ms

print("Pong UDP client started")
print("Controls:")
print("  Player 1: W/S + A (ready)")
print("  Player 2: I/K + A (ready)")
print("  E = reset")
print("Ctrl+C to quit")

try:
    while True:
        # -------- Player 1 --------
        if keyboard.is_pressed('w'):
            sock.sendto("1W".encode('ascii'), (PYNQ_IP, PYNQ_PORT))
        if keyboard.is_pressed('s'):
            sock.sendto("1S".encode('ascii'), (PYNQ_IP, PYNQ_PORT))
        if keyboard.is_pressed('a'):
            sock.sendto("1A".encode('ascii'), (PYNQ_IP, PYNQ_PORT))

        # -------- Player 2 --------
        if keyboard.is_pressed('8'):
            sock.sendto("2W".encode('ascii'), (PYNQ_IP, PYNQ_PORT))
        if keyboard.is_pressed('5'):
            sock.sendto("2S".encode('ascii'), (PYNQ_IP, PYNQ_PORT))
        if keyboard.is_pressed('4'):
            sock.sendto("2A".encode('ascii'), (PYNQ_IP, PYNQ_PORT))

        # -------- Global --------
        if keyboard.is_pressed('e'):
            sock.sendto("1E".encode('ascii'), (PYNQ_IP, PYNQ_PORT))
            sock.sendto("2E".encode('ascii'), (PYNQ_IP, PYNQ_PORT))

        time.sleep(SEND_INTERVAL)

except KeyboardInterrupt:
    print("\nExiting client...")
finally:
    sock.close()
    sys.exit(0)
