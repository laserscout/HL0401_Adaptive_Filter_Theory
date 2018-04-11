% HL0401 Assignment 1
% Frank Blanning - 6698
% Sound Script 2 - Apply the Steepest decent algorith wiht μ=0.9max

function second_problemB (d, u, wo, p, R)
%% Steepest decent algorithm
N = length(d);
M = length(wo);

mu = 0.9* (2/max( eig(R) ));

W = zeros(M,1);
Wt = zeros(M,N);
Wt(:,1) = W;
y = zeros(N,1);

for k=M+1:N
  W  = W+mu*(p-R*W);
  Wt(:,k) = W;
  y(k) = sum( W.*u(k:-1:k-M+1) );
end

figure('Units', 'centimeters','Position',[0,0,15,7]);
plot (y);
legend ('y');
assignin ('base','ny',y);

%% Calculate the output

e = d-y;

figure('Units', 'centimeters','Position',[0,10,15,7]);
hold on
plot (d);
plot (e);
legend('unfiltered','filtered');


axis ([1 N -3 3]); %axis ([N*0.75 N -1.1 1.1]);
assignin ('base','ne',e);

%% parameter error
we = (Wt - wo*ones(1,N)).^2;
err = sqrt(sum(we));
assignin('base','nerr',err);

figure('Units', 'centimeters','Position',[0,10,8.5,5]);

semilogy(err);
axis ([0,320000,0.1,100]);
xlabel('time step n');
ylabel('Parameter error');
set(gca,'Units','normalized',...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',9);


end