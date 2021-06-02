


## Printing  

#### To  print  we can use the command  ``` echo```  

Eg:1 

```shell
#!/bin/bash
echo “Printing First Line” 
echo “Printing Second Line”
echo “Printing Third Line” 
```


#### To read the input from command line input  , user can use the ``` read ```  command

Eg:2

```shell
#!/bin/bash
echo "Enter the keyboard input"
read input
echo  “Command line input is : $input”
```

## String Manipulation 


#### Print a file in shell script 

Eg:3

```shell
#!/bin/bash
cat FileName.txt
``` 

#### Finding the matching line in text  with  ```grep ``` , below command will print the all lines in the file that has the word ```Ubuntu```


Eg:4

```shell 
#!/bin/bash
cat FileName.txt | grep “Ubuntu” 
```

#### Can Use the option ```-i```  with ```grep``` command  to ignore the case sensitivity. So the below script will print the  lines with  word Ubuntu ,UBUNTU and any case varinet of word ubuntu 

Eg:5 

```shell
#!/bin/bash
Cat FileName.txt | grep -i “Ubuntu”
```


#### ```grep``` command can be used with option ```-v```  to  display the non-matching lines. Below command will print the all lines in the file which does not have the word ```GPL``` 

Eg:6 
```shell 
#!/bin/bash
Cat FileName.txt | grep -v  “GPL” 
``` 

## Input Output Operations 

#### Redirect output to a file  , ```>``` symbol will redirect  the output to a file (The ```>``` symbol is used for output (STDOUT) redirection.)


Eg:7 
```shell
#!/bin/bash
cat FileName.txt | grep Ubuntu > Output.txt
```

#### Command output of  ```ls -ltr``` will redrect  to  ```Directory_list.txt``` file 

Eg:8
```shell
#!/bin/bash
ls -ltr  > Directory_list.txt 
``` 

#### The '<' symbol is used for input(STDIN) redirection ,So beneath command ```wc -l```  take input as file content of  ```FileName.txt``` 
```( wc -l  command count the number of lines in a given file)```  



Eg:9
```shell 
#!/bin/bash
wc -l < FileName.txt
```

#### To Append content to a file , we can use the symbol of  ```>>``` . For example  below  commands will append  ```print first sentence``` and  ```print second  sentence``` sentence to end of the Output.txt file 



Eg:10
```shell
#!/bin/bash
Echo  “print first sentence” >> Output.txt 
Echo  “print second sentence” >> Output.txt
```



## PIPE 


#### Symbol  ``` |``` is  using  to pass output of a command to another command as a input 

Eg: 11 
```shell
#!/bin/bash
cat FileName.txt | grep -v  “GPL” 
```

#### ```cat FileName.txt``` will  print the contents of the file.  In the above by using PIPE ```|``` symbol  its output is pass to the command ```grep -v  “GPL”```   for further processing 



## IF ELSE Statements 

#### If a condition is true, the algorithm performs a certain action; else, it performs something else.

```shell 
if [ condition ]
then
  trueAction....
else
  falseAction
fi
```

#### Below script check whether given Number “A” and “B” are equal to each other 

Eg:12 
```shell 
#!/bin/bash
A=5
B=50

if [ $A == $B ]   #Be Mindful about the spaces in between the if , [ , $A , == , $B , ]  characters, which  is a must. Otherwise script will throw a syntax error 
then
   echo "A is equal to B"
else
   echo "A is not equal to B"
fi
```

#### Script  validates whether  number “A” is greater than number “B” 

Eg:13 
```shell 
#!/bin/bash
A=5
B=50

if [ $A -gt $B ]
then
   echo "A is greater  than B"
else
   echo "A is less than  B"
fi
```


#### Below are the most commonly used operators in IF statements
```python
STRING1 = STRING2   True if STRING1 and STRING2 are equal.
STRING1 != STRING2  True if STRING1 and STRING2 are not equal.
NUMBER1 -eq NUMBER2 True if NUMBER1 and NUMBER2 are equal.
NUMBER1 -gt NUMBER2 True if NUMBER1 is greater than NUMBER2.
NUMBER1 -lt NUMBER2 True if NUMBER1 is less than NUMBER2.
NUMBER1 -ge NUMBER2 True if NUMBER1 is equal or greater than NUMBER2.
NUMBER1 -le NUMBER2 True if NUMBER1 is equal or less than NUMBER2
```

## IF ELIF statements 

#### Format of  ```if```  ```elif``` statements ( Nested if else operations ) 

```shell 
If [ conditional expression1 ]
then
	statement1
	statement2
	.
elif [ conditional expression2 ]
then
	statement3
	statement4
elif [ conditional expression3 ]
then 
	statement5
else
	statement6
fi
```


Eg:14

#### Refer to  the below example which outline how to  use ```if elif``` conditions .

```shell
#!/bin/bash
number=50

if [ $number -eq 100 ]
then
 echo "number is equal to 100"

elif [ $number -lt 100 ]
then
 echo "number is less than 100"

else
 echo "number is greater than 100"
fi
```

## Loops 

In this section of our Bash scripting Tutorial , we'll look at the two  different loop formats available to us as well as discuss  how to use them in scripting via examples 

### For Loops

#### Below script will print the numbers from 1 to 10 

Eg:15
```shell
#!/bin/sh
for i in 1 2 3 4 5 6 7 8 9 10
do
  echo “$i"
done
```

#### Script print the command from 1 to 500  


Eg:16
```shell 
#!/bin/bash
for i in {1..500}
do
   echo " $i "
done
```

#### Print the below sentence  line by line  , and if word matches “API”  print WSO2 instead  

Eg:17
```shell
#!/bin/bash

words=”Deliver enhanced digital experiences and grow your business at speed and scale with WSO2’s industry-leading products for API management and integration and customer identity and access management.”

for value in $words
do

If [ $value == “API” ]
then
Echo “WSO2”
else  
 echo $value
fi 
done
```



### While Loops 

#### While loop which print values from 1 to 10
 
Eg:18

```shell 
#!/bin/bash
num=1

while [ $num -le 10 ]
do
        echo $num
        num=`expr $num + 1`
Done
```

One of major advantages of while loop is that , it can be easily used to read the contents of a FILE by  line by line  and those lines can be forward for further processing


#### Script  read the ```continents.txt``` file line by line and print it 

Eg:19
```shell
#!/bin/bash
while  read line

do
        echo $line
   
done < continents.txt
```

#### Below example will read the ```continents.txt``` file line by line and print each line , Additionally it will print ```Not a continent```  statement  when line matches the word ```Colombo```


Eg:20
```shell 
#!/bin/bash

while  read line

do
        if [ $line =  "Colombo" ]
        then
        echo "Not a continent"
        else
        echo $line
        fi
done < continents.txt
```


## Retrieving Columns via  ```AWK``` command 

By default,   ```awk```  command filter the columns by using space as separator 

#### UserStat.txt File 
```shell 
sam   192.168.1.2  https://google.com/mail

Jeff  192.168.4.4  https://facebook.com/profile

Tom   10.10.1.1    https://google.com/gsuite

Simon  172.1.2.1    https://wso2.com/jobs
```

#### Below stript will print the first column of ```UserStat.txt``` file

Eg:21

```shell
#!/bin/bash
cat UserStat.txt | awk '{ print $1 }'
``` 

#### Script will print the first column and third column with space in the middle 


Eg:22

```shell 
#!/bin/bash
cat UserStat.txt | awk '{ print $1 "  " $3 }'
```


Additionally  ```awk``` command can be used to filter columns by using  custom symbols ,For instace  when  user need to  specify the comma as  field separator, he can use  option as  ``` -F ‘, ‘ ```


#### UserSalary.csv File

From left to right column are  Email, employeeID, FirstName, LastName, Salary 
```shell
rachel@yourcompany.com,9012,Rachel,Booker,7000

laura@yourcompany.com,2070,Laura,Grey,4500

craig@yourcompany.com,4081,Craig,Johnson,4000

mary@yourcompany.com,9346,Mary,Jenkins,2000

jamie@yourcompany.com,5079,Jamie,Smith,2500
```

#### Below commands will print  the second column of the file , Please note that ```COMMA```  is  used as  field / column separator  

Eg:23
```shell 
#!/bin/bash
cat EmailStat.csv | awk -F ',' '{ print $2 }'  
```

#### Script will take the  first  and third columns  and redirect it to the  output to file 
```shell 
Eg:24 
#!/bin/bash
cat EmailStat.csv | awk -F ',' '{ print $1" "$3 }'  > output.txt
```

## Mathematical Operations 



#### Below script will run the basic mathematics operations and give the relevant outputs 

Eg:25
```shell 
#!/bin/sh

A=70
B=90

val=`expr $A + $B` #Be Mindful about the spaces in between the "expr" , $A , + , $B  characters, which  is a must. Otherwise script will throw a syntax error 
echo "A + B : $val"

val=`expr $A - $B`
echo "A - B : $val"

val=`expr $A \* $B`
echo "a * b : $val"

val=`expr $B / $A`
echo "B / A : $val"

val=`expr $B % $A`
echo "B % A : $val”
```

 

## Exercises 

1. Write a shell script to print values from 1 to 20  by using FOR loop . 

   * If the number is less than or equal to  5 then  print SMALL
   * If the number is larger than or equal to  15 , then print HIGH
   * Else print the number as it is (Answer can be found in exercise_no1.sh)


2. Write a shell script to print  the Names line by line   from  UserStat.txt file,   and print the word  WSO2-USER  if the username is equal to Tom. Output should be as below format  (Answer can be found in exercise_no2.sh)
	
Sam  
Jeff  
WSO2-USER  
Simon


3. Read the given UserSalary.txt file and print Salary values larger than 2500 . Output should be as below (Answer can be found in exercise_no3.sh)

7000  
4000  
4000



