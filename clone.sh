#!/bin/bash

# called from within scripts folder?



s=`dirname $0`

s=`realpath ${s}`



template_src="$s/src/z_caa362_tpl"



for i in  $(seq -f "%03g" $1 $2)

do

	echo "creating folder for $i"

	newfolder="$s/src/z_caa362_$i"

	rm -Rv $newfolder

	mkdir "$newfolder"

	for file in $( find $template_src -name .git -prune -o -type f  -printf %f\\n )

	  do

		newfile=`echo $file | sed "s/TPL/$i/Ig"`

		echo $newfile

		echo "cloning file $file into $newfile"

		cat "$template_src/$file" | sed "s/TPL/$i/Ig" >> "$newfolder/$newfile"

	  done

done