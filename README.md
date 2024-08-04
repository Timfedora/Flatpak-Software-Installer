# Flatpak-Installer
Flatpak-Installer is a Bash script designed to simplify the installation of various software packages via Flatpak. It checks for the presence of Flatpak and the Flathub repository, then allows you to select and install a variety of applications, including text editors, audio & video tools, electronics software, terminals, file managers, and browsers.

# Features
Checks for Flatpak installation: Ensures Flatpak is installed before attempting to install any software.
Checks for Flathub repository: Adds the Flathub repository if it's not already configured.
Flexible software installation: Choose from a list of popular software across different categories.
Easy to use: Interactive menu for selecting software to install.

# Categories of Software:

Text Editors: 

- Gnome-Text-Editor
- Gedit
- Vim
- Neovim
- Emacs VScode
- Kwrite
- Atom
- 
Audio & Video:
- Mpv
- VLC
- Audacity
  
Electronics:
- KiCad
- LibrePCB
Terminals: Konsole, BlackBox
Files: Dolphin, CoreFM
Browsers: Edge, Chrome, Chromium, Brave, Firefox, Ungoogled Chromium

# Prerequisites
A Unix-like operating system (Linux).
Flatpak must be installed.
Bash shell.

# Install

1.     git clone https://github.com/Timfedora/Flatpak-Software-Installer.git
2.     cd Flatpak-Software-Installer
3.     ./Flatpak-Software-Installer
