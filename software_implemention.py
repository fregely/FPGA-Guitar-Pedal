import numpy as np
from scipy.io import wavfile
import sounddevice
import matplotlib.pyplot as plt
import time

# Configs
INPUT_FILE = r"freesound_community-simple-guitar-melody-102329.wav"
# Distortion Configs
GAIN = 2.5 
CLIPPING_THRESHOLD = 5000
# Echo Configs
ECHO_GAIN = .6
DELAY = 200
FEEDBACK = .5
# Tremolo Configs
RATE = 5
DEPTH = .5


def load_audio(filepath):
    sample_rate, data = wavfile.read(filepath)
    return sample_rate, data

def plot_sounds(original, sample_rate):
    y1 = original
    sample_length = len(original)
    x1 = np.linspace(0, sample_length/sample_rate, sample_length)
    plt.plot(x1, y1)
    plt.title("Sound Wave")
    plt.ylabel("amplitude")
    plt.xlabel("samples")
    plt.show()


def play_audio(audio, sr):
    sounddevice.play(audio, sr)
    sounddevice.wait()

def hard_clipping_distortion(audio, gain, threshold):
    out = np.empty_like(audio)
    for i in range(len(audio)):
        temp = audio[i] * gain 
        if temp > threshold:
            temp = threshold
        if temp < -threshold:
            temp = -threshold
        out[i] = temp
    return out

def soft_clipping_distortion(audio, gain):
    out = np.empty_like(audio)
    max_val = np.max(np.abs(audio)) / 3
    for i in range(len(audio)):
        temp = np.tanh((audio[i] / max_val) * gain) * max_val
        out[i] = temp
    return out    

def echo(audio, gain, delay_ms, feedback, sample_rate):
    delay_samples = int(sample_rate * delay_ms / 1000)
    out = np.zeros(len(audio) + delay_samples)
    buffer = np.zeros(delay_samples)
    buf_idx = 0
    for i in range(len(out)):
        if i < len(audio):
            current = audio[i]
        else:
            current = 0  

        delayed = buffer[buf_idx]         
        out[i] = current + delayed * gain 
        buffer[buf_idx] = current + delayed * feedback  
        buf_idx = (buf_idx + 1) % delay_samples

    return out.astype(np.int16)

def sin_tremolo(audio, rate, depth, sample_rate):
    out = np.empty_like(audio)
    
    for i in range(len(audio)):
        lfo = 1 - depth + depth * 0.5 * (1 + np.sin(2 * np.pi * rate * (i / sample_rate))) # Low frequency Oscillator
        temp = audio[i] * lfo
        out[i] = temp
    return out



def main():
    start = time.perf_counter()
    sample_rate, data = load_audio(INPUT_FILE)
    hard_clipped = hard_clipping_distortion(data, GAIN, CLIPPING_THRESHOLD)
    hard_clipped_stop = time.perf_counter()
    print(f"Time taken for Hard Clip: {hard_clipped_stop - start} seconds")
    soft_clipped = soft_clipping_distortion(data, GAIN)
    soft_clipped_stop = time.perf_counter()
    print(f"Time taken for Soft Clipped: {soft_clipped_stop - hard_clipped_stop} seconds")
    echo_effect = echo(data, ECHO_GAIN, DELAY, FEEDBACK, sample_rate)
    echo_stop = time.perf_counter()
    print(f"Time taken for Delay: {echo_stop - soft_clipped_stop} seconds")
    sin_tremolo_effect = sin_tremolo(data, RATE, DEPTH, sample_rate)
    sin_tremolo_stop = time.perf_counter()
    print(f"Time taken for Sin Tremello: {sin_tremolo_stop - echo_stop} seconds")

    plot_sounds(echo_effect, sample_rate)
    plot_sounds(sin_tremolo_effect, sample_rate)
    play_audio(echo_effect, sample_rate)
    play_audio(sin_tremolo_effect, sample_rate)
    


if __name__ == "__main__":
    main()
