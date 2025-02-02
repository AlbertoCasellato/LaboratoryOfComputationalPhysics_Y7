# 1.a Make a new directory called `students` in your home. Download a csv file with the list of students of this lab from [here](https://www.dropbox.com/s/867rtx3az6e9gm8/LCP_22-23_students.csv) (use the `wget` command) and copy that to `students`. First check whether the file is already there
if [ -f "./students/LCP_22-23_students.csv" ]
then
    echo Folder with dataset already available
else
    mkdir students
    wget https://www.dropbox.com/s/867rtx3az6e9gm8/LCP_22-23_students.csv
    cp ./LCP_22-23_students.csv ./students/LCP_22-23_students.csv
    ls ./students
fi

# 1.b Make two new files, one containing the students belonging to PoD, the other to Physics.
grep "PoD" ./students/LCP_22-23_students.csv > .students/pod_students.csv
grep "Physics" ./students/LCP_22-23_students.csv > ./students/physics_students.csv
ls ./students

# 1.c For each letter of the alphabet, count the number of students whose surname starts with that letter. 
# 1.d Find out which is the letter with most counts.
max_n=0
for letter in {A..Z}; do
    n=$(grep -c "^$letter" ./students/LCP_22-23_students.csv)
    echo For letter $letter there are $n students.
    if [ $n -gt $max_n ]; then
        max_n=$n
    fi
done
echo The maximum number for a single letter is $max_n

# 1.e Assume an obvious numbering of the students in the file (first line is 1, second line is 2, etc.), group students "modulo 18", i.e. 1,19,37,.. 2,20,38,.. etc. and put each group in a separate file  
?
