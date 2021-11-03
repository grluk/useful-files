#!/bin/bash

#Backups ;-)
cp ~/.bashrc ~/.bashrc.bak

# Add Home dir local bin folder. Anything with execute permissions in this folder will be available in PATH.
echo "# ~~~~ Changes below here added manually ~~~" >> ~/.bashrc
echo "-- Adding local bin path.--"
if [ -d "$HOME/bin" ]; then
  echo "Directory ~/bin already exists.. skipping."
else
  mkdir ~/bin
fi
echo "PATH='$PATH:~/bin'" >> ~/.bashrc

echo "-- Adding time stamps to history output --"
# Add Timestamps for history file.
echo "export HISTTIMEFORMAT='%F %T '" >> ~/.bashrc

# Alias
# Add nifty nmap script searcher.
echo "-- Adding Alias --"
echo "alias nmapls='ls /usr/share/nmap/scripts | grep $1'" >> ~/.bashrc 
echo "alias gh='history | grep $1'" >> ~/.bashrc #This one from Rob Jervis!

echo "Done, you may need to restart the console session"
