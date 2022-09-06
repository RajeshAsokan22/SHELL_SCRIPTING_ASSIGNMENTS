<<doc
NAME:Rajesh.A
DATE:25/05/2022
DESCRIPTION:Count the number of users with user IDs between given range.
SAMPLE I/P:./countuser.sh
SAMPLE O/P:
Total count of user ID between 500 to 10000 is: 2
doc
#!/bin/bash
arr=(`cat /etc/passwd | cut -d ":" -f 3`)  #all user ids are extract from passwd file and stored in to an array.
count=0  #count value is initiallized as zero.
if [ $# -eq 2 ] #condition to check whether no of arguments in command line is 2 or not.  
then
    if [ $1 -lt $2 ] #condition to check whether first argument is lesser than second argument or not.
    then
for i in ${arr[@]}  #if previous two "if" condition satisfies then "for" loop iterates for every element in the array. 
do
    if [ $i -ge $1 -a $i -le $2 ] #condition to check whether current value of "i" is between in range or not.
    then
	count=$(($count+1)) #if condition satisfies,count will get incremented.
    fi
done
echo "Total count of user ID between $1 to $2 is :$count" #it will print the final count value.
else
    echo "Error : Invalid range. Please enter the valid range through CL."
    fi
elif [ $# -eq 0 ] #if no arguments is not passed in command line, range is taken as default value(500-10000).
then
    for i in ${arr[@]} #then "for" loop iterates for every element in the array. 
    do
	if [ $i -ge 500 -a $i -le 10000 ] #condition to check whether current value of "i" is between in range or not.
	then
	    count=$(($count+1))  #if condition satisfies,count will get incremented.
	fi
done
echo "Total count of user ID between 500 to 10000 is: $count" #it will print the final count value.
else
    echo "Error : Please pass 2 arguments through CL.Usage : ./user_ids.sh 100 200" #if the no of arguments passed rather than "0" or "2", it will print error message. 
fi


