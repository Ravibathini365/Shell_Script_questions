#! /bin/bash

counter=0
for string in `cat Readme`
do 
  if echo $string | grep ball > /dev/null
  then 
      counter=`expr $counter + 1`
  else
      true
  fi
done

echo "total count is $counter"
