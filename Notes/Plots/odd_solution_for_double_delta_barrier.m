a = 2;

B = 1;
k = 1;
A = B * (exp(2 * k * a) + 1);

x1 = -2 * a:0.00001:-a;
psi1 = -A * exp(k * x1);

x2 = -a:0.00001:a;
psi2 = B * (exp(k * x2) - exp(-k * x2));

x3 = a:0.00001:2 * a;
psi3 = A * exp(-k * x3);

fig = figure;
hold on;
plot(x1,psi1,'k');
plot(x2,psi2,'k');
plot(x3,psi3,'k');

ax = gca;
ax.XTick = [-a,0,a];
ax.YTick = [];
ax.XTickLabel = {'-a','0','a'};

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$\psi(x)$','Interpreter','latex','FontSize',14);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

print(fig,'odd_solution_for_double_delta_barrier','-dpdf','-r0')

close all; clear; clc;

! cp odd_solution_for_double_delta_barrier.pdf ../fig-odd_solution_for_double_delta_barrier.pdf
