#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include <iostream>


typedef ap_axis<32, 0, 0, 0> audio_sample;
typedef hls::stream<audio_sample> audio_stream;

void audio_passthrough(audio_stream &in_stream, audio_stream &out_stream, ap_uint<8> switches) {
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE s_axilite port=switches bundle=ctrl
    #pragma HLS INTERFACE s_axilite port=return bundle=ctrl

    bool sw0 = switches[0];
    bool sw1 = switches[1];
    bool sw2 = switches[2];
    bool sw3 = switches[3];
    bool sw4 = switches[4];


    audio_sample sample;
    do {
        #pragma HLS PIPELINE II=1
        in_stream.read(sample);
        if(!(sw0 || sw1 || sw2 || sw3 || sw4)){
            sample.data = -sample.data;           
        }
        out_stream.write(sample);
    } while (!sample.last);
}

    


