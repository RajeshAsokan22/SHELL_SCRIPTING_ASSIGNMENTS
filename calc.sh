<<doc
NAME:Rajesh.A
DATE:17/05/2022
DESCRIPTION:Write a script for arithmetic calculator using command line arguments
SAMPLE I/P:./calc.sh 25 + 41
SAMPLE O/P:25 + 41 = 66
doc
#!/bin/bash
if [ $# -eq 0 ]      #if number of arguments is equal to zero then it prints as "error:please pass the arguments through commend line 
then
    echo "Error: please pass through the arguments through commend line"
elif [ $# -ne 3 ]    #if number of arguments is not equal to 3 then it prints as "error: please pass three arguments
then
    echo "Error: please pass three arguments"
else                 #if "if" and "elif" condition fails then the case will execute   
    case $2 in
	+) sum=`echo "scale=2;$1 $2 $3" | bc`   #this case is for addition
	    echo "$1 $2 $3 = $sum"
	    ;;
	-) sub=`echo "scale=2;$1 $2 $3" | bc`   #this case is for subtraction
	    echo "$1 $2 $3 = $sub"
	    ;;
	x) mul=`echo "scale=2;$1 * $3" | bc`    #this case is for multiplication
	    echo "$1 $2 $3 = $mul"
	    ;;
	/) div=`echo "scale=2;$1 $2 $3" | bc`   #this case is for division
	    echo "$1 $2 $3 = $div"
	    ;;
	*) echo "Write a script for arithmetic calculator using command line arguments"  #this case is for default
	    ;;
    esac
fi
