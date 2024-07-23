#!/bin/bash

red="\033[38;5;196m"
green="\033[38;5;82m"
yellow="\033[0;33m"
blue="\033[38;5;51m"
reset="\033[0m" # Reset color to default

clear

toilet -f mono12 -F metal -W WEB ___ REPLICA | lolcat
echo -e "AUTOMATED WEBSITE CLONER" | lolcat
espeak "running, WEB REPLICA. The automated, website cloner." >/dev/null 2>&1
cowsay -f dragon-and-cow PROFESSOR VISHAL professorvishal31@gmail.com | lolcat

num=1
while true
do
	echo -e "\nENTER THE URL OF THE WEBSITE TO CLONE : " | lolcat
	espeak "ENTER, THE U,R,L. OF THE. WEBSITE. TO CLONE." >/dev/null 2>&1
	read url

	echo -e "\n${green}Clonning The Web Page ...."
        espeak "CLONING THE WEBPAGE." >/dev/null 2>&1
	echo -e "${green}"
	wget --mirror --convert-links --adjust-extension --page-requisites $url

        echo -e "\n${yellow}Want to scan more targets?\n${reset}"
        espeak "WOULD YOU LIKE TO SCAN MORE TARGETS?" >/dev/null 2>&1
        echo -e "${green}1.CONTINUE${reset}"
        echo -e "${red}2.EXIT\n${reset}"
        read conti

        if [ $conti -eq 1 ]
        then
                echo -e "${green}OK${reset}"
	        espeak "OK!" >/dev/null 2>&1
        else
                cowsay -f kiss COME BACK SOON !!! | lolcat
	        espeak "COME BACK SOON." >/dev/null 2>&1
                break

        fi
        num=$(( $num+1 ))
        sleep 5.5

        echo -e "${reset}"

done
