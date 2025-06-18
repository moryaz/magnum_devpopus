while true ; do
 top -b -n 1 | awk '$9 >= 90 || $10 >=60  {if(NR>7) print $1}' | xargs -I{} echo "$(date '+%e %m %Y %H %M %S') {}" >> cpu> sleep 3
done