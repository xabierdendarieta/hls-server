rm -r -f "src/output/more/fake/"
mkdir "src/output/more/fake/"

ffmpeg -i "src/output/more/fake_live.mp4" -vf scale=640:480 -f hls -c:v h264 -profile:v baseline -pix_fmt yuv420p -hls_time 1 -strict experimental "src/output/more/fake/stream.m3u8"