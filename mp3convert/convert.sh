rm -rf temp output
mkdir temp output
for m4a in input/*.m4a
do
	wav=`echo $m4a | sed s/input/temp/ | sed s/m4a/wav/`
	mp3=`echo $m4a | sed s/input/output/ | sed s/m4a/mp3/`
	afconvert -f WAVE -d LEI24 "$m4a" "$wav"
	lame "$wav" "$mp3"
done
