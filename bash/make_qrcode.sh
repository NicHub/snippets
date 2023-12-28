#!/usr/bin/env zsh

# qrcode installation :
# sudo pip install qrcode pillow

QRPATH="./qrcodes-nogit"
rm -fR $QRPATH
mkdir $QRPATH

URLarray=(
	"https://ouilogique.com/"
	"https://www.python.org/"
)

for (( i = 0 ; i < ${#URLarray[@]} ; i++ )) do
	URL=${URLarray[$i]}
	FILENAME=$QRPATH/url$i.xhtml
	echo $URL
	echo '<div class="qrcode">' > $FILENAME
	qr --factory=svg-path $URL | tail -n +2  >> $FILENAME
	echo -e "\n<p style=\"text-align:center;\"><b><a href=\"$URL\">$URL</a></b></p>" >> $FILENAME
	echo -e "</div>" >> $FILENAME
done

