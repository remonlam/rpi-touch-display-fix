# This script will a one line lcd_rotate=2" to the /boot/config.txt in order to fix the rotation issue with the RPI Touch Display.
# The added line will make sure that the display will flip back to normal, also it will make sure the touch will rotate so it matches the screen.
#
# NOTE: do not use the "display_rotate" option this only flip the screen and not the touch interface!

# Add rotation line to config.txt config file
sudo /bin/su -c "echo 'lcd_rotate=2' >> /boot/config.txt"

# Reboot the device in order to make the changes effective!

echo "Do you want to reboot the Raspberry Pi? Make sure you saved everything!"
echo "======================================================================="
select yn in "Yes" "No"; do
    case $yn in
        Yes ) sudo reboot; break;;
        No ) exit;;
    esac
done
