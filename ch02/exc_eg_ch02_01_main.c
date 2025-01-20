
#include <stdio.h>

#include "exc_eg_ch02_01.h"

int main (int argc, char** argv) {
    // Array decalation
    int array[5];

    // Filling the array
    array[0] = 10;
    array[1] = 3;
    array[2] = 5;
    array[3] = -8;
    array[4] = 9;

    // Calculating the avarages using the 'avg' function
    double average = avg(array, 5, NORMAL);
    printf("The average: %f\n", average);

    average = avg(array, 5, SQUARED);
    printf("The squared average: %f\n", average);

    return 0;
}