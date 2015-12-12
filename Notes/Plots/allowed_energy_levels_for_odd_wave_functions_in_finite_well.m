R = 20;
z = 0:0.01:R;

y1 = sqrt(R^2 - z.^2);
y2 = -z.*cot(z);

fig = figure;
hold on;
plot(z,y2);
plot(z,y1);

ax = gca;
ax.XLim = [0 R];
ax.YLim = [0 R];
ax.XTick = [0 , pi , 2*pi , 3*pi , 4*pi , 5*pi , 6*pi , 7*pi];
ax.YTick = [];
ax.XTickLabel = {'0' , '\pi' , '2 \pi' , '3 \pi' , '4 \pi' , '5 \pi' , '6 \pi' , '7 pi'};
axis square;

xlabel('$z$','Interpreter','latex');
ylabel('$y$','Interpreter','latex');

legend({'$y = -z cot z$','$y^2 + z^2 = {R_0}^2$'},'Interpreter','latex');

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

print(fig,'graphical_solution_for_allowed_energy_levels_for_odd_wave_functions_in_finite_potential_well','-dpdf','-r0')

close all; clear; clc;

! cp graphical_solution_for_allowed_energy_levels_for_odd_wave_functions_in_finite_potential_well.pdf ../fig-graphical_solution_for_allowed_energy_levels_for_odd_wave_functions_in_finite_potential_well.pdf
