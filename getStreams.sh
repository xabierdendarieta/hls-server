mkdir src/output/more

wget -x "link a small" -O "src/output/more/small.zip"

unzip -oq "src/output/more/more.zip" -d "src/output/"

wget -x "link a large" -O "src/output/more/large.zip"

unzip -oq "src/output/more/more.zip" -d "src/output/"