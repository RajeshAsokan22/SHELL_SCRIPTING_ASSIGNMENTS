<<doc
NAME:Rajesh.A
DATE:23/05/2022
DESCRIPTION:Use a recursive function to print each argument passed to the function
SAMPLE I/P:./recursion.sh How are you? I am fine
SAMPLE O/P:
How
are
you?
I
am
fine
doc
#!/bin/bash
if [ $# -ne 0 ] #condition to check whether argument is given in command line or not.
then
    function recursion()  #function is created as "recursion".
    {
	arr=($@)         #all the arguments given in command line is assigned to array "arr".
	echo "$1"        #it prints the first argument.
	if [ $# -ne 1 ]  #condition to check whether no of arguments is not equal to one or not.
	then
	    recursion ${arr[@]:1} #if the condition is true, it makes function call with arguments starting from index "1" by offset method.
	else
	    exit  #if condition fails,it will get terminated.
	fi
    }
recursion $@  #after checking whether arguments in the command line, this line will be executed and it initially call "recursion" function with all the arguments. 
else
    echo "Error : Pass the arguments through command line." #if command line arguments are not given it prints error message.
fi

