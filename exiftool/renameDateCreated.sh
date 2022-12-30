for f in *.$1
do
    mv -n "$f" "$(date -r "$f" +"%Y%m%d_%H%M%S")-i.jpg"
done
