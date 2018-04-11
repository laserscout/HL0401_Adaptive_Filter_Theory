% HL0401 Assignment 1
% Frank Blanning - 6698
% Script 3 - Apply the spteepest decsent algorythm

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

W=[0;1]; mu= 0.01;    % Initial values for the adaptation algorithm
Wt = zeros(M,N);
Wt(:,1) = W;                   % Wt will record the evolution of vector W
y = zeros(N,1);

for k=2:N
  W  = W+mu*(p-R*W);    % Adaptation Equation ! Quite simple!
  Wt(:,k) = W;
  y(k) = u(k)*W(1) + u(k-1)*W(2);
end

%% Calculate the output

e = d-y;

figure('Units', 'centimeters','Position',[0,0,7.5,4.5]);
plot (e);
axis ([1 N -1.2 1.2]);
xlabel('time step n');
ylabel('amplitude');
set(gca,'Units','normalized',...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',9);

%% parameter error
figure('Units', 'centimeters','Position',[0,10,4.5,4.5]);

we = (Wt - wo*ones(1,N)).^2;
err = sqrt(sum(we));

semilogy(err);
xlabel('time step n');
ylabel('Parameter error');
set(gca,'Units','normalized',...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',9);

%% contour curves and trajectories
L = 50;
ww = linspace(-2.5,2.5,L);

J = zeros([L,L]);
sigma2d = 0.1;

% Construct the error surface
for i=1:L
  for k=1:L
    wp = [ww(i); ww(k)];
    J(k,i) = sigma2d - 2*p'*wp + wp'*R*wp;
  end
end

min_J = min(J(:));
max_J = max(J(:));

levels = linspace(min_J,max_J,12);

figure('Units', 'centimeters','Position',[7,10,4.5,4.5])
contour(ww, ww, J, levels); axis square
hold on

plot(Wt(1,:), Wt(2,:), '.r-');
plot(wo(1), wo(2), 'ob')
hold off
xlabel('w(1)');
ylabel('w(2)');
set(gca,'Units','normalized',...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',9);



























