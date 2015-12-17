x = [0,0.6];
y = [1.42,2.2];

fig = figure;
plot(x,y)

grid on;
ax = gca;
ax.XLim = [0 1];
ax.YLim = [1.4 2.2];

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$E_g$','Interpreter','latex','FontSize',14);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

print(fig,'plot1','-dpdf','-r0')

close all; clear; clc;
