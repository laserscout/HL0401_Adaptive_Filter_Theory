% HL0401 Assignment 1
% Frank Blanning - 6698
% Sound Script 1 - Calculate R, p and Wo

function second_problemA(d,u)

N = length(d);
M = 500; %Filter length

%% Time to untangle!

z = zeros(M-1,1);
U = toeplitz ( [u; z],[u(1); z] );

%%  Calculate the autocorrelation matrix

R = U'* U/N;

%% Calculate the crosscorrelation vector

dcross = [d; z];
p = U'* dcross/N;

%% Calculate the Wiener solution

wo = R \ p;

assignin ('base','nR',R);
assignin ('base','np',p);
assignin ('base','nwo',wo);

end



























