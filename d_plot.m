% HL0401 Assignment 1
% Frank Blanning - 6698
% Plot Script 1 - Plot creation script

%% x
data = x;
xmin = 1;
xmax = 400;
maxi = max(data);
mini = -1;

figure('Name','x(n) signal',...
'Units', 'centimeters','Position',[0,0,8.5,5],'PaperPositionMode','auto');
plot(data);

ylabel('amplitude');
xlabel ('samples');
grid;
axis( [xmin xmax mini-abs(maxi-mini)*0.1 maxi+abs(maxi-mini)*0.1] );
ystep = 2;
set(gca,'Units','normalized',...
    'YTick', round(mini : (maxi-mini) /ystep : maxi , 2 ),...
    'XTick', round(0 : (xmax) /10     : xmax , 2),...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',9);
%% v
data = v;
xmin = 1;
xmax = 400;
maxi = max(data);
mini = -1;

figure('Name','v(n) signal',...
    'Units', 'centimeters','Position',[0,10,8.5,5],'PaperPositionMode','auto');
plot(data);

ylabel('amplitude');
xlabel ('samples');
grid;
axis( [xmin xmax mini-abs(maxi-mini)*0.1 maxi+abs(maxi-mini)*0.1] );
ystep = 2;
set(gca,'Units','normalized',...
    'YTick', round(mini : (maxi-mini) /ystep : maxi , 2 ),...
    'XTick', round(0 : (xmax) /10     : xmax , 2),...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',9);
%% u
data = u;
xmin = 1;
xmax = 400;
maxi = max(data);
mini = min(data);

figure('Name','u(n) signal',...
    'Units', 'centimeters','Position',[0,20,8.5,5],'PaperPositionMode','auto');
plot(data);

ylabel('amplitude');
xlabel ('samples');
grid;
axis( [xmin xmax mini-abs(maxi-mini)*0.1 maxi+abs(maxi-mini)*0.1] );
ystep = 2;
set(gca,'Units','normalized',...
    'YTick', round(mini : (maxi-mini) /ystep : maxi , 2 ),...
    'XTick', round(0 : (xmax) /10     : xmax , 2),...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',9);
%% d
data = d;
xmin = 1;
xmax = 400;
maxi = max(data);
mini = min(data);

figure('Name','d(n) signal',...
    'Units', 'centimeters','Position',[0,30,8.5,5],'PaperPositionMode','auto');
plot(data);

ylabel('amplitude');
xlabel ('samples');
grid;
axis( [xmin xmax mini-abs(maxi-mini)*0.1 maxi+abs(maxi-mini)*0.1] );
ystep = 2;
set(gca,'Units','normalized',...
    'YTick', round(mini : (maxi-mini) /ystep : maxi , 2 ),...
    'XTick', round(0 : (xmax) /10     : xmax , 2),...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',9);