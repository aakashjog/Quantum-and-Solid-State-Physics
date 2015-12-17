x = 0:0.00001:0.001;
L_n = 10^(-4);
n = 10^15 * exp(-x/L_n);
n_prime = -10^15 * 1/L_n * exp(-x/L_n);

fig = figure;
hold on;
plot(x,n);

grid on;
ax = gca;

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$E_g$','Interpreter','latex','FontSize',14);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

print(fig,'plot2','-dpdf','-r0')

close all; clear; clc;
