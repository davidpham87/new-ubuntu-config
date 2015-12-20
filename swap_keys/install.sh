# Remap the keys

xmodmap -e "keycode 464 = Control_L"

# down and right to control
xmodmap -e "keycode 114 = Control_L Right"
xmodmap -e "keycode 116 = Control_L Down"

# Alt ->  64: Alt_L and 108: Alt_R
xmodmap -e "keycode 108 = Super_R NoSymbol Super_R NoSymbol Super_R"
xmodmap -e "keycode 64 = Super_L NoSymbol Super_L NoSymbol Super_L"

# CMD # Left and Right CMD
xmodmap -e "keycode 133 = Alt_L Meta_L Alt_L Meta_L Alt_L Meta_L"
xmodmap -e "keycode 134 = ISO_Level3_Shift NoSymbol ISO_Level3_Shift NoSymbol ISO_Level3_Shift"

# Switch the modifiers keys

xmodmap -e "remove mod4 = Super_L"
xmodmap -e "remove mod4 = ISO_Level3_Shift"

xmodmap -e "add mod4 = Alt_L"

xmodmap -e "add control = Down"
xmodmap -e "add control = Right"

xmodmap -pke >~/.Xmodmap

echo "xmodmap .Xmodmap" > ~/.xinitrc
