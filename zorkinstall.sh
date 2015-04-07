#!/bin/bash

#Author: 		sc00by - 2015
#Function: 		Fetch, setup, and prepare Zork 1, Zork 2, and Zork 3.
#System:		Debian-based
#Comment:		I used sudo a lot, just to avoid anyone oddly running into permissions issues.

#Install necessary applications

sudo apt-get install unzip;
sudo apt-get install frotz;

#Create directories (IF YOU DO NOT AGREE WITH OR LIKE THIS STRUCTURE, CHANGE IT!)

sudo mkdir ~/Data/Games;
sudo mkdir ~/Data/Games/Infocom;
sudo mkdir ~/Data/Games/Infocom/zork1;
sudo mkdir ~/Data/Games/Infocom/zork2;
sudo mkdir ~/Data/Games/Infocom/zork3;

#Fetch Zork games from website

cd ~/Desktop;
wget https://a.pomf.se/djnkrc.zip; #If this stops working ever, please contact me and I'll repackage it.

#Extract folders and remove zips

sudo unzip djnkrc.zip;
sudo unzip -d ~/Data/Games/Infocom/zork1 zork1.zip;
sudo unzip -d ~/Data/Games/Infocom/zork2 zork2.zip;
sudo unzip -d ~/Data/Games/Infocom/zork3 zork3.zip;
sudo rm djnkrc.zip;
sudo rm zork1.zip;
sudo rm zork2.zip;
sudo rm zork3.zip;

#Rename properly

cd ~/Data/Games/Infocom/zork1/;
sudo mv DATA data;
cd ~/Data/Games/Infocom/zork2/;
sudo mv DATA data;
cd ~/Data/Games/Infocom/zork3/;
sudo mv DATA data;

#Change permissions

cd ~/Data/Games/Infocom/zork1;
sudo chmod -R 777 data;
cd ~/Data/Games/Infocom/zork2;
sudo chmod -R 777 data;
cd ~/Data/Games/Infocom/zork3;
sudo chmod -R 777 data;
