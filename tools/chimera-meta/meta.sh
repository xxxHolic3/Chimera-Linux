#!/bin/bash
clear

echo "#################################################"
echo "#                                               #"
echo "#  [+] <<Hack/Slash Meta Tools Installer        #"
echo "#  [+] Version : 1 stable                       #"
echo "#  [+] Built for 'chimera GNU/Linux             #"
echo "#      [-] Chimera Project                      #"
echo "#  [+] @noodle                                  #"
echo "#                                               #"
echo "#################################################"
echo ""

for package in `cat metalist`
 do
    sudo apt install -y $package   
done