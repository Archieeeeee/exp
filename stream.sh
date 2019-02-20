 #ffmpeg to panda.TV
 
 ffmpeg -re -i rainbowsixa5.mp4 -vcodec libx264 -acodec aac -strict -2 -f flv "rtmp://ps3.live.panda.tv/live_panda/dcb9e0e8fd6bd0aefefe6480c7248fda?sign=b74512d6dadf441b4eb1f479a364a500&time=1550644051&wm=2&wml=1&extra=0" 
