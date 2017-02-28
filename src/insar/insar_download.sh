#!bin/bash

############################################################################
### This script downloads all INSAR related software packages	        ####
### Information and download links can be found in insar_list.txt       ####
### 								        ####
### created by Marin Govorcin, University of Zagreb, Faculty of Geodesy ####
### email: mgovorcin@geof.hr      Date and place:01/10/2017, Miami, USA ####
############################################################################

cd $PARENTDIR;

#downloading DORIS
mkdir -p doris; 
echo "downloading doris ..."
cd doris && wget -O doris_v4.06beta2.tar.gz https://www.dropbox.com/s/6gthn76nlzxpbxv/doris_v4.06beta2.tar.gz?dl=1;tar -zxvf doris_v4.06beta2.tar.gz; rm doris_v4.06beta2.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;
mkdir -p doris/patches
cd doris/patches && wget -O ENVISAT_TOOLS_v2.3.tar.gz https://www.dropbox.com/s/493yw8537jnq77b/ENVISAT_TOOLS_v2.3.tar.gz?dl=1; tar -zxvf ENVISAT_TOOLS_v2.3.tar.gz; rm ENVISAT_TOOLS_v2.3.tar.gz;  if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading GETORB
mkdir -p depend/getorb;
echo "downloading getorb ..."
cd depend/getorb && wget -O getorb_2.3.2.tar.gz "https://www.dropbox.com/s/1ctjs9dpgacsw6u/getorb_2.3.2.tar.gz?dl=1"; tar -zxvf getorb_2.3.2.tar.gz;rm getorb_2.3.2.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading GMTSAR5
mkdir -p gmtsar;
echo "downloading GMTSAR5 ..."
cd gmtsar && wget -O GMT5SAR.tar https://www.dropbox.com/s/8ouo4gncgxmsb8i/GMT5SAR.tar?dl=1; tar -xvf GMT5SAR.tar; rm GMT5SAR.tar;  if [ $? -ne 0 ]; then exit; fi; cd -;
cd gmtsar/GMT5SAR; autoconf ; cd -;


#downloading GIANT 
mkdir -p giant;
echo "downloading GIANT ...  "


#downloading ISCE
mkdir -p isce;
echo "downloading ISCE ..."


#downloading PYAPS 
mkdir depend/PyAPS;
echo "downloading pyaps (via svn checkout) ..."

#downloading PySAR 
mkdir -p PySAR;
echo "downloading PySAR ...  "
cd PySAR && wget -O PySAR.tar.gz "https://www.dropbox.com/s/rvyoe435y1m9tq5/PySAR.tar.gz?dl=1"; tar -zxvf PySAR.tar.gz;rm PySAR.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading ROI-PAC
mkdir -p roipac; 
echo "downloading roipac ..."
cd roipac && wget -O ROI_PAC_3_0_1.tar https://www.dropbox.com/s/aen9yzmt470or2f/ROI_PAC_3_0_1.tar?dl=1; tar -xvf ROI_PAC_3_0_1.tar;rm ROI_PAC_3_0_1.tar;  if [ $? -ne 0 ]; then exit; fi; cd -;
mkdir -p roipac/additional
cd roipac/additional && wget -O roipac_dodatno.tar.gz https://www.dropbox.com/s/54yh3exms3ayh0m/roipac_dodatno.tar.gz?dl=1; tar -xvf roipac_dodatno.tar.gz;rm roipac_dodatno.tar.gz;  if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading SNAPHU
mkdir -p depend/snaphu;
echo "downloading snaphu ..."
cd depend/snaphu && wget -O snaphu-v1.4.2.tar.gz "https://www.dropbox.com/s/y3e394rmrqdk3xo/snaphu-v1.4.2.tar.gz?dl=1"; gunzip snaphu-v1.4.2.tar.gz; tar -xvf snaphu-v1.4.2.tar; rm snaphu-v1.4.2.tar; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading STAMPS
mkdir -p stamps;
echo "downloading STAMPS ...";
cd stamps && wget -O StaMPS_v3.3b1.tar.gz https://www.dropbox.com/s/brscyu8rq8sp736/StaMPS_v3.3b1.tar.gz?dl=1;tar -xvf StaMPS_v3.3b1.tar.gz;rm StaMPS_v3.3b1.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;
cd stamps && wget -O StaMPS_patch.tar https://www.dropbox.com/s/zpta4gsbezzyvk5/StaMPS_patch.tar?dl=1; tar -xvf StaMPS_patch.tar;rm StaMPS_patch.tar; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading TRAIN 
mkdir -p train;

#downloading varres 
mkdir -p depend/varres;



