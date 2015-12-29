L1 = 30;
L2 = 40;
G_optical = 2;
tau_p = 1;
L_p = 5;

x1 = linspace(-L1,0,10000);
p_hat_1 = zeros(size(x1));
p_hat_1 = (G_optical * tau_p) * (1 - (exp(x1/L_p))/2);

x2 = linspace(0,L2,10000);
p_hat_2 = (G_optical * tau_p) * (exp(-x2/L_p)/2);

fig = figure;
hold on;
plot(x1,p_hat_1,'k')
plot(x2,p_hat_2,'k')

ax = gca;
ax.TickLabelInterpreter = 'latex';
ax.XTick = [-L1,0,L2];
ax.XTickLabel = {'$-L_1$','$0$','$L_2$'};
ax.YTick = [0, 0.5 * G_optical * tau_p, G_optical * tau_p];
ax.YTickLabel = {'$0$','$\frac{1}{2} G_{\mathrm{optical}} \tau_p$','$G_{\mathrm{optical}} \tau_p$'};

xlabel('$x$','Interpreter','latex','FontSize',14);
ylabel('$\hat{p}(x)$','Interpreter','latex','FontSize',14);

set(fig,'Units','Inches');
pos = get(fig,'Position');
set(fig,'PaperPositionMode','Auto','PaperUnits','Inches','PaperSize',[pos(3), pos(4)]);

%matlab2tikz('graphical_solution_for_allowed_energy_levels_for_even_wave_functions_in_finite_potential_well.tikz')

print(fig,'carrier_concentration_for_partly_illuminated_long_semiconductor','-dpdf','-r0')

close all; clear; clc;

! cp carrier_concentration_for_partly_illuminated_long_semiconductor.pdf ../fig-carrier_concentration_for_partly_illuminated_long_semiconductor.pdf
