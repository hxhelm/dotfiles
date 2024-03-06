stats_minimizer=(
	icon=
	icon.font="$FONT:Regular:12.0"
	background.padding_left=10
	background.padding_right=8
	label.drawing=off
	click_script='sketchybar --trigger toggle_stats'
	icon.color="$WHITE"
)

sketchybar  --add item stats_minimizer right \
            --set stats_minimizer "${stats_minimizer[@]}"
