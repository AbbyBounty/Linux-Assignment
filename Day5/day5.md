# DAY 5

```c
PRN: 200243020003
```

#### 7. Create an archive of directory using zip and extract it using unzip
```sh
zip -r shellscripting.zip shellscripting

unzip -l shellscripting.zip 
```
#### 8. Create an archive of directory using tar and extract it using tar command. 
```sh
tar -cf shellscripting.tar shellscripting

tar -xf shellscripting.tar 
```
#### 9. Print current months calendar on terminal
```sh
cal  9 2020 
```
#### 10. Print current date on terminal
```sh
date 
```
#### 11. Write an interactive shell utility for copying file/directory for user utility will accept source file/directory and destination directory from user, it will check if user entered directory for destination exists and it is directory, if not print valid error message. Then utility will check if user entered file as source then copy the file to destination directory or user entered directory as source then copy the entire directory to destinatin directory.
```sh
echo “enter source file”;
read file1;
echo “enter destination file”;
read file2;

If [ -f $file1 ]
then 
     if [ -f $file2 ]
      then 
         Cp $file1 $file2
       else
           Echo “invalid destination file”;
        fi 
else
echo “invalid source file”;
fi

if [ -d $file1 ]
then 
      if [ -d $file2 ]
      then 
         Cp $file1 $file2
        fi 
fi 

```
#### 12. Using mv command rename the file from current directory.
```sh
mv olddir newdir
```
#### 13. Write a shell utility to print all the files from current direcotry which contains "for" word as content in it. Hint use find with grep command.
```sh
for $var in $(find .)
do 
    grep -vn "for" $var
    ls 
done 

```
#### 14. Print from line number 3-7 from given file. Hint use head with tail command
```sh
tail -n  +3 file.txt | head -n +5

```
#### 15. Create a hard link and symbolic link for any file from current directory
```sh
ln first.txt first_link

ls -il first*
```
#### 16. Create a file using gedit name it as fruits.txt. Add following lines to it. apple mango apple banana orange mango strawberry banana apple a. print only unique lines from file b. count how many times each word getting repeated in file Hint use uniq command
```sh
vim fruits.txt

uniq -u file.txt | sort 


uniq -u file.txt | sort | wc

```