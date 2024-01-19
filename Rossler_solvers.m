function x = Rossler_solvers(a, b, c, x0, Order)
    % Define the Rossler system
    f = @(t,x) [-x(2)-x(3); x(1)+a*x(2); b+x(3)*(x(1)-c)];
    
    % Parameters
    k = 5000;       % k+1 is the number of columns in the solution matrix
    dt = 0.05; 
    x = zeros(3, k+1);
    t = zeros(1, k+1);
    
    x(:, 1) = x0;
    t(1) = 0;

    % Integration loop
    for j = 1:k
        switch Order
            case 1
                x0 = EULER(f, dt, t(j), x0);
            case 4
                x0 = RK4(f, dt, t(j), x0);
        end
        x(:,j+1) = x0;
        t(j+1) = t(j) + dt;
    end
end

