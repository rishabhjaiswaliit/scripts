for file in *.mp3; do         
  ffmpeg -loop 1 -i black.jpeg -i "$file" -c:a aac -strict experimental -b:a 192k -shortest -vf "scale=256:144,setsar=1:1" "${file%.mp3}.mp4"
done



# INDO
for file in *.mp3; do         
  ffmpeg -loop 1 -i black.jpeg -i "$file" -c:a aac -strict experimental -b:a 192k -shortest -vf "scale=256:144,setsar=1:1" "indo${file%.mp3}.mp4"
done
