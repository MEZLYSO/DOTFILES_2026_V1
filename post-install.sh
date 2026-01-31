#! /bin/bash

#Assets

BOLD='\e[1;97m'
RESET='\e[0;97m'
GREEN='\e[1;32m'
YELLOW='\e[1;33m'
BLUE='\e[1;34m'

cat ./banner.txt

##Work
echo -e "${BOLD}--> Initializing installation...${RESET}"
echo -e "${BLUE} # Installing dwl dependencies...${RESET}"
# pacman -Sy $(cat packagesDWL.txt) --noconfirm
echo -e "${GREEN} -> Success...${RESET}"

echo -e "${BLUE} # Installing slstatus dependencies...${RESET}"
# pacman -Sy $(cat packagesSLS.txt) --noconfirm
echo -e "${GREEN} -> Success...${RESET}"

echo -e "${BLUE} # Installing mew dependencies...${RESET}"
# pacman -Sy $(cat packagesMEW.txt) --noconfirm
echo -e "${GREEN} -> Success...${RESET}"

## Compiling
echo -e "${BOLD}--> Compiling...${RESET}"
echo -e "${BLUE} # Compiling dwl...${RESET}"
# sudo make clean install -C ./dwl
echo -e "${GREEN} -> Success...${RESET}"

echo -e "${BLUE} # Compiling slstatus...${RESET}"
# sudo make clean install -C ./slstatus
echo -e "${GREEN} -> Success...${RESET}"

echo -e "${BLUE} # Compiling mew...${RESET}"
# sudo make clean install -C ./mew
echo -e "${GREEN} -> Success...${RESET}"

##Theme
echo -e "${BOLD}--> Fetching themes and icons...${RESET}"
echo -e "${GREEN} # Installing icon theme (BOSTON)...${RESET}"
# git clone https://github.com/thecheis/Boston-Icons.git
# sudo mv ./Boston-Icons /usr/share/icons
echo -e "${GREEN} # Success icon theme (BOSTON)...${RESET}"
echo -e "${GREEN} # Installing gtk theme (B00merang-Blackout)...${RESET}"
# git clone https://github.com/B00merang-Project/B00merang-Blackout.git
# sudo mv ./B00merang-Blackout /usr/share/themes
echo -e "${GREEN} # Success gtk theme (B00merang-Blackout)...${RESET}"

##Stuff
echo -e "${BOLD}--> Installing extra tools...${RESET}"
# pacman -Sy $(cat packagesExtra.txt) --noconfirm

##Yay
echo -e "${BOLD}--> Installing Yay...${RESET}"
# git clone https://aur.archlinux.org/yay.git
# cd yay
# makepkg -si
# cd ..
# sudo rm -rf ~/go

echo -e "${BOLD}--> Installing extra tools (with yay)...${RESET}"
# yay -S $(cat ./packagesYAY.txt)

echo -e "${BOLD}--> Copy config files...${RESET}"
# cp -r ./config/* $HOME/.config/
