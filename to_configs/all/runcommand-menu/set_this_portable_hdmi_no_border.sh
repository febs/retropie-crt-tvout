if [[ "$1" = @("atarilynx"|"gamegear"|"gb"|"gba"|"gbc"|"ngp"|"ngpc") ]]; then echo pixelperfect > /opt/retropie/configs/$1/default; cp /opt/retropie/configs/$1/retroarch_hdmi.cfg /opt/retropie/configs/$1/retroarch.cfg; fi > /dev/null
exit 1