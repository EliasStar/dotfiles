#!/bin/bash

read -r -d '' GREETING <<- EOM
	╔════════════════════════════════════╗
	║  __   __     ____  _               ║
	║  \ \ / /   _|  _ \(_) __ _ _ __    ║
	║   \ V / | | | |_) | |/ _\` | '_ \   ║
	║    | || |_| |  _ <| | (_| | | | |  ║
	║    |_| \__,_|_| \_\_|\__,_|_| |_|  ║
	║                                    ║
	╚════════════════════════════════════╝
EOM


tuigreet \
	--greeting "$GREETING"\
	--time \
	--time-format "%A - %d. %B %Y - %H:%M:%S - %j/365" \
	--remember \
	--remember-session \
	--asterisks \
	--power-shutdown "doas systemctl poweroff" \
	--power-reboot "doas systemctl reboot"
