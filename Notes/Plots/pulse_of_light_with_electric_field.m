x1 = linspace(-5,5,10000);
sigma_1 = 0.1;

x2 = linspace(-5,5,10000);
sigma_2 = 0.2;

x3 = linspace(-5,5,10000);
sigma_3 = 0.3;

x4 = linspace(-5,5,10000);
sigma_4 = 0.4;

fig = figure;
hold on;
plot(x1,normpdf(x1,0,sigma_1))
plot(x2,normpdf(x2,1,sigma_2))
plot(x3,normpdf(x3,2,sigma_3))
plot(x4,normpdf(x4,3,sigma_4))

ax = gca;
ax.TickLabelInterpreter = 'latex';
ax.XTick = [0];
ax.XTickLabel = {'$0$'};
ax.YTick = [];
ax.YTickLabel = {};

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$\hat{p}(x)$','Interpreter','latex','FontSize',14);

leg = legend('$t = 0$','$t_1 > 0$','$t_2 > t_1$','$t_3 > t_2$');
leg.Interpreter = 'latex';

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

%matlab2tikz('graphical_solution_for_allowed_energy_levels_for_even_wave_functions_in_finite_potential_well.tikz')

print(fig,'pulse_of_light_with_eletric_field','-dpdf','-r0')

close all; clear; clc;

! cp pulse_of_light_with_eletric_field.pdf ../fig-pulse_of_light_with_eletric_field.pdf
