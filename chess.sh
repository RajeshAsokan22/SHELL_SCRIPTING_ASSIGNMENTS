<<doc
NAME:Rajesh.A
DATE:17/05/2022
DESCRIPTION:Write a script to print chess board
SAMPLE I/P:
SAMPLE O/P:
doc
#!/bin/bash
for row in `seq 8`    #the outer "for" loop has 8 iteration
do
    for column in `seq 8`    #the inner "for" loop has 8 iteration
    do
	if [ $(($(($row+$column))%2)) -eq 0 ]  #this condition checks the addition of row and column value is even or odd
	then
	    echo -e -n "\e[40m" " "     #if condition is true it prints black colour
	else
	    echo -e -n "\e[47m" " "     #if condition is false it prints white colour  
	fi
    done
    echo -e "\e[0m" " "       #after every termination of inner "for" loop it prints normal colour
done
