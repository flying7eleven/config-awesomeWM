Userscript & AwesomeWM Configuration
====================================
TODO

Usage (on MacOS X)
------------------
1. Install MacPorts

2. Install some core packages required for the rest
   ```
   sudo port -v install git-core aspell aspell-dict-de aspell-dict-en
   ```

3. Clone the repository to the right directory and update the submodules
   ```
   cd ~/.config
   /opt/local/bin/git clone https://github.com/thuetz/awesome-config awesome
   cd awesome
   git submodule init
   git submodule update
   ```

4. Change the default shell to zsh
   ```
   chsh -s /bin/zsh
   ```

5. Install the provided user scripts (for zsh):
   ```
   ln -s $HOME/.config/awesome/userconfigs/shell/zshrc $HOME/.zshrc
   ln -s $HOME/.config/awesome/userconfigs/shell/zsh_profile $HOME/.zsh_profile
   ln -s $HOME/.config/awesome/userconfigs/vimrc $HOME/.vimrc
   ln -s $HOME/.config/awesome/userconfigs/taskrc $HOME/.taskrc
   ln -s $HOME/.config/awesome/userconfigs/tmuxinator $HOME/.tmuxinator
   ln -s $HOME/.config/awesome/userconfigs/tmux $HOME/.tmux.conf
   ```

6. Ensure that the correct git configuration is used
   ```
   git config --global include.path $HOME/.config/awesome/userconfigs/gitconfig
   git config --global user.name "Your Name"
   git config --global user.email your@address.com
   ```


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
   sudo pacman -S awesome xlock pcmanfm yaourt numlockx networkmanager network-manager-applet tmux aspell aspell-de aspell-en
   ```

3. Install some required fonts and some other required tools from AUR:
   ```
   yaourt -S ttf-google-fonts-git powerline-fonts-git tmuxinator --noconfirm
   ```

4. Clone the repository to the right directory and update the submodules
   ```
   cd ~/.config
   git clone https://github.com/thuetz/awesome-config awesome
   cd awesome
   git submodule init
   git submodule update
   ```

5. Install the provided user scripts (for zsh):
   ```
   mkdir -p $HOME/.config/systemd/user
   mkdir -p $HOME/.config/terminator
   ln -s $HOME/.config/awesome/userconfigs/shell/zshrc $HOME/.zshrc
   ln -s $HOME/.config/awesome/userconfigs/shell/zsh_profile $HOME/.zsh_profile
   ln -s $HOME/.config/awesome/userconfigs/terminator $HOME/.config/terminator/config
   ln -s $HOME/.config/awesome/userconfigs/vimrc $HOME/.vimrc
   ln -s $HOME/.config/awesome/userconfigs/xinitrc $HOME/.xinitrc
   ln -s $HOME/.config/awesome/userconfigs/taskrc $HOME/.taskrc
   ln -s $HOME/.config/awesome/userconfigs/tmuxinator $HOME/.tmuxinator
   ln -s $HOME/.config/awesome/userconfigs/tmux $HOME/.tmux.conf
   ln -s $HOME/.config/awesome/userconfigs/mailcap $HOME/.mailcap
   ```

6. Change the default shell to zsh
   ```
   chsh -s /bin/zsh
   ```
   Restart the terminal aftering issuing the command above!

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

8. Ensure that the correct git configuration is used
   ```
   git config --global include.path $HOME/.config/awesome/userconfigs/gitconfig
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
