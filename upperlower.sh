<<doc
NAME:Rajesh.A
DATE:19/05/2022
DESCRIPTION:Shell script to convert string lower to upper and upper to lower
SAMPLE I/P:
./upperlower.sh file.txt
1 – Lower to upper
2 – Upper to lower
Please select option : 1
SAMPLE O/P:
WHAT IS OS?
WHAT ARE THE DIFFERENT OS?
WHEN IS OS USED?
WHAT IS PARTITION AND ITS USE?
HOW MANY PARTITIONS CAN BE DONE?
doc
#!/bin/bash
if [ $# -ne 0 ]      #condition to check whether arguments is given in command line or not.
then
    if [ -f $1 ]       #condition to check whether input file is exist or not.
    then
	if [ -s $1 ]     #condition to check whether input file has some content or not.
	then
         echo "1- Lower to upper"   
         echo "2- upper to lower"
         read -p "please select option: " a  #read the option from input to choose case.
         case $a in
	   1) cat $1 | tr a-z A-Z             #this case is for lower case to upper case conversion.
	       ;;
	   2) cat $1 | tr A-Z a-z             #this case is for upper case to lower case conversion.
	       ;;
	   *) echo "invalid option"           #this default case is to print "invalid option" when given option is except "1" and "2".
	       ;;
       esac
   else
   echo "Error: No contents inside the file."  #if there is no content in file, it prints error message.
	fi
    fi
else
echo "Error : Please pass the file name through command line."  #if input file is not mention in command line, it prints error message.
fi
