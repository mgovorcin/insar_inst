#!bin/bash

############################################################################
### This script downloads all software packages	needed for installation ####
### of INSAR related software packages				        ####
### Information and download links can be found in depend_list.txt      ####
### 								        ####
### created by Marin Govorcin, Faculty of Geodesy, University of Zagreb ####
### email: mgovorcin@geof.hr      Date and place:01/10/2017, Miami, USA ####
############################################################################

#Downloading dependecies
######################################################################################################################################################################################################

cd $PARENTDIR;

mkdir -p depend;

#downloading LibXdmcp
mkdir depend/libxdmcp;
echo "downloading libxdmcp ..."
cd depend/libxdmcp && wget -O libXdmcp-1.1.2.tar.bz2 "https://www.dropbox.com/s/642w5tglv7ra5fr/libXdmcp-1.1.2.tar.bz2?dl=1"; tar -jxvf libXdmcp-1.1.2.tar.bz2; rm libXdmcp-1.1.2.tar.bz2;  if [ $? -ne 0 ]; then exit; fi; cd -;

#General utilities and libraries
######################################################################################################################################################################################################

#downloading Anaconda PYthon
mkdir -p depend/python;
echo "downloading anaconda python ..."
#cd depend/python && wget http://repo.continuum.io/archive/Anaconda3-4.2.0-Linux-x86_64.sh; if ($? != 0) exit; chmod 755 Anaconda3-4.2.0-Linux-x86_64.sh; cd -; 
cd depend/python && wget http://repo.continuum.io/archive/Anaconda3-4.0.0-Linux-x86_64.sh; if [ $? -ne 0 ]; then exit; fi; chmod 755 Anaconda3-4.0.0-Linux-x86_64.sh; cd -; 

#downloading autoconf
mkdir -p depend/autoconf;
echo "downloading autoconf ...";
cd depend/autoconf && wget -O autoconf-2.69.tar.gz "https://www.dropbox.com/s/4uu11bth0dv3l9p/autoconf-2.69.tar.gz?dl=1"; tar -xvf autoconf-2.69.tar.gz; rm autoconf-2.69.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading automake
mkdir -p depend/automake;
echo "downloading automake ...";
cd depend/automake && wget -O automake-1.15.tar.gz "https://www.dropbox.com/s/9rcx9tmnt8rbpb0/automake-1.15.tar.gz?dl=1"; tar -xvf automake-1.15.tar.gz; rm automake-1.15.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading Aspell
mkdir -p depend/aspell;
echo "downloading aspell ...";
cd depend/aspell && wget -O aspell-0.60.6.1.tar.gz "https://www.dropbox.com/s/ll4081i512behjb/aspell-0.60.6.1.tar.gz?dl=1"; tar -xvf aspell-0.60.6.1.tar.gz; rm aspell-0.60.6.1.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading Bison
mkdir -p depend/bison;
echo "downloading bison ...";
cd depend/bison && wget -O bison-3.0.4.tar.gz "https://www.dropbox.com/s/t1c2mbkaj3ioxva/bison-3.0.4.tar.gz?dl=1"; tar -xvf bison-3.0.4.tar.gz; rm bison-3.0.4.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading BOOST
mkdir -p depend/boost;
echo "downloading boost ...";
cd depend/boost && wget -O boost_1_62_0.tar.gz "https://www.dropbox.com/s/h2oyenymnhz9as6/boost_1_62_0v.tar.gz?dl=1"; tar -xvzf boost_1_62_0.tar.gz; rm boost_1_62_0.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading byacc
mkdir -p depend/byacc;
echo "downloading byacc ..."
cd depend/byacc && wget -O byacc.tar.gz "https://www.dropbox.com/s/ttuxvq6x8tlw3b3/byacc.tar.gz?dl=1"; tar -zxf byacc.tar.gz; rm byacc.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading CMAKE
mkdir depend/cmake;
echo "downloading cmake ..."
cd depend/cmake && curl -L https://www.dropbox.com/s/smsd94aj9ut4ezo/cmake-3.7.0.tar.gz?dl=1 | gunzip | tar -x; if [ $? -ne 0 ]; then exit; fi; cd -; 

#downloading CURL
mkdir -p depend/curl; 
echo "downloading pkg-config ..."
cd depend/curl && wget -O curl-7.52.1.tar.gz https://www.dropbox.com/s/0orkyaoqeyziabo/curl-7.52.1.tar.gz?dl=1; tar -zxvf curl-7.52.1.tar.gz; rm curl-7.52.1.tar.gz;  if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading Expat
mkdir -p depend/expat; 
echo "downloading expat ..."
cd depend/expat && wget -O expat-2.2.0.tar.bz2 "https://www.dropbox.com/s/78jiqkzobwegah2/expat-2.2.0.tar.bz2?dl=1"; tar -jxvf expat-2.2.0.tar.bz2; rm expat-2.2.0.tar.bz2;  if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading FFTW
mkdir -p depend/FFTW;
echo "downloading fftw ..."
#FFTW version 2.1.5
cd depend/FFTW && curl -L https://www.dropbox.com/s/qnc54wu7wrnttl9/fftw-2.1.5.tar.gz?dl=1 | gunzip | tar -x; if [ $? -ne 0 ]; then exit; fi; cd -;
#FFTW version 3.3.5
cd depend/FFTW && curl -L https://www.dropbox.com/s/3k09t85ys9y37qu/fftw-3.3.5.tar.gz?dl=1 | gunzip | tar -x; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading flex
mkdir -p depend/flex;
echo "downloading flex ..."
cd depend/flex && wget -O flex-2.6.0.tar.bz2 "https://www.dropbox.com/s/0iumtdok764wdxc/flex-2.6.0.tar.bz2?dl=1"; tar -jxvf flex-2.6.0.tar.bz2; rm flex-2.6.0.tar.bz2; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading Gettext
mkdir -p depend/gettext;
echo "downloading gettext ...";
cd depend/gettext && wget -O gettext-0.19.8.tar.gz "https://www.dropbox.com/s/1wb88yoag0ov8rr/gettext-0.19.8.tar.gz?dl=1"; tar -xvf gettext-0.19.8.tar.gz; rm gettext-0.19.8.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading Help2man
mkdir -p depend/help2man;
echo "downloading help2man ...";
cd depend/help2man && wget -O help2man-1.47.4.tar.xz "https://www.dropbox.com/s/z0fzr2941d9yrk6/help2man-1.47.4.tar.xz?dl=1"; tar -xvf help2man-1.47.4.tar.xz; rm help2man-1.47.4.tar.xz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading intltool
mkdir -p depend/intltool;
echo "downloading intltool ..."
cd depend/intltool && wget -O intltool-0.51.0.tar.gz "https://www.dropbox.com/s/vov2bq0uz9ii68t/intltool-0.51.0.tar.gz?dl=1"; tar -zxvf intltool-0.51.0.tar.gz; rm intltool-0.51.0.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading LAPACk
mkdir -p depend/lapack;
echo "downloading LAPACK ..."
cd depend/lapack && wget -O lapack-3.6.1.tgz "https://www.dropbox.com/s/mkzjeue0l2f6ofv/lapack-3.6.1.tgz?dl=1"; tar -zxvf lapack-3.6.1.tgz; rm lapack-3.6.1.tgz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading libssh2
mkdir -p depend/libssh2;
echo "downloading libssh2 ..."
cd depend/libssh2 && wget -O libssh2-1.8.0.tar.gz "https://www.dropbox.com/s/a8wdy4dufbxypwm/libssh2-1.8.0.tar.gz?dl=1"; tar -zxvf libssh2-1.8.0.tar.gz;rm libssh2-1.8.0.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading libtool
mkdir -p depend/libtool;
echo "downloading libtool ..."
cd  depend/libtool && wget -O libtool-2.4.6.tar.gz "https://www.dropbox.com/s/iu5zevn35e2brqr/libtool-2.4.6.tar.gz?dl=1"; tar -zxf libtool-2.4.6.tar.gz; rm libtool-2.4.6.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading libxml2
mkdir -p depend/libxml; 
echo "downloading libxml ..."
cd depend/libxml && wget -O libxml2-sources-2.9.3.tar.gz https://www.dropbox.com/s/wcv1s6sedw7vb0d/libxml2-sources-2.9.3.tar.gz?dl=1; tar -zxvf libxml2-sources-2.9.3.tar.gz; rm libxml2-sources-2.9.3.tar.gz;  if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading libxslt
mkdir -p depend/libxslt; 
echo "downloading libxslt ..."
cd depend/libxslt && wget -O libxslt-1.1.29.tar.gz https://www.dropbox.com/s/dt1dmpnfw429r0g/libxslt-1.1.29.tar.gz?dl=1; tar -zxvf libxslt-1.1.29.tar.gz; rm libxslt-1.1.29.tar.gz;  if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading m4
mkdir -p depend/m4;
echo "downloading m4 ..."
cd  depend/m4 && wget -O m4-1.4.17.tar.gz "https://www.dropbox.com/s/jfypt2njjs1dps6/m4-1.4.17.tar.gz?dl=1w"; tar -zxf m4-1.4.17.tar.gz; rm m4-1.4.17.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading openssl
mkdir -p depend/openssl;
echo "downloading openssl ..."
cd depend/openssl && wget -O openssl-1.1.0c.tar.gz "https://www.dropbox.com/s/74vdyj7hytv5c9n/openssl-1.1.0c.tar.gz?dl=1"; tar -zxvf openssl-1.1.0c.tar.gz;rm openssl-1.1.0c.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading PCRE
echo "downloading PCRE ..."
mkdir -p depend/pcre;
cd depend/pcre && curl -L https://www.dropbox.com/s/kvbd9n3y5yq6abv/pcre-8.39.tar.gz?dl=1 | gunzip | tar -x; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading PKG-CONFIG
mkdir -p depend/pkg-config; 
echo "downloading pkg-config ..."
cd depend/pkg-config && wget -O pkg-config-0.29.1.tar.gz "https://www.dropbox.com/s/ywwvjmcg0mgfdo1/pkg-config-0.29.1.tar.gz?dl=1"; tar -zxvf pkg-config-0.29.1.tar.gz; rm pkg-config-0.29.1.tar.gz;  if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading Sqlite
mkdir depend/sqlite;
echo "downloading sqlite ..."
cd depend/sqlite && wget https://sqlite.org/2016/sqlite-autoconf-3150200.tar.gz; tar -zxvf sqlite-autoconf-3150200.tar.gz; rm sqlite-autoconf-3150200.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading Texinfo
mkdir -p depend/texinfo; 
echo "downloading texinfo ..."
cd depend/texinfo && wget -O texinfo-6.3.tar.gz "https://www.dropbox.com/s/596my0oq48d60h4/texinfo-6.3.tar.gz?dl=1"; tar -zxvf texinfo-6.3.tar.gz; rm texinfo-6.3.tar.gz;  if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading TRIANGLE
mkdir -p depend/triangle;
echo "downloading TRIANGLE ...";
cd depend/triangle && wget -O triangle.zip "https://www.dropbox.com/s/vpvd9bk1jv5v4ep/triangle.zip?dl=1"; unzip -qo triangle; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading wxWidgets
mkdir -p depend/wxwidgets;
echo "downloading wxwidgets ...";
cd depend/wxwidgets && wget -O wxWidgets-3.1.0.tar.bz2 "https://www.dropbox.com/s/ifzxcijvwknxijz/wxWidgets-3.1.0.tar.bz2?dl=1"; tar -jxf wxWidgets-3.1.0.tar.bz2; rm wxWidgets-3.1.0.tar.bz2; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading xerces
mkdir -p depend/xerces;
echo "downloading xerces ...";
cd depend/xerces && wget -O xerces-c-3.1.4.tar.gz "https://www.dropbox.com/s/kwu7ercr4v6drhj/xerces-c-3.1.4.tar.gz?dl=1"; tar -zxf xerces-c-3.1.4.tar.gz; rm xerces-c-3.1.4.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading XMLCopyEditor
mkdir -p depend/xmlcopyeditor;
echo "downloading XMLCopyEditor ...";
cd depend/xmlcopyeditor && wget -O xmlcopyeditor-1.2.1.3.tar.gz "https://www.dropbox.com/s/8al6omm772offvc/xmlcopyeditor-1.2.1.3.tar.gz?dl=1"; tar -zxf xmlcopyeditor-1.2.1.3.tar.gz; rm xmlcopyeditor-1.2.1.3.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading YASM
mkdir -p depend/yasm;
echo "downloading yasm ...";
cd  depend/yasm && wget -O yasm-1.3.0.tar.gz "https://www.dropbox.com/s/svuavppuyclrgme/yasm-1.3.0.tar.gz?dl=1"; tar -zxf yasm-1.3.0.tar.gz; rm yasm-1.3.0.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#Compression utilities and libraries
######################################################################################################################################################################################################

#downloading bzip
mkdir -p depend/bzip;
echo "downloading bzip ..."
cd  depend/bzip && wget -O bzip2-1.0.6.tar.gz "https://www.dropbox.com/s/gi0batkdha6a96l/bzip2-1.0.6.tar.gz?dl=1"; tar -zxf bzip2-1.0.6.tar.gz; rm bzip2-1.0.6.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading szip
mkdir -p depend/szip;
echo "downloading szip ..."
cd  depend/szip && wget -O szip-2.1.tar.gz "https://www.dropbox.com/s/xm0atb4s2bee75g/szip-2.1.tar.gz?dl=1"; tar -zxf szip-2.1.tar.gz; rm szip-2.1.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading zlib
mkdir -p depend/zlib;
echo "downloading zlib ..."
cd  depend/zlib && wget -O zlib-1.2.11.tar.gz "https://www.dropbox.com/s/1x0agw762ysrug8/zlib-1.2.11.tar.gz?dl=1"; tar -zxf zlib-1.2.11.tar.gz; rm zlib-1.2.11.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading xz
mkdir -p depend/xz;
echo "downloading xz ..."
cd depend/xz && wget -O xz-5.2.2.tar.gz "https://www.dropbox.com/s/zdrhcjcl9q5qwn3/xz-5.2.2.tar.gz?dl=1"; tar -zxvf xz-5.2.2.tar.gz; rm xz-5.2.2.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

# Graphics utilities and libraries
######################################################################################################################################################################################################

#downloading cairo
mkdir -p depend/cairo;
echo "downloading cairo ..."
cd  depend/cairo && wget -O cairo-1.14.6.tar.xz "https://www.dropbox.com/s/2e1scjvrl1v0gbf/cairo-1.14.6.tar.xz?dl=1"; tar -xf cairo-1.14.6.tar.xz; rm cairo-1.14.6.tar.xz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading ffmpeg
mkdir -p depend/ffmpeg;
echo "downloading ffmpeg ..."
cd  depend/ffmpeg && wget -O ffmpeg-3.2.2.tar.xz "https://www.dropbox.com/s/d0ayyxewa28o1xr/ffmpeg-3.2.2.tar.xz?dl=1"; tar -xf ffmpeg-3.2.2.tar.xz; rm ffmpeg-3.2.2.tar.xz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading freetype
mkdir -p depend/freetype;
echo "downloading freetype ..."
cd  depend/freetype && wget -O freetype-2.7.tar.gz "https://www.dropbox.com/s/ox5wfcdgqt192r6/freetype-2.7.tar.gz?dl=1"; tar -xf freetype-2.7.tar.gz; rm freetype-2.7.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading geotiff
mkdir -p depend/geotiff; 
echo "downloading geotiff ..."
cd depend/geotiff && curl -L https://www.dropbox.com/s/8jxgc4j5n75w8a5/libgeotiff-1.4.2.tar.gz?dl=1 | gunzip | tar -x; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading GHOSTSCRIPT
mkdir -p depend/GhostScript;
mkdir -p depend/GhostScript/fonts;
echo "downloading GhostScript and fonts ..."
cd depend/GhostScript && wget -O ghostscript-9.20.tar.gz "https://www.dropbox.com/s/x907druryeokf8n/ghostscript-9.20.tar.gz?dl=1"; tar -zxvf ghostscript-9.20.tar.gz; rm ghostscript-9.20.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;
cd depend/GhostScript/fonts && wget -O gnu-gs-fonts-std-6.0.tar.gz "https://www.dropbox.com/s/rc2p8sc48h9qxot/gnu-gs-fonts-std-6.0.tar.gz?dl=1"; tar -zxvf gnu-gs-fonts-std-6.0.tar.gz;rm gnu-gs-fonts-std-6.0.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;
cd depend/GhostScript/fonts && wget -O gnu-gs-fonts-other-6.0.tar.gz "https://www.dropbox.com/s/vxg32kjo688vofr/gnu-gs-fonts-other-6.0.tar.gz?dl=1"; tar -zxvf gnu-gs-fonts-other-6.0.tar.gz;rm gnu-gs-fonts-other-6.0.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading ImageMagick
mkdir -p depend/ImageMagick;
echo "downloading ImageMagick ..."
cd depend/ImageMagick && wget -O ImageMagick-7.0.3-7.tar.gz "https://www.dropbox.com/s/3ilqeun3yiccud8/ImageMagick-7.0.3-7.tar.gz?dl=1"; tar -zxvf ImageMagick-7.0.3-7.tar.gz; rm ImageMagick-7.0.3-7.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading JASPER
mkdir -p depend/jasper;
echo "downloading jasper ..."
cd depend/jasper && wget -O jasper-1.900.1.zip "https://www.dropbox.com/s/bv0t4f7e402b8su/jasper-1.900.1.zip?dl=1"; unzip -qo jasper-1.900.1.zip;rm jasper-1.900.1.zip; if [ $? -ne 0 ]; then exit; fi; cd -;
cd depend/jasper && wget -O jasper-1.900.1-security_fixes-2.patch "https://www.dropbox.com/s/e9yrhli5wehjwbj/jasper-1.900.1-security_fixes-2.patch?dl=1"; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading jpeg
mkdir -p depend/jpeg;
echo "downloading jpeg ..."
cd  depend/jpeg && wget -O jpegsrc.v9b.tar.gz "https://www.dropbox.com/s/hhyy2kyg4l2a0v6/jpegsrc.v9b.tar.gz?dl=1"; tar -zxf jpegsrc.v9b.tar.gz; rm jpegsrc.v9b.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading libpng
mkdir -p depend/libpng;
echo "downloading libpng ..."
cd  depend/libpng && wget -O libpng-1.6.28.tar.gz "https://www.dropbox.com/s/u7drlc93lz7gcte/libpng-1.6.28.tar.gz?dl=1"; tar -zxf libpng-1.6.28.tar.gz; rm libpng-1.6.28.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading libtiff
mkdir -p depend/tiff;
echo "downloading tiff ..."
mkdir -p depend/tiff/tiff_4.0.6;
cd depend/tiff/tiff_4.0.6 && curl -L https://www.dropbox.com/s/51chwbdiv6q6dvi/tiff-4.0.6.tar.gz?dl=1 | gunzip | tar -x; if [ $? -ne 0 ]; then exit; fi;  cd -;

#downloading MDX
mdx creates its own folder
echo "downloading mdx ..."
mkdir -p depend;
cd depend && curl http://www.geodesy.miami.edu/rsmas-insar_code/mdx_179_75_03.tar | tar -x; if [ $? -ne 0 ]; then exit; fi; cd -; 

#downloading pixman
mkdir -p depend/pixman;
echo "downloading pixman ..."
cd  depend/pixman && wget -O pixman-0.32.8.tar.gz "https://www.dropbox.com/s/a6p726n326nk9gd/pixman-0.32.8.tar.gz?dl=1"; tar -zxf pixman-0.32.8.tar.gz; rm pixman-0.32.8.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#GIS utilities and libraries
######################################################################################################################################################################################################

#downloading GEOS
echo "downloading GEOS ..."
mkdir -p depend/geos;
cd depend/geos && curl -L https://www.dropbox.com/s/m9t4kymg16gngsv/geos-3.6.0.tar.bz2?dl=1 | tar -xj; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading proj4 
mkdir -p depend/proj4
echo "downloading proj ..."
#cd depend/proj4 && wget -O proj4-master.tar https://www.dropbox.com/s/ejclzc0o4kw8kmc/proj4-master.tar?dl=1; tar -xvf proj4-master.tar; rm proj4-master.tar;  if [ $? -ne 0 ]; then exit; fi; cd -;
#cd depend/proj4/proj4-master; autoconf ; sh autogen.sh; cd -;
cd depend/proj4 && wget -O proj4-master.tar https://www.dropbox.com/s/zpv4ob9rabev6i5/proj4-master1.tar?dl=1; tar -xvf proj4-master.tar; rm proj4-master.tar;  if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading GDAL (dependencies; 
mkdir -p depend/gdal;
echo "downloading gdal ..."
cd depend/gdal && wget -O gdal211.zip "https://www.dropbox.com/s/fnlwftff5370hv6/gdal211.zip?dl=1"; unzip -qo gdal211; rm gdal211.zip; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading GMT4
mkdir -p depend/gmt;
echo "downloading GMT ..."
cd depend/gmt && wget -O gmt-4.5.15-src.tar.bz2 "https://www.dropbox.com/s/nnzh89av7k7e2rg/gmt-4.5.15-src.tar.bz2?dl=1"; tar -jxvf gmt-4.5.15-src.tar.bz2; rm gmt-4.5.15-src.tar.bz2; if [ $? -ne 0 ]; then exit; fi; cd -;
cd depend/gmt && wget -O gshhg-gmt-2.3.6.tar.gz "https://www.dropbox.com/s/psaizk5wok0cqwy/gshhg-gmt-2.3.6.tar.gz?dl=1"; tar -xvzf gshhg-gmt-2.3.6.tar.gz; rm gshhg-gmt-2.3.6.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;
cd depend/gmt && wget -O dcw-gmt-1.1.2.tar.gz "https://www.dropbox.com/s/xmpjaglucxsdg11/dcw-gmt-1.1.2.tar.gz?dl=1"; tar -zxvf dcw-gmt-1.1.2.tar.gz; rm dcw-gmt-1.1.2.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading GMT5
echo "downloading GMT5 ..."
mkdir -p depend/gmt/gmt5;
cd depend/gmt/gmt5 && wget -O gmt5-dev.tar "https://www.dropbox.com/s/6ysao3kop8abfge/gmt5-dev.tar?dl=1"; tar -xvf gmt5-dev.tar; rm gmt5-dev.tar; if [ $? -ne 0 ]; then exit; fi; cd -;

#Data format utilities and libraries
######################################################################################################################################################################################################

#downloading g2clib
mkdir -p depend/g2clib;
echo "downloading g2clib ..."
cd depend/g2clib && wget -O g2clib-1.5.0-patch.tar.gz "https://www.dropbox.com/s/xwtftzfph3nwkvg/g2clib-1.5.0-patch.tar.gz?dl=1"; tar -zxf g2clib-1.5.0-patch.tar.gz; rm g2clib-1.5.0-patch.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading hdf4
mkdir -p depend/hdf4;
echo "downloading hdf4 ..."
cd depend/hdf4 && curl -L https://www.dropbox.com/s/oiq8h0sax4k7tex/hdf-4.2.12.tar?dl=1 | tar -x; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading hdf5
echo "downloading hdf5 ..."
mkdir -p depend/hdf5;
cd depend/hdf5 && curl -L https://www.dropbox.com/s/prug82yaz7it0f8/hdf5-1.8.18.tar?dl=1 | tar -x; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading hdf-eos2
mkdir -p depend/hdf-eos2;
echo "downloading hdf-eos2 ..."
cd depend/hdf-eos2 && wget -O HDF-EOS2.19v1.00.tar.Z "https://www.dropbox.com/s/u3eldz5sr62sg16/HDF-EOS2.19v1.00.tar.Z?dl=1"; tar -zxvf HDF-EOS2.19v1.00.tar.Z; rm HDF-EOS2.19v1.00.tar.Z; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading hdf-eos5
mkdir -p depend/hdf-eos5;
echo "downloading hdf-eos5 ..."
cd depend/hdf-eos5 && wget -O HDF-EOS5.1.15.tar.Z "https://www.dropbox.com/s/oky787ed2twayzv/HDF-EOS5.1.15.tar.Z?dl=1"; tar -zxvf HDF-EOS5.1.15.tar.Z; rm HDF-EOS5.1.15.tar.Z; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading NetCDF
mkdir -p depend/netcdf;
echo "downloading NetCDF ...";
cd depend/netcdf && curl -L https://www.dropbox.com/s/r6mau9ykkchyipm/netcdf-4.4.1.tar.gz?dl=1 | gunzip | tar -x;  if [ $? -ne 0 ]; then exit; fi; cd -;
cd depend/netcdf && wget -O netcdf-fortran-4.4.4.tar.gz "https://www.dropbox.com/s/xd4tc0qxj9d29ij/netcdf-fortran-4.4.4.tar.gz?dl=1"; tar -zxf netcdf-fortran-4.4.4.tar.gz; rm netcdf-fortran-4.4.4.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading pygrib
mkdir -p depend/pygrib;
echo "downloading pygrib ..."
cd depend/pygrib && wget -O pygrib_2.0.1.orig.tar.xz "https://www.dropbox.com/s/0nhym5p2v3jd8fh/pygrib_2.0.1.orig.tar.xz?dl=1"; tar -xvf pygrib_2.0.1.orig.tar.xz;rm pygrib_2.0.1.orig.tar.xz; if [ $? -ne 0 ]; then exit; fi; cd -;

#Weather data utilities
######################################################################################################################################################################################################

#downloading ecmwf
mkdir -p depend/ecmwf
echo "downloading ecmwf ..."
cd depend/ecmwf && wget -O ecmwf-api-client-python.tgz "https://www.dropbox.com/s/lbl7p0c88alk3uy/ecmwf-api-client-python.tgz?dl=1"; tar -zxf ecmwf-api-client-python.tgz; rm ecmwf-api-client-python.tgz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading gribapi
mkdir -p depend/gribapi;
echo "downloading gribapi ..."
cd depend/gribapi && wget -O grib_api-1.9.18.tar.gz "https://www.dropbox.com/s/tgcpxdvta3dpv6f/grib_api-1.9.18.tar.gz?dl=1"; tar -zxvf grib_api-1.9.18.tar.gz;rm grib_api-1.9.18.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading ncl-ncarg
mkdir -p depend/ncl_ncarg;
echo "downloading ncl-ncarg ..."
cd depend/ncl_ncarg && wget -O ncl_ncarg-6.3.0.tar.gz "https://www.dropbox.com/s/qufn1jvk6zk16hh/ncl_ncarg-6.3.0.tar.gz?dl=1"; tar -zxf ncl_ncarg-6.3.0.tar.gz; rm ncl_ncarg-6.3.0.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading oscar
mkdir -p depend/oscar;
echo "downloading oscar ..."
cd depend/oscar && wget -O oscar.tar.gz "https://www.dropbox.com/s/3geosl4gnatx5qt/oscar.tar.gz?dl=1"; tar -zxf oscar.tar.gz; rm oscar.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading udunits
mkdir -p depend/udunits;
echo "downloading udunits ..."
cd depend/udunits && wget -O udunits-2.2.20.tar.gz "https://www.dropbox.com/s/4fs9eh72b6s2kr9/udunits-2.2.20.tar.gz?dl=1"; tar -zxf udunits-2.2.20.tar.gz; rm udunits-2.2.20.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;

#downloading WRFV
mkdir -p depend/wrfv;
echo "downloading wrfv ..."
cd depend/wrfv && wget -O WRFV3.8.1.TAR.gz "https://www.dropbox.com/s/zipn7b5qj0sccvx/WRFV3.8.1.TAR.gz?dl=1"; tar -zxf WRFV3.8.1.TAR.gz; rm WRFV3.8.1.TAR.gz; if [ $? -ne 0 ]; then exit; fi; cd -;
#downloading WPSV
cd depend/wrfv && wget -O WPSV3.8.1.tar.gz "https://www.dropbox.com/s/u4qszw3ceqjq761/WPSV3.8.1.TAR.gz?dl=1"; tar -zxf WPSV3.8.1.tar.gz; rm WPSV3.8.1.tar.gz; if [ $? -ne 0 ]; then exit; fi; cd -;


