
#include "pedal_c.h"
#include "hls_math.h"

void pedal_top(audio_stream &in_stream, audio_stream &out_stream, ap_uint<8> switches){
    #pragma HLS INTERFACE axis port=in_stream
    #pragma HLS INTERFACE axis port=out_stream
    #pragma HLS INTERFACE s_axilite port=switches bundle=ctrl
    #pragma HLS INTERFACE s_axilite port=return bundle=ctrl

     static int buffer[DELAY_SAMPLES] = {0};
    #pragma HLS BIND_STORAGE variable=buffer type=ram_2p impl=bram // 1 read port
    #pragma HLS DEPENDENCE variable=buffer inter false

    static int buffer2[CHORUS_DELAY_SAMPLES] = {0};
    #pragma HLS ARRAY_PARTITION variable=buffer2 cyclic factor=2 dim=1 // Need this to have 2 read able brm ports
    #pragma HLS DEPENDENCE variable=buffer2 inter false

    static int buf_id  = 0;
    static int buf_id2 = 0;
    static int sample_count = 0;
    //active high switches
    bool sw0 = switches[0]; //hard clipping distortion
    bool sw1 = switches[1]; //soft clipping distortion
    bool sw2 = switches[2]; //echo
    bool sw3 = switches[3]; //tremolo
    bool sw4 = switches[4]; //chorus


    audio_sample sample;

    do{
            #pragma HLS LOOP_FLATTEN off
            #pragma HLS PIPELINE II=1

        in_stream.read(sample);

        if(sw0){
                        
            // hard Clipping 
            sample.data = hard_clipping_distortion(sample.data, fixed_t(GAIN), fixed_t(THRESHOLD));
        }        
        if(sw1){
            // soft Clipping
             sample.data = soft_clipping_distortion(sample.data, fixed_t(GAIN), fixed_t(THRESHOLD));
        }
        if(sw2){
            //echo
            int current = sample.data;
            int delayed = buffer[buf_id];
            fixed_t echo_gain = fixed_t(ECHO_GAIN);   // compile-time constant conversion
            fixed_t feedback  = fixed_t(FEEDBACK);
            sample.data    = current + (fixed_t(delayed) * echo_gain).to_int();
            buffer[buf_id] = current + (fixed_t(delayed) * feedback).to_int();
            if (buf_id == DELAY_SAMPLES - 1) buf_id = 0;
            else buf_id++;
        } 
        if(sw3){
            //tremolo
             sample.data = tremolo(sample.data, RATE, fixed_t(DEPTH), SAMPLE_RATE, sample_count);
        }
        if(sw4){
            // Chorus 

            
            // sinf/fmodf still need float, but intermediate mix math is fixed_t
            fixed_t lfo = fixed_t(hls::sinf(2.0f * 3.14159f * CHORUS_RATE * ((float)sample_count / SAMPLE_RATE)));

            // Compute read position with LFO modulation around write head
            float raw_pos = (float)(buf_id2) + (float)(fixed_t(CHORUS_DEPTH) * lfo);
            float pos   = hls::fmodf(raw_pos + CHORUS_DELAY_SAMPLES, (float)CHORUS_DELAY_SAMPLES);

            int pos_floor = (int)pos;
            int pos_ceil  = (pos_floor + 1) % CHORUS_DELAY_SAMPLES;
            fixed_t fraction = fixed_t(pos - (float)pos_floor);

            // Interpolation in fixed_t — no float multiply on BRAM values
            fixed_t delayed = fixed_t(buffer2[pos_floor]) * (fixed_t(1) - fraction)
                            + fixed_t(buffer2[pos_ceil])  * fraction;

            int current = sample.data;
            fixed_t mix = fixed_t(MIX);
            sample.data = ((fixed_t(1) - mix) * fixed_t(current) + mix * delayed).to_int();

            buffer2[buf_id2] = current;
            if (buf_id2 == CHORUS_DELAY_SAMPLES - 1) buf_id2 = 0;
            else buf_id2++;
        }
        
        sample_count++;
        if(sample_count >= SAMPLE_RATE) sample_count = 0;
        
        out_stream.write(sample);
    } while(!sample.last);
}