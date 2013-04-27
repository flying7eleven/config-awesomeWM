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
   sudo pacman -S awesome xcompmgr xscreensaver pcmanfm gtk-theme-switch2 gtk-engines yaourt
   ```

3. for Search the GTK+ themes you want to use and install them from AUR:
   ```
   yaourt -Ss gtk2-theme-
   yaourt -S <selected themes>
   ```

4. Clone the repository to the right directory and update the submodules
   ```
   cd ~/.config
   git clone https://github.com/thuetz/awesome-config awesome
   cd awesome
   git submodule init
   git submodule update
   ```
5. Configure the screensaver
   You have to configure the screensaver to ensure that it locks the screen after a specific amount of minutes. You can do this by calling
   ```
   xscreensaver-demo
   ```

6. Restart awesomewm

