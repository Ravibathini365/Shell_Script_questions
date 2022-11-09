#! /bin/bash

>.tmp
for word in `cat Readme`
do 
  if grep -w $word .tmp > /dev/null
  then 
      true
  else
      count=`grep -ow "$word" Readme| wc -l`
      echo $word >> .tmp
      echo $word $count >> tmpfinal
  fi
done

cat tmpfinal | sort -t ' ' -k2 > final
rm -f .tmp tmpfinal

cat final
