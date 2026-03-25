//topfile for pedal effects


// sample_rate, data = load_audio(INPUT_FILE)
// start = time.perf_counter()
// hard_clipped = hard_clipping_distortion(data, GAIN, CLIPPING_THRESHOLD)
// hard_clipped_stop = time.perf_counter()
// print(f"Time taken for Hard Clip: {hard_clipped_stop - start} seconds")
// soft_clipped = soft_clipping_distortion(data, GAIN)
// soft_clipped_stop = time.perf_counter()
// print(f"Time taken for Soft Clipped: {soft_clipped_stop - hard_clipped_stop} seconds")
// echo_effect = echo(data, ECHO_GAIN, DELAY, FEEDBACK, sample_rate)
// echo_stop = time.perf_counter()
// print(f"Time taken for Delay: {echo_stop - soft_clipped_stop} seconds")
// sin_tremolo_effect = sin_tremolo(data, RATE, DEPTH, sample_rate)
// sin_tremolo_stop = time.perf_counter()
// print(f"Time taken for Sin Tremolo: {sin_tremolo_stop - echo_stop} seconds")
// chorus_effect = chorus(data, CHORUS_RATE, CHORUS_DEPTH, MIX, CHORUS_DELAY, sample_rate )
// chorus_stop = time.perf_counter()
// print(f"Time taken for Chorus: {chorus_stop - sin_tremolo_stop} seconds")
// print(f"Total Time taken: {chorus_stop - start} seconds")

#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include <iostream>
#include "pedal_c.h"

typedef ap_axis<32, 0, 0, 0> audio_sample; // Might need to change width depending on how large the .wav blocks are

typedef hls::stream<audio_sample> audio_stream;


void pedal_top(audio_stream &in_stream, audio_stream &out_stream){
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE s_axilite port=return

    audio_sample sample;
    do {
        in_stream.read(sample);
        //out_stream.write(sample);

        int hard_clipped[DATA_SIZE] = hard_clipping_distortion(in_stream, GAIN, THRESHOLD);
    } while (!sample.last);

}
