#!/bin/bash

clock=(
  label.width=45
  label.align=right
  update_freq=30
  script="$PLUGIN_DIR/clock.sh"
)

sketchybar --add item clock right    \
           --set clock "${clock[@]}" \
           --subscribe clock system_woke
