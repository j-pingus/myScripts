rm -rf temp output
mkdir temp output
for aif in input/*.aiff
do
	mp3=`echo $aif | sed s/input/output/ | sed s/aiff/mp3/`
	lame "$aif" "$mp3"
done
