bar="▁▂▃▄▅▆▇█"
dict="s/;//g;"

i=0
while [ $i -lt ${#bar} ]
do
    dict="${dict}s/$i/${bar:$i:1}/g;"
    i=$((i=i+1))
done

cfg="/home/plazma/.config/waybar/cava.config"
cava -p $cfg | while read -r line; do
	if [ "$(echo $line | sed $dict)" = "▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁▁" ]; then
    	echo ""
	else
        echo $line | sed $dict
	fi
done
