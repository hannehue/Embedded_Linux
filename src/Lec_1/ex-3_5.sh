#!/bin/bash
# Script file for exercise 3.5
div="----------"

function ex {
echo -e "\n"
echo "Part $1"
echo $div
}



ex "A"

echo $(date)
date | cat



ex "B"
ls -a | cat



ex "C"

tmpFile=check_file
tmpNoFile=no_read_file
if test -r "$tmpFile"; then
	echo "$tmpFile exists and is readable"
else
	echo "$tmpFile either doesn't exist, or exists but isn't readable"
fi

if test -r "$tmpNoFile"; then
	echo "$tmpNoFile exists and is readable"
	echo "Remember to make $tmpNoFile unreadable when running the execises by running 'chmod a-r $tmpNoFile'"

else
	echo "$tmpNoFile either doesn't exist, or exists bur isn't readable"
fi



ex "D"

tmpDir=tmp_dir
copyFile=copy_file

mkdir $tmpDir
echo "$tmpDir created"
cp copy_file ./$tmpDir
if test -r "./$tmpDir/$copyFile"; then
	echo "the file $copyFile has been copied into /$tmpDir and contains the text $(cat ./$tmpDir/$copyFile)"
else
	echo "the file $copyFile has not been copied into /$tmpDir"
fi
rm -r $tmpDir
echo $tmpDir removed



ex "E"

echo $(uptime)



ex "F"

orgFile=pipe_file
destFile=dest_file

echo "Original file $orgFile, contains: $(cat $orgFile)"
cat $orgFile > $destFile
echo "New file $destFile contains: $(cat $destFile)"
echo "Removing $destFile"
rm $destFile
