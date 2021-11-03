#!/bin/bash

#Add Home dir local bin folder. Anything with execute permissions in this folder will be available in PATH.
echo "-- Adding local bin path.--"
echo "PATH=$PATH:~/bin" >> ~/.bashrc
if [ -d "~/bin" ]; then
  echo "Directory ~/bin already exists.. skipping."
else
  mkdir ~/bin
fi

echo "-- Adding time stamps to history output --"
#Add Timestamps for history file.
echo "export HISTTIMEFORMAT='%F %T '" >> ~/.bashrc

#Alias
#Add nifty nmap script searcher.
echo "-- Adding Alias --"
echo "alias nmapls='ls /usr/share/nmap/scripts | grep $1'" >> ~/.bashrc 
echo "alias gh='history | grep $1' >> ~/.bashrc #This one from Rob Jervis!

echo "Done, you may need to restart the console session"
