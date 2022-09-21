#!/bin/bash
if [[ -f ./inputFile ]]
then 
	rm ./inputFile
fi 
for num in {0..9}
do
	random_number=$(( $RANDOM / 5  ))
	echo "$num, $random_number" >> ./inputFile
done 
chmod 664 ./inputFile

