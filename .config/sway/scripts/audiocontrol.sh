volume_current=$(pamixer --get-volume)
status=$(pamixer --get-mute)
case $1 in
    "+")
    echo $1 
        pamixer -i 5
        dunstify -a "audio" -t 2000 -r 1 -u critical $volume_current
    ;;
    "-")
    echo $1 
        pamixer -d 5
        dunstify -a "audio" -t 2000 -r 1 -u critical $volume_current
    ;;
    "mute")
    pamixer -t
        dunstify -a "audio" -t 2000 -r 1 -u critical $status
    ;;
esac
