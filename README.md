# Discrete Fourier Transform (DFT)
Exploration of spectral analysis, frequency interpolation, and apodization properties using the Discrete Fourier Transform in MATLAB

![Status](https://img.shields.io/badge/Status-Complete-green)
![Language](https://img.shields.io/badge/Language-MATLAB-orange)
![Application](https://img.shields.io/badge/Application-Signal_Processing-blue)
![Field](https://img.shields.io/badge/Field-Electronics-purple)

## ⚙️ Methodology
* **Spectral Analysis (`DFTVisu.m`):** Implementation of an FFT-based algorithm with amplitude normalization to physical units and spectral centering between `-fs/2` and `+fs/2`, evaluating signals with integer (16) and fractional (15.5) periods, alongside time shifts.
* **Zero-Padding Interpolation:** Appending zeros in the time domain to refine the frequency grid (`fs/M`) and inserting zeros into the spectrum (`TimeInterp.m`) for time-domain interpolation.
* **Apodization (Windowing):** Applying and comparing the rectangular window against apodization windows prior to computing the DFT.
* **Unknown Signal Analysis:** Combined application of zero-padding and windowing to decompose the signal contained in `SigTest.mat`[cite: 5, 6, 7].

## 📊 Results
* **Spectral Leakage and Delays:** Signals with an integer number of periods exhibited exact discrete peaks, whereas non-integer periods produced spectral leakage. Time delays altered only the phase of the DFT while leaving the magnitude invariant.
* **Resolution Trade-offs:** Zero-padding revealed the continuous structure of the spectrum (side lobes) without adding new physical information, whereas apodization windows strongly attenuated side lobes at the cost of main-lobe widening.
* **Spectral Identification:** These techniques allowed for the precise isolation and determination of frequency components and amplitudes hidden within the `SigTest.mat` signal[cite: 5, 6, 7].
