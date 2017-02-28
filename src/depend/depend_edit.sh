#!bin/bash

############################################################################
### This script edits LAPACK, GMT5, NCLNCARG,G2CLIB, WRFV AND WPS       ####
### make files in order to successfully install those softwares	        ####
### or ibraries							        ####
### 								        ####
### created by Marin Govorcin, Faculty of Geodesy University of Zagreb  ####
### email: mgovorcin@geof.hr      Date and place:01/10/2017, Miami, USA ####
############################################################################

#################################### EDITING LAPACK make files #################################
echo "editing LAPACK make files"
cd $LAPACKHOME; cp make.inc.example make.inc;
cd $LAPACKHOME && sed -e '20s@-frecursive@-fPIC@' make.inc>make1.inc; mv make1.inc make.inc; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line modifies CFLAGS in make.inc file
cd $LAPACKHOME && sed -e '22s@-frecursive@-fPIC@' make.inc>make1.inc; mv make1.inc make.inc; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line modifies CFLAGS in make.inc file
cd $LAPACKHOME && sed -e '77s@/librefblas.a@/lib/libblas.so@' make.inc>make1.inc; mv make1.inc make.inc; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line changes name of library output in make.inc file
cd $LAPACKHOME && sed -e '79s@liblapack.a@./lib/liblapack.so@' make.inc>make1.inc; mv make1.inc make.inc; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line changes name of library output in make.inc file
cd $LAPACKHOME/SRC && sed -e '458s!$(ARCH) $(ARCHFLAGS) $@ $(ALLOBJ) $(ALLXOBJ) $(DEPRECATED)!$(LOADER) $(LOADOPTS) -shared -Wl,-soname,liblapack.so -o $@ $(ALLOBJ) $(ALLXOBJ) $(DEPRECATED) ../lib/libblas.so!g' Makefile>Makefile1; mv Makefile1 Makefile; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line does changes in order to install shared libraries/liblapack
cd $LAPACKHOME/SRC && sed -e '459d' Makefile>Makefile1; mv Makefile1 Makefile; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line does changes in order to install shared libraries/liblapack
cd $LAPACKHOME/BLAS/SRC && sed -e '141s!$(ARCH) $(ARCHFLAGS) $@ $(ALLOBJ)!$(LOADER) $(LOADOPTS) -shared -Wl,-soname,libblas.so -o$@ $(ALLOBJ)!g' Makefile>Makefile1; mv Makefile1 Makefile; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line does changes in order to install shared libraries/libblas
cd $LAPACKHOME/BLAS/SRC && sed -e '142d' Makefile>Makefile1; mv Makefile1 Makefile; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line does changes in order to install shared libraries/libblas
###############################################################################################

#################################### EDITING GMT5 make files ################################
echo "editing GMT5 make files"
cd $GMT5_ROOT/cmake; cp ConfigUserTemplate.cmake ConfigUser.cmake;
cd $GMT5_ROOT/cmake && echo "set (CMAKE_INSTALL_PREFIX "$GMT5_HOME")" >> ConfigUser.cmake; if [ $? -ne 0 ]; then exit; fi; cd -;
cd $GMT5_ROOT/cmake && echo "set (NETCDF_ROOT "$NETCDF_BIN")" >> ConfigUser.cmake; if [ $? -ne 0 ]; then exit; fi; cd -;
cd $GMT5_ROOT/cmake && echo "set (GDAL_ROOT "$GDAL_BIN")" >> ConfigUser.cmake; if [ $? -ne 0 ]; then exit; fi; cd -;
cd $GMT5_ROOT/cmake && echo "set (FFTW3_ROOT "$FFTW_HOME")" >> ConfigUser.cmake; if [ $? -ne 0 ]; then exit; fi; cd -; #check this
cd $GMT5_ROOT/cmake && echo "set (ZLIB_ROOT "$ZLIB_HOME")" >> ConfigUser.cmake; if [ $? -ne 0 ]; then exit; fi; cd -;
cd $GMT5_ROOT/cmake && echo "set (LAPACK_LIBRARY "V:$LAPACK_LIB/liblapack.so")" >> ConfigUser.cmake; if [ $? -ne 0 ]; then exit; fi; cd -;
cd $GMT5_ROOT/cmake && echo "set (GSHHG_ROOT "$GMTGSHHG")" >> ConfigUser.cmake; if [ $? -ne 0 ]; then exit; fi; cd -;
cd $GMT5_ROOT/cmake && echo "set (PCRE_ROOT "$PCRE_BIN")" >> ConfigUser.cmake; if [ $? -ne 0 ]; then exit; fi; cd -;
cd $GMT5_ROOT/cmake && echo "set (DCW_ROOT "$DCW")" >> ConfigUser.cmake; if [ $? -ne 0 ]; then exit; fi; cd -;

################################################################################################

#################################### EDITING G2CLIB make files ################################
cd $G2CLIB_ROOT && sed -e '21s@-I/usr/local/include@-I$(JASPER_INC) -I$(JPEG_INC)@' makefile>makefile1; mv makefile1 makefile; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line modifies CFFLAGS in makefile
################################################################################################

#################################### EDITING NCLNCARG make files ################################
echo "#!bin/bash">$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '91s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '206s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '232s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '264s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '302s@$<@$NCLNCARG_HOME@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '314s@$<@$NCLNCARG_HOME@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '333s@$<@$NCLNCARG_HOME@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '365s@$<@$NCLNCARG_HOME/tmp@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '378s@$<@$NCLNCARG_HOME/tmp@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '431s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '466s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '513s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '523s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '535s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '549s@$<@n@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '591s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '631s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '665s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '694s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '723s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '758s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '791s@$<@n@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '824s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '856s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '887s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '917s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '1075s@$<@/usr/lib $X11_LIB $BZIP_LIB $JPEG_LIB $ZLIB_LIB $PNG_LIB $CURL_LIB $FREETYPE_LIB $SZIP_LIB $XZ_LIB $PIXMAN_LIB $CAIRO_LIB $PCRE_LIB $JASPER_LIB $PROJ_LIB $HDF4_LIB $HDF5_LIB $NETCDF_LIB $LAPACK_LIB $GDAL_LIB $G2CLIB_LIB $HDFEOS2_LIB $HDFEOS5_LIB $UDUNITS_LIB@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '1126s@$<@/usr/include $X11_INC $BZIP_INC $JPEG_INC $ZLIB_INC $PNG_INC $CURL_INC $FREETYPE_INC $SZIP_INC $XZ_INC $PIXMAN_INC $CAIRO_INC $PCRE_INC $JASPER_INC $PROJ_INC $HDF4_INC $HDF5_INC $NETCDF_INC $TRIANGLE_INC $GDAL_INC $G2CLIB_INC $HDFEOS2_INC $HDFEOS5_INC $UDUNITS_INC@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '1166s@$<@n@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
echo "cd $NCLNCARG_ROOT && sed -e '1178s@$<@y@' Configure>Configure1; mv Configure1 Configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$NCLNCARG_ROOT/edit.sh;
cd $NCLNCARG_ROOT && sh edit.sh; cd -;
################################################################################################

#################################### EDITING WRFV AND WPS make files ###########################
echo "#!bin/bash">$WRFV_HOME/edit.sh;
echo "cd $WRFV_HOME && sed -e '215s@read resp@resp="y"@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$WRFV_HOME/edit.sh;
echo "cd $WRFV_HOME && sed -e '230s@read resp@resp=$NETCDFF_INC@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$WRFV_HOME/edit.sh;
echo "cd $WRFV_HOME && sed -e '238s@read resp@resp=$NETCDFF_LIB@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$WRFV_HOME/edit.sh;
echo "#!bin/bash">$WPSV_HOME/edit.sh;
echo "cd $WPSV_HOME && sed -e '62s@read resp@resp="y"@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$WPSV_HOME/edit.sh;
echo "cd $WPSV_HOME && sed -e '77s@read resp@resp=$NETCDFF_INC@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$WPSV_HOME/edit.sh;
echo "cd $WPSV_HOME && sed -e '85s@read resp@resp=$NETCDFF_LIB@' configure>configure1; mv configure1 configure; if [ $? -ne 0 ]; then exit; fi; cd -;">>$WPSV_HOME/edit.sh;
