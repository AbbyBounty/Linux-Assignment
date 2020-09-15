
# DAY 4

```c
PRN: 200243020003
```


#### 1. Create a file named file1 in the current directory, change the permission for file to following a. rwx for user rw for group r for other1 b. rw for user r for group and other c. rwx for all d. rwx for user r for group and other e. rw for user rw for group and r for other
```sh
  chmod 764 myfile1
  chmod 644 myfile1
  chmod 777 myfile1
  chmod 744 myfile1
  chmod 664 myfile1
``` 
#### 2. Write a shell utility to copy recently modified files in the last 2 days in another directory.
```sh
for var in $(find . -mtime -2)
   do
     cp $var newdir/.
   done
``` 

#### 3. Write a shell utility to move all files whose size is greater than 30bytes in another directory. 
```sh
for var in $(find . -type f -size 30c)
   do
     mv $var newdir/.
   done
```
#### 4. Using find search for following a. all .c files in current directory b. all .java files in current directory c. all files which contains word hello in its name
```sh
 find . -type f -name "*.c"
 find . -type f -name "*.java"
 find . -tpye f -name "*hello*"
```
#### 5. Accept file name from user, if file exists and file has read permission then print its contents. 
```sh
echo "Enter File Name : "
   read fnamef
   if [ -r $fname ]
   then
      cat $fname
   fi
```

#### 6. Print the count of executable files in the current directory.
```sh
find -type f  -name "*.exe" | wc -l
   
   Another code considering files with execute permission
   
   cnt=0
   for $fname in $(find . -type f )
   do
      if [ -x $fname ]
      then
          cnt=$((cnt+1));
      fi
   done
 ```