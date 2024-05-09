#!/bin/bash

function help() {
	echo "Usage $0 <count_not> <not_bash_file>"
}

if [[ "$#" -ne 2 ]]
then
	help
fi

count_not=$1
bash_not_file=$2

count_ten_remainder=$(( $count_not % 10 ))
count_ten_times=$(( $count_not / 10 ))

echo "#! /bin/bash" > $bash_not_file
echo "" >> $bash_not_file
echo 'echo $(( \' >> $bash_not_file
for i in $(seq $count_ten_times)
do
	echo '! ! ! ! ! ! ! ! ! ! \' >> $bash_not_file
done
for i in $(seq $count_ten_remainder)
do
	echo '! \' >> $bash_not_file
done
echo "0 ))" >> $bash_not_file
