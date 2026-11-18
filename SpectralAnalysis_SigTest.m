
clear all
close all ;
clc
%% 4 - Spectral analysis of SigTest

% Load signal
load('SigTest.mat');

x=SigTest(:);
N=length(x);

% Plot signal
figure;
plot(0:N-1,x);
xlim([0 400]);
grid on;
xlabel('samples');
ylabel('amplitude');
title('unknown signal: SigTest');

%% FFT with zero-padding

r=16;
m=N*r;

X=fft(x,m);

% Positive frequencies
X=X(1:m/2+1);

% Normalized frequency (cycles/sample)
freq_norm=(0:m/2)'/m;

% Amplitude normalization
mod=abs(X)/N;
mod(2:end-1)=2*mod(2:end-1);

figure;
plot(freq_norm,mod);
xlim([0 0.3]);
grid on;
xlabel('normalized frequency');
ylabel('amplitude');
title('DFT of SigTest');

%% Hann window

w=hann(N);
x_hann=x.*w;

X_hann=fft(x_hann,m);
X_hann=X_hann(1:m/2+1);

mod_hann=abs(X_hann)/sum(w);
mod_hann(2:end-1)=2*mod_hann(2:end-1);

figure;
plot(freq_norm,mod,'b');
hold on;
plot(freq_norm,mod_hann,'r');
grid on;
xlabel('normalized frequency');
ylabel('amplitude');
title('spectral analysis - SigTest');

legend('rectangular','hann');
xlim([0 0.3]);
