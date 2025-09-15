TITLE=$(hyprctl activewindow -j)

if [[ "$TITLE" != "null" ]]; then
	echo "$TITLE"
fi
