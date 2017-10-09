n=$(cat $1 | wc -l)
while :
do
echo -----
l_n=$(($RANDOM % $n + 1))
echo $(cat $1 | head -n $l_n | tail -n 1 | cut -f1 -d ",")
read
echo $(cat $1 | head -n $l_n | tail -n 1 | cut -f2 -d ",")
echo -----
done
