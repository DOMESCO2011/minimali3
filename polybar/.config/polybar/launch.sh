#!/usr/bin/env bash

# Alapértelmezett bar leállítása
killall -q polybar

# Várj, amíg a folyamatok leállnak
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

# Polybar indítása (A 'main' helyére írd azt, ami a configodban a [bar/valami] résznél van!)
polybar main &

echo "Polybar elindítva..."
