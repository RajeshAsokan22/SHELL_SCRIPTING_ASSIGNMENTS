<<doc
NAME:Rajesh.A
DATE:25/05/2022
DESCRIPTION:Write a script to print system information using commands
SAMPLE I/P:
SAMPLE O/P:
1. Currently logged users
2. Your shell directory
3. Home directory
4. OS name & version
5. Current working directory
6. Number of users logged in
7. Show all available shells in your system
8. Hard disk information
9. CPU information.
10. Memory Informations
11. File system information.
12. Currently running process.
Enter the choice : 13
Error : Invalid option, please enter valid option
Do you want to continue(y/n) ? n
doc
#!/bin/bash
function info()  
{
echo "1.Currently logged users"   #initially all options are printed.
echo "2.Your shell directory"
echo "3.Home directory"
echo "4.OS name & version"
echo "5.Current working directory"
echo "6.Number of users logged in"
echo "7.Show all available shells in your system"
echo "8.Hard disk information"
echo "9.CPU information"
echo "10.Memory Informations"
echo "11.File system information"
echo "12.Currently running process"
read -p "Enter the choice:" a  #read the choice for different cases.
case $a in
    1) a=`whoami` #this case is to print currently logged users.
	echo "Currently logged users: $a"
	;;
    2) echo "Your shell directory is $SHELL" #this case is to print shell directory.
	;;
    3) echo "Home directory is $HOME"  #this case is to print home directory.
	;;
    4) b=`uname -s`        #this case is to print os name and version. 
	c=`uname -v`
	echo "OS name is $b & version is $c"
	;;
    5) d=`pwd`    #this case is to print current working directory.
	echo "current working directory is $d"
	;;
    6) e=`who -q`   #this case is to print the number of user logged in.
	echo "Number of users logged in: $e"
	;;
    7) f=`cat /etc/shells` #this case is to show available shells in the system.
	echo "Available shells in your system $f"
	;;
    8) g=`df -h` #this case is to show hard disk information.
	echo "$g"
	;;
    9) h=`cat /proc/cpuinfo` #this case is to show CPU information.
	echo "$h"
	;;
    10) i=`grep MemTotal /proc/meminfo` #this case is to show memory information.
	echo "$i"
	;;
    11) j=`df`  #this case is to show file system information.
	echo "$j"
	;;
    12) k=`ps`  #this case is to show running proces.
	echo "$k"
	;;
esac
read -p "Do you want to continue (y/n)?" x #after showing users choice, it will ask to continue or not.
if [ $x = y -o $x = Y ] #if user type "y" or "Y", then the function "info" call again.
then
    info
else  # if user type other than "y" or "Y", it will get exit.
    exit
fi
}
info #this is function call,while executing this is the first line to execute. 
