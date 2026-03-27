#ifndef pedal_c_h
#define pedal_c_h

#define DATA_SIZE 32
//Distortion Configs
#define GAIN = 2.5;
#define CLIPPING_THRESHOLD = 5000;
//Echo Configs
#define ECHO_GAIN = .6;
#define DELAY = 200;
#define FEEDBACK = .5;
//Tremolo/Chorus Configs
#define RATE = 5;
#define DEPTH = .5;
//Chorus Configs
#define CHORUS_DELAY = 25;
#define CHORUS_DEPTH = 20;
#define CHORUS_RATE = 5;
#define MIX = .7;

int* hard_clipping_distortion(int data[DATA_SIZE], float gain, float threshold);
int* soft_clipping_distortion(int data[DATA_SIZE], float gain);
int* echo(int data[DATA_SIZE], float gain, float delay_ms, float feedback, float sample_rate);

#endif
