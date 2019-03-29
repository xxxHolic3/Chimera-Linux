#!/bin/bash
clear

echo "#################################################"
echo "#                                               #"
echo "#  [+] All Repo Package Downloader              #"
echo "#  [+] Version : 1.1.0                          #"
echo "#  [+] Built for 'chimera GNU/Linux'            #"
echo "#      [-] chimera project                      #"
echo "#  [+] @noodle                                  #"
echo "#                                               #"
echo "#################################################"
echo ""

apt-cache  dumpavail |grep -oP "(?<=Package: ).*" >> daftarpaket

for package in `cat daftarpaket`
 do
    sudo apt-get --reinstall install -y --download-only $package   
 done
