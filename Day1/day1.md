#### 1. Create files File1 , File2, File3 using touch command.
```sh
$touch File1 File2 File3
```
#### 2. Create files Countries, Names, Movies with 5 elements stored in it.
```sh
$cat > countries
    India
    Pakistan
    Shri Lanka
    Bangladesh
    Nepal
   ^Z     /*save the contents in file
```
#### 3. Try ls command and check for the files you created.
```sh
$ls
```

#### 4. Try ls -l command and study it in details.
```sh
$ls -l
```
#### 5. Create directory Games. Create two files indoor and outdoor under directory Games. Your file should contain 5 entries.
```sh
 $mkdir Games
   $cd Games
   $cat > indoor
    enter
    5
    indoor
    games
   ^Z
   $SAME FOR outdoor
```

#### 6. Create directory Tournament . Create files by name T1 and T2 under this directory. Your files should contain names of 5 players.
```sh
 $mkdir Tournament
   $cd Tournament
   $cat > T1
    type
    5
    names
    ^Z
   $SAME FOR T2
```
#### 7. Copy contents of file indoor in TempIndoor and contents of file outdoor in TempOutdoor.
```sh
$cp indoor TempIndoor
   $cp outdoor TempOutdoor
```

#### 8. Copy TempIndoor and TempOutdoor files in directory Tournament.
```sh
$cp Games/TempIndoor Tournament/TempIndoor
   $cp Games/TempOutdoor Tournament/Outdoor
```
#### 9. Create another copies of both the above files by different names and delete files TempIndoor and TempOutdoor. 
```sh
$cd Games
   $cp TempIndoor NewIndoor
   $cp TempOutdoor NewOutdoor
```

#### 10. Check your system date.
```sh
$date
```
#### 11. Display only the day of system date.
```sh
$date +%d
```
#### 12. Display only the month of system date.
```sh
$date +%m
```
#### 13. Execute the command to check hidden files.
```sh
$ls -a
```
#### 14. Execute command ls -l and studay it in details again.
```sh
$ls -l
```

#### 15. Create a directory by name NewTournaments and delete directory Tournament. Make sure that you don't loose the contents of Tournament directory.
```sh
$mkdir NewTournaments
 $cp -R Tournament NewTournaments/.
```

#### 16. Display the contents of files countries.
```sh
$cat countries
```
#### 17. Copy contents of file Countries and Names in file Trial .
```sh
$cat countries names >> Trial
```

#### 18. Create file by name Subjects with names of 5 subjects.
```sh
$cat > subjects
     enter 
     data
    ^Z
```
#### 19. Move contents of Subjects in DacSubjects.
```sh
$mkdir DacSubjects
$mv subjects DacSubjects/.
```
#### 20. Again try listing all the files.
```sh
$ls
```