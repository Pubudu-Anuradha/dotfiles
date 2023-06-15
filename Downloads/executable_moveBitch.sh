#!/bin/bash
exts=( "zip" "pdf" "rar" )

for ext in "${exts[@]}"; do
	echo $ext
	if [ ! -d "./$ext" ];then
		mkdir "$ext"
	fi

	count=`ls -1 *.$ext 2>/dev/null | wc -l`
	echo $count
	if [ $count != 0 ];then
		mv ./*.$ext $ext/
	fi
done
