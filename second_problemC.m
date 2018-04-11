% HL0401 Assignment 1
% Frank Blanning - 6698
% Plot Script 2 - Sound

function second_problemC(d,u,e)

data = d;
xmin = 1;
xmax = length(data);
maxi = 3;%max(data);
mini = -3;%min(data);

figure('Name','d(n) signal',...
'Units', 'centimeters','Position',[0,0,8.5,5],'PaperPositionMode','auto');
plot(data);

ylabel('amplitude');
xlabel ('samples');
grid;
axis( [xmin xmax mini-abs(maxi-mini)*0.1 maxi+abs(maxi-mini)*0.1] );
ystep = 4;
set(gca,'Units','normalized',...
    'YTick', round(mini : (maxi-mini) /ystep : maxi , 2 ),...
    'XTick', round(0 : (xmax) /5     : xmax , 2),...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',9);

data = u;
xmin = 1;
xmax = length(data);
maxi = 3;%max(data);
mini = -3;%min(data);

figure('Name','u(n) signal',...
'Units', 'centimeters','Position',[0,0,8.5,5],'PaperPositionMode','auto');
plot(data);

ylabel('amplitude');
xlabel ('samples');
grid;
axis( [xmin xmax mini-abs(maxi-mini)*0.1 maxi+abs(maxi-mini)*0.1] );
ystep = 4;
set(gca,'Units','normalized',...
    'YTick', round(mini : (maxi-mini) /ystep : maxi , 2 ),...
    'XTick', round(0 : (xmax) /5     : xmax , 2),...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',9);

data = e;
xmin = 1;
xmax = length(data);
maxi = 3;%max(data);
mini = -3;%min(data);

figure('Name','e(n) signal',...
'Units', 'centimeters','Position',[0,0,8.5,5],'PaperPositionMode','auto');
plot(data);

ylabel('amplitude');
xlabel ('samples');
grid;
axis( [xmin xmax mini-abs(maxi-mini)*0.1 maxi+abs(maxi-mini)*0.1] );
ystep = 4;
set(gca,'Units','normalized',...
    'YTick', round(mini : (maxi-mini) /ystep : maxi , 2 ),...
    'XTick', round(0 : (xmax) /5     : xmax , 2),...
    'FontUnits','points',...
    'FontWeight','normal',...
    'FontSize',9);

end
