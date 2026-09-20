% Define the function
f = @(x) tan(x);
% Generate x values from 0 to pi
x = linspace(0, pi, 100);  % Adjust the number of points (100 here) for smoother or coarser plot
% Evaluate the function at these x values
y = f(x);
% Plot the function
plot(x, y, 'b-', 'LineWidth', 2);
grid on;
title('Plot of f(x) = tan(x)');
xlabel('x');
ylabel('f(x)');
xlim([0, pi]);
% Optionally, add grid and labels
grid on;

