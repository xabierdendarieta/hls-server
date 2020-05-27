mkdir src/output/more
mkdir src/output/more/live

wget -q --spider --save-cookies "src/output/more/cookies.txt" "https://gofile.io/d/L5i3VT"

wget -x --load-cookies "src/output/more/cookies.txt" "https://srv-file18.gofile.io/download/L5i3VT/live.mp4" -O "src/output/more/live.mp4"

rm "src/output/more/cookies.txt"