ss=$1

xport=0
for (( i=1; i<=20; i=i+1))
do
  xport=$(($ss+$i))
  echo "i= $i, xport= $xport"
  echo 7 >               x123.tmp
  echo 1 >>              x123.tmp
  echo $xport >>         x123.tmp
  echo s001.s002.s003 >> x123.tmp
  echo   >>              x123.tmp
  ./ssr.sh < x123.tmp
done
echo "Add port is OK!"
