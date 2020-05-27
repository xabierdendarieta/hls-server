mkdir src/output/more
mkdir src/output/more/live

wget -q --spider --save-cookies "src/output/more/cookies.txt" "https://gofile.io/d/L5i3VT"

wget -x --load-cookies "src/output/more/cookies.txt" "https://srv-file18.gofile.io/download/L5i3VT/live.mp4" -O "src/output/more/live/live.mp4"

rm "src/output/more/cookies.txt"

ffmpeg -i "src/output/more/live/live.mp4" -vf scale=640:480 -f hls -c:v h264 -profile:v baseline -pix_fmt yuv420p -hls_time 1 "src/output/more/live/stream.m3u8"
ffmpeg -i "src/output/more/live/live.mp4" -vf scale=640:480 -f hls -c:v h264 -profile:v baseline -pix_fmt yuv420p -hls_time 1 "src/output/more/live/stream.m3u8"