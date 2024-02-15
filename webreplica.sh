#!/bin/bash

red="\033[38;5;196m"
green="\033[38;5;82m"
yellow="\033[0;33m"
blue="\033[38;5;51m"
reset="\033[0m" # Reset color to default

toilet -f mono12 -F metal -W WEB ___ REPLICA | lolcat
echo -e "AUTOMATED WEBSITE CLONER" | lolcat
cowsay -f dragon-and-cow PROFESSOR VISHAL professorvishal31@gmail.com | lolcat

num=1
while true
do
	echo -e "\nENTER THE URL OF THE WEBSITE TO CLONE : " | lolcat
	read url

	echo -e "\n{green}Clonning The Web Page ...."
	wget --mirror --convert-links --adjust-extension --page-requisites $url

        echo -e "\n${yellow}Want to scan more targets?\n${reset}"
        echo -e "${green}1.CONTINUE${reset}"
        echo -e "${red}2.EXIT\n${reset}"
        read conti

        if [ $conti -eq 1 ]
        then
                echo -e "${green}OK${reset}"
        else
                cowsay -f kiss COME BACK SOON !!! | lolcat
                break

        fi
        num=$(( $num+1 ))
        sleep 5.5

        echo -e "${reset}"

done
