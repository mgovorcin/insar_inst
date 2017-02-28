############################################################################
### 			README AND INSTALLATION NOTES			####
### 								        ####
### created by Marin Govorcin, Faculty of Geodesy, University of Zagreb ####
### email: mgovorcin@geof.hr      Date and place:01/10/2017, Miami, USA ####
############################################################################

This set of scripts was created at Florida International University during my stay there under Fulbright scholarship with a primary purpose to install INSAR related softwares at the University's cluster. The idea was to install all INSAR software packages on almost "clean" UNIX system in a simple and organized way without a need of administrative privileges.   

################################# IMPORTANT !!!! #####################################
Installation of all these softwares in an aforementioned way is my contribution whereas licensing and author's rights belong to software's developers or in some cases to Universities where they were developed. Information related to the author's rights and licensing information can be found on a software's webage and links to all web-pages can be found in src/depend/depend_list.txt and src/insar/insar.txt. Also, links to citation or reference examples can be found on those web-pages.  

PLEASE take time to check all licensing information on the web-pages and DON'T forget to add an reference to INSAR software packages that you are using to your papers.   

****Some softwares require additional registration in order to use them******
ISCE (WINSAR) https://winsar.unavco.org/isce.html
GIANT, PYAPS, VARRES http://earthdef.caltech.edu/
ECMWF http://www.ecmwf.int/ / download ECMWF key after registration
TRAIN ask for download link at http://davidbekaert.com/

################################## CONTENT ############################################

Content of the set of scripts is:
	src /folder:
		depend /folder:
		  depend.conf (sets all dependencies environmental variables and paths)
		  depend_download.sh (download all dependencies)
	 	  depend_edit.sh (edit makefiles and configure files of some dependencies)
		  depend_list.txt (links to web pages of downloaded dependencies)
		  Makefile (build and install)
		insar /folder:
		  insar.conf (sets all INSAR environmental variables and paths)
		  insar_download.sh (download all INSAR softwares)
		  insar_edit.sh (edit configure file of DORIS and prepare scon_config file for ISCE)
		  insar_list.txt (links to web pages of downloaded insar softwares)
	          Makefile (build and install)
	edit.conf (sets some environmental variables and paths that need to be edited)
	download.sh (enters to depend and insar folderand calls download scripts)
	edit.conf (enters todepend and insar folder and calls editing scripts)
	Makefile (enters to depend and insar folder and calls Makefiles)

################################# INSTALLATION ######################################
	1. registar at the following webpages and download following softwares
	GIANT: http://earthdef.caltech.edu/projects/giant/wiki
		put the tar file into $PARENTDIR/giant folder, and untar it
	VARRES: http://earthdef.caltech.edu/projects/varres/wiki
		put the tar file into $PARENTDIR/depend/varres folder, and untar it
	PYAPS: http://earthdef.caltech.edu/projects/pyaps/wiki/Main
		put the tar file into $PARENTDIR/depend/PyAPS folder, and untar it
	ISCE: https://winsar.unavco.org/isce.html
		put the tar file into $PARENTDIR/isce folder, and untar it
	TRAIN: http://davidbekaert.com/
		put the tar file into $PARENTDIR/train folder, and untar it
	2. go to "src" fodler and edit the edit.conf file
		edit the paths to downloaded softwares, change the last segment of path  or use "pwd" command		
		edit the required variables (DORIS CC, MATLAB, X11, OPENMOTIF), read the comments
	3. go to src: source edit.conf
	3. use command depend_src and insar_src (alias) to source depend.conf in src/depend and insar.conf in src/insar
	5. go to src: sh download.sh
	6. go to src: sh edit.sh
	7. go to src: make (most softwares are installed in a folder "install")
	8. interactive make: (answers to questions
			   WRF - selection enter "32" ,compile for nesting enter "0" 
			   WPS - selection enter "1"
	9. go to src: sh download_orbits.sh	
	10. add "source $PATH/depend.conf, source $PATH/insar.conf, source $PATH/edit.conf" to your bash profile or ~/.bashrc 

SCRIPT INSTALLS ALL SOFTWARES AT ONCE, IF YOU DON'T WANT TO INSTALL THEM ALL JUST SOME OF THEM DO THE FOLLOWING:

- go to src/depend or/and src/insar and add comment "#" to lines in Makefiles to a softwares which you don't want to install

example: src/insar/Makefile -> make ISCE to #make ISCE (cancel installation of ISCE)

############################## SPECAIL NOTES ########################################

ON CLUSTER: first load modules such as matlab and gcc version you want to use (dont have multiple versons of gcc on, because that can cause problems in compilation). Check path for matlab with "module show matlab*" and edit edit.conf

There are some alias commands that you need to be aware of:
	gmt4 (sets GMT4 to be active)
	gmt5 (sets GMT5 to be active)
be carefull when you use softwares that relay on GMT to check which version is required.
EXAMPLE: DORIS uses GMT4, GMT5SAR uses GMT5
	py2 (removes python from anaconda/bin folder that is connected with python3)
	py3 (reconnects python in anaconda/bin fodler with python3)
USAGE: py2 makes sure that when you use python command, you use python2 whereas py3 changes that to python3
	gpy2 (removes python from anaconda/envs/python2/bin and makes python2 in envs/giant/bin active)
	py2g (makes active python from envs/python2/bin)
USAGE: use py2 py3 gpy2 py2g when u whant to switch between python packages and set python2 or python3 as active python. Check what python version are you using with "which python".

############################## SPECAIL NOTES: ISCE ########################################
go to https://urs.earthdata.nasa.gov/ and register then create a file .netrc in your home directory (~/) with the following input:

machine urs.earthdata.nasa.gov
	login username
	password password
*Needed to automatically download DEMs

############################## TO DO LIST ######################################
-remove interactive modes of wrf and wps

In order to be completely "standalone" some other softwares, libraries or headers should be included later on:
	-gcc (4.7 and the latest), gfortran and perl compilers
	-X11 server and OPENMOTIF
	-pango, glib, gtk-pixbuf-2.0, atl-1.0, harfbuzz, gtk-X11, gtk-2.0, gio-unix, librtmp etc..
..and probably some others...
############################## TROUBLESHOOTING ######################################

- DORIS installation: must be compiled with gcc<=4.7 otherwise errors will pop-up during insar processing such as "Unknown keyword: "OMMENT" at line: 6"
- NCLNCARG: if there is a problem with librtmp.so.1 when calling ncl command, locate librtmp with "ldconfg -p | grep librtmp" and do this "ln -s librtmp.so librtmp.so.1"
-PySAR has some problems related to comatiblity with new matplotlib 1.5.3 and with some of its dependencies (such as numpy version), solutions are to add PySAR code to changes or to downgrade the matplotlib and numpy to older versions. Script downgrades matplotlib to a version matplotlib=1.4.3.
-if there are errors in "make" with dependencies that use autoconf, probably what needs to be done is the following; touch Makefile.in touch Makefile.am, touch aclocal. (update date and time)

-NCLNCARG- it is optional package for TRAIN but t if fails with installation from source; you can download precompiled binaries from https://www.earthsystemgrid.org/dataset/ncl.630.0/file.html, put it in folder depend/nclncarg/ and adjust path in src/depend/depend.conf


