<<doc
NAME:Rajesh.A
DATE:25/05/2022
DESCRIPTION:Display the longest and shortest user-names on the system
SAMPLE I/P:
SAMPLE O/P:
The Longest Name is: speech-dispatcher
The Shortest Name is:lp
doc
#!/bin/bash
arr=(`cat /etc/passwd | cut -d ":" -f 1`) #all the usernames are extract from passwd file and it will be stored in to an array.
longest=${arr[0]}  #the zeroth index of array element will be stored in a variable "longest". 
shortest=${arr[0]}  #the zeroth index of array element will be stored in a variable "shortest".
for i in ${arr[@]}  #for loop will iterates for every array elements.
do
   if [ ${#i} -gt ${#longest} ] #if string length of "i" value is greater than string length of "longest" value then the current "i" value  will be stored in the variable "longest". 
   then
     longest=$i
   fi
   if [ ${#i} -lt ${#shortest} ] #if string length of "i" value is lesser than string length of "longest" value then the current "i" value will be stored in the variable "shortest". 
   then
     shortest=$i
   fi
done
echo "The Longest Name is:$longest" #the final value of longest and shotest will get printed.
echo "The Shortest Name is:$shortest"


