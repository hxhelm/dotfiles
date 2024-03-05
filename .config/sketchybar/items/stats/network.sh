network_down=(
	y_offset=-7
	icon="$NETWORK_DOWN"
    icon.font="$FONT:Bold:12.0"
	icon.color="$GREEN"
	icon.highlight_color="$BLUE"
	update_freq=1
)

network_up=(
	background.padding_right=-95
	y_offset=7
	icon="$NETWORK_UP"
	icon.font="$FONT:Bold:12.0"
	icon.color="$GREEN"
	icon.highlight_color="$BLUE"
	update_freq=1
	script="$PLUGIN_DIR/stats/network.sh"
)

sketchybar 	--add item network.down right \
			--set network.down "${network_down[@]}"	\
			--add item network.up right	\
			--set network.up "${network_up[@]}"
