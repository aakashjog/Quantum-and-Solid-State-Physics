x = linspace(-5,5,10000);
sigma_n = 0.4;
sigma_p = 0.4;
shift = 0.2;

fig = figure;
hold on;
plot(x,normpdf(x,0,sigma_n))
plot(x,normpdf(x,0,sigma_p),'--')

ax = gca;
ax.TickLabelInterpreter = 'latex';
ax.XTick = [];
ax.XTickLabel = {};
ax.YTick = [];
ax.YTickLabel = {};

xlabel('$x$','Interpreter','latex','FontSize',14);

leg = legend('$\hat{n}(x)$','$\hat{p}(x)$');
leg.Interpreter = 'latex';

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

%matlab2tikz('graphical_solution_for_allowed_energy_levels_for_even_wave_functions_in_finite_potential_well.tikz')

print(fig,'actual_profile_with_constant_illumination_through_slit','-dpdf','-r0')

close all; clear; clc;

! cp actual_profile_with_constant_illumination_through_slit.pdf ../fig-actual_profile_with_constant_illumination_through_slit.pdf
