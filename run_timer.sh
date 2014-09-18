echo "Timer all the way!"
counter=0
while [ 1 ]
do
  let counter=counter+1
  clear
  ast="********************** TIMER BRO **************************"
  columns=$(tput cols)
  y=$((($columns-${#ast})/2))
  x=0
  tput clear
  tput cup $x $y
  echo "${ast}"
  echo ""
  y=$((($columns-${#titulo})/2))
  x=1
  tput cup $x $y
  echo "${counter}" seconds
  echo ""
  y=$((($columns-${#ast})/2))
  x=2
  tput cup $x $y
  echo "${ast}"
  echo "\n\n\n"
  echo $(($counter/60)) mins
  sleep 1
  clear
done
