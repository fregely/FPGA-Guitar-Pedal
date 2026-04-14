# FPGA Guitar Pedal

A software implementation of real-time guitar effects, designed to mirror the behavior of an FPGA-based guitar pedal. This project benchmarks five distinct audio effects in Python before deploying them to a Xilinx AUP-ZU3 FPGA board. The goal is to measure how long the software implementation takes to run, in order to compare against our final hardware results.

---

## Requirements

- Python 3.x
- numpy
- scipy
- sounddevice
- matplotlib

Install all dependencies with:

```bash
pip install numpy scipy sounddevice matplotlib
```

> **Note:** On Linux, you may need to install PortAudio first:
> ```bash
> sudo apt install portaudio19-dev
> ```

---

## Running the Program

```bash
python software_implemention.py
```

Or simply press the **Run/Play** button in your IDE.

---

## Effects

### Hard Clipping Distortion
Works by applying a gain to boost the signal, then hard-cutting any values that exceed a set threshold. This produces a harsh, aggressive distortion characteristic of classic fuzz pedals.

### Soft Clipping Distortion
Similar to hard clipping, but instead of abruptly cutting the signal, it uses a `tanh` function to smoothly compress values as they approach the threshold. This produces a warmer, less harsh distortion that more closely resembles tube amplifier overdrive.

### Echo / Delay
Creates a delay effect by maintaining a circular buffer offset from the original signal by a set number of samples. The delayed signal is mixed back with the original, and a feedback parameter controls how many times the echo repeats before fading out.

### Tremolo
Multiplies the audio signal by a low-frequency oscillator (LFO) which modulates the volume of the signal. The `rate` parameter controls how fast the volume oscillates, and the `depth` parameter controls how pronounced the effect is.

### Chorus
Combines the original signal with a slightly delayed and pitch-modulated copy of itself to create a shimmering effect that makes a single instrument sound like multiple. Like the echo effect, it uses a circular buffer, but the delay time itself is continuously modulated by an LFO. Linear interpolation is applied between buffer samples to prevent audible clicking artifacts from the modulation.

---

# Project Directory 

## Pedal_Vitis
Currently holds the all the code for how our guitar pedal works. Has working hard and Soft Clipping, Echo, Tremolo and Chorus. 

## Pedal_Vivado
Holds a block diagram that allows the code to run on a board. Including Axi Stream, and allows for direct access to the board switches to be integrated to control which effect is being done. 

## Audio_output
Contains .wav files for each of the effects, recorded directly from the board as an example of what each effect does. 

## Final_bitstream
Contains all files need to upload to the board and run the program

## audio_test jupyter Notebook 
The python code ran on the board

## software_implemention 
The python Software implementation 

# Project Time Results

## Software times:
Hard Clip: 0.75417 s
Soft Clipped: 0.61680 s
Delay: 0.36252 s
Sin Tremolo: 0.60201 s
Chorus: 1.47538 s

## Hardware times:
Hard clipping 0.038399 s
Soft clipping 0.038667 s
Echo 0.038138 s
Chorus 0.039254 s
Tremolo 0.038160 s
Hard + echo 0.037932 s
Soft + chorus 0.037990 s
Echo + chorus 0.037910 s
All of them  0.038021 s
All - tremolo 0.038304 s
