function [t,x] = Rossler1(a,b,c,x0)
% x is denoted as x(1), y as x(2) and z as x(3)
% x0 = [1; 1; 0];    Initial point
% a = 0.2; b = 0.2; c = 5.7;

% Define the Rössler system
f = @(t,x) [-x(2)-x(3); x(1)+a*x(2); b+x(3)*(x(1)-c)];

% Time span for the integration
t0 = 0; tf = 100;
tspan = [t0 tf];

% Start timing the simulation
tic;

% Use ode45 to solve the differential equations
[t, x] = ode45(f, tspan, x0);

% End timing the simulation and display the time taken
simulationTime = toc;
disp(['Time taken for the simulation: ', num2str(simulationTime), ' seconds.']);

end
