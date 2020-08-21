#!/bin/bash
# Bugreporter v1.0
# Author: @Sci_anto
# https://github.com/Scianto/Bugrepoter
clear
printf "\e[31m ______                                       _              \e[0m\n"       
printf "\e[31m | ___ \                                     | |             \e[0m\n"
printf "\e[31m | |_/ /_   _  __ _ _ __ ___ _ __   ___  _ __| |_ ___ _ __   \e[0m\n"
printf "\e[31m | ___ \ | | |/ _  | |__/ _ \ |_ \ / _ \| '__| __/ _ \ '__|  \e[0m\n"
printf "\e[31m | |_/ / |_| | (_| | | |  __/ |_) | (_) | |  | ||  __/ |     \e[0m\n"
printf "\e[31m \____/ \__,_|\__, |_|  \___| .__/ \___/|_|   \__\___|_|     \e[0m\n"
printf "\e[31m               __/ |         | |                             \e[0m\n"
printf "\e[31m              |___/          |_|                             \e[0m\n"
echo
printf "\e[31m              ..:Created by Sci_anto:..                       \e[0m\n"
echo
echo " Choose your bug name "
echo "   [1*] Reflected XSS (Non-Self)    "
echo "   [2*] Open Redirect   "
echo
     read -p "Enter your choice : " choice
echo
clear
echo
          if [ "$choice" = "1" ];
          then
          echo "  Welcome to Reflected XSS automatic report generator by sci_anto  "
          echo
          read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m] Enter Company name:\e[0m ' company
          echo $Enter
          read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m] Enter Company bug url:\e[0m ' bug
          echo $Enter
          read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m] Enter your payload:\e[0m ' payload
          echo $Enter
          read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m] Enter your name:\e[0m ' name
          echo $Enter
echo
clear
echo "
Hi, $company SECURITY TEAM 

I'M $name 

Vulnerabilty:
Reflected xss in ($bug ).

STEPS TO REPRODUCE :

1).  Go to ($bug ). 
2).  Go to search tab and paste this payload  $payload
    and search .
3). Then see the response in browser and the popup will appear. 

NOTE: I also attached a video POC 

Impact :

With the help of xss a hacker or attacker can perform social engineering on users by redirecting them from real website to fake one. hacker can steal their cookies and download a malware on their system, and there are many more attacking scenarios a skilled attacker can perform with xss.

Regards,
 $name  
"
echo
echo "Copy and paste the above report"
echo
echo "ALL THE BEST!"
       elif [ "$choice" = "2" ];
       then
       echo "Welcome to Open Redirect automatic report generator by sci_anto"
       echo
       read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m] Enter Company name:\e[0m ' company
       echo $Enter
       read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m] Enter Company bug url:\e[0m ' bug         
       echo $Enter
       read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m] Enter the redirect url:\e[0m ' redirect
       echo $Enter
       read -p $'\e[1;92m[\e[0m\e[1;77m?\e[0m\e[1;92m] Enter your name:\e[0m ' name
       echo $Enter
echo
clear
echo "                 OPEN REDIRECT                         "    
echo "
Hi, $company

I have discovered that $company is vulnerable to an Open redirect vulnerability .

Proof Of Concept :
   
   $bug
   
You should be redirected to $redirect

Impact:

The user may be subjected to phishing attacks by being redirected to an untrusted and attacker controlled web page that appears to be a trusted web site. The phishers may then steal the user’s credentials and then use these credentials to access the legitimate web site. Because the server name in the modified link is identical to the original site, phishing attempts have a more trustworthy appearance.

Regards,
 $name
 "
echo
echo "Copy and paste the above report"
echo
echo "ALL THE BEST!"
       else 
       echo "close"
       fi
