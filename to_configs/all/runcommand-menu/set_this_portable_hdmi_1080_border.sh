if [[ "$1" = @("atarilynx"|"gamegear"|"gb"|"gba"|"gbc"|"ngp"|"ngpc") ]]; then echo border > /opt/retropie/configs/$1/default; cp /opt/retropie/configs/$1/retroarch_1080_border.cfg /opt/retropie/configs/$1/retroarch.cfg; elif [[ "$1" = @("wonderswan"|"wonderswancolor") ]]; then cp /opt/retropie/configs/$1/retroarch_hdmi.cfg /opt/retropie/configs/$1/retroarch.cfg; fi > /tmp/null
exit 1