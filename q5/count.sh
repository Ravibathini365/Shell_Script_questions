#! /bin/bash

num=`echo $@`
set num

counter=0
for value in $num
do
  if echo "$value" | grep "^[a-z]" > /dev/null 2>&1
  then
       echo 'One of the passed argument is not a numeric value'
       exit 1
  else
      counter=`expr $counter + $value`
  fi
done

echo "the sum of total passed numbers are $counter"
