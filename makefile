# Author: Blake Boehringer
# Date: 9/11/2020
#
# Makefile for the numlist project
# All commands under the rules must start with a tab

#Variables
CFLAGS = -Wall -std=c++11
CC = g++
#Linking all the files
#Create the executable program "a.out"
a.out: numlist-main.o numlist.o
	$(CC) $(CFLAGS) numlist.o numlist-main.o

numlist.o: numlist.cc numlist.h
	$(CC) -c $(CFLAGS) numlist.cc

numlist-main.o: numlist-main.cc numlist.h
	$(CC) -c $(CFLAGS) numlist-main.cc

# remove all the object and executable files
clean:
	rm -f numlist-main.o numlist.o numlist-main a.out
