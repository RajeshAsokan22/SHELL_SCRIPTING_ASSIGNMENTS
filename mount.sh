<<doc
NAME:Rajesh.A
DATE:27/05/2022
DESCRIPTION:Write a script to determine whether a given file system or mount point is mounted
SAMPLE I/P:./mounted_fs.sh /dev/sda2
SAMPLE O/P:
File-system /dev/sda2 is mounted on / and it is having 98%
used space with 3298220 KB free.
doc
#!/bin/bash
filesystem=(`df -h | cut -d " " -f 1`) #by using "df" and "cut" command,the file system coloumn of file system information is extracted and stored in to an array.
available=(`df -h | tr -s " " | cut -d " " -f 4`) #by using "df","cut"and "tr" command,the available space coloumn of file system information is extracted and stored in to an array.
used=(`df -h | tr -s " " | cut -d " " -f 5`) #by using "df","cut"and "tr" command,the used space coloumn of file system information is extracted and stored in to an array.
mounted=(`df -h | tr -s " " | cut -d " " -f 6`) #by using "df","cut"and "tr" command,the mounted coloumn of file system information is extracted and stored in to an array.
if [ $# -ne 0 ] #condition to check whether arguments is given in command line or not.
then
for i in `seq 1 $((${#filesystem[@]}-1))` #"for" loop ill iterates from 1 to (no of elements in "filesystem" array - 1) 
do
    if [ $1 = ${filesystem[$i]} ] #condition to check the file system given in command line is equal to current array element or not for each iteration.
    then
	echo "File-system $1 is mounted on ${mounted[$i]} and it is having ${used[$i]} used space with ${available[$i]} free." #if it is equal then it will print the details about corresponding index of array elements and it ill get exit.
	exit
    fi
done
echo "$1 is not mounted." #if the file ystem given in command line not matching with any array elements of "filesystem",it shows as it is not mounted.
else
    echo "Error : Please pass the name of the file-system through command line." #it prints error message for argumrnts not giving.
fi
