#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include <iostream>

typedef ap_axis<32, 0, 0, 0> audio_sample; // Might need to change width depending on how large the .wav blocks are

typedef hls::stream<audio_sample> audio_stream;

void audio_passthrough(audio_stream &in_stream, audio_stream &out_stream){
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE s_axilite port=return

    audio_sample sample;
    do {
        in_stream.read(sample);
        out_stream.write(sample);
    } while (!sample.last);

    
}

