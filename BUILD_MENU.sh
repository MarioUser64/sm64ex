#!/bin/bash 
title="SM64ex Build Menu"
Prompt="Pick an option:" && echo ""
options=("us" "eu" "jp" "clean")

clear
echo "$title"
echo ""
PS3="$Prompt" && echo ""

select opt in "${options[@]}" "Quit"; do 

    case "$REPLY" in

    1 ) echo "Building $opt version"
	    make -j$(nproc) VERSION=$opt DEBUG=1 NODRAWINGDISTANCE=1 TEXTURE_FIX=1 EXTERNAL_DATA=1 EXT_OPTIONS_MENU=1 WINDOWS_CONSOLE=1
		echo "Finish"
		read -n 1 -s -r -p "Press any key to continue"
		clear
	;;
    2 ) echo "Building $opt version"
	    make -j$(nproc) VERSION=$opt DEBUG=1 NODRAWINGDISTANCE=1 TEXTURE_FIX=1 EXTERNAL_DATA=1 EXT_OPTIONS_MENU=1 WINDOWS_CONSOLE=1
		echo "Finish"
		read -n 1 -s -r -p "Press any key to continue"
		clear
	;;
    3 ) echo "Building $opt version"
	    make -j$(nproc) VERSION=$opt DEBUG=1 NODRAWINGDISTANCE=1 TEXTURE_FIX=1 EXTERNAL_DATA=1 EXT_OPTIONS_MENU=1 WINDOWS_CONSOLE=1
		echo "Finish"
		read -n 1 -s -r -p "Press any key to continue"
		clear
	;;
    4 ) make $opt
	    echo "Finish"
		read -n 1 -s -r -p "Press any key to continue"
		clear
	;;
	
    $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;

    esac

done
