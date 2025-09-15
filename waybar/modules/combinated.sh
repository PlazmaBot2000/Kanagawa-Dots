bar="▁▂▃▄▅▆▇█"
dict="s/;//g;"

i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

cfg="/home/plazma/.config/waybar/modules/cava/cava.config"
cava -p $cfg | while read -r line; do
	if [ "$(echo $line | sed $dict)" = "▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁" ]; then
    	TITLE=$(hyprctl activewindow -j | jq -r '.title')
		CLASS=$(hyprctl activewindow -j | jq -r '.initialTitle')
		if [[ "$TITLE" != "null" ]]; then
			if [[ "$CLASS" == "kitty"  ]]; then
				echo "$CLASS $TITLE"
			else
				echo "$TITLE"
			fi
		else
			echo "" 
		fi
	else
        echo $line | sed $dict
	fi
done
