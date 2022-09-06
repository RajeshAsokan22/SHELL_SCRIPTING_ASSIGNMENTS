<<doc
NAME:Rajesh.A
DATE:27/05/2022
DESCRIPTION:Write a script to replace 20% lines in a C file randomly and replace it with the pattern 
SAMPLE I/P:./20percent.sh main.c
SAMPLE O/P:
Before replacing
#incude <stdio.h>
int main()
{
         printf(“Hello world\n”);
}
After replacing
#incude <stdio.h>
int main()
{
<-----------Deleted------------>
}
doc
#!/bin/bash
if [ $# -eq 1 ] #condition to check whether c file is given in command line or not.
then
    if [ -f $1 ] #condition to check whether it is regular file or not.
    then
	if [ -s $1 ] #condition to check whether contents in a file or not.
	then
	    echo "Before replacing"
	    cat $1
	    x=`wc -l < $1` #count the no of lines in the file and stored in a variable by using indirection method. 
	    if [ $x -ge 5 ] #condition to check whether no of lines are greater than five or not.
	    then
		y=$(($x/5)) #20% of no of lines are stored in a variable.
		for i in `seq $y` #the "for" loop will iterates for corresponding value of y. 
		do
		    z=`shuf -i 1-$x -n 1` #to get random no "shuf" command is used.
		    sed -i "$z s/.*/<-----------Deleted------------>/" $1 #"sed" command is used to delete the random lines in the given file.
		done
		echo "After replacing"
		cat $1 #the file will be shown after randomly deleting the lines.
	    fi
	else
	    echo "Error : main2.c is empty file. So can’t replace the string." #if there no file content,it will print error message.
	fi
    else
	echo "Error : No such a file." #if the argument given is not a file then it will print error message.
    fi
else
    echo "Error : Please pass the file name through command line." #if no argument is given it will print error message.
fi



