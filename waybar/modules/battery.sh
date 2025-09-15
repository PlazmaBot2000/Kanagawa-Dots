battery="BAT0"
status=$(cat /sys/class/power_supply/$battery/status)
capacity=$(cat /sys/class/power_supply/$battery/capacity)
values=(10 30 50 70 90)
icons=(" " " " " " " " " ")
charging_icon=""
full_icon=""
icon=""


if [ "$status" = "Charging" ]; then
    icon=$charging_icon
elif [ "$status" = "Full" ]; then
    icon=$full_icon
else
for i in {0..4}; do
    if [ "$capacity" -le "${values[$i]}" ] && [ "$result" = "" ]; then
        icon=${icons[$i]}
        break
    fi
done
fi
JSON=$(echo "{\"text\":\"${icon} \", \"tooltip\":\"${capacity}\"}" | sed 's/&/\&amp;/g')

echo "${JSON}"
