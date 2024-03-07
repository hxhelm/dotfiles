#!/bin/bash

memory=(
	icon="$MEMORY"
	icon.font="$FONT:Black:18.0"
    icon.padding_right=0
	update_freq=15
    mach_helper="$STATS_HELPER"   
    padding_right=6
)

sketchybar --add item memory.percent right \
           --set memory.percent "${memory[@]}"

