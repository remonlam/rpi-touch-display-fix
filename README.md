# Install APCUPS on Raspbian (RPI)

Great so you have the official Raspberry Pi Touch Screen, however when updating the system and the necessary reboot you might end up with a flipped screen.
Somehow the Raspberry Pi foundation thought it's cool to make this change in the code ;-)
Read more information about this issue on the Raspberry Pi Forums https://www.raspberrypi.org/forums/viewforum.php?f=108

## How to fix this issue?
This script will a one line lcd_rotate=2" to the /boot/config.txt in order to fix the rotation issue with the RPI Touch Display.
The added line will make sure that the display will flip back to normal, also it will make sure the touch will rotate so it matches the screen.

NOTE: do NOT use the "display_rotate" option this only flip the screen and not the touch interface!

## How to get this "fix" working?
Well you can edit the config.txt and add the correct line, or download and execute the shell script :-)

#### Download sh script from GitHub
sudo wget -P /tmp https://raw.githubusercontent.com/remonlam/rpi-touch-display-fix/master/rpi-touch-display-fix.sh

#### Make file executable
sudo chmod 755 /tmp/rpi-touch-display-fix.sh

#### Run script.
/tmp/./rpi-touch-display-fix.sh
