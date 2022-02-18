termux-setup-storage
apt update
apt upgrade
apt install python ffmpeg
pip install yt-dlp
mkdir -p ~/.config/youtube-dl
echo # Default Output Directory and Pattern >> ~/.config/youtube-dl/config
echo -o ~/storage/downloads/%(extractor_key)s/%(uploader)s/%(title)s-%(id)s.%(ext)s >> ~/.config/youtube-dl/config
mkdir ~/bin
echo #!/bin/bash >> ~/bin/termux-url-opener
echo url=$1 >> ~/bin/termux-url-opener
echo youtube-dl $url >> ~/bin/termux-url-opener
chmod +x ~/bin/termux-url-opener