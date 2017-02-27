setxkbmap -layout "us,ru"
setxkbmap -option "grp:caps_toggle,grp_led:caps"
#xsetroot -cursor_name left_ptr &
export PATH=~/bin:$PATH
export TERMINAL=lxterminal
export JAVA_HOME=/usr/lib/jvm/java-default-runtime
export PATH=~/bin:$PATH

# export FT2_SUBPIXEL_HINTING=2
# export CLICOLOR=1
# export LSCOLORS=ExFxCxDxBxegedabagacad

#export GTK2_RC_FILES="$HOME/.gtkrc-2.0"
#xset +fp /usr/share/fonts/local

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
fi

if [ -z "$DBUS_SESSION_BUS_ADDRESS" ]; then
    eval "$(dbus-launch --sh-syntax --exit-with-session)"
fi

numlockx &
compton &
xrdb -merge ~/.Xresources

feh --bg-center /usr/share/backgrounds/003.jpg
#kbdd &

export _volume_pipe=/tmp/.volume-pipe
[[ -S $_volume_pipe ]] || mkfifo $_volume_pipe

#~/.xmonad/getvolume.sh >> /tmp/.volume-pipe &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
#trayer --edge top --align center --SetDockType true --SetPartialStrut true --expand true --width 6 --transparent true --alpha 0 --tint 0x1c1c1c --height 18 &
#dropbox &
#parcellite &
#qterminal -d &

# отключаем тачпад во время набора с клавиатуры
syndaemon -i 2 -d &
#twmnd &
#xfce4-power-manager &
#nm-applet &
#pamac-tray &
#sleep 5 &
#gis-weather &
#exec dbus-launch --sh-syntax --exit-with-session xmonad
#exec i3
exec xmonad
