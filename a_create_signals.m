% HL0401 Assignment 1
% Frank Blanning - 6698
% Script 1 - Create the original signal and the noise signal

N = 400; %Signal length
M = 2; %Filter lenght

%% Create the x signal

x = zeros(N,1);
for n=1:N
    x(n) = cos(n*pi) * sin(pi*n/25+pi/3);
end

%% Create noise

v = rand(N,1)*2-1;

%% Add noise to x signal

d = x+v;

%% Create our recording of the noise

u = zeros(size(v));
u(1)=v(1);
for n=2:size(v)
    u(n) = -0.78*u(n-1) + v(n);
end



























