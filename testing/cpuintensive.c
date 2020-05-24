#include <stdio.h>

int main(int argc, char const *argv[])
{
    unsigned long long volatile count = 0;
    printf("started");
    while(1) {
        count++;
        if(count > 5800000000)
            break;
    }
    printf("stopped");
    return 0;
}
