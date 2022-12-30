for file in "output/*.$1" 
do
	mp3=`echo $file | sed s/input/output/ | sed s/$1/$2/`
	echo mv "$file" "$mp3"
done
