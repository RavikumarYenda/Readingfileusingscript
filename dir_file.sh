#!/bin/bash
working_dir=$(pwd)
mkdir  ${working_dir}/dir_"$(date +"%d-%m-%y")"
touch ${working_dir}/file_"$(date +"%H-%M-%S")"
