#!/bin/bash
apt update -y
apt upgrade -y
apt install -y python ffmpeg
pip install --yes yt-dlp
mkdir -p ~/.config/yt-dlp
echo # Default Output Directory and Pattern >> ~/.config/yt-dlp/config
echo -o /storage/7C23-9E17/Vídeos/%(title)s.%(ext)s >> ~/.config/yt-dlp/config
mkdir ~/bin
echo #!/bin/bash >> ~/bin/termux-url-opener
echo url=$1 >> ~/bin/termux-url-opener
echo yt-dlp -f 'bestvideo[height<=720]+bestaudio/best' $url >> ~/bin/termux-url-opener
chmod +x ~/bin/termux-url-opener
