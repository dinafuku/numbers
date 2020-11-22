#! /bin/bash
# numbers.sh
# Dylan Inafuku

echo "Enter a positive number: "
read NUMBER

while echo "$NUMBER" | egrep -v "^[0-9]+" > /dev/null 2>&1
do
        echo "Enter a positive number: "
        read NUMBER
done

N=1
while [[ $NUMBER -ge $N ]]
do
	if [ $((N%2)) -eq 0 ]
	then
		echo "$N EVEN"
	else
		echo "$N ODD"
	fi
	N=$((N+1))
done
echo "Thank you"
