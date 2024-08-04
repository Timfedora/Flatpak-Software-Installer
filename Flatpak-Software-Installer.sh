#!/bin/sh

echo "Please enter your laptop's password"
sudo -v

# Check if Flatpak is installed
if ! command -v flatpak &> /dev/null; then
    echo "Flatpak is not installed. Please install Flatpak first."
    exit 1
fi

# Check if Flathub repository is added
if ! flatpak remotes | grep -q flathub; then
    echo "Flathub repository is not added. Adding Flathub repository..."
    flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

echo "Software list"
echo "Text editors"
echo "(1) Gnome-Text-Editor"
echo "(2) Gedit"
echo "(3) Vim"
echo "(4) Neovim"
echo "(5) Emacs"
echo "(6) VScode"
echo "(7) Kwrite"
echo "(8) Atom"
echo "Audio & Video"
echo "(9) Mpv"
echo "(10) VLC"
echo "(11) Audacity"
echo "Electronics"
echo "(12) KiCad"
echo "(13) LibrePCB"
echo "Terminals"
echo "(14) Konsole"
echo "(15) BlackBox"
echo "Files"
echo "(16) Dolphin"
echo "(17) CoreFM"
echo "Browsers"
echo "(18) Edge"
echo "(19) Chrome"
echo "(20) Chromium"
echo "(21) Brave"
echo "(22) Firefox"
echo "(23) Ungoogled Chromium"

echo "Please enter the numbers of the Software you would like with spaces"
read -r selections

install_software() {
    case "$1" in
        1) flatpak install flathub org.gnome.TextEditor -y ;;
        2) flatpak install flathub org.gnome.gedit -y ;;
        3) flatpak install flathub org.vim.Vim -y ;;
        4) flatpak install flathub io.neovim.nvim -y ;;
        5) flatpak install flathub org.gnu.emacs -y ;;
        6) flatpak install flathub com.visualstudio.code -y ;;
        7) flatpak install flathub org.kde.kwrite -y ;;
        8) flatpak install flathub io.atom.Atom -y ;;
        9) flatpak install flathub io.mpv.Mpv -y ;;
        10) flatpak install flathub org.videolan.VLC -y ;;
        11) flatpak install flathub org.audacityteam.Audacity -y ;;
        12) flatpak install flathub org.kicad.KiCad -y ;;
        13) flatpak install flathub org.librepcb.LibrePCB -y ;;
        14) flatpak install flathub org.kde.konsole -y ;;
        15) flatpak install flathub com.raggesilver.BlackBox -y ;;
        16) flatpak install flathub org.kde.dolphin -y ;;
        17) flatpak install flathub org.cubocore.CoreFM -y ;;
        18) flatpak install flathub com.microsoft.Edge -y ;;
        19) flatpak install flathub com.google.Chrome -y ;;
        20) flatpak install flathub org.chromium.Chromium -y ;;
        21) flatpak install flathub com.brave.Browser -y ;;
        22) flatpak install flathub org.mozilla.firefox -y ;;
        23) flatpak install flathub io.github.ungoogled_software.ungoogled_chromium -y ;;
        *) echo "Invalid selection" ;;
    esac
}

for selection in $selections; do
    install_software "$selection"
done
