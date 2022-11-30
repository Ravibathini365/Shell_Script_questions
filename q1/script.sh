#! /bin/bash

>vendorloop
cat vendor.log| while read line
do 
   vendor=`echo $line|cut -d ',' -f4`
   echo $vendor >> vendorloop
   if !grep -w $vendor vendorloop > /dev/null 2>&1
   then 
        true
   else
       grep $vendor vendor.log > ${vendor}.log
   fi
done

sort vendorloop | uniq | while read vendorname
do 
  conn=0
  value=`cat ${vendorname}.log | cut -d',' -f5` 
  set $value
  i=0
  for log1 in $value
  do
    conn=`expr $conn + $log1`
    i=$(( i + 1 ))
    if [ "$i" -eq "$#" ]
    then 
       echo "VendorName: $vendorname, TotalConnections: $conn"
    else
       true
    fi
  done
done

rm -f vendorloop
