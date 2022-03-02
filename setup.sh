#!/bin/bash
apt update -y
apt upgrade -y
apt install -y python ffmpeg
pip install --yes yt-dlp
mkdir -p ~/.config/youtube-dl
curl https://raw.githubusercontent.com/creepercrack/setup_termux/main/config -o ~/.config/youtube-dl/config
mkdir ~/bin
curl https://raw.githubusercontent.com/creepercrack/setup_termux/main/termux-url-opener -o ~/bin/termux-url-opener
chmod +x ~/bin/termux-url-opener
#cambuis yujuasdasdasdlol:D