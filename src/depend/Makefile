############################################################################
### This script builds and installs all dependencies needed for 	####
### installation of INSAR related software packages		        ####
### 								        ####
### created by Marin Govorcin, Faculty of Geodesy,University of Zagreb  ####
### email: mgovorcin@geof.hr      Date and place:01/10/2017, Miami, USA ####
############################################################################

CC=gcc 
CPP=cpp
CXX=g++
FC=gfortran



.PHONY: LIBXSLT HDF5 FFTW3 GM5 HDFEOS2 HDFEOS5 HDFVIEW HDFJAVA XV WPSV

all:
	make PKGCONFIG	
	make LIBXDMCP
	make BYACC
	make M4
	make LIBTOOL
	make TEXINFO
	make AUTOCONF
	make BISON
	make HELP2MAN
	make GETTEXT
	make FLEX
	make AUTOMAKE
	make CMAKE
	make ZLIB
	make SZIP
	make BZIP
	make XZ	
	make CURL
	make ASPELL
	make EXPAT
	make FREETYPE
	make INTLTOOL
	make WXWIDGETS
	make XERCES
	make PYTHON
	make LIBXML
	make LIBXSLT
	make JPEG
	make PNG
	make PIXMAN
	make CAIRO
	make XMLCOPYEDITOR
	make SQLITE
	make PCRE
	make GEOS
	make JASPER
	make GRIBAPI
	make TIFF
	make PROJ4
	make GEOTIFF
	make BOOST
	make HDF4
	make HDF5
	make NETCDF
	make YASM
	make FFMPEG
	make TRIANGLE
	make GHOSTSCRIPT
	make IMAGEMAGICK
	make LAPACK
	make MDX
	make FFTW2
	make FFTW3
	make PYGRIB
	make GDAL
	make GMT4
	make GMT5
	make G2CLIB
	make HDFEOS2
	make HDFEOS5
	make UDUNITS
	make OPENSSL
	make NCLNCARG
	make LIBSSH
	make WRFV
	make WPSV
		
ASPELL:
	mkdir -p $(ASPELL_ROOT)/install
	cd $(ASPELL_ROOT); ./configure --prefix=$(ASPELL_HOME)
	cd $(ASPELL_ROOT); make
	cd $(ASPELL_ROOT); make install		
AUTOCONF:
	mkdir -p $(AUTOCONF_ROOT)/install;
	cd $(AUTOCONF_ROOT); ./configure --prefix=$(AUTOCONF_HOME)
	cd $(AUTOCONF_ROOT); make
	cd $(AUTOCONF_ROOT); make install
AUTOMAKE:
	mkdir -p $(AUTOMAKE_ROOT)/install;
	cd $(AUTOMAKE_ROOT); ./configure --prefix=$(AUTOMAKE_HOME)
	cd $(AUTOMAKE_ROOT); make
	cd $(AUTOMAKE_ROOT); make install
BISON:
	mkdir -p $(BISON_ROOT)/install;
	cd $(BISON_ROOT); ./configure --prefix=$(BISON_HOME)
	cd $(BISON_ROOT); make
	cd $(BISON_ROOT); make install
BOOST:
	mkdir -p $(BOOST_ROOT)/install;	
	cd $(BOOST_ROOT);	sh bootstrap.sh --prefix=$(BOOST_HOME)
	cd $(BOOST_ROOT);	./b2 install
BYACC:
	mkdir -p $(BYACC_ROOT)/install;
	cd $(BYACC_ROOT); ./configure --enable-shared --prefix=$(BYACC_HOME)
	cd $(BYACC_ROOT); make
	cd $(BYACC_ROOT); make install
BZIP:
	cd $(BZIP_ROOT); mkdir -p install
	cd $(BZIP_ROOT) && sed -e '24s@-Wall@-Wall -fPIC@' Makefile>Makefile1; mv Makefile1 Makefile;
	cd $(BZIP_ROOT) && sed -e '27s@PREFIX@PREFIX= $(BZIP_HOME)#@' Makefile>Makefile1; mv Makefile1 Makefile;	
	cd $(BZIP_ROOT); make
	cd $(BZIP_ROOT); make install
CAIRO:
	mkdir -p $(CAIRO_ROOT)/install;
	cd $(CAIRO_ROOT); ./configure --enable-shared --prefix=$(CAIRO_HOME) pixman_CFLAGS=-I$(PIXMAN_INC)/pixman-1 pixman_LIBS="-L$(PIXMAN_LIB) -lpixman-1" 
	cd $(CAIRO_ROOT); make 
	cd $(CAIRO_ROOT); make all install
CMAKE:
	mkdir -p $(CMAKE_ROOT)/install
	cd $(CMAKE_ROOT); ./configure --prefix=$(CMAKE_HOME)
	cd $(CMAKE_ROOT); make
	cd $(CMAKE_ROOT); make install
CURL:
	mkdir -p $(CURL_ROOT)/install
	cd $(CURL_ROOT); ./configure --prefix=$(CURL_HOME) --with-zlib=$(ZLIB_HOME) --with-pic
	cd $(CURL_ROOT); make
	cd $(CURL_ROOT); make all install
EXPAT:
	mkdir -p $(EXPAT_ROOT)/install
	cd $(EXPAT_ROOT); ./configure --prefix=$(EXPAT_HOME) 
	cd $(EXPAT_ROOT); make
	cd $(EXPAT_ROOT); make install
FREETYPE:
	mkdir -p $(FREETYPE_ROOT)/install;
	cd $(FREETYPE_ROOT); ./configure --enable-shared --prefix=$(FREETYPE_HOME)
	cd $(FREETYPE_ROOT); make 
	cd $(FREETYPE_ROOT); make all install
FLEX:
	mkdir -p $(FLEX_ROOT)/install;
	cd $(FLEX_ROOT); ./configure --enable-shared --prefix=$(FLEX_HOME)
	cd $(FLEX_ROOT); make
	cd $(FLEX_ROOT); make install
FFMPEG:
	cd $(FFMPEG_ROOT); mkdir -p install	
	cd $(FFMPEG_ROOT);	./configure --enable-shared --prefix=$(FFMPEG_HOME)
	cd $(FFMPEG_ROOT); make
	cd $(FFMPEG_ROOT); make install
FFTW2:
	cd $(FFTW_ROOT); mkdir -p install	
	cd $(FFTW2_ROOT);	./configure --enable-float --enable-shared --enable-type-prefix --prefix=$(FFTW_HOME) CFLAGS="-O3 -fomit-frame-pointer -fno-schedule-insns -fstrict-aliasing -fPIC -mpreferred-stack-boundary=4"; 
	cd $(FFTW2_ROOT);	make
	cd $(FFTW2_ROOT);	make install
	cd $(FFTW2_ROOT);	cp -f fftw/*fftw*.h $(FFTW_INC)
	cd $(FFTW2_ROOT);	cp -f rfftw/*fftw*.h $(FFTW_INC)
FFTW3:	
	cd $(FFTW3_ROOT);	./configure --enable-float --enable-shared --enable-type-prefix --prefix=$(FFTW_HOME) CFLAGS="-O3 -fomit-frame-pointer -fno-schedule-insns -fstrict-aliasing -fPIC -mpreferred-stack-boundary=4"; 
	cd $(FFTW3_ROOT);	make
	cd $(FFTW3_ROOT);	make install
	cd $(FFTW_HOME);	cp -f lib/*fftw* .
G2CLIB:
	cd $(G2CLIB_ROOT); mkdir -p $(G2CLIB_ROOT)/lib; mkdir -p $(G2CLIB_ROOT)/include; 	
	cd $(G2CLIB_ROOT); make all
	cd $(G2CLIB_ROOT); mv libgrib2c.a $(G2CLIB_LIB); cp *.h $(G2CLIB_INC)
GDAL: 
	cd $(GDAL_ROOT);	./configure --prefix=$(GDAL_HOME) --without-pam --with-jpeg=$(JPEG_HOME) --with-sqlite3=$(SQLITE_HOME) --with-libtiff=$(TIFF_HOME) --with-geotiff=$(GEOTIFF_HOME) --with-expat=builtin --with-python --with-hdf5=$(HDF5_HOME) --with-netcdf=$(NETCDF_HOME) --with-geos=$(GEOS_BIN)/geos-config --with-jasper=$(JASPER_HOME) --without-grib --with-static-proj4=$(PROJ_HOME)
	cd $(GDAL_ROOT); sed -e '36s@(SDE_LIB)@(SDE_LIB) -L$(XZ_LIB) -llzma@' GDALmake.opt>GDALmake.opt1; mv GDALmake.opt1 GDALmake.opt
	cd $(GDAL_ROOT); make
	cd $(GDAL_ROOT); make install
GEOS:
	cd $(GEOS_ROOT); mkdir -p install
	cd $(GEOS_ROOT); ./configure --prefix=$(GEOS_HOME)
	cd $(GEOS_ROOT); make
	cd $(GEOS_ROOT); make install
GEOTIFF:
	cd $(GEOTIFF_ROOT); mkdir -p install
	cd $(GEOTIFF_ROOT); ./configure --enable-shared --with-libtiff=$(TIFF_HOME) --with-proj=$(PROJ_HOME)	--prefix=$(GEOTIFF_HOME)
	cd $(GEOTIFF_ROOT); make
	cd $(GEOTIFF_ROOT); make install
GETTEXT:
	mkdir -p $(GETTEXT_ROOT)/install;
	cd $(GETTEXT_ROOT); ./configure --prefix=$(GETTEXT_HOME)
	cd $(GETTEXT_ROOT); make
	cd $(GETTEXT_ROOT); make install
GHOSTSCRIPT:
	cd $(GHOSTSCRIPT_ROOT); mkdir -p install	
	cd $(GHOSTSCRIPT_ROOT);	./configure --enable-shared --prefix=$(GHOSTSCRIPT_HOME)
	cd $(GHOSTSCRIPT_ROOT); make
	cd $(GHOSTSCRIPT_ROOT); make install
GMT4:
	cd $(GMT4_ROOT); mkdir -p install; mkdir -p install/share; mkdir -p install/share/doc; mkdir -p install/share/doc/gmt; mkdir -p install/man; 
	cd $(GMT4_ROOT); ./configure --prefix=$(GMT4_HOME) --enable-netcdf=$(NETCDF_HOME) --enable-matlab=$(MATLAB_HOME) --enable-shared --enable-triangle --mandir="$(GMT4_HOME)/man" --docdir="$(GMT4_HOME)/share/doc/gmt" --datadir="$(GMT4_HOME)/share" --disable-mex --disable-xgrid --enable-gdal="$(GDAL_BIN)/gdal-config" --with-gshhg-dir=$(GMTGSHHG)
	cd $(GMT4_ROOT)/src; sed -e '113s@^@GDAL_INC = -I$(GDAL_INC)\n#@' config.mk>config1.mk; mv config1.mk config.mk;
	cd $(GMT4_ROOT)/src; sed -e '115s@^@GDAL_LIB = -L$(GDAL_LIB) -lgdal\n#@' config.mk>config1.mk; mv config1.mk config.mk;
	cd $(GMT4_ROOT); make all
	cd $(GMT4_ROOT); make install-all
GMT5:
	cd $(GMT5_ROOT); mkdir -p install
	cd $(GMT5_ROOT)/cmake; cmake ..
	cd $(GMT5_ROOT)/cmake; make 
	cd $(GMT5_ROOT)/cmake; make install
	cd $(GMT_BASE); mkdir this_gmt
	ln -sf $(GMT4_HOME) $(GMT_BASE)/this_gmt
GRIBAPI:
	cd $(GRIBAPI_ROOT); mkdir -p install	
	cd $(GRIBAPI_ROOT); ./configure --prefix $(GRIBAPI_HOME) --with-jasper=$(JASPER_HOME)
	cd $(GRIBAPI_ROOT); make
	cd $(GRIBAPI_ROOT); make install
HELP2MAN:
	mkdir -p $(HELP2MAN_ROOT)/install;
	cd $(HELP2MAN_ROOT); ./configure --prefix=$(HELP2MAN_HOME)
	cd $(HELP2MAN_ROOT); make
	cd $(HELP2MAN_ROOT); make install
HDF4:
	mkdir -p $(HDF4_ROOT)/install;
	cd $(HDF4_ROOT); ./configure --enable-shared  --disable-fortran --disable-netcdf --prefix=$(HDF4_HOME) --with-zlib=$(ZLIB_HOME) --with-jpeg=$(JPEG_HOME)
	cd $(HDF4_ROOT); make
	cd $(HDF4_ROOT); make install
HDF5: 
	cd $(HDF5_ROOT); mkdir -p install	
	cd $(HDF5_ROOT);	./configure --prefix=$(HDF5_HOME) --enable-cxx --with-zlib=$(ZLIB_HOME) --with-szlib=$(SZIP_HOME) 
	cd $(HDF5_ROOT); make all
	cd $(HDF5_ROOT); make all install
HDFEOS2:
	cd $(HDFEOS2_ROOT); mkdir -p install
	cd $(HDFEOS2_ROOT); ./configure CC=$(HDF4_BIN)/h4cc --with-hdf4=$(HDF4_HOME) --with-zlib=$(ZLIB_HOME) --with-jpeg=$(JPEG_HOME) --prefix=$(HDFEOS2_HOME)
	cd $(HDFEOS2_ROOT); make 
	cd $(HDFEOS2_ROOT); make install
HDFEOS5:
	cd $(HDFEOS5_ROOT); mkdir -p install
	cd $(HDFEOS5_ROOT); ./configure CC=$(HDF5_BIN)/h5cc --with-hdf5=$(HDF5_HOME) --with-zlib=$(ZLIB_HOME) --with-szlib=$(SZIP_HOME) --prefix=$(HDFEOS5_HOME)
	cd $(HDFEOS5_ROOT); make 
	cd $(HDFEOS5_ROOT); make all install
IMAGEMAGICK:
	cd $(IMAGEMAGICK_ROOT); mkdir -p install
	cd $(IMAGEMAGICK_ROOT); ./configure --prefix=$(IMAGEMAGICK_HOME)  --with-gs-font-dir=$(GHOSTSCRIPT_FONTS) LDFLAGS="-L$(BZIP_LIB) -L$(JPEG_LIB)"
	cd $(IMAGEMAGICK_ROOT); make 
	cd $(IMAGEMAGICK_ROOT); make install
INTLTOOL:
	mkdir -p $(INTLTOOL_ROOT)/install
	cd $(INTLTOOL_ROOT); ./configure --prefix=$(INTLTOOL_HOME)
	cd $(INTLTOOL_ROOT); make
	cd $(INTLTOOL_ROOT); make install
JASPER:
	cd $(JASPER_ROOT); mkdir -p install	
	cd $(JASPER_ROOT);  patch -Np1 -i ../jasper-1.900.1-security_fixes-2.patch
	cd $(JASPER_ROOT);  ./configure --prefix $(JASPER_HOME) --enable-shared --disable-static --mandir=$(JASPER_HOME)/share/man
	cd $(JASPER_ROOT);  make
	cd $(JASPER_ROOT);  make install

JPEG:
	mkdir -p $(JPEG_ROOT)/install;
	cd $(JPEG_ROOT); ./configure --enable-shared --prefix=$(JPEG_HOME)
	cd $(JPEG_ROOT); make 
	cd $(JPEG_ROOT); make install
LAPACK:
	mkdir -p $(LAPACKHOME)/lib; 
	cd $(LAPACKHOME); make blaslib
	cd $(LAPACKHOME); make lapacklib
LIBSSH:
	mkdir -p $(LIBSSH_ROOT)/install; 
	cd $(LIBSSH_ROOT);	./configure --enable-shared --prefix=$(LIBSSH_HOME) --with-libssl-prefix=$(OPENSSL_HOME)
	cd $(LIBSSH_ROOT); make
	cd $(LIBSSH_ROOT); make install
LIBTOOL:
	mkdir -p $(LIBTOOL_ROOT)/install;
	cd $(LIBTOOL_ROOT); ./configure --prefix=$(LIBTOOL_HOME)
	cd $(LIBTOOL_ROOT); make
	cd $(LIBTOOL_ROOT); make install

LIBXDMCP:
	mkdir -p $(LIBXDMCP_ROOT)/install
	cd $(LIBXDMCP_ROOT); ./configure --prefix=$(LIBXDMCP_HOME)
	cd $(LIBXDMCP_ROOT); make
	cd $(LIBXDMCP_ROOT); make install
LIBXML:
	mkdir -p $(LIBXML_ROOT)/install
	cd $(LIBXML_ROOT); ./configure --prefix=$(LIBXML_HOME) LDFLAGS=-L$(ZLIB_LIB)
	cd $(LIBXML_ROOT); make
	cd $(LIBXML_ROOT); make install
LIBXSLT:
	mkdir -p $(LIBXSLT_ROOT)/install
	cd $(LIBXSLT_ROOT); ./configure --prefix=$(LIBXSLT_HOME) 
	cd $(LIBXSLT_ROOT); make
	cd $(LIBXSLT_ROOT); make install
M4:
	mkdir -p $(M4_ROOT)/install;
	cd $(M4_ROOT); ./configure --prefix=$(M4_HOME)
	cd $(M4_ROOT); make
	cd $(M4_ROOT); make install
MDX:
	cd $(MDX_ROOT); make -f Makemdx_gfortran 
NCLNCARG:
	cd $(NCLNCARG_ROOT); mkdir -p install; mkdir -p install/tmp;
	cp $(TRIANGLE_ROOT)/*.h $(NCLNCARG_ROOT)/ni/src/lib/hlu/.
	cp $(TRIANGLE_ROOT)/*.c $(NCLNCARG_ROOT)/ni/src/lib/hlu/.
	cd $(NCLNCARG_ROOT); chmod 777 Configure; ./Configure -v
	cd $(NCLNCARG_ROOT); make Info
	cd $(NCLNCARG_ROOT)/config && sed -e '25s@-fopenmp@-fopenmp -std=c99@' LINUX>Linux1;mv Linux1 LINUX;
	cd $(NCLNCARG_ROOT); make Everything > make_out.txt 2>&1
NETCDF:
	cd $(NETCDF_ROOT); mkdir -p install
	cd $(NETCDF_ROOT); ./configure --prefix=$(NETCDF_HOME) CPPFLAGS=-I$(HDF5_INC) LDFLAGS=-L$(HDF5_LIB) --with-zlib=$(ZLIB_HOME) --with-szlib=$(SZIP_HOME) --enable-netcdf-4 
	cd $(NETCDF_ROOT); make check
	cd $(NETCDF_ROOT); make all install
	cd $(NETCDFF_ROOT); mkdir -p install
	cd $(NETCDFF_ROOT); ./configure --prefix=$(NETCDFF_HOME) --disable-dap --disable-netcdf-4 --disable-shared
	cd $(NETCDFF_ROOT); make all install
OPENSSL:
	cd $(OPENSSL_ROOT); mkdir -p install
	cd $(OPENSSL_ROOT); ./config -DL_ENDIAN --prefix=$(OPENSSL_HOME) 
	cd $(OPENSSL_ROOT); make 
	cd $(OPENSSL_ROOT); make install_sw
PCRE:
	mkdir -p $(PCRE_ROOT)/install; 
	cd $(PCRE_ROOT); ./configure --enable-shared --prefix=$(PCRE_HOME)
	cd $(PCRE_ROOT); make
	cd $(PCRE_ROOT); make install
PIXMAN:
	mkdir -p $(PIXMAN_ROOT)/install;
	cd $(PIXMAN_ROOT); ./configure --enable-shared --prefix=$(PIXMAN_HOME) 
	cd $(PIXMAN_ROOT); make 
	cd $(PIXMAN_ROOT); make all install
PKGCONFIG:
	mkdir -p $(PKGCONFIG_ROOT)/install;
	cd $(PKGCONFIG_ROOT); ./configure --enable-shared --prefix=$(PKGCONFIG_HOME)
	cd $(PKGCONFIG_ROOT); make
	cd $(PKGCONFIG_ROOT); make install
PNG:
	mkdir -p $(PNG_ROOT)/install;
	cd $(PNG_ROOT); ./configure --enable-shared --prefix=$(PNG_HOME) LDFLAGS=-L$(ZLIB_LIB)
	cd $(PNG_ROOT); make 
	cd $(PNG_ROOT); make install
PROJ4:
	cd $(PROJ_ROOT); mkdir -p install
	cd $(PROJ_ROOT); ./configure --enable-shared --prefix=$(PROJ_HOME)
	cd $(PROJ_ROOT); make
	cd $(PROJ_ROOT); make install	
PYGRIB:
	cd $(PYGRIB_ROOT);  python setup.py build
	cd $(PYGRIB_ROOT);  python setup.py install
	cd $(PYGRIB_ROOT);  python test.py
PYTHON:
	echo " ...installing anaconda python....  ...please wait.... "
	cd $(PYTHON_BASE);  bash Anaconda3-4.0.0-Linux-x86_64.sh -b -p $(PYTHON_HOME)
	conda create --name python2 python=2.7 anaconda --yes
	conda install -c auto pykml=0.1.0 -n python2 --yes
	conda install -c jjhelmus pyproj -n python2 --yes
	conda install -c inati unzip=6.0 -n python2 --yes
	cd $(PYTHON_HOME)/lib; ln -sf /lib64/libcom_err.so.2 libcom_err.so.3;
	cd $(PYTHON_HOME)/bin; rm -f python;
SQLITE:
	mkdir -p $(SQLITE_ROOT)/install
	cd $(SQLITE_ROOT); ./configure --prefix=$(SQLITE_HOME)
	cd $(SQLITE_ROOT); make
	cd $(SQLITE_ROOT); make install	
SZIP:
	mkdir -p $(SZIP_ROOT)/install;
	cd $(SZIP_ROOT); ./configure --enable-shared --prefix=$(SZIP_HOME)
	cd $(SZIP_ROOT); make
	cd $(SZIP_ROOT); make install
TEXINFO:
	mkdir -p $(TEXINFO_ROOT)/install;
	cd $(TEXINFO_ROOT); ./configure --prefix=$(TEXINFO_HOME)
	cd $(TEXINFO_ROOT); make
	cd $(TEXINFO_ROOT); make install
TIFF:
	cd $(TIFF_ROOT); mkdir -p install	
	cd $(TIFF_ROOT);	./configure --enable-shared --prefix=$(TIFF_HOME)
	cd $(TIFF_ROOT); make
	cd $(TIFF_ROOT); make install
TRIANGLE:
	mkdir -p $(TRIANGLE_ROOT)/install; mkdir -p $(TRIANGLE_HOME)/bin; mkdir -p $(TRIANGLE_HOME)/include;
	cd $(TRIANGLE_ROOT); make 
	ln -sf $(TRIANGLE_ROOT)/triangle $(TRIANGLE_HOME)/bin; ln -sf $(TRIANGLE_ROOT)/showme $(TRIANGLE_HOME)/bin; ln -sf $(TRIANGLE_ROOT)/*.h $(TRIANGLE_HOME)/include
UDUNITS:
	cd $(UDUNITS_ROOT); mkdir -p install
	cd $(UDUNITS_ROOT); ./configure --prefix=$(UDUNITS_HOME)
	cd $(UDUNITS_ROOT); make 
	cd $(UDUNITS_ROOT); make all install
WRFV:
	cd $(WRFV_HOME); sh edit.sh
	cd $(WRFV_HOME); chmod 777 configure 
	cd $(WRFV_HOME); ./configure 
	cd $(WRFV_HOME) && sed -e '212s@-lnetcdff@-lnetcdff -L$(NETCDF_LIB) -lnetcdf@' configure.wrf>configure1.wrf; mv configure1.wrf configure.wrf; if [ $? -ne 0 ]; then exit; fi; cd -;
	cd $(WRFV_HOME); ./compile em_real
WPSV:
	cd $(WPSV_HOME); sh edit.sh
	cd $(WPSV_HOME); chmod 777 configure 
	cd $(WPSV_HOME); ./configure
	cd $(WPSV_HOME) && sed -e '47s@-lnetcdff -lnetcdf@-lnetcdff -L$(NETCDF_LIB) -lnetcdf@' configure.wps>configure1.wps; mv configure1.wps configure.wps; if [ $? -ne 0 ]; then exit; fi; cd -;
	cd $(WPSV_HOME) && sed -e '59s@-lpng@-L$(PNG_LIB) -lpng@' configure.wps>configure1.wps; mv configure1.wps configure.wps; if [ $? -ne 0 ]; then exit; fi; cd -;
	cd $(WPSV_HOME) && sed -e '60s@include@include -I$(PNG_INC)@' configure.wps>configure1.wps; mv configure1.wps configure.wps; if [ $? -ne 0 ]; then exit; fi; cd -;
	cd $(WPSV_HOME); ./compile
WXWIDGETS:
	mkdir -p $(WXWIDGETS_ROOT)/install
	cd $(WXWIDGETS_ROOT); ./configure --prefix=$(WXWIDGETS_HOME) --enable-unicode --enable-debug
	cd $(WXWIDGETS_ROOT); make
	cd $(WXWIDGETS_ROOT); make install
XERCES:
	mkdir -p $(XERCES_ROOT)/install
	cd $(XERCES_ROOT); ./configure --prefix=$(XERCES_HOME) --enable-netaccessor-curl --disable-sse2
	cd $(XERCES_ROOT); make
	cd $(XERCES_ROOT); make install
XMLCOPYEDITOR:
	mkdir -p $(XMLCOPYEDITOR_ROOT)/install
	cd $(XMLCOPYEDITOR_ROOT); ./configure --prefix=$(XMLCOPYEDITOR_HOME) --with-wx-config=$(WXWIDGETS_BIN)/wx-config
	cd $(XMLCOPYEDITOR_ROOT)/src && sed -e '286s@/usr/share@$(XMLCOPYEDITOR_HOME)@' Makefile>Makefile1; mv Makefile1 Makefile; if [ $? -ne 0 ]; then exit; fi; cd -;
	cd $(XMLCOPYEDITOR_ROOT)/src && sed -e '287s@/usr/share@$(XMLCOPYEDITOR_HOME)@' Makefile>Makefile1; mv Makefile1 Makefile; if [ $? -ne 0 ]; then exit; fi; cd -;
	cd $(XMLCOPYEDITOR_ROOT); make
	cd $(XMLCOPYEDITOR_ROOT); make install
XZ:
	mkdir -p $(XZ_ROOT)/install;
	cd $(XZ_ROOT); ./configure --enable-shared --prefix=$(XZ_HOME)
	cd $(XZ_ROOT); make
	cd $(XZ_ROOT); make install
YASM:
	cd $(YASM_ROOT); mkdir -p install	
	cd $(YASM_ROOT);	./configure --enable-shared --prefix=$(YASM_HOME)
	cd $(YASM_ROOT); make
	cd $(YASM_ROOT); make install
ZLIB:
	mkdir -p $(ZLIB_ROOT)/install; 
	cd $(ZLIB_ROOT);	./configure --enable-shared --prefix=$(ZLIB_HOME)
	cd $(ZLIB_ROOT); make
	cd $(ZLIB_ROOT); make install

