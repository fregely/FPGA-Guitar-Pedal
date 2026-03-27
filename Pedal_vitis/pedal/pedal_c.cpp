// C code for the guitar pedal!!

#include <cmath>
#include "pedal_c.h"



int data_buf[DATA_SIZE] = {};
void data_buffer(int input_data[DATA_SIZE]){
    for(int i=0; i<DATA_SIZE; i++){
        data_buf[i] = input_data[i];
    }
}


int* hard_clipping_distortion(int data[DATA_SIZE], float gain, float threshold){
    int* output = new int[DATA_SIZE];
    float temp;
    for(int i=0; i<DATA_SIZE; i++){
        temp = data[i] * gain; //float and int multiplication
        if (temp > threshold){
            temp = threshold;
        }
        else if (temp < -threshold){ //this should be else if right? in python it's just if
            temp = -threshold;
        }
        output[i] = int(temp); //converting temp back to an int?
    }
    return output;
}

int* soft_clipping_distortion(int data[DATA_SIZE], float gain){
    int* output = new int[DATA_SIZE];
    int abs_data[DATA_SIZE];
    int compare = 0;
    int max_val = 0;

    for(int i=0; i<DATA_SIZE; i++){
        abs_data[i] = abs(data[i]); //can probably optimize not in loop
        if (abs_data[i] > compare){
            max_val = abs_data[i];
            compare = max_val;
        }
    }

    max_val = max_val / 3;
    int temp;

    for(int j=0; j<DATA_SIZE; j++){
        temp = tanh((float(data[j])/max_val)*gain) * max_val; //converting to float so no integer division, can change
        output[j] = int(temp); //we need to convert this back to an int right?
    }
    
    return output;
}

int* echo(int data[DATA_SIZE], float gain, float delay_ms, float feedback, float sample_rate){
    int delay_samples = int(sample_rate * delay_ms / 1000);
    int* output = new int[DATA_SIZE + delay_samples];
    int buffer[delay_samples];
    int buf_idx = 0;
    int current = 0;

    for(int i=0; i<(DATA_SIZE+delay_samples); i++){
        if(i< DATA_SIZE){
            current = data[i];
        }
        else current = 0;

        int delayed = buffer[buf_idx];
        output[i] = current + (delayed * gain); //should we cast as an int??
        buffer[buf_idx] = current + (delayed * feedback);
        buf_idx = (buf_idx + 1) % delay_samples;
    }

    return output; //this has size DATA_SIZE + delay_samples so if we want to do multiple effects need to change
}