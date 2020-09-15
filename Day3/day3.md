# DAY 3

```c
PRN: 200243020003
```

#### 1. Write shell utility to print all executable files from current directory/given directory.
```sh
for var in $(find . -type d)
do
	if [ -x $var ]
	then 
		echo "$var";
	fi
done
```
#### 2. Write a shell utility which will print top 10 cpu consuming processes.
 ```sh
 ps -eo pid,ppid,cmd,%cpu --sort=%cpu | head -n 10
```

#### 3. Write a shell utility to print top 10 memory consuming processes.
```sh
ps -eo pid,ppid,cmd,%cpu --sort=%mem | head -n 10
```
#### 4. Write a shell utility to print highest memory consuming files from given directory. Accept directory name from user.
```sh
echo "Enter Directory Name :: "
read dname

du $dname/* | sort -n | tail -n 5
```
#### 5. Write a shell utility to copy top ?x? lines from a file into fileCopy.txt file. Accept number of lines and filename from user.
```sh
echo "Enter File Name :: "
read fname
echo "No. of lines :: "
read no
cat $fname | head -n $no > newfile
```

#### 6. Create following file and call it mytable 1425 Ravi 15.65 4320 Anuja 26.27 6830 Sita 36.15 1450 Raju 21.86 Use cat command to display the contents of file mytable. Create an interactive Sort utility which accept file as command line argument, and following choices 1. name 2. id 3. amount according to the user's choice sort the file.
```sh
cat mytable

echo "Enter file name ::"
read fname
echo "Enter the column number to sort data"
echo "1:Name 2:Id 3:Amount"
read no

case $no in
     1) sort -k 1 $fname > temp
        cat temp
        ;;     
     2) sort -k 2 $fname > temp1
        cat 
        ;;
     3) sort -k 3 $fname > temp2
        cat temp2
        ;;
esac
```

#### 7. Write a shell utility which will remove all empty files and directories from current directory. 
```sh
 for var in $(find . - empty)
do
      rm $var;
done
```
#### 8. Create a shell utility for system admin which will create a report of number of processes created by each user. Print the output formated like 136 process created by root user 35 process created by xyz user etc. Print total processes count at the end of report
```sh
ps -eo user | sort | uniq -c | awk ‘{print $1 “ processes created by “ $2 “ user”}’
```

#### 9. Write a shell utility to move all files which are recently modified in last 2 days in recentlyModified directory. 
```sh
find . -mtime -2 > recentlyModified
```

#### 10. Write a shell utility to print count of files of given extension. Accept extension from user.
```sh
echo "Enter the extenction of file"
read ext
find . -name *.$ext | wc -l 
```
#### 11. Write a menu driven program for add/sub/mul/div for 2 numbers. Accept numbers and choice from user. 
```sh
echo "MENU"
echo "----"
echo "1 :: Add"
echo "2 :: Subtract"
echo "3 :: Multiply"
echo "4 :: Divide"
echo "Enter your choice...."
read cho
echo "Enter first no."
read no1
echo "Enter second no."
read no2

case $cho in
 1) x = `expr $no1 + $no2`
    echo "Sum " $x
    ;;
 2) x = `expr $no1 - $no2`
    echo "Subtraction " $x
    ;;
 3) x = `expr $no1 \* $no2`
    echo "Multiplication " $x
    ;;
 4) x = `expr $no1 / $no2`
    echo "Division " $x
    ;;
esac
```

#### 12. Write a shell utility to check if given string is palindrome.
```sh
echo "Enter the string"
read str1;
str2=$(echo "$str1" | rev)
if [ $str1 == $str2 ]
then 
   echo "Palindrom"
else 
   echo "Not a palindrom"
fi
```

#### 13. Write a shell program to print pyramid of stars.
```sh
for((row=0; row<10; row++))
do
	for((space=10; space>row; space--))
	do
		echo -n " ";
	done
	for((star=0; star<=row; star++))
	do
		echo -n "* ";
	done
	echo "";
done

```
#### 14. Write a shell utility to print number of hard links of given file. Accept file from user..
```sh
ls -l | awk ‘{print $9 “ has links “ $2}’
```