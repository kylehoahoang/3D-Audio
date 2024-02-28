    
fs = 44100;


number1 = audioread('guess-phone1.wav');
low_cutoff = 1906; % in Hz
high_cutoff = 2418; % in Hz
% Apply bandpass filter to isolate frequencies of interest
bpFilter = designfilt('bandpassiir', 'FilterOrder', 30, 'HalfPowerFrequency1', low_cutoff, 'HalfPowerFrequency2', high_cutoff, 'SampleRate', fs);
filteredSignal = filtfilt(bpFilter, number1);


figure;
spectrogram(filteredSignal, 256, 250, 256, fs, 'yaxis');


%sound(number1, fs);