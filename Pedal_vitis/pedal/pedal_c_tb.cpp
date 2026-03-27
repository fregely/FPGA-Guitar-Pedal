#include <iostream>
#include <vector>
#include <cmath>
#include <iomanip>

#include "pedal_c.h"

// ... [Include your existing functions here] ...

int main() {
    // 1. Setup Mock Input (A simple sine wave)
    int input_signal[DATA_SIZE];
    float frequency = 440.0; // A4 note
    float sample_rate = 44100.0;
    float amplitude = 10000.0;

    for (int i = 0; i < DATA_SIZE; i++) {
        input_signal[i] = (int)(amplitude * sin(2.0 * M_PI * frequency * i / sample_rate));
    }

    // 2. Test Hard Clipping
    std::cout << "--- Testing Hard Clipping (Threshold: 5000) ---" << std::endl;
    int* clipped = hard_clipping_distortion(input_signal, 2.0, 5000.0);
    
    for (int i = 0; i < 10; i++) { // Print first 10 samples to verify
        std::cout << "In: " << std::setw(6) << input_signal[i] 
                  << " | Out: " << std::setw(6) << clipped[i] << std::endl;
    }

    // 3. Test Echo (Returns a larger array)
    std::cout << "\n--- Testing Echo ---" << std::endl;
    float delay_ms = 50.0; 
    int delay_samples = int(sample_rate * delay_ms / 1000);
    int* echoed = echo(input_signal, 0.6, delay_ms, 0.5, sample_rate);

    std::cout << "Total samples with delay: " << DATA_SIZE + delay_samples << std::endl;
    std::cout << "Sample at end of echo: " << echoed[DATA_SIZE + delay_samples - 1] << std::endl;

    // Cleanup memory to prevent leaks!
    delete[] clipped;
    delete[] echoed;

    return 0;
}