mkdir -p tmp
unzip *.zip -d tmp
mkdir -p ~/.fonts
cp tmp/*.ttf ~/.fonts
fc-cache -f -v
rm -rf tmp
