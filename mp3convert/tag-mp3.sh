album=$2
artist=$1
for mp3 in *.mp3
do
	echo $mp3
	track=`echo $mp3 | sed 's/\([0-9]*\).*/\1/'`
	title=`echo $mp3 | sed 's/[0-9]* *\(.*\)\.mp3/\1/'`
	id3v2 -a "$artist" -A "$album" -T "$track" -t "$title" "$mp3"
done

