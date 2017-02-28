############################################################################
### This script builds and installs all INSAR related software packages ####
### and their dependencies					        ####
### 								        ####
### created by Marin Govorcin, University of Zagreb, Faculty of Geodesy ####
### email: mgovorcin@geof.hr      Date and place:01/10/2017, Miami, USA ####
############################################################################

CC=gcc 
CPP=cpp
CXX=g++
FC=gfortran

.PHONY: 

all:
	make DEPEND
	make INSAR
	make RSMAS
DEPEND:
	cd ./depend; make all
INSAR:
	cd ./insar; make all
RSMAS:	
	cd ./rsmas; make all
