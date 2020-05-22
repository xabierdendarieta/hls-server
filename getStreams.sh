mkdir src/output/more

wget -q --spider --save-cookies "src/output/more/cookies.txt" "https://gofile.io/d/siShhl"

wget -x --load-cookies "src/output/more/cookies.txt" "https://srv-file14.gofile.io/download/siShhl/small.zip" -O "src/output/more/small.zip"

unzip -oq "src/output/more/small.zip" -d "src/output/more"

wget -x --load-cookies "src/output/more/cookies.txt" "https://srv-file14.gofile.io/download/siShhl/large.zip" -O "src/output/more/large.zip"

unzip -oq "src/output/more/large.zip" -d "src/output/more"

rm "src/output/more/cookies.txt"