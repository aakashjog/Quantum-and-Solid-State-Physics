q = 1.6 * 10^(-19);
G_optical = 1;
tau_n = 1;
L_1 = 1;
L_2 = 100;
L_n = 30;

x = 0:0.001:200;
J_1 = -10 * q * G_optical * L_n + 0 * x;
J_2 = -q * G_optical * L_n * exp(-x/L_n);

fig = figure;
hold on;
plot(x,J_1,'k');
plot(x,J_2,'k--');

ax = gca;
ax.TickLabelInterpreter = 'latex';
%ax.XLim = [0 5 * L_n];
%ax.YLim = [];
ax.XTick = [];
%ax.XTickLabel = {};
ax.YTick = [-10 * q * G_optical * L_n -q * G_optical * L_n];
ax.YTickLabel = {'$-100 q G_{\mathrm{optical}} L_n$','$-q G_{\mathrm{optical}} L_n e^{-\frac{x}{L_n}}$'};

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$J_{\mathrm{diffusion}}$','Interpreter','latex','FontSize',14);

leg = legend('sample 1','sample 2');
leg.Interpreter = 'latex';

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

print(fig,'plot2','-dpdf','-r0')

close all; clear; clc;
