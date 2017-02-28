############################################################################
### This script builds and installs all INSAR related software packages ####
### 								        ####
### Information and download links can be found in insar_list.txt       ####
### 								        ####
### created by Marin Govorcin, Faculty of Geodesy,University of Zagreb  ####
### email: mgovorcin@geof.hr      Date and place:01/10/2017, Miami, USA ####
############################################################################

CC=gcc 
CPP=cpp
CXX=g++
FC=gfortran

.PHONY: 

all:
	make GETORB
	make SNAPHU
	make ROIPAC
	make DORIS
	make GMT5SAR
	make STAMPS
	make ISCE
	make GIANT
	make PYSAR2INSARMAPS
DORIS:
	cd $(DORIS_ROOT); sh edit.sh
	cd $(DORIS_ROOT)/src;   chmod +x configure	
	cd $(DORIS_ROOT)/src; ./configure
	cd $(DORIS_ROOT)/src; make
	cd $(DORIS_ROOT)/src; make install
	cd $(DORIS_ROOT)/SARtools; make
	cd $(DORIS_ROOT)/SARtools; make install
	cp -R $(DORIS_PATCH)/ENVISAT_TOOLS_v2.3 $(DORIS_ROOT);
	cd $(DORIS_ROOT)/ENVISAT_TOOLS_v2.3 && sed -e '28s@/usr/local/bin@$(DORIS_BIN)@' Makefile>Makefile1; mv Makefile1 Makefile; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line modifies interatcive lines BIN/DIR in MAKEFILE ENVISAT_TOOLS
	cd $(DORIS_ROOT)/ENVISAT_TOOLS_v2.3; chmod 777 Makefile
	cd $(DORIS_ROOT)/ENVISAT_TOOLS_v2.3; make
	cd $(DORIS_ROOT)/ENVISAT_TOOLS_v2.3; make install
GETORB:		
	cd $(GETORB_ROOT); mkdir -p install
	cd $(GETORB_ROOT) && sed -e '25s@/usr/local/bin@$(GETORB_HOME)@' Makefile>Makefile1; mv Makefile1 Makefile; ### this line modifies path to bin dir
	cd $(GETORB_ROOT) && sed -e '34s@#FC@FC@' Makefile>Makefile1; mv Makefile1 Makefile; ### this line modifies FC compiler in MAKEFILE (HPC)/missing f77
	cd $(GETORB_ROOT); make all
	cd $(GETORB_ROOT); make all install
GIANT:
	cd $(GIANT_ROOT); conda env create -f giant.yml
	cd $(GIANT_HOME); $(PYTHON_HOME)/envs/giant/bin/python setup.py build_ext
GMT5SAR:
	cd $(GMT5SAR_ROOT); mkdir -p install;
	cd $(GMT5SAR_ROOT); ./configure --with-orbits-dir=$(GMT_ORBITS) --prefix=$(GMT5SAR_HOME) LDFLAGS="-L$(TIFF_LIB) -L$(GMT5_LIB)" CPPFLAGS="-I$(TIFF_INC) -I$(GMT5_INC)"
	cd $(GMT5SAR_ROOT); make 
	cd $(GMT5SAR_ROOT); make install
	cp $(GMT5SAR_BIN)/ALOS* $(INT_BIN)/.
ISCE:
	conda install scons -n python2 --yes
	conda install -c https://conda.anaconda.org/andrewannex spiceypy --yes
	conda install libgfortran --yes
	pip install pulp
	cd $(ISCE_BASE); scons install
	cd $(ISCE_HOME)/components/isceobj/Orbit/db/; wget http://naif.jpl.nasa.gov/pub/naif/generic_kernels/fk/planets/earth_assoc_itrf93.tf ; wget http://naif.jpl.nasa.gov/pub/naif/generic_kernels/pck/earth_720101_070426.bpc; wget http://naif.jpl.nasa.gov/pub/naif/generic_kernels/pck/earth_000101_160706_160414.bpc; wget http://naif.jpl.nasa.gov/pub/naif/generic_kernels/pck/pck00010.tpc; wget http://naif.jpl.nasa.gov/pub/naif/generic_kernels/lsk/naif0011.tls;wget http://naif.jpl.nasa.gov/pub/naif/generic_kernels/spk/planets/de432s.bsp

ROIPAC:	
	cd $(ROIPAC_ROOT); mkdir -p install
	cd $(ROIPAC_ROOT);   chmod +x configure
	cd $(ROIPAC_ROOT);  ./configure  LDFLAGS=-L$(FFTW_LIB) CPPFLAGS=-I$(FFTW_INC) --prefix=$(ROIPAC_HOME)
	cd $(ROIPAC_ROOT);   make
	cd $(ROIPAC_ROOT);   make install
	cp $(GETORB_BIN)/* $(INT_BIN)/.
	cp $(PARENTDIR)/roipac/additional/roipac_dodatno/*.c $(INT_BIN)/.
	cd $(INT_BIN); gcc new_parse_ers.c -o new_parse_ers
	cp $(PARENTDIR)/roipac/additional/roipac_dodatno/*.pl $(INT_SCR)/.
	cd $(INT_SCR); chmod 777 ./*
SNAPHU:
	mkdir -p $(SNAPHU_ROOT)/install; mkdir -p $(SNAPHU_ROOT)/install/bin; mkdir -p $(SNAPHU_ROOT)/install/man; mkdir -p $(SNAPHU_ROOT)/install/man/man1;
	cd $(SNAPHU_ROOT)/src && sed -e '20s@/usr/local/bin@$(SNAPHU_BIN)@' Makefile>Makefile1; mv Makefile1 Makefile; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line modifies bin-dir in MAKEFILE
	cd $(SNAPHU_ROOT)/src && sed -e '21s@/usr/local/man@$(SNAPHU_MAN)@' Makefile>Makefile1; mv Makefile1 Makefile; if [ $? -ne 0 ]; then exit; fi; cd -; ### this line modifies man-dir in MAKEFILE	
	cd $(SNAPHU_ROOT)/src; make
	cd $(SNAPHU_ROOT)/src; make install
STAMPS:
	cd $(STAMPS_ROOT)/src; make 
	cd $(STAMPS_ROOT)/src; make install
	cd $(STAMPS_PATCH); cp ./* $(STAMPS_ROOT)/matlab




