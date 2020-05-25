#! /usr/bin/awk -f 

BEGIN { FS=" "; sum=0; linecnt=0;expected=20} 
{



    sum = sum+($8-expected)*($8-expected);
    linecnt++;

}
END {print"mse for " $12 " is: " sum/(linecnt*100), linecnt}
