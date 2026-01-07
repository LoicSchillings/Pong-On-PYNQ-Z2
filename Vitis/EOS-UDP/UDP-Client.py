import socket
import time

PYNQ_IP = "192.168.137.10"   # CHANGE THIS
PYNQ_PORT = 5001           # Default UDP perf server port

sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

print("Sending UDP packets to", PYNQ_IP)

count = 0
while True:
    message = f"A".encode()
    sock.sendto(message, (PYNQ_IP, PYNQ_PORT))
    print("Sent:", message)
    time.sleep(1)
