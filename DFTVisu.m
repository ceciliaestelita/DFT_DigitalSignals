%% 1.2 Function DFTVisu.m
function [mod, phase, freq] = DFTVisu(s, fs)
N = length(s);
    
    X = fftshift(fft(s));
    
    mod = abs(X) / N;
    phase = angle(X);
    phase(mod < 1e-10) = 0;
    freq = (-N/2 : N/2 - 1) * (fs / N);
end
