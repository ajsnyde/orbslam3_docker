
# set iw/2 for 4:3, iw/4 for everything else
for i in raw/**.MP4; do ffmpeg -n -i "$i" -vf scale=iw/4:ih/4 -map 0:0 -map 0:3 "downsized/$(basename ${i%.*}).mp4"; done


for i in downsized/**.mp4; do extract "downsized/$(basename ${i%.*}).mp4" 0 99999999999999; done



#for i in raw/R/*.MP4; do ffmpeg -n -i "$i" -vf scale=iw/4:ih/4 -map 0:0 -map 0:3 "downsized/R/$(basename ${i%.*}).mp4"; done
#for i in raw/L/*.MP4; do ffmpeg -n -i "$i" -vf scale=iw/4:ih/4 -map 0:0 -map 0:3 "downsized/L/$(basename ${i%.*}).mp4"; done
#720 for 8:7 2.7k
#1352 for 4:3 2.7k, aka 2704x2028
#960 FOR 8:7 WIDE 4k