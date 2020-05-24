#!/bin/bash 
cat out* >> combined.txt && 
cat combined.txt | grep -o "user1.*a.out" >> user1.txt && 
cat combined.txt | grep -o "user2.*a.out" >> user2.txt && 
cat combined.txt | grep -o "user3.*a.out" >> user3a.txt && 
cat combined.txt | grep -o "user3.*b.out" >> user3b.txt && 
cat combined.txt | grep -o "user4.*a.out" >> user4.txt && 
./msecalcprocess.awk user1.txt && 
./msecalcprocess.awk user2.txt && 
./msecalcprocess.awk user3a.txt && 
./msecalcprocess.awk user3b.txt && 
./msecalcprocess.awk user4.txt