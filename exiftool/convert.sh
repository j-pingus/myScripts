for file in *.HEIC *.heic
do
	echo convert $file $file.jpeg
	magick convert $file $file.jpeg 
done
