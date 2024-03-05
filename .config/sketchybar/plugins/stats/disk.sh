#!/bin/bash

sketchybar -m --set "$NAME" label="$(df -H | grep -E '^(/dev/disk2s5).' | awk '{ printf ("%s\n", $5) }')"

