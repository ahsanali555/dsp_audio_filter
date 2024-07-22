
#ifndef IIR_COEFFS_H_
#define IIR_COEFFS_H_


// second-order IIR pass-band filter, pass-band around 0.125*Fs

#define BIQ_LEN 1
#define IIR_Q 12

// IIR filter coeffs. (Q3.12)
int a[2] = {-5299, 3697};
int b[3] = {332, -166, -66};


// floating point coeffs.
float af[2] = {-1.293661, 0.902500};
float bf[3] = {0.081157, -0.040579, -0.016231};


// floating point coeffs. rounded to Q3.12 values
float afq[2] = {-1.293701, 0.902588};
float bfq[3] = {0.081055, -0.040527, -0.016113};




#endif /* IIR_COEFFS_H_ */
