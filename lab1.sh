#!/bin/bash
echo -e "\nShipilov Anton 736-1"
echo "..........Search file............"
echo -e "#The user enters the path to the file, the system issues the attributes of this file\n"
var="a"
while [ true ]
do
	read -p "If you want to find the file, enter the path to it, otherwise just press enter: " var
	if [ -e "$var" ]
	then
		echo ""
		var2=$(lsattr "$var")
		for(( i = 0; i<=19; i++))
		do
			case "${var2:i:1}" in
			a) echo "a - append only";;
			c) echo "c - compressed";;
			d) echo "d - no dump";;
			e) echo "e - extent format";;
			i) echo "i - immutable";;
			j) echo "j - data journalling";;
			s) echo "s - secure deletion";;
			t) echo "t - no tail-merging";;
			u) echo "u - undeletable";;
			A) echo "A - no atime updates";;
			D) echo "D - synchronous directory update";;
			S) echo "S - synchronous updates";;
			T) echo "T - top of directory hierarchy";
			esac
			i=$(( $i + 1 ))
		done
	elif [ "$var" = "" ]
	then
		break

	else
		echo -e "The path specified is incorrect, exit the program.\n" >&2
		exit 250
	fi
done
echo -e "...Entrance to the real world...\n"
