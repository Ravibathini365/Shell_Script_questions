#! /bin/bash

cal=`date`

if [ "$1" == '' ]
then 
    echo "pass the args"
    exit 1
fi

scriptcal=`echo $1 | tr [A-Z] [a-z]`

case $scriptcal in 
  showyear)
           res=`date | cut -d ' ' -f7`
           echo "current year is $res !!"
  ;;
  showmonth)
           res=`date | cut -d ' ' -f2`
           echo "current month is $res !!"
  ;;
  showday)
           res=`date | cut -d ' ' -f1`
           echo "Today is $res !!"
  ;;
  showdate)
           res=`date | cut -d ' ' -f4`
           echo "Today date is $res !!"
  ;;
  showtime)
           res=`date | cut -d ' ' -f5`
           echo "The time is $res !!"
  ;;
  *)
           echo "Wrong input"
  ;;
esac
