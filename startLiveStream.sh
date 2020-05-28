rm -r -f "src/output/more/live/"
mkdir "src/output/more/live/"

ffmpeg -video_size 1440x900 -f x11grab -i :0.0 -f hls -pix_fmt yuv420p -vf scale=900:500 "src/output/more/live/stream.m3u8"