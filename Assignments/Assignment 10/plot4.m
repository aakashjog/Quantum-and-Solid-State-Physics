G_optical = 1;
tau_p = 1;
L = 10;
L_p = 10;

x = -L_p:0.001:L_p;
p = (G_optical * tau_p * exp(-x/L_p)) + (L + G_optical * tau_p * exp(x/L_p));

fig = figure;
hold on;
plot(x,p,'k');

ax = gca;
ax.TickLabelInterpreter = 'latex';
%ax.XLim = [0 5 * L_n];
%ax.YLim = [];
ax.XTick = [];
%ax.XTickLabel = {};
ax.YTick = [];

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$\hat{p}(x)$','Interpreter','latex','FontSize',14);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

print(fig,'plot4','-dpdf','-r0')

close all; clear; clc;
