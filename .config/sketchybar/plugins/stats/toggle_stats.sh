#!/bin/bash

stats=(
	cpu.percent
	memory.percent
	disk.percent
)

hide_stats() {
	args=()
	for item in "${stats[@]}"; do
		args+=(--set "$item" drawing=off)
	done

	sketchybar "${args[@]}" \
		--set stats_minimizer \
		icon=
}

show_stats() {
	args=()
	for item in "${stats[@]}"; do
		args+=(--set "$item" drawing=on)
	done

	sketchybar "${args[@]}" \
		--set stats_minimizer \
		icon=
}

toggle_stats() {
	state=$(sketchybar --query stats_minimizer | jq -r .icon.value)

	case $state in
	"")
		show_stats
		;;
	"")
		hide_stats
		;;
	esac
}

case "$SENDER" in
"hide_stats")
	hide_stats
	;;
"show_stats")
	show_stats
	;;
"toggle_stats")
	toggle_stats
	;;
esac
