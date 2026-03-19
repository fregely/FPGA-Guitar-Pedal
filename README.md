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

# Vitis and Vivado Project

## Vitis
The Vitis project currently contains simple passthrough code for audio, allowing us to test sound playback on the board. It also serves as a template that we will build the rest of the project on top of.

## Vivado
Holds a block diagram that connects the Vitis program to the audio codec. It is able to fully generate a bitstream and we believe it will work, but have not yet had a chance to test it on the board.

---

# AI Usage
AI was used to help learn how to set up Vivado, using it as a better google, to figure out which IP blocks to use, and to help debug and set up the constraints file.

It was also used to help format and clean up this README, because I (David) am really bad at writing them.
