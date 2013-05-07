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
   sudo pacman -S awesome xlock pcmanfm gtk-engines lxappearance yaourt numlockx
   ```

3. for Search the GTK+ themes (and fonts) you want to use and install them from AUR:
   ```
   yaourt -S clearlooks-phenix-gtk-theme-git delorean-dark-theme-3.6 ttf-source-code-pro compton-git
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
   xdg-mime default chromium.desktop x-scheme-handler/http
   xdg-mime default chromium.desktop x-scheme-handler/https
   ```

7. Start awesomewm

8. Select the desired theme:
   ```
   lxappearance
   ```
