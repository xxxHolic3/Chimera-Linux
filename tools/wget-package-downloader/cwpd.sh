#!/bin/bash
clear

echo "#################################################"
echo "#                                               #"
echo "#  [+] Chimera Wget Package Downloader          #"
echo "#  [+] Version : 1.1                            #"
echo "#  [+] Built for 'chimera GNU/Linux'            #"
echo "#      [-] Chimera Project                      #"
echo "#  [+] @noodle                                  #"
echo "#                                               #"
echo "#################################################"
echo ""
echo "Default download amd64 & all .deb package"
echo ""

echo "======================= Downloading ========================="
echo ""
sleep 3

for package in `cat listurl`
do
	wget -r -l1 --no-parent -nd -A "all.deb, amd64.deb" $package
done

total_deb=`find *.deb | wc -l`

echo ""
echo "==================== Finish Downloading ======================"
echo ""
echo "[+] Now you have the package !!!"
echo ""
echo "[+] Total Package = " $total_deb
echo ""
