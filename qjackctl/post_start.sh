#!/bin/bash

pactl unload-module module-jack-sink &
pactl unload-module module-jack-source &

sleep 1

pactl load-module module-jack-sink &
pactl load-module module-jack-source &

pactl set-default-sink jack_out
pactl set-default-source jack_in

