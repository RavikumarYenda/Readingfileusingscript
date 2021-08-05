#!/bin/bash
while read -r line
do
        filedone=$(echo "${line}" | cut -d ":" -f1)
        if [ "${filedone}" == "EMPLOYNAME" ]; then
                continue
        else
                filedtwo=$(echo "${line}" | cut -d ":" -f2)
                echo "Employe $filedone  with $filedtwo Designation"
        fi
done < "./datafile"
