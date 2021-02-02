#!/bin/bash

function destrib {
oss=(centos ubuntu debian rhel)
stroka=$(grep -iw ID=* /etc/*release)
for var in ${oss[@]}
do
if echo $stroka | grep -iq $var
then 
return 
fi
done
echo "Don't know your OS, please select your OS:"
select var in ${oss[@]}
do
return 
done
}

destrib
echo $var