brightness_max=$(brightnessctl max)
brightness_current=$(brightnessctl get)
case $1 in
    "+")
    echo $1 
        brightnessctl set 5%+
        dunstify -a "brightnessctl" -t 2000 -r 1 -u critical  $((brightness_current * 100 / brightness_max))
        
    ;;
    "-")
    echo $1 
        brightnessctl set 5%-
        dunstify -a "brightnessctl" -t 2000 -r 1 -u critical $((brightness_current * 100 / brightness_max))
    ;;
esac
