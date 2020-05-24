#! /usr/bin/awk -f 

#use BEGIN sepecial character to set FS built-in variable
BEGIN { FS=" "; sum=0; linecnt=0;expected=20} 
{
#search for username: aaronkilik and print account details 
sum = sum+(expected -$8)*(expected -$8);
linecnt++;
}
END {print"mse for " $1 " with process " $12 " is: " sum/linecnt}
