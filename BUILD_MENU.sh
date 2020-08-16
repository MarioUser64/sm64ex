#!/bin/bash 
title="
SM64ex Build Menu
"

Prompt="
Pick an option:
"
options=("us" "eu" "jp" "clean")

clear
echo "$title"
echo ""
PS3="$Prompt"

select opt in "${options[@]}" "Quit"; do 

    case "$REPLY" in

    1 ) echo ""
		echo "Use OpenGL Y/N"
		echo ""
        read response
        if [[ "$response" == "Y" ]]
		then
		    make -j$(nproc) VERSION=$opt NODRAWINGDISTANCE=1 TEXTURE_FIX=1 EXTERNAL_DATA=1 EXT_OPTIONS_MENU=1
		else
		    make -j$(nproc) VERSION=$opt NODRAWINGDISTANCE=1 TEXTURE_FIX=1 EXTERNAL_DATA=1 EXT_OPTIONS_MENU=1 RENDER_API=D3D11
        fi
		./doxygen/shortcut.exe $opt
		echo ""
		echo "Use HD Textures Y/N"
		echo ""
        read response
        if [[ "$response" == "Y" ]]
		then 
		FILE=doxygen/$opt"_hd.zip"
		if [ -f "$FILE" ]; then
			\cp "$FILE" build/$opt"_pc/res/gfx.zip"
		fi
		else 
		FILE=build/$opt"_pc/res/gfx.zip"
		if [ -f "$FILE" ]; then
			rm build/$opt"_pc/res/gfx.zip"
		fi
        fi
		echo ""
		echo "Finish"
		echo ""
		read -n 1 -s -r -p "Press any key to continue"
		clear
	;;
    2 ) echo ""
		echo "Use OpenGL Y/N"
		echo ""
        read response
        if [[ "$response" == "Y" ]]
		then
		    make -j$(nproc) VERSION=$opt NODRAWINGDISTANCE=1 TEXTURE_FIX=1 EXTERNAL_DATA=1 EXT_OPTIONS_MENU=1
		else
		    make -j$(nproc) VERSION=$opt NODRAWINGDISTANCE=1 TEXTURE_FIX=1 EXTERNAL_DATA=1 EXT_OPTIONS_MENU=1 RENDER_API=D3D11
        fi
		./doxygen/shortcut.exe $opt
		echo ""
		echo "Use HD Textures Y/N"
		echo ""
        read response
        if [[ "$response" == "Y" ]]
		then 
		FILE=doxygen/$opt"_hd.zip"
		if [ -f "$FILE" ]; then
			\cp "$FILE" build/$opt"_pc/res/gfx.zip"
		fi
		else 
		FILE=build/$opt"_pc/res/gfx.zip"
		if [ -f "$FILE" ]; then
			rm build/$opt"_pc/res/gfx.zip"
		fi
        fi
		echo ""
		echo "Finish"
		echo ""
		read -n 1 -s -r -p "Press any key to continue"
		clear
	;;
    3 ) echo ""
		echo "Use OpenGL Y/N"
		echo ""
        read response
        if [[ "$response" == "Y" ]]
		then
		    make -j$(nproc) VERSION=$opt NODRAWINGDISTANCE=1 TEXTURE_FIX=1 EXTERNAL_DATA=1 EXT_OPTIONS_MENU=1
		else
		    make -j$(nproc) VERSION=$opt NODRAWINGDISTANCE=1 TEXTURE_FIX=1 EXTERNAL_DATA=1 EXT_OPTIONS_MENU=1 RENDER_API=D3D11
        fi
		./doxygen/shortcut.exe $opt
		echo ""
		echo "Use HD Textures Y/N"
		echo ""
        read response
        if [[ "$response" == "Y" ]]
		then 
		FILE=doxygen/$opt"_hd.zip"
		if [ -f "$FILE" ]; then
			\cp "$FILE" build/$opt"_pc/res/gfx.zip"
		fi
		else 
		FILE=build/$opt"_pc/res/gfx.zip"
		if [ -f "$FILE" ]; then
			rm build/$opt"_pc/res/gfx.zip"
		fi
        fi
		echo ""
		echo "Finish"
		echo ""
		read -n 1 -s -r -p "Press any key to continue"
		clear
	;;
    4 ) echo ""
	    echo "Cleaning project"
	    make $opt
	    echo "Finish"
		read -n 1 -s -r -p "Press any key to continue"
		clear
	;;
	
    $(( ${#options[@]}+1 )) ) echo "Goodbye!"; break;;
    *) echo "Invalid option. Try another one.";continue;;

    esac

done
