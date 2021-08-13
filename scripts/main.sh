 #!/bin/sh

OPTIONS=(
 "1) youtube-dl"
 "2) Power options"
 "3) Quit"
)


CHOICE=$(printf '%s\n' "${OPTIONS[@]}" | rofi -dmenu -p 'What would you like to do')

if [[ "$CHOICE" =~ "1" ]]; then
    exec ~/.config/scripts/youtube-dl.sh
elif [[ "$CHOICE" =~ "2" ]]; then
    exec ~/.config/scripts/shutdown.sh 
else
    echo "Program terminated" && exit 1
fi
