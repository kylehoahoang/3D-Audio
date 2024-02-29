    
fs = 44100;
audioFilePath = 'guess-phone5.wav';

[y, fs] = audioread(audioFilePath);

duration = 0.5;
numDigits = 10;
samplesPerDigit = duration * fs;

for digit = 1:numDigits
    startSample = (digit - 1) * samplesPerDigit + 1;
    endSample = digit * samplesPerDigit;

    digitSegment = y(startSample:endSample);
    
    fftSize = 2^nextpow2(samplesPerDigit);
    frequencyBins = fs * (0:(fftSize/2)) / fftSize;
    digitFFT = abs(fft(digitSegment, fftSize)).^2 / samplesPerDigit;

    figure;
    plot(frequencyBins, digitFFT(1:length(frequencyBins)), 'b', 'LineWidth', 2);
    title(['Digit ' num2str(digit)]);
end

