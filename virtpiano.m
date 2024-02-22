% Notes (C3-C6)
c3 = 130.81;
d3 = 146.83;
e3 = 164.81;
f3 = 174.61;
g3 = 196.00;
a3 = 220.00;
b3 = 246.94;
c4 = 261.63;
d4 = 293.67;
e4 = 329.63;
f4 = 349.23;
g4 = 392.00;
a4 = 440.00;
b4 = 493.88;
c5 = 523.25;
d5 = 587.33;
e5 = 659.26;
f5 = 698.46;
g5 = 783.99;
a5 = 880.00;
b5 = 987.77;
c6 = 1046.5;

% Sine Wave Properties
duration = 2; % duration in seconds
sampling_rate = 44100;

% make time vector
t = 0:(1/sampling_rate):duration;

% make sine wave
sinwave = sin(2*pi*a4*t);

% play sound
sound(sinwave, sampling_rate);