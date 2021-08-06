#!/bin/bash

ls -lrt /etc/ > ./newone

while read -r line 
do 
#	echo "${line}" | grep ^d | awk '{ print $NF }' >> ./DirectoryNames
#	echo "${line}" | grep ^- | awk '{ print $NF }' >> ./FileNames]
      echo "${line}" | grep ^d >> ./dir
      echo "${line}" | grep ^- >> ./files
done < "./newone"
while read -r dir
do 	
  	echo "${dir}" | rev | cut -d " " -f1 | rev >> ./diroutput
done < "./dir" 
while read -r files
do 
 	echo "${files}" | rev | cut -d " " -f1 | rev >> ./fileoutput 
done < "./files"
