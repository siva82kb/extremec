#include <stdio.h>

int add(int, int);

int main(int arc, char** argv) {
    int x = add(5, 6);
    printf("Result: %d\n", x);
    return 0;
}