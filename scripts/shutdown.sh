#!/bin/sh

OPTIONS=(
    "1) Shutdown"
    "2) Suspend"
    "3) Hibernate"
    "4) Restart"
    "5) Quit"
)

CHOICE=$(printf '%s\n' "${OPTIONS[@]}" | rofi -dmenu -p 'What would you like to do')

if [[ "$CHOICE" =~ "1" ]]; then
    systemctl shutdown now
elif [[ "$CHOICE" =~ "2" ]]; then
    systemctl suspend
elif [[ "$CHOICE" =~ "3" ]]; then
    systemctl hibernate
elif [[ "$CHOICE" =~ "4" ]]; then
    systemctl reboot
else
    echo "Program terminated" && exit 1
fi
