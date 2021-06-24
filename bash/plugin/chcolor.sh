if [ "$TERM" = "linux" ]; then
    echo -en "\e]P0000000" #black
    echo -en "\e]P1D70000" #red
    echo -en "\e]P200D700" #green
    echo -en "\e]P3D7D700" #yellow
    echo -en "\e]P40000D7" #blue
    echo -en "\e]P5D700D7" #magenta
    echo -en "\e]P600D7D7" #cyan
    echo -en "\e]P7ABABAB" #grey

    echo -en "\e]P8858585"
    echo -en "\e]P9FF5F5F"
    echo -en "\e]PA5FFF5F"
    echo -en "\e]PBFFFF5F"
    echo -en "\e]PC5F5FFF"
    echo -en "\e]PDFF5FFF"
    echo -en "\e]PE5FFFFF"
    echo -en "\e]PFFFFFFF"
    clear #for background artifacting
fi
