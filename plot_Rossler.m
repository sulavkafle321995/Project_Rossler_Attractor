function plot_Rossler(a, b, c, x0)
    orders = [1, 4]; % Only Euler and RK4 methods
    methodNames = {'Euler Method', 'RK4 Method'};
    % Explicitly create a new figure
    fig = figure;
    clf(fig, 'reset'); % Clear the current figure
    
    for i = 1:length(orders)
        x = Rossler_solvers(a, b, c, x0, orders(i));
        subplot(1, 2, i); % divide the figure into 1 row and 2 columns
        plot3(x(1,:), x(2,:), x(3,:));
        xlabel('x(t)');
        ylabel('y(t)');
        zlabel('z(t)');
       title(methodNames{i});
        grid on;
    end
    sgtitle(['Rossler system with a = ', num2str(a), ', b = ', num2str(b), ' & c = ', num2str(c)]); % overall title
end
