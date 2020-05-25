#! /usr/bin/awk -f 

BEGIN { FS=" "; sum=0; linecnt=0;expected=33;ln1;ln2} 
{

if(NR == FNR){
    ln1 = $8;
}
else{
    ln2 = $8;       
}
if (ln1 > 1 || ln1 > 1) {
    sum = sum+(ln1+ln2-expected)*(ln1+ln2-expected);
    linecnt++;
    }
}
END {print"mse for " $12 " is: " sum/(linecnt*100), linecnt}


