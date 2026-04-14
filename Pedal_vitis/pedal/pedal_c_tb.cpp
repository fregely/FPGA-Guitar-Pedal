#include <iostream>
#include <cmath>
#include "pedal_c.h"

int main() {
    audio_stream in_stream;
    audio_stream out_stream;
    
    // Test parameters
    const int num_samples = 100;
    const float frequency = 440.0; // A4 note
    const float amplitude = 10000.0; // Signal within our fixed_t <32,16> range
    
    // 1. Prepare Input Data: Generate a simple sine wave
    std::cout << "--- Generating Input Sine Wave ---" << std::endl;
    for (int i = 0; i < num_samples; i++) {
        audio_sample sample;
        float val = amplitude * sin(2.0 * M_PI * frequency * i / SAMPLE_RATE);
        
        sample.data = (int)val;
        sample.keep = -1; // All bytes valid
        sample.strb = -1;
        sample.last = (i == num_samples - 1); // Set TLAST on final sample
        
        in_stream.write(sample);
    }

    // 2. Set Switches: Let's test Hard Clipping (sw0) and Tremolo (sw3)
    // Binary: 01001 -> 0x09 (switches 0 and 3 are ON)
    ap_uint<8> switches = 0x09; 

    // 3. Run the Top Function
    std::cout << "--- Running pedal_top ---" << std::endl;
    pedal_top(in_stream, out_stream, switches);

    // 4. Verify Output
    std::cout << "--- Checking Results ---" << std::endl;
    int count = 0;
    while (!out_stream.empty()) {
        audio_sample out_sample = out_stream.read();
        std::cout << "Sample [" << count << "] Output Data: " << out_sample.data << std::endl;
        
        // Basic check: Hard clipping should cap data at THRESHOLD (5000)
        if (std::abs(out_sample.data) > THRESHOLD + 1) {
            std::cerr << "FAIL: Clipping failed at sample " << count << "!" << std::endl;
            return 1;
        }
        count++;
    }

    std::cout << "Test Passed: Successfully processed " << count << " samples." << std::endl;
    return 0;
}