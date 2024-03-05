#!/bin/bash

memory=(
	background.padding_left=0
	icon="$MEMORY"
	icon.font="$FONT:Black:16.0"
	icon.color="$GREEN"
	update_freq=15
    mach_helper="$STATS_HELPER"   
)

sketchybar --add item memory.percent right \
           --set memory.percent "${memory[@]}"

