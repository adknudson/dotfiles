mkdir -p ~/.fonts

mkdir -p tmp
unzip Source_Code_Pro.zip -d tmp
cp tmp/*.ttf ~/.fonts
rm -rf tmp

mkdir -p tmp2
unzip Fira_Code_v*.zip -d tmp2
cp tmp2/ttf/*.ttf ~/.fonts
rm -rf tmp2

fc-cache -f -v
