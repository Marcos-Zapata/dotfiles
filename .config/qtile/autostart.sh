#/bin/sh

#Cargar configuracion de teclado españa
setxkbmap es &

#Iconos del sistema
udiskie -t &

nm-applet &

volumeicon &

cbatticon -u 5 &

picom &

feh --bg-fill /home/marcosdiario/.config/qtile/fondos/fondo2.jpg &


#Wifi Uni
wpa_supplicant -B -i wlp1s0 -c /etc/wpa_supplicant/wpa_supplican_eduroam.conf
