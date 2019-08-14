#!/bin/bash
############################
# This script installs texstudio
############################

sudo add-apt-repository ppa:sunderme/texstudio
sudo apt update
sudo apt install texstudio
sudo apt install texlive-base texlive-latex-base texlive-latex-extra texlive-latex-recommended texlive-fonts-recommended texlive-fonts-extra
sudo apt install texlive-latex-recommended-doc
sudo apt install biber texlive-bibtex-extra texlive-lang-german

echo -n "To finish setup: Open texstudio -> Options -> Build -> set 'Default Bibliography Tool' to 'Biber'"
echo -n "Then, enable 'Advanced Options' and then choose 'Adv. Editor' and activate Line Numbers."
echo -n "Optionally, change GUI scaling and font size"

echo -n "Now you might want to install Jabref, too."
echo -n "details on how to do that can be found in this bash script as comments."
echo -n "or here: https://help.jabref.org/en/Installation"

# check your java version:
#java -version
# for ubuntu >=16.04:
#sudo apt install openjfx
# download:
#https://www.fosshub.com/JabRef.html/JabRef-4.1.jar
# then navigate to folder and execute:
#java -jar Jabref-4.1.jar

# https://askubuntu.com/questions/721378/how-to-properly-install-latest-jabref
# then navigate to:
#cd ~/.local/share/applications
# and add something like this:
# create file named "JabRef.desktop" with this content:
#[Desktop Entry]
#Type=Application
#Terminal=false
#Icon=PATH TO YOUR ICON
#Exec=java -jar /path/to/your/JabRef-4.1.jar
#Name=NAME YOUR DESKTOP ICON
