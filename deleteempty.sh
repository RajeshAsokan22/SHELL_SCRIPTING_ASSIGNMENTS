<<doc
NAME:Rajesh.A
DATE:23/05/2022
DESCRIPTION:Write a script to delete empty lines from a file
SAMPLE I/P:bash deleteempty.sh file4.txt
SAMPLE O/P:
Empty lines are deleted
Hello
How
are
you?
doc
#!/bin/bash
if [ $# -eq 1 ] #condition to check whether file name is pass through command line or not.
then
    if [ -f $1 ] #condition to check whether file name given in the command line is regular file or not.
    then
	if [ -s $1 ]  #condition to check whether the input file is empty or not.
	then
	    sed -i '/^[[:blank:]]*$/d' $1  #if content of input file is not empty then "sed" command is used to delete empty lines and empty lines with space and tab.
	    echo "Empty lines are deleted"
	    cat $1  #The "cat" used to show output after the deletion of empty files.
	else 
	    echo "file is empty"
	fi
    fi
else            #if input file is not pass through command line, it prints error message.
    echo "Error: Please pass the file name through command line."
fi
