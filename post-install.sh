#! /bin/bash

#Assets

BOLD='\e[1;97m'
RESET='\e[0;97m'
GREEN='\e[1;32m'

#Check sudo
if [[ $(getent passwd $USER | cut -d: -f3) -ne 0 ]]; then
  echo "Execute with Sudo"
  exit 0
fi

##Work
echo -e "${BOLD}--> Initializing installation...${RESET}"
echo -e "${GREEN} # Installing dwl dependencies...${RESET}"
# pacman -Sy $(cat packagesDWL.txt) --noconfirm
echo -e "${GREEN} # Installing slstatus dependencies...${RESET}"
# pacman -Sy $(cat packagesSLS.txt) --noconfirm

echo -e "${BOLD}--> Fetching and applying configurations...${RESET}"

echo -e "${BOLD}--> Compiling...${RESET}"
# git clone ""
