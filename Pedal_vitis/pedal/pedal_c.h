#ifndef pedal_c_h
#define pedal_c_h
#include "ap_axi_sdata.h"
#include "hls_stream.h"
#include "ap_fixed.h"
#include "hls_math.h"

typedef ap_fixed<32, 16, AP_RND_CONV, AP_SAT> fixed_t;

#define DATA_SIZE 32

//Distortion Configs
#define GAIN 2.5f
#define THRESHOLD 5000.0f

//Echo Configs
#define ECHO_GAIN .6f
#define DELAY_MS 200
#define FEEDBACK .5f
//Tremolo/Chorus ConfigsQ
#define RATE 5
#define DEPTH 0.5f
//Chorus Configs
#define CHORUS_DELAY 25
#define CHORUS_DEPTH 20.5f
#define CHORUS_RATE 5
#define MIX .7f
#define DELAY_SAMPLES 8820
#define SAMPLE_RATE 44100
#define CHORUS_DELAY_SAMPLES 1102

typedef ap_axis<32, 0, 0, 0> audio_sample; // Might need to change width depending on how large the .wav blocks are


typedef hls::stream<audio_sample> audio_stream;


int hard_clipping_distortion(int data, fixed_t gain, fixed_t threshold);
int soft_clipping_distortion(int data, fixed_t gain, fixed_t threshold);
int tremolo(int data, int rate, fixed_t depth, int sample_rate, int count);


void pedal_top(audio_stream &in_stream, audio_stream &out_stream, ap_uint<8> switches);
#endif
