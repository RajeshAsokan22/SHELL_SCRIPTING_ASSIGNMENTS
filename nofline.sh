<<doc
NAME:Rajesh.A
DATE:20/05/2022
DESCRIPTION:Write script to print contents of file from given line number to next given number of lines.
SAMPLE I/P:1. ./nofline.sh 5 3 myfile.txt
SAMPLE O/P:
line number 5
line number 6
line number 7
doc
#!/bin/bash
if [ $# -eq 3 ]    
then
    if [ -e $3 ]   
    then
	x=`cat $3 | wc -l`  
	y=$(($1+$2-1))      
	if [ $y -le $x ]    
	    then
              cat $3 | head -n $y | tail -n $2  
	  else
	      echo "Error: data.txt is having only $x lines. file should have atleast $y lines" 
	fi
    else
	echo "file not exist"
    fi
else
    echo "Error: arguments missing!"       
    echo "Usage: ./file_filter.sh start_line upto_line filename"
    echo "For eg. ./file_filter.sh 5 5 <file>"
fi
