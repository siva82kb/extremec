#ifndef EXC_EG_CH02_01_H
#define EXC_EG_CH02_01_H

typedef enum {
    NONE,
    NORMAL,
    SQUARED
} average_type_t;

// Function declation
double avg(int*, int, average_type_t);

#endif