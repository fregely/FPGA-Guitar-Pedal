// C code for the guitar pedal!!



#include "hls_math.h"
#include "pedal_c.h"



// NOTE: enstead of floats might be able to used ap_fixed(24,8) To hold fractioned values
// Apparently the compiler knows how to deal with them and it takes less hardware then pure floats


int hard_clipping_distortion(int data, fixed_t  gain, fixed_t  threshold){
    fixed_t temp = fixed_t(data) * gain;
    if (temp > threshold){
        temp = threshold;
    }
    else if (temp < -threshold){
        temp = -threshold;
    }
   
    return temp.to_int();
}

int soft_clipping_distortion(int data, fixed_t gain, fixed_t threshold){
    fixed_t max_val = threshold / fixed_t(3.0f);
    fixed_t x = (fixed_t(data) / max_val) * gain;
    // tanhf still needs a float input
    // This is acceptable since soft clipping doesn't touch BRAM
    fixed_t result = fixed_t(hls::tanhf((float)x)) * max_val;
    return result.to_int();
}

int tremolo(int data, int rate, fixed_t depth, int sample_rate, int count){
    // sinf needs float input — cast int count to float for the trig call only
    fixed_t lfo = fixed_t(hls::sinf(2.0f * 3.14159f * rate * ((float)count / sample_rate)));
    // LFO modulates amplitude between (1-depth) and 1
    fixed_t mod = fixed_t(1) - depth + depth * fixed_t(0.5f) * (fixed_t(1) + lfo);
    return (mod * fixed_t(data)).to_int();
}    
