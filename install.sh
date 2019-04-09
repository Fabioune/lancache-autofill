#!/bin/bash
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GREEN='\033[0;32m'
BLACK='\033[0m'

# printf "${GREEN}Installing dependencies with apt${BLACK}\n"
# apt install -y  lib32gcc1 \
#                 lib32stdc++6 \
#                 lib32tinfo5 \
#                 libcurl3-gnutls:i386 \

printf "${GREEN}Installing dependencies with Composer${BLACK}\n"
cd $SCRIPT_DIR && composer update

printf "${GREEN}Installing Steam${BLACK}\n"
mkdir -p /usr/games/steam && cd /usr/games/steam && curl -sqL "http://media.steampowered.com/client/steamcmd_linux.tar.gz" | tar zxvf -
