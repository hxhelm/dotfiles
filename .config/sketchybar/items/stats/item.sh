#!/bin/bash

source "$PLUGIN_DIR/stats/events/toggle_stats.sh"

source "$ITEM_DIR/stats/stats-minimizer.sh"
source "$ITEM_DIR/stats/cpu.sh"
source "$ITEM_DIR/stats/memory.sh"

stats=(
  background.color=0x22000000
  background.corner_radius=4
  background.height=24
)

sketchybar --add bracket stats cpu.percent \
  memory.percent \
  stats_minimizer

sketchybar --set stats "${stats[@]}"
