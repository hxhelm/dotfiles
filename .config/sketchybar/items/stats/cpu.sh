#!/bin/bash

cpu_percent=(
  icon="$CPU"
  icon.font="SF Pro:Bold:16.0"
  icon.padding_right=0
  update_freq=4
  mach_helper="$STATS_HELPER"
)

sketchybar --add item cpu.percent right \
  --set cpu.percent "${cpu_percent[@]}"
