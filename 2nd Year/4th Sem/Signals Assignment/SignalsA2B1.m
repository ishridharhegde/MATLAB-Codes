
[y,Fs] = audioread('MyB1Signals.mp3');
NFFT=195312;
Y = fft(y,NFFT);
F=((0:1/NFFT:1-1/NFFT)*Fs).';
magnitudeY = abs(Y);        
phaseY = unwrap(angle(Y)); 
helperFrequencyAnalysisPlot1(F,magnitudeY,phaseY,NFFT)
x=xlim;
maximumFrequency=2*round(x(2),0)*10^(3);
info=audioinfo('MyB1Signals.mp3')
figure;
plot(y)
title('Original Signal');
xlabel('Time')
ylabel('Amplitude')
figure;
y1=downsample(y,3*round(104591/maximumFrequency,0));
plot(y1)
title('Oversampled Signal');
xlabel('Time')
ylabel('Amplitude')
figure;
y1=downsample(y,round(104591/maximumFrequency,0));
plot(y1);
title('Perfectly sampled Signal');
xlabel('Time');
ylabel('Amplitude');
figure;
y2=downsample(y,300);
plot(y2);
sound(y1)
title('Undersampled Signal');
xlabel('Time');
ylabel('Amplitude');

