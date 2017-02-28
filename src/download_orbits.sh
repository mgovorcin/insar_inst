#!bin/bash

############################################################################
### This script downloads precise orbit information need for INSAR      ####
### processing.							        ####
### 								        ####
### Data is gathered originally at RSMAS, University of Miami	        ####
### 								        ####
### created by Marin Govorcin, University of Zagreb, Faculty of Geodesy ####
### email: mgovorcin@geof.hr      Date and place:01/10/2017, Miami, USA ####
############################################################################

cd $PARENTDIR;
mkdir -p data
cd data

mkdir -p orbits
echo "downloading Envisat Instruction files ..."
cd orbits && wget -O EnvisatIns.tar.gz "https://www.dropbox.com/s/mfyy5eyrpzntbjh/EnvisatIns.tar.gz?dl=1"; tar -zxvf EnvisatIns.tar.gz;rm EnvisatIns.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

echo "downloading orbit files ..."
cd orbits && wget -O DOR.tar.gz "https://www.dropbox.com/s/f4xoyov0engf2z4/DOR.tar.gz?dl=1"; tar -zxvf DOR.tar.gz;rm DOR.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

cd orbits &&  wget -O POR.tar.gz "https://www.dropbox.com/s/gx7mcv4tyidoc96/POR.tar.gz?dl=1"; tar -zxvf POR.tar.gz;rm POR.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;
cd orbits && wget -O ODR.tar.gz "https://www.dropbox.com/s/8zvtwm6ybx9hvhv/ODR.tar.gz?dl=1"; tar -zxvf ODR.tar.gz;rm ODR.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;
cd orbits && wget -O REAPER_COMBINED.tar.gz "https://www.dropbox.com/s/zp3ib0wjk3vq2hk/REAPER_COMBINED.tar.gz?dl=1"; tar -zxvf REAPER_COMBINED.tar.gz;rm REAPER_COMBINED.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

cd ..;
mkdir -p gmtsar/orbits; 
#downloading orbits from gmtsar webpage - uncheck if u want to download them (5GB)
#cd gmtsar/orbits && curl http://topex.ucsd.edu/gmtsar/tar/ORBITS.tar | tar x;  if [ $? -ne 0 ]; then exit; fi; cd -;
