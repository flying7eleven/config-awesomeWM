AwesomeWM Configuration
=======================
TODO

Usage (on ArchLinux)
--------------------
1. Add the following line to your ```/etc/pacman.conf``` file:
   ```
   [archlinuxfr]
   SigLevel = Never
   Server = http://repo.archlinux.fr/$arch
   ```

2. Install awesomewm and some other required applications
   ```
   sudo pacman -Sy
   sudo pacman -S awesome xlock pcmanfm yaourt numlockx networkmanager network-manager-applet
   ```

3. Install some required fonts from AUR:
   ```
   yaourt -S ttf-google-fonts-git
   ```

4. Clone the repository to the right directory and update the submodules
   ```
   cd ~/.config
   git clone https://github.com/thuetz/awesome-config awesome
   cd awesome
   git submodule init
   git submodule update
   ```

5. Install the provided user scripts:
   ```
   python2 installUserDir.py
   ```

6. Configure the default applications
   Set some of the default applications of your computer
   ```
   xdg-mime default google-chrome.desktop x-scheme-handler/http
   xdg-mime default google-chrome.desktop x-scheme-handler/https
   xdg-mime default pcmanfm.desktop inode/directory
   xdg-mime default pcmanfm.desktop inode/directory
   xdg-mime default thunderbird.desktop x-scheme-handler/mailto
   xdg-mime default thunderbird.desktop message/rfc822 
   ```

7. Ensure that the correct git confuration is used
   ```
   git config --global include.path ~/.config/awesome/userdir/configs/gitconfig
   git config --global user.name "Your Name"
   git config --global user.email your@address.com
   ```

8. Configure the network-manager to get the correct DHCP address. The first step is to tell the network-manager which DHCP implementation should be used:
   ```
   sudo sh -c "echo 'dhcp=dhcpcd' >> /etc/NetworkManager/NetworkManager.conf"
   ```
   After this was done, get your MAC address by entering the following command:
   ```
   ip link show
   ```
   Then replace the interface name and your MAC address in the following lines and execute them to write the information into your ```/etc/dhclient.conf``` file:
   ```
   sudo sh -c "echo 'interface \"eth0\" {' >> /etc/dhclient.conf"
   sudo sh -c "echo '    send dhcp-client-identifier 01:aa:bb:cc:dd:ee:ff;' {' >> /etc/dhclient.conf"
   sudo sh -c "echo '}' >> /etc/dhclient.conf"
   ```

9. Disable the manually started DHCP client and enable and start the network-manager:
   ```
   sudo systemctl stop dhcpcd
   sudo systemctl disable dhcpcd
   sudo systemctl enable NetworkManager
   sudo systemctl start NetworkManager
   ```

10. Start awesomewm
