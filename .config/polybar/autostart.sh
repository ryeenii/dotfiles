#!/usr/bin/env bash
killall -q polybar
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log /tmp/polybar3.log /tmp/polybar4.log
polybar rwspace >>/tmp/polybar1.log 2>&1 &
polybar rclock >>/tmp/polybar2.log 2>&1 &
polybar rbat >>/tmp/polybar3.log 2>&1 &
polybar rdate >>/tmp/polybar4.log 2>&1 &
echo "Bars up."
