#!/bin/bash
input="input.txt"
while IFS='' read -r line
do
	echo "Text read from file: $line"
  	echo "$line"
	
	youtube-dl $line

#	youtube-dl -f 'bestaudio[ext=m4a]' $line

	#ffmpeg -i videofile.mp4 -vn -acodec copy audiotrack.m4a

done < "$input"
