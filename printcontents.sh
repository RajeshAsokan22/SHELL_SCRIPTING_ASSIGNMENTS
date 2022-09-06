<<doc
NAME:Rajesh.A
DATE:23/05/2022
DESCRIPTION:WAS to print contents of a directory without ls command
SAMPLE I/P:bash printcontents.sh
SAMPLE O/P:
assignment2.sh assignment5.sh calc.sh chess.sh deleteempty.sh file3.txt file4.txt for3.sh greeting.sh infiniteloop.sh nofline.sh printcontents.sh recursion.sh recursio.sh string1.sh test.txt text1.txt text2.txt text.txt upperlower.sh
doc
#!/bin/bash
if [ $# -ne 0 ] #condition to check whether argument is given in command line or not.
then
for i in $@     #making loop for printing contents with respect to each path given in command line.
do
    if [ -d $i ]  #condition to check whether given path is for directory or not.
    then
	cd $i      #change the directory to given path.
	pwd        #using "pwd" command to show present working directory for every iteration. 
	echo *     #the "echo *" prints the contents of present working directory with respect to path.
    else
	echo "$i is not a directory"
    fi
done
else             #if arguments are not given in command line, it prints the contents of present working directory.
    echo *
fi
