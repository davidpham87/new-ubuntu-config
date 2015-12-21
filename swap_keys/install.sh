# Copy the xinitrc in bin

# Set down and right as ctrl at startup
cp swap_keys/xinitrc ~/bin/xinitrc

# Swap Alt and CMD
echo options hid_apple fnmode=2 | sudo tee -a /etc/modprobe.d/hid_apple.conf
echo options hid_apple swap_opt_cmd=1 | sudo tee -a /etc/modprobe.d/hid_apple.conf
echo options hid_apple swap_fn_leftctrl=1 | sudo tee -a /etc/modprobe.d/hid_apple.conf
