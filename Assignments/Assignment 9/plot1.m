x = 0:0.0000001:1;
y = 10^4 + 10^7 * exp(-10^6 * x);

fig = figure;
plot(x,y)

grid on;
ax = gca;
ax.XLim = [0 0.00001];
%ax.YLim = [1.4 2.2];

xlabel('$t$','Interpreter','latex','FontSize',14);
ylabel('$p$','Interpreter','latex','FontSize',14);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

print(fig,'plot1','-dpdf','-r0')

close all; clear; clc;
