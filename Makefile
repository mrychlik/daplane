CC=gcc
CFLAGS=-std=c90
all: banks
banks: banks.c
	$(CC) $(CFLAGS)  banks.c -o banks -DIT=XK_Page_Up -DDT=XK_Page_Down \
		-DUP=XK_Up -DDN=XK_Down -DLT=XK_Left -DRT=XK_Right \
		-DCS=XK_Return -Ddt=0.02 -lm -lX11 -L/usr/X11R6/lib

pittsburgh: banks
	./banks < pittsburgh.sc

mountains: banks
	./banks < mountains.sc

river: banks
	./banks < river.sc

pyramids: banks
	./banks < pyramids.sc
