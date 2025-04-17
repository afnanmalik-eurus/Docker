#!/bin/sh

while :; do
  echo "ping" >> /shared/msg
  echo "[ping] Sent: ping"

  while ! grep -q pong /shared/msg; do
    sleep 0.5
  done

  echo "[ping] Received: pong"
  sleep 1
done

