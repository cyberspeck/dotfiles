#!/bin/bash
############################
# This script installs tex (and optionally texstudio)
############################

sudo apt install texlive-base texlive-latex-base texlive-latex-extra texlive-latex-recommended texlive-fonts-recommended texlive-fonts-extra texlive-latex-recommended-doc biber texlive-bibtex-extra texlive-lang-german texlive-lang-english

echo -n "Now you might want to install Jabref or texstudio, too."
echo -n "details on how to do that can be found in this bash script as comments."
echo -n "or here: https://help.jabref.org/en/Installation"

#sudo add-apt-repository ppa:sunderme/texstudio
#sudo apt update
#sudo apt install texstudio
#echo -n "To finish setup: Open texstudio -> Options -> Build -> set 'Default Bibliography Tool' to 'Biber'"
#echo -n "Then, enable 'Advanced Options' and then choose 'Adv. Editor' and activate Line Numbers."
#echo -n "Optionally, change GUI scaling and font size"

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
