# !/bin/bash
name="a-nights-walk"
directory="build/output"

mkdir -p $directory

odin build src -out:$directory/$name

echo $path

if [ "$1" = "run" ]
then
	$directory/$name
fi
