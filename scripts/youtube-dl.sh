#!/bin/sh

OPTIONS=(
    "1) Download a video"
    "2) Download audio from video"
    "3) Quit"
)

READURL() {
URL=$(echo "" | rofi -dmenu -p "Enter the URL")
}

CHOICE=$(printf '%s\n' "${OPTIONS[@]}" | rofi -dmenu -p 'What would you like to do')

if [[ "$CHOICE" =~ "1" ]]; then
    READURL
    youtube-dl -o ~ "~/Videos/youtube-dl/%(title)s.%(ext)s" $URL && notify-send "youtube-dl" "Your video has been downloaded"

elif [[ "$CHOICE" =~ 2 ]]; then
    READURL
    youtube-dl --add-metadata -x -f bestaudio -o "~/Music/%(title)s.%(ext)s" $URL && notify-send "youtube-dl" "Your audio has been downloaded"

else
    echo "Program terminated" && exit 1
fi
