<<doc
NAME:Rajesh.A
DATE:27/05/2022
DESCRIPTION:For each directory in the $PATH, display the number of executable files in that directory
SAMPLE I/P:
SAMPLE O/P:
Current dir: /usr/local/sbin
current count: 0
Current dir: /usr/local/bin
current count: 0
Current dir: /usr/sbin
current count: 205
Current dir: /usr/bin
current count: 1889
Current dir: /sbin
current count: 187
Current dir: /bin
current count: 159
Current dir: /usr/games
current count: 5
Current dir: /usr/local/games
current count: 0
Total – 2445
doc
#!/bin/bash
arr=(`echo "$PATH" | tr ":" " "`) #each directory in the $PATH is stored in an array.
x=0
for i in ${arr[@]} #for every iteration of outer "for" loop, the i value will get each path in the array.
do
    count=0 #initialize count equal to zero.
    cd $i #changing the directory to corresponding i value.
    content=(`echo *`) #the contents of current path will stored in an array "content".
    for j in ${content[@]} #for every iteration of inner "for" loop, the j value will get each file or directory in the "content" array.
    do
	if [ -f $j ] #condition to check whether regular file or not.
	then
	    if [ -x $j ] #condition to check whether executable file or not.
	    then
		count=$(($count+1)) #if it is executable file then count will get incremented.
	    fi
	fi
    done
    echo "Current dir: $i" #it prints current directory corresponding ti "i".
    echo "Current count: $count" #the final value of count will be printed.
    x=$(($count+$x))
done
echo "Total count: $x" #the total count will be printed.

