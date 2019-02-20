 #ffmpeg to panda.TV
 
 #https://sonnati.wordpress.com/2011/08/30/ffmpeg-%E2%80%93-the-swiss-army-knife-of-internet-streaming-%E2%80%93-part-iv/
 
 #spcify video and audio codec
 ffmpeg -re -i rainbowsixa5.mp4 -vcodec libx264 -acodec aac -strict -2 -f flv "rtmp://ps3.live.panda.tv/live_panda/dcb9e0e8fd6bd0aefefe6480c7248fda?sign=b74512d6dadf441b4eb1f479a364a500&time=1550644051&wm=2&wml=1&extra=0" 
 
 #use original codec 
 ffmpeg -re -i j20.mp4 -c copy -f flv "rtmp://ps3.live.panda.tv/live_panda/dcb9e0e8fd6bd0aefefe6480c7248fda?sign=0b573a5e9e8cc90e71e6c7794f28f143&time=1550645170&wm=2&wml=1&extra=0"




#https://github.com/rg3/youtube-dl/blob/master/README.md#readme
# Download best mp4 format available or any other best if no mp4 available
# youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'

# Download best format available but not better that 480p
# youtube-dl -f 'bestvideo[height<=480]+bestaudio/best[height<=480]'

# 720p and mp4
# youtube-dl -f 'bestvideo[ext=mp4,height<=720]+bestaudio[ext=m4a]/best[height<=720]' 

# Download best video only format but no bigger than 50 MB
# youtube-dl -f 'best[filesize<50M]'

# Download best format available via direct link over HTTP/HTTPS protocol
# youtube-dl -f '(bestvideo+bestaudio/best)[protocol^=http]'

# Download the best video format and the best audio format without merging them
# youtube-dl -f 'bestvideo,bestaudio' -o '%(title)s.f%(format_id)s.%(ext)s'
