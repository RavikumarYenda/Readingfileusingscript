#!/bin/bash

working_dir=$(pwd)

if [ -f ${working_dir}/dir ]; then
	rm -rf ${working_dir}/dir
fi


if [ -f ${working_dir}/files ]; then
	rm -rf ${working_dir}/files
fi

> ${working_dir}/diroutput
> ${working_dir}/fileoutput

ls -lrt /etc/ > ${working_dir}/newone

while read -r line 
do 
#	echo "${line}" | grep ^d | awk '{ print $NF }' >> ./DirectoryNames
#	echo "${line}" | grep ^- | awk '{ print $NF }' >> ./FileNames]
      echo "${line}" | grep ^d >> ${working_dir}/dir
      echo "${line}" | grep ^- >> ${working_dir}/files
done < "./newone"
while read -r dir
do 	
  	echo "${dir}" | rev | cut -d " " -f1 | rev >> ${working_dir}/diroutput
done < "./dir" 
while read -r files
do 
 	echo "${files}" | rev | cut -d " " -f1 | rev >> ${working_dir}/fileoutput 
done < "./files"
