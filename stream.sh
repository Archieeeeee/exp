 #ffmpeg to panda.TV
 
 #https://sonnati.wordpress.com/2011/08/30/ffmpeg-%E2%80%93-the-swiss-army-knife-of-internet-streaming-%E2%80%93-part-iv/
 
 #spcify video and audio codec
 ffmpeg -re -i rainbowsixa5.mp4 -vcodec libx264 -acodec aac -strict -2 -f flv "rtmp://ps3.live.panda.tv/live_panda/dcb9e0e8fd6bd0aefefe6480c7248fda?sign=b74512d6dadf441b4eb1f479a364a500&time=1550644051&wm=2&wml=1&extra=0" 
 
 #use original codec 
 ffmpeg -re -i j20.mp4 -c copy -f flv "rtmp://ps3.live.panda.tv/live_panda/dcb9e0e8fd6bd0aefefe6480c7248fda?sign=0b573a5e9e8cc90e71e6c7794f28f143&time=1550645170&wm=2&wml=1&extra=0"

#image and audio to mp4
ffmpeg -loop 1 -framerate 25 -i jinx.jpg -i music.mp3 -c:v libx264 -s 1280x720 -crf 0 -strict -2 -c:a aac -shortest out.mp4

########### if frame rate too low,Panda.TV wont show the video #########

#image directly to stream
ffmpeg -re -loop 1 -framerate 25 -i jinx.jpg -i music.mp3 -c:v libx264 -s 1280x720 -crf 0 -strict -2 -c:a aac -shortest -f flv "rtmp://ps3.live.panda.tv/live_panda/dcb9e0e8fd6bd0aefefe6480c7248fda?sign=1ffce67eb24edc4677af2daf618fdfa9&time=1550654886&wm=2&wml=1&extra=0"

#all files in the directory
for i in *.mp4; do ffmpeg -re -i $i -c copy -f flv "rtmp://qn.live-send.acg.tv/live-qn/?streamname=live_258376025_4325437&key=558a5de550ccf93af8e1a0448a9287d4"; done;



#https://github.com/rg3/youtube-dl/blob/master/README.md#readme
# Download best mp4 format available or any other best if no mp4 available
# youtube-dl -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]/best[ext=mp4]/best'

# Download best format available but not better that 480p
# youtube-dl -f 'bestvideo[height<=480]+bestaudio/best[height<=480]'

# 720p and mp4
# youtube-dl -f 'bestvideo[ext=mp4,height<=720]+bestaudio[ext=m4a]/best[height<=720]' 
# youtube-dl -f 'bestvideo[ext=mp4,height<=1080]+bestaudio[ext=m4a]/best[height<=1080]' https://www.youtube.com/watch?v=K-l4P1qYnhk

# Download best video only format but no bigger than 50 MB
# youtube-dl -f 'best[filesize<50M]'

# Download best format available via direct link over HTTP/HTTPS protocol
# youtube-dl -f '(bestvideo+bestaudio/best)[protocol^=http]'

# Download the best video format and the best audio format without merging them
# youtube-dl -f 'bestvideo,bestaudio' -o '%(title)s.f%(format_id)s.%(ext)s'
