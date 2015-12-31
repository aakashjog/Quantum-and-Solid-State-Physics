n_0 = 1;
G_optical = 1;
tau_n = 1;
L_1 = 10;
L_2 = 10;
L_n = 10;

x = 0:0.00001:100;
n_1 = n_0 + G_optical * tau_n * (1 - x/L_1);
n_2 = n_0 + G_optical * tau_n * exp(-x/L_n);

fig = figure;
hold on;
plot(x,n_1,'k');
plot(x,n_2,'k--');

ax = gca;
ax.TickLabelInterpreter = 'latex';
ax.XLim = [0 5 * L_1];
ax.YLim = [n_0 n_0 + G_optical * tau_n];
ax.XTick = [0 L_1];
ax.XTickLabel = {'$0$','$L_1$'};
ax.YTick = [0 n_0 n_0 + G_optical * tau_n];
ax.YTickLabel = {'$0$','$n_0$','$n_0 + G_{\mathrm{optical}} \tau_n$'};

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$n(x)$','Interpreter','latex','FontSize',14);

leg = legend('sample 1','sample 2');
leg.Interpreter = 'latex';

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

print(fig,'plot1','-dpdf','-r0')

close all; clear; clc;
