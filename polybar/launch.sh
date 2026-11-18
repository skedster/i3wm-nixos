#!/usr/bin/env bash

pkill polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

wal -R -q 2>/dev/null || true
sleep 0.2

export I3SOCK=$(i3 --get-socketpath)

polybar main &
polybar laptop &
