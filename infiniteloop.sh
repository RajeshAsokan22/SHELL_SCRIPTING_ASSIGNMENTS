<<doc
NAME:Rajesh.A
DATE:22/05/2022
DESCRIPTION:Use pipes or redirection to create an infinite feedback loop.
SAMPLE I/P:
SAMPLE O/P:
Before loop file contents
Hai hello
After loop file contents
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
Hai hello
doc
#!/bin/bash
echo "Before loop file contents" 
echo "Hai hello" >> test.txt  #by using redirection method, message "Hai hello" is printed on new file.
cat test.txt
echo "After loop file contents"
tail -f test.txt >> test.txt | tail -f test.txt #The command "tail -f test.txt" makes output appended data as file grows and it will redirected to same file then the infinite loop creates. Same command "tail -f test.txt" using once again to show output by pipeline method.
