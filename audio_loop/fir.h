#ifndef FIR_H_
#define FIR_H_


// ASM optimized filters, Q0.15 format
unsigned short fir_asm(int *x, int *h, int *r, int *dbuffer, unsigned short nx, unsigned short nh);
unsigned short fir2_asm(int *x, int *h, int *r, int *dbuffer, unsigned short nx, unsigned short nh);


void fir_linear_f(int *x, float *h, float *r, float *dbuffer, unsigned short nx, unsigned short nh);
void fir_circular_f(int *x, float *h, float *r, float *dbuffer, unsigned short nx, unsigned short nh);

// you can add here declarations of other FIR filter functions
void fir_linear_fix (int *x, int *h, int *r, int *dbuffer, unsigned short nx, unsigned short nh);
void fir_circular_fix (int *x, int *h, int *r, int *dbuffer, unsigned short nx, unsigned short nh);

#endif /* FIR_H_ */
