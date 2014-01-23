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

5.1. Install the provided user scripts (for zsh):
   ```
   ln -s $HOME/.config/awesome/userconfigs/shell/zsh/zshrc .zshrc
   ln -s $HOME/.config/awesome/userconfigs/shell/zsh/zsh_profile .zsh_profile

5.2. Install the provided user scripts (for bash):
   ```
   ln -s $HOME/.config/awesome/userconfigs/shell/bash/bashrc .bashrc
   ln -s $HOME/.config/awesome/userconfigs/shell/bash/bash_profile .bash_profile
   ```

6. Change the default shell to zsh
   ```
   chsh -s /bin/zsh
   ```

7. Configure the default applications
   Set some of the default applications of your computer
   ```
   xdg-mime default google-chrome.desktop x-scheme-handler/http
   xdg-mime default google-chrome.desktop x-scheme-handler/https
   xdg-mime default pcmanfm.desktop inode/directory
   xdg-mime default pcmanfm.desktop inode/directory
   xdg-mime default thunderbird.desktop x-scheme-handler/mailto
   xdg-mime default thunderbird.desktop message/rfc822 
   ```

8. Ensure that the correct git confuration is used
   ```
   git config --global include.path ~/.config/awesome/userdir/configs/gitconfig
   git config --global user.name "Your Name"
   git config --global user.email your@address.com
   ```

9. Configure the network-manager to get the correct DHCP address. The first step is to tell the network-manager which DHCP implementation should be used:
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

10. Disable the manually started DHCP client and enable and start the network-manager:
   ```
   sudo systemctl stop dhcpcd
   sudo systemctl disable dhcpcd
   sudo systemctl enable NetworkManager
   sudo systemctl start NetworkManager
   ```

11. Start awesomewm
