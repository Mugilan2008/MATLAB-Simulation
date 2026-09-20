% y is the dependent variable, x is the IV
% dy/dx = -2*x + 2
F = @(x,y) -2*x + 2;
% define the initial condition y(0) = 1
initialcondition = 1;
% define the x values for which you want to obtain the corresponding y
% values
xvalues = linspace(0,5,100);
% solve the F using F45
[xSol,ySol] = ode45(F,xvalues,initialcondition);
% plot the solution
plot(xSol,ySol,'b-','LineWidth',1.5);
xlabel('x');
ylabel('y(x)');
title('Solution of the First Order ODE: dy/dx = -2x + 2');
grid on;