import numpy as np
from scipy.io import wavfile
import sounddevice
import matplotlib.pyplot as plt
import time

# Configs
INPUT_FILE = r"freesound_community-simple-guitar-melody-102329.wav"
GAIN = 2.5
CLIPPING_THRESHOLD = 5000


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

def main():
    start = time.perf_counter()
    sample_rate, data = load_audio(INPUT_FILE)
    clipped = hard_clipping_distortion(data, GAIN, CLIPPING_THRESHOLD)
    clipped_stop = time.perf_counter()
    print(f"Time taken for Clipped: {clipped_stop - start} seconds")
    plot_sounds(clipped, sample_rate)
    play_audio(clipped, sample_rate)
    


if __name__ == "__main__":
    main()
