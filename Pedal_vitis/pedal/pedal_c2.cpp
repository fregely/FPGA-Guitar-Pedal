// pedal_c.cpp
#include <cmath>
#include "pedal_c.h"

// BUG FIXED: removed unused global data_buf and data_buffer() —
// global arrays in HLS synthesize to real resources and cause port issues.

int hard_clipping_distortion(int data, float gain, float threshold) {
    float temp = data * gain;
    if (temp > threshold) {
        temp = threshold;
    } else if (temp < -threshold) {  // else if is correct here
        temp = -threshold;
    }
    // BUG FIXED: removed unused `audio_sample output;` declaration
    return (int)temp;
}

int soft_clipping_distortion(int data, float gain, float threshold) {
    // BUG FIXED: max_val must be float — int truncation causes wrong results
    // (and division-by-zero if threshold < 3)
    float max_val = threshold / 3.0f;
    float temp = tanhf((float(data) / max_val) * gain) * max_val;
    return (int)temp;
}

// -----------------------------------------------------------------------
// Top-level kernel
// -----------------------------------------------------------------------
void pedal_top(audio_stream &in_stream, audio_stream &out_stream,
               ap_uint<8> switches) {
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    // BUG FIXED: duplicate `s_axilite port=return` pragma removed.
    // Only one return entry allowed; both ports go in the same bundle.
    #pragma HLS INTERFACE s_axilite port=switches bundle=ctrl
    #pragma HLS INTERFACE s_axilite port=return   bundle=ctrl
    #pragma HLS PIPELINE II=1

    bool sw0 = switches[0];  // hard clipping distortion
    bool sw1 = switches[1];  // soft clipping distortion
    bool sw2 = switches[2];  // echo       (not yet implemented)
    bool sw3 = switches[3];  // tremolo    (not yet implemented)
    bool sw4 = switches[4];  // chorus     (not yet implemented)

    audio_sample sample;
    do {
        in_stream.read(sample);

        // BUG FIXED: `if(1 && sw0)` → `if(sw0)` — the `1 &&` was redundant
        if (sw0) {
            sample.data = hard_clipping_distortion(sample.data, GAIN, THRESHOLD);
        }
        if (sw1) {
            sample.data = soft_clipping_distortion(sample.data, GAIN, THRESHOLD);
        }
        // sw2–sw4: stubs — add effect calls here once implemented
        (void)sw2; (void)sw3; (void)sw4;  // prevent HLS from optimizing out reads

        out_stream.write(sample);
    } while (!sample.last);
}