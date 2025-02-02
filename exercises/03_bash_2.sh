# 2.a Make a copy of the file `data.csv` removing the metadata and the commas between numbers; call it `data.txt`
grep -v "#" ./data/data.csv | sed -e "s/,/ /g" > ./data/data.txt

# 2.b How many even numbers are there?
?

# 2.c Distinguish the entries on the basis of `sqrt(X^2 + Y^2 + Z^2)` is greater or smaller than `100*sqrt(3)/2`. Count the entries of each of the two groups 
?

# 2.d Make `n` copies of data.txt (with `n` an input parameter of the script), where the i-th copy has all the numbers divided by i (with `1<=i<=n`).
if [ -z $1 ]
then
    echo no argument given
else
    for (( i=1; i<=$1; i++ ))
    do
        cp ./data/data.txt ./data/data_$i.txt
    done
fi