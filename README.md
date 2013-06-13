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

8. Enable and start the network-manager:
   ```
   sudo systemctl enable NetworkManager
   sudo systemctl start NetworkManager
   ```

9. Start awesomewm
