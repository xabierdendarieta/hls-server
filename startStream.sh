rm -r -f "src/output/more/live/"
mkdir "src/output/more/live/"

ffmpeg -i "src/output/more/live.mp4" -vf scale=640:480 -f hls -c:v h264 -profile:v baseline -pix_fmt yuv420p -hls_time 5 -strict experimental "src/output/more/live/stream.m3u8"
ffmpeg -i "src/output/more/live.mp4" -vf scale=640:480 -f hls -c:v h264 -profile:v baseline -pix_fmt yuv420p -hls_time 5 -strict experimental "src/output/more/live/stream.m3u8"