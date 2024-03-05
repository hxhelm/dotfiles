#!/bin/bash

disk=(
	icon="$DISK"
	icon.color="$ORANGE"
    icon.font="$FONT:Bold:16.0"
	update_freq=60
    mach_helper="$STATS_HELPER"
)

sketchybar  --add item disk.percent right \
            --set disk.percent "${disk[@]}"

