#!/bin/sh

while :; do
  while ! grep -q ping /shared/msg; do
    sleep 0.5
  done

  echo "[pong] Received: ping"
  echo "pong" >> /shared/msg
  echo "[pong] Sent: pong"
  sleep 1
done

