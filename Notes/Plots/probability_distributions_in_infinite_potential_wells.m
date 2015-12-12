a = 10;
A = sqrt(2/a);
x = 0:0.0001:a;

n = 1;
psi = A*sin(((n * pi)/a) * x);
psi_squared = psi.^2;
fig = figure;
plot(x,psi_squared)

ax = gca;
ax.XTick = [0,a];
ax.YTick = [0,A^2];
ax.XTickLabel = {'0','a'};
ax.YTickLabel = {'0','A^2'};
axis square;

xlabel('$x$','Interpreter','latex','FontSize',20);
ylabel('$\left| \psi(x) \right|^2$','Interpreter','latex','FontSize',20);

title('$n = 1$','Interpreter','latex');

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

print(fig,'probability_distributions_in_infinite_potential_wells_n=1','-dpdf','-r0')

n = 2;
psi = A*sin(((n * pi)/a) * x);
psi_squared = psi.^2;
fig = figure;
plot(x,psi_squared)

ax = gca;
ax.XTick = [0,a];
ax.YTick = [0,A^2];
ax.XTickLabel = {'0','a'};
ax.YTickLabel = {'0','A^2'};

xlabel('$x$','Interpreter','latex','FontSize',20);
ylabel('$\left| \psi(x) \right|^2$','Interpreter','latex','FontSize',20);

title('$n = 2$','Interpreter','latex');

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

print(fig,'probability_distributions_in_infinite_potential_wells_n=2','-dpdf','-r0')

close all; clear; clc;
