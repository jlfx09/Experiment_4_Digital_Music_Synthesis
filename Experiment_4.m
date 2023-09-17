fs = 8000;


%ADSR for Half Note
ha = linspace (0,1,0.25 * fs);
hd = linspace(1, 0.5, 0.125 * fs);
hs = linspace(0.5, 0.5, 0.5 * fs);
hr = linspace(0.5, 0, 0.125 * fs);

hadsr = [ha hd hs hr];

%ADSR for dotted half Notes
da = linspace(0, 1, 0.25 * fs / 0.66659);
dd = linspace(1, 0.5, 0.125 * fs / 0.66659);
ds = linspace(0.5, 0.5, 0.5 * fs / 0.66659);
dr = linspace(0.5, 0, 0.125 * fs / 0.66659);

dadsr = [da dd ds dr];

%ADSR for Quarter Notes
qa = linspace(0, 1, 0.25 * fs / 2);
qd = linspace(1, 0.5, 0.125 * fs / 2);
qs = linspace(0.5, 0.5, 0.5 * fs / 2);
qr = linspace(0.5, 0, 0.125 * fs / 2);

qadsr = [qa qd qs qr];

%ADSR for Eight Notes
ea = linspace(0, 1, 0.25 * fs / 4);
ed = linspace(1, 0.5, 0.125 * fs / 4);
es = linspace(0.5, 0.5, 0.5 * fs / 4);
er = linspace(0.5, 0, 0.125 * fs / 4);

eadsr = [ea ed es er];

%ADSR  for Whole Note
wa = linspace(0,1,0.25 * (fs*2))
wd = linspace(1, 0.5, 0.125 * (fs*2));
ws = linspace(0.5, 0.5, 0.5 * (fs*2));
wr = linspace(0.5, 0, 0.125 * (fs*2));

wadsr = [wa wd ws wr];

%Assign the formula for each note type
q = 0:1/(fs-1):0.5; % quarter
h = 0:1/(fs-1):1; % half
e = 0:1/(fs-1):0.25; % eight
dh = 0:1/(fs-0.5):1.5; %dotted half
w = 0:1/(fs-0.5):2; %whole note

%Sample for music quarter notes
qf3 = 0.5 * cos(2 * pi * 174.614 * q) .* qadsr;
qg4 = 0.5 * cos(2 * pi * 391.995 * q) .* qadsr;
qa4 = 0.5 * cos(2 * pi * 440.000 * q) .* qadsr;
qe4 = 0.5 * cos ( 2 * pi * 329.628 * q) .* qadsr;
qf4 = 0.5 * cos (2 * pi * 349.228 * q ) .* qadsr;
qc4 = 0.5 * cos (2 * pi * 261.626 * q ) .* qadsr;
qb4 = 0.5 * cos (2 * pi * 493.883 * q ) .* qadsr;
qd4 = 0.5 * cos (2 * pi * 293.665 * q ) .* qadsr;
qa3 = 0.5 * cos (2 * pi * 220.000 * q ) .* qadsr;
qc3 = 0.5 * cos (2 * pi * 130.813 * q) .* qadsr;
qe3 = 0.5 * cos (2 * pi * 164.814 * q) .* qadsr;
qg3 = 0.5 * cos (2 * pi * 195.998 * q) .* qadsr;
qb3 = 0.5 * cos (2 * pi * 246.942 * q) .* qadsr;
qb2 = 0.5 * cos (2 * pi * 123.471 * q) .* qadsr;
qd3 = 0.5 * cos (2 * pi * 146.832 * q) .* qadsr;
qd5 = 0.5 * cos (2 * pi * 587.330 * q) .* qadsr;
qc5 = 0.5 * cos (2 * pi * 523.251 * q) .* qadsr;
qe5 = 0.5 * cos (2 * pi * 659.255 * q) .* qadsr;
qg5 = 0.5 * cos (2 * pi * 783.991 * q) .* qadsr;
qf5 = 0.5 * cos (2 * pi * 698.456 * q) .* qadsr;

%sample for whole notes
wc5 = 0.5 * cos(2 * pi * 523.251 * w) .* wadsr;
wd5 = 0.5 * cos(2 * pi * 587.330 * w) .* wadsr;
wc3 = 0.5 * cos (2 * pi*130.813 * w) .* wadsr;

%sample for half note
hc5 = 0.5 * cos(2 * pi * 523.251 * h) .* hadsr;
hd5 = 0.5 * cos(2 * pi * 587.330 * h) .* hadsr;

%sample for dotted half note
dhc5 = 0.5 * cos(2 * pi * 523.251 * dh) .* dadsr;
dhf5 = 0.5 * cos(2 * pi * 698.456 * dh) .* dadsr;

gc1 = [qg4 qa4];
gc2 = [qc5 qc5 qc5 qc5];
gc3 = [qa4 qg4 qe4 qg4];
gc4 = [wc5];
gc5 = [hc5 qc5 qd5];
gc6 = [qe5 qe5 qe5 qe5];
gc7 = [qg5 qg5 qg5 qe5];
gc8 = [wd5];
gc9 = [hd5 qg5 qf5];
gc10 = [qe5 qe5 qe5 qe5];
gc11 = [qd5 dhc5];
gc12 = [qc5 qc5 qc5 qc5];
gc13 = [qf5 dhf5];
gc14 = [qe5 qe5 qe5 qe5];
gc15 = [qd5 qd5 qe5 qd5];
gc16 = [wc5];
gc17 = [wc5];

fc2 = [qc3 qe3 qg3 qe3];
fc3 = [qc3 qe3 qg3 qe3];
fc4 = [qc3 qe3 qg3 qe3];
fc5 = [qc3 qe3 qg3 qe3];
fc6 = [qc3 qe3 qg3 qe3];
fc7 = [qc3 qe3 qg3 qe3];
fc8 = [qb2 qd3 qg3 qd3];
fc9 = [qb2 qd3 qg3 qd3];
fc10 = [qc3 qe3 qg3 qe3];
fc11 = [qc3 qe3 qg3 qe3];
fc12 = [qf4 qa3 qc4 qa3];
fc13 = [qf3 qa3 qc4 qa3];
fc14 = [qg3 qc4 qe4 qc4];
fc15 = [qg3 qb3 qd4 qb3];
fc16 = [qc4 qc4 qg3 qe3];
fc17 = [wc3];

g1f1 = (gc1);
g2f2 = (gc2+fc2);
g3f3 = (gc3+fc3);
g4f4 = (gc4+fc4);
g5f5 = (gc5+fc5);
g6f6 = (gc6 + fc6);
g7f7 = (gc7 + fc7);
g8f8 = (gc8 + fc8);
g9f9 = (gc9 + fc9);
g10f10 = (gc10 + fc10);
g11f11 = (gc11 + fc11);
g12f12 = (gc12 + fc12);
g13f13 = (gc13 + fc13);
g14f14 = (gc14 + fc14);
g15f15 = (gc15 + fc15);
g16f16 = (gc16 + fc16);
g17f17 = (gc17 + fc17);

mountain = [g1f1, g2f2, g3f3, g4f4, g5f5, g6f6, g7f7, g8f8, g9f9, g10f10, g11f11,g12f12,g13f13,g14f14,g15f15,g16f16,g17f17];

sound (mountain,fs);

audiowrite('mountain.wav', mountain, fs);

clear mountain fs;
