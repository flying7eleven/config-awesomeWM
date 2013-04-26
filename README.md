AwesomeWM Configuration
=======================
TODO

Usage (on ArchLinux)
--------------------
1. Install awesomewm and some other required applications
   ```
   sudo pacman -S awesome xcompmgr xscreensaver pcmanfm
   ```

2. Clone the repository to the right directory and update the submodules
   ```
   cd ~/.config
   git clone https://github.com/thuetz/awesome-config awesome
   cd awesome
   git submodule init
   git submodule update
   ```
3. Configure the screensaver
   You have to configure the screensaver to ensure that it locks the screen after a specific amount of minutes. You can do this by calling
   ```
   xscreensaver-demo
   ```

4. Restart awesomewm
