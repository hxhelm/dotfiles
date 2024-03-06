#!/bin/bash

hide_listener=(
    script="$PLUGIN_DIR/toggle_bar.sh"
    updates=on
)

sketchybar --add item hide_listener center \
           --set hide_listener "${hide_listener[@]}" \
           --add event toggle_sketchybar \
           --subscribe hide_listener toggle_sketchybar

