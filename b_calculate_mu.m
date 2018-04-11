% HL0401 Assignment 1
% Frank Blanning - 6698
% Script 2 - Find the optimal μ with multiple tries

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

%% Steepest decent algorithm

%{
parameter error plot
figure('Units', 'centimeters','Position',[0,20,15,7]);
errf = gcf;
xlabel('time step n');
ylabel('Parameter error');
title('Parameter error');
%}

figure('Units', 'centimeters','Position',[0,0,8.5,5]);
Merrf = gcf;

for power = 1:2:15
    
Merr = [0;N];

for mu = 0.5:0.01:1.2
    W=[10;5];
    Wt = zeros(M,N);
    Wt(:,1) = W;
    y = zeros(N,1);
    
    for k=2:N
        W  = W+mu*(p-R*W);
        Wt(:,k) = W;
        y(k) = u(k)*W(1) + u(k-1)*W(2);
    end
    
    %% parameter error
    we = (Wt - wo*ones(1,N)).^2;
    err = sqrt(sum(we));
    
    ferr = find(err<10^-power,1);
    
    if length(ferr)<1
        Merr = [Merr [mu ; N]];
    else
        Merr = [Merr [mu ; ferr]];
       
    end
    
end

minMerr = min (Merr (2,:));
indMerr = find (Merr == minMerr,1);

disp ([10^-power; Merr(indMerr-1); Merr(indMerr)]);
figure (Merrf);
hold on
plot (Merr(1,2:end),Merr(2,2:end));
hold off
%hline(minMerr,'black');

end
vline (Merr(indMerr-1),'black');
legend ('e-1','e-3', 'e-5', 'e-7', 'e-9', 'e-11');
xlabel ('μ values');
ylabel ('steps');
