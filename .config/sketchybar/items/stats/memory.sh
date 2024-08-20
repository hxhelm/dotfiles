#!/bin/bash

memory=(
  icon="$MEMORY"
  icon.font="$FONT:Black:16.0"
  icon.padding_right=0
  update_freq=15
  mach_helper="$STATS_HELPER"
  padding_right=6
  # memory is the leftmost item in the stats section, so we add
  # padding to keep a symmetrical look
  padding_left=4
)

sketchybar --add item memory.percent right \
  --set memory.percent "${memory[@]}"
