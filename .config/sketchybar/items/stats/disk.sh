#!/bin/bash

disk=(
	icon="$DISK"
    icon.font="$FONT:Bold:18.0"
    icon.padding_right=0
	update_freq=60
    mach_helper="$STATS_HELPER"
    padding_right=6
)

sketchybar  --add item disk.percent right \
            --set disk.percent "${disk[@]}"

