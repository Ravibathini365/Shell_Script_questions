i#! /bin/bash

if [ ! "$1" ]
then
    echo 'Pass the number to generate the list of random number'
    exit 1
elif echo "$1" | grep '^[a-z]' > /dev/null 2>&1
then
    echo 'Pass the numeric value'
    exit 1
fi


>numstore.txt
value=0
while true
do
  if [ $value != "$1" ]
  then
      echo $RANDOM >> numstore.txt
      value=`expr $value + 1`
  elif [ $value == "$1" ]
  then
      cat numstore.txt
      exit 1
  fi
done

rm -f numstore.txt
