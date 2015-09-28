# Install APCUPS on Raspbian (Raspberry Pi)
=========================================

This script will a one line lcd_rotate=2" to the /boot/config.txt in order to fix the rotation issue with the RPI Touch Display.
The added line will make sure that the display will flip back to normal, also it will make sure the touch will rotate so it matches the screen.

NOTE: do NOT use the "display_rotate" option this only flip the screen and not the touch interface!

How to get this "fix" working?
Well you can edit the config.txt and add the correct line, or download and execute the shell script :-)

Download sh script from GitHub
sudo wget -P /tmp https://raw.githubusercontent.com/remonlam/rpi-touch-display-fix/master/rpi-touch-display-fix.sh

# Make file executable
sudo chmod 755 rpi-touch-display-fix.sh

# Run script.
/tmp/./rpi-touch-display-fix.sh
