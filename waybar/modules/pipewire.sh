#sleep 0.05 && echo $(pamixer --get-mute)$(pamixer --get-volume) | sed 's/true/ /' | sed 's/false/) /'
#ICON=$(echo $(pamixer --get-mute | sed 's/true/  /' | sed 's/false/) /' ) )
TOOLTIP=$(echo $(pamixer --get-volume))




if $(pamixer --get-mute)
then
	ICON=" " 
elif (( $TOOLTIP > 66 ))
then
    ICON=" "
elif (( "$TOOLTIP" < 66 )) && (( "$TOOLTIP" > 33 ))
then
	ICON=" "
else
    ICON=" "
fi



JSON=$(echo "{\"text\":\"${ICON}\", \"tooltip\":\"${TOOLTIP}\"}" | sed 's/&/\&amp;/g')

echo "${JSON}"
