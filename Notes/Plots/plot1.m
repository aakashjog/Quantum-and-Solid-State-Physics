a = 10;
x = 0:0.001:a;

A = sqrt(2/a);

psi1 = A * sin((1 * pi)/a * x);
psi2 = A * sin((2 * pi)/a * x);
psi3 = A * sin((3 * pi)/a * x);

%===============================================================================

fig = figure;

n = 1;
psi = A*sin(((n * pi)/a) * x);
subplot(4,1,n);
plot(x,psi);

ax = gca;
ax.XTick = [0,a];
ax.YTick = [];
ax.XTickLabel = {'0','a'};

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$\psi(x)$','Interpreter','latex','FontSize',14);

title('$n = 1$','Interpreter','latex','FontSize',20);

%-------------------------------------------------------------------------------

n = 2;
psi = A*sin(((n * pi)/a) * x);
subplot(4,1,n);
plot(x,psi);

ax = gca;
ax.XTick = [0,a];
ax.YTick = [];
ax.XTickLabel = {'0','a'};

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$\psi(x)$','Interpreter','latex','FontSize',14);

title('$n = 2$','Interpreter','latex','FontSize',20);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

%-------------------------------------------------------------------------------

n = 3;
psi = A*sin(((n * pi)/a) * x);
subplot(4,1,n);
plot(x,psi);

ax = gca;
ax.XTick = [0,a];
ax.YTick = [];
ax.XTickLabel = {'0','a'};

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$\psi(x)$','Interpreter','latex','FontSize',14);

title('$n = 3$','Interpreter','latex','FontSize',20);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

%-------------------------------------------------------------------------------

n = 4;
psi = A*sin(((n * pi)/a) * x);
subplot(4,1,n);
plot(x,psi);

ax = gca;
ax.XTick = [0,a];
ax.YTick = [];
ax.XTickLabel = {'0','a'};

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$\psi(x)$','Interpreter','latex','FontSize',14);

title('$n = 4$','Interpreter','latex','FontSize',20);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

%===============================================================================

%matlab2tikz('graphical_solution_for_allowed_energy_levels_for_even_wave_functions_in_finite_potential_well.tikz')

print(fig,'allowed_energy_levels_for_infinite_wells','-dpdf','-r0')

close all; clear; clc;

! cp allowed_energy_levels_for_infinite_wells.pdf ../fig-allowed_energy_levels_for_infinite_wells.pdf
