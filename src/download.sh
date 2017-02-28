#!bin/bash 

cd depend; sh depend_download.sh; cd -;
cd insar; sh insar_download.sh; cd -;
cd rsmas; sh download_rsmas.sh; cd -;

