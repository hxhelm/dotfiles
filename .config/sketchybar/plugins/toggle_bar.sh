#!/bin/bash

# Function to toggle the SKETCHYBAR_HIDDEN value
toggle_sketchybar_hidden() {
    SKETCHYBAR_HIDDEN=$(sketchybar --query bar | jq -r .hidden)
    if [ "$SKETCHYBAR_HIDDEN" = "on" ]; then
        SKETCHYBAR_HIDDEN="off"
    else
        SKETCHYBAR_HIDDEN="on"
    fi
    sketchybar --bar hidden=$SKETCHYBAR_HIDDEN
    echo "$SKETCHYBAR_HIDDEN" > "/tmp/sketchybar_state"
}

# Toggle the SKETCHYBAR_HIDDEN value
toggle_sketchybar_hidden

# Toggle yabai external_bar configuration based on SKETCHYBAR_HIDDEN
if [ "$SKETCHYBAR_HIDDEN" = "off" ]; then
    yabai -m config external_bar all:40:8
else
    yabai -m config external_bar all:8:8
fi

