for i in raw/*; do ffmpeg -i -n "$i" -vf scale=720:-1 "downsized/$(basename ${i%.*}).mp4"; done