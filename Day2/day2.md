
# DAY 2

```c
PRN : 200243020003
```
#### 1. Print the present working directory.
```sh
pwd
```
#### 2. From working directory show the contents of root directory.
```sh
ls /.
```
#### 3. Change directory to root.
```sh
cd /.
```
#### 4. Change back to your home directory.
```sh
cd -
```
#### 5. Move all .c files to cprograms directory and all .java files to javaprograms. 
```sh
mv *.c cprograms/.
mv *.java javaprograms/.
```
#### 6. Copy all the files starting with file to file_copy directory.
```sh
cp file* file_copy/.
```
#### 7. Remove all .c file from your current directory.
```sh
rm *.c
```
#### 8. Remove directory which is not empty.
```sh
rmdir -R dirname
```
#### 9. Copy file from one directory to another with some different name.
```sh
cp one/file1 two/file2
```
#### 10. Find all the c files in current directory.
```sh
find . -name *.c
```
#### 11. Count the total numer of c files in current directory.
```sh
ls *.c | wc -l
```
#### 12. Print top 10 memory consuming processes.
```sh
top -b -o +%MEM | head -n 10
```
#### 13. Print total number of processes created by each user.
```sh
ps -eo users | tail -n +2 | sort | uniq -c
```

#### 14. Find all the files whose name starts with hello in current directory.
```sh
find . -type f -name "hello*"
```
#### 15. Move all the files from one directory to another directory.
```sh
mv /path/sourcefolder/* /path/destinationfolder/
```
#### 16. Copy the contents of a file into another.
```sh
cp sourcefile destinationfile
```
#### 17. Rename the given file.
```sh
mv sourcefile destinationfile 
```
#### 18. Find all the files which are recently modified in last 2 days.
```sh
find -type f -mtime+2
```
#### 19. Find all the empty files.
```sh
find . -type f -empty
```
#### 20. Count all the directories present in current directory.
```sh
find . -type d | wc -l
```
#### 21. Change the permissions of file to following 1. rwx for user rw for group and only r for other. 2. rw for user rw for group and r for other 3. rwx for all 4. rwx for user and group and r for other 5. rwx for user r for group and other
```sh
chmod 764 filename
chmod 664 filename
chmod 777 filename
chmod 774 filename
chmod 744 filename
```