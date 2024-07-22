#include "fir.h"
#include "iir.h"
#include "samples.h"
#include "fir_coeffs.h"
#include "iir_coeffs.h"


#define BUFF_LEN	256


// define FIR buffers for floating
int buffer_fir[FIR_LEN];
int buffer_asm[FIR_LEN+2];  //ASM implementation requires 2 extra memory locations

float fbuffer_fir[FIR_LEN];
float fbufferc_fir[FIR_LEN+1];

// define output buffers for fixed
int fbuffer_fir_3[FIR_LEN];
int fbufferc_fir_4[FIR_LEN+1];

// define IIR buffers
float fbuffer1[3*BIQ_LEN+1];
float fbuffer2[3*BIQ_LEN+1];
float fbuffer3[3*BIQ_LEN+1];

// define IIR buffers for fixed
int fbuffer4[3*BIQ_LEN+1];
int fbuffer5[3*BIQ_LEN+1];
int fbuffer6[3*BIQ_LEN+1];

// define IIR buffers for fixed with noise-shaping
int fbuffer7[3*BIQ_LEN+1];
int fbuffer8[3*BIQ_LEN+1];


// define output buffers for floating
int output[BUFF_LEN];

float output1f[BUFF_LEN];
float output2f[BUFF_LEN];

// define output buffers for fixed
int output3fix[BUFF_LEN];
int output4fix[BUFF_LEN];

int output5fix[BUFF_LEN]; //for noise-shaping
int fbufferns[3*BIQ_LEN+1]; //for noise-shaping


// for computing statistics
float err1, err2, power;



// compute total squared error between sequences s1 and s2 (both integer)
float compute_error_int(int* s1, int *s2, int len)
{
	int i;
	float acc = 0, tmp;
	for (i = 0; i < len; i++)
	{
		tmp = (float)s1[i] - s2[i];
		acc += tmp*tmp;
	}
	return acc;
}

// compute total squared error between sequences s1 (integer) and s2 (floating point)
float compute_error_intf(int* s1, float *s2, int len)
{
	int i;
	float acc = 0, tmp;

	for (i = 0; i < len; i++)
	{
		tmp = (float)s1[i] - s2[i];
		acc += tmp*tmp;
	}
	return acc;
}

// compute total squared error between sequences s1 and s2 (both floating point)
float compute_error_f(float* s1, float *s2, int len)
{
	int i;
	float acc = 0, tmp;

	for (i = 0; i < len; i++)
	{
		tmp = s1[i] - s2[i];
		acc += tmp*tmp;
	}
	return acc;
}




int main(void) {

	int i;

	// zero out buffers
	for (i = 0; i < FIR_LEN; i++)
	{
		buffer_fir[i] = 0;
		fbuffer_fir[i] = 0;
		fbufferc_fir[i] = 0;
		fbuffer_fir_3[i] = 0;
		fbufferc_fir_4[i] = 0;
	}
	fbufferc_fir[FIR_LEN] = 0;
	fbufferc_fir_4[FIR_LEN] = 0;
	for (i = 0; i < FIR_LEN+2; i++)
	{
		buffer_asm[i] = 0;
	}
	for (i = 0; i < 3*BIQ_LEN+1; i++)
	{
		fbuffer1[i] = 0;
		fbuffer2[i] = 0;
		fbuffer3[i] = 0;

		//for fixed point
		fbuffer4[i] = 0;
		fbuffer5[i] = 0;
		fbuffer6[i] = 0;

		//for IIR-1 Noise Shaping
		fbuffer7[i] = 0;
		fbuffer8[i] = 0;
		fbufferns[i] = 0;
	}

	err1 = 0;
	err2 = 0;
	power = 0;


	for (i = 0; i < DATA_LEN/BUFF_LEN; i++)
	{
		// write here code to process samples from &samples[i*BUFF_LEN] to &samples[i*BUFF_LEN + BUFF_LEN - 1]

		// FIR floating point version
		//fir_linear_f(&samples[i*BUFF_LEN], hfq, output1f, fbuffer_fir, BUFF_LEN, FIR_LEN);
		//fir_circular_f(&samples[i*BUFF_LEN], hfq, output2f, fbufferc_fir, BUFF_LEN, FIR_LEN);

		// FIR Fixed Point version
		//fir_linear_fix(&samples[i*BUFF_LEN], h, output3fix, fbuffer_fir_3, BUFF_LEN, FIR_LEN);
		//fir_circular_fix(&samples[i*BUFF_LEN], h, output4fix, fbufferc_fir_4, BUFF_LEN, FIR_LEN);


		// FIR fixed point version
		//fir_asm(&samples[i*BUFF_LEN], h, output, buffer_asm, BUFF_LEN, FIR_LEN);

		// IIR floating point
		iir_biquad1_f(&samples[i*BUFF_LEN], bfq, afq, output1f, fbuffer1, fbuffer2, BUFF_LEN, BIQ_LEN);
		//iir_biquad2_f(&samples[i*BUFF_LEN], bf, af, output2f, fbuffer3, BUFF_LEN, BIQ_LEN);

		// IIR fixed point
		iir_biquad1_fix(&samples[i*BUFF_LEN], b, a, output3fix, fbuffer4, fbuffer5, BUFF_LEN, BIQ_LEN);
		//iir_biquad2_fix(&samples[i*BUFF_LEN], b, a, output4fix, fbuffer6, BUFF_LEN, BIQ_LEN);

		//IIR BIQUAD-I Noise Shaping
		iir_biquad1_ns(&samples[i*BUFF_LEN], b, a, output5fix, fbuffer7, fbuffer8, fbufferns, 12, BUFF_LEN, BIQ_LEN);


		// compute error between fixed and floating IIR versions
		err1 += compute_error_intf(output3fix, output1f, BUFF_LEN);

		// compute error between fixed-NoiseShaping and floating IIR versions
		err2 += compute_error_intf(output5fix, output1f, BUFF_LEN);

	}
	err1 /= DATA_LEN;
	err2 /= DATA_LEN;

	
	for (i = 0; i < DATA_LEN; i++)
		power += (float)samples[i]*(float)samples[i];

	power /= DATA_LEN;

	return 0;
}



