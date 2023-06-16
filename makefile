# make makefile
# 
# Tools used:
#  Compile::Resource Compiler
#  Compile::GNU C
#  Make: make
all : wideln.exe

wideln.exe : wideln.obj wideln.def wideln.res
	gcc -Zomf wideln.obj wideln.def wideln.res -o wideln.exe
	wrc wideln.res

wideln.obj : wideln.c 
	gcc -Wall -Zomf -c -O2 wideln.c -o wideln.obj

wideln.res : wideln.rc 
	wrc -r wideln.rc

clean :
	rm -rf *exe *res *obj *lib