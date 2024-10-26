#!/bin/zsh

LAT=35.0116
LON=135.7681
TEMP_LOW=2500
TEMP_HIGH=6500

request=$(curl -s "https://api.sunrise-sunset.org/json?lat=$LAT&lng=$LON&formatted=0")
sunrise=$(date -d $(jq -r '.results.sunrise' <<< "$request") +%s)
sunset=$(date -d $(jq -r '.results.sunset' <<< "$request") +%s)
now=$(date +%s)

if (( now >= sunrise && now <= sunset )); then
  killall wlsunset &>/dev/null
else
  if ! pgrep -x "wlsunset" &>/dev/null; then
    wlsunset -l $LAT -L $LON -t $TEMP_LOW -T $TEMP_HIGH
  fi
fi

if pgrep -x "wlsunset" &>/dev/null; then
  echo ""
else
  echo ""
fi