#!/bin/bash

counter=1 
while [ $counter -le 100 ]
do 
	./a.out
	((counter++))
done

echo all done
