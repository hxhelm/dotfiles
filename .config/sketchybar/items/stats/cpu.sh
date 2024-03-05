#!/bin/bash

cpu_percent=(
    label=CPU%
    icon="$CPU"
    icon.color="$BLUE"
    icon.font="$FONT:Black:16.0"
    update_freq=4
    mach_helper="$STATS_HELPER"
)

sketchybar --add item cpu.percent right          \
           --set cpu.percent "${cpu_percent[@]}" 
           
