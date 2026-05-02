#!/usr/bin/env bash

## Finaliza las instancias de bar en ejecución
killall -q polybar

## Espera hasta que los procesos se hayan cerrado
while pgrep -u $UID -x polybar > /dev/null; do sleep 1; done

## Lanzar barras

### Izquierda
echo "---" | tee -a /tmp/polybar.log
polybar logo -c ~/.config/polybar/config.ini 2>&1 | tee /tmp/polybar.log & disown
polybar fecha -c ~/.config/polybar/config.ini 2>&1 | tee /tmp/polybar.log & disown
polybar red -c ~/.config/polybar/config.ini 2>&1 | tee /tmp/polybar.log & disown
polybar vpn_status -c ~/.config/polybar/config.ini 2>&1 | tee /tmp/polybar.log & disown

### Derecha
echo "---" | tee -a /tmp/polybar.log
polybar objetivo -c ~/.config/polybar/config.ini 2>&1 | tee /tmp/polybar.log & disown
polybar bateria -c ~/.config/polybar/config.ini 2>&1 | tee /tmp/polybar.log & disown
polybar sistema -c ~/.config/polybar/config.ini 2>&1 | tee /tmp/polybar.log & disown

### Centro
echo "---" | tee -a /tmp/polybar.log
polybar escritorios -c ~/.config/polybar/config.ini 2>&1 | tee /tmp/polybar.log & disown

echo "Bars launched..."
