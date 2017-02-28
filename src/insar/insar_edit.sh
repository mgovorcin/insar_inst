#!bin/bash

############################################################################
### This script edits or sets DORIS and ISCE configuration files        ####
### 								        ####
### created by Marin Govorcin, Faculty of Geodesy, University of Zagreb ####
### email: mgovorcin@geof.hr      Date and place:01/10/2017, Miami, USA ####
############################################################################


#################################### EDITING DORIS make files #################################
echo "#!bin/bash">$DORIS_ROOT/edit.sh;
echo "cd $DORIS_ROOT; mkdir -p install; cd -;">>$DORIS_ROOT/edit.sh;
echo "cd $DORIS_ROOT/src && sed -e '49s@set@#set@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines in CONFIGURE
echo "cd $DORIS_ROOT/src && sed -e '268s@$<@$DORIS_CC@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (COMPILER) in CONFIGURE --!!!DORIS needs to be compiled with gcc-4.6 or gcc-4.7, for FIU hpc set g++ and load module gcc/4.6.2
echo "cd $DORIS_ROOT/src && sed -e '273s@$<@y@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (FFTW y) in CONFIGURE
echo "cd $DORIS_ROOT/src && sed -e '283s@$<@$FFTW_LIB@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (FFTW LIB DIR) in CONFIGURE
echo "cd $DORIS_ROOT/src && sed -e '292s@$<@$FFTW_INC@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (FFTW LIB INCLUDE DIR) in CONFIGURE
echo "cd $DORIS_ROOT/src && sed -e '304s@$<@n@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (VECLIB n) in CONFIGURE
echo "cd $DORIS_ROOT/src && sed -e '326s@$<@y@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (LAPACK n) in CONFIGURE
echo "cd $DORIS_ROOT/src && sed -e '336s@$<@$LAPACK_LIB@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (LAPACK n path) in CONFIGURE
echo "cd $DORIS_ROOT/src && sed -e '358s@$<@y@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (LITTLE ENDIAN y) in CONFIGURE
echo "cd $DORIS_ROOT/src && sed -e '367s@$<@n@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (DEBUG version n) in CONFIGURE
echo "cd $DORIS_ROOT/src && sed -e '375s@$<@n@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (BIN DIR /usr/local/bin y) in CONFIGURE
echo "cd $DORIS_ROOT/src && sed -e '378s@$<@$DORIS_HOME@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (BIN DIR /usr/local/bin y) in CONFIGURE
echo "cd $DORIS_ROOT/src && sed -e '411s@set@#set@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines (overwrite makefile) in CONFIGURE
echo "cd $DORIS_ROOT/SARtools && sed -e '25s@/usr/local/bin@$DORIS_BIN@' Makefile>Makefile1; mv Makefile1 Makefile; if [ $? -ne 0 ]; then exit; fi; cd -;">>$DORIS_ROOT/edit.sh; ### this line modifies interatcive lines BIN/DIR in MAKEFILE SARTOOLS

###############################################################################################

#################################### EDITING ISCE scons config ################################

cd $ISCE_BASE; mkdir -p build; mkdir -p install; mkdir -p install/isce; mkdir -p scons_conf;
cd $ISCE_BASE/scons_conf; echo "PRJ_SCONS_BUILD=$ISCE_BASE/build">SConfigISCE; 
echo "PRJ_SCONS_INSTALL=$ISCE_ROOT">>SConfigISCE;
echo "LIBPATH=$STDC_LIB $FFTW_LIB $HDF5_LIB $GDAL_LIB">>SConfigISCE;
echo "CPPPATH=$FFTW_INC $HDF5_INC $GDAL_INC $PYTHON3_INC">>SConfigISCE;
echo "FORTRANPATH=$FFTW_INC">>SConfigISCE;
printf "FORTRAN=gfortran\nCC=gcc\nCXX=g++\n">>SConfigISCE;
echo "MOTIFLIBPATH=$MOTIFLIBPATH">>SConfigISCE;
echo "X11LIBPATH=$X11LIBPATH">>SConfigISCE;
echo "MOTIFINCPATH=$MOTIFINCPATH">>SConfigISCE;
echo "X11INCPATH=$X11INCPATH">>SConfigISCE;

###############################################################################################
