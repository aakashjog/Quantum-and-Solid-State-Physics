L = 10;
L_p = 1;
G_optical = 10;
tau_p = 10;

x1 = -L:0.001:0;
x2 = 0:0.001:L;

p_hat_1 = G_optical * tau_p * (1 - exp(x1/L_p));
p_hat_2 = G_optical * tau_p * (1 - exp(-x2/L_p));

fig = figure;
hold on;
plot(x1,p_hat_1,'k');
plot(x2,p_hat_2,'k');

ax = gca;
ax.TickLabelInterpreter = 'latex';
ax.XTick = [0];
ax.XTickLabel = {'$0$'};
ax.YTick = [0 G_optical * tau_p];
ax.YTickLabel = {'$0$','G_{\mathrm{optical}} \tau_p$'};

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$\hat{p}(x)$','Interpreter','latex','FontSize',14);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

print(fig,'plot1','-dpdf','-r0')

close all; clear; clc;
