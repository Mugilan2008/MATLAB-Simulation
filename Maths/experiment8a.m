% Sample Data 
categories = {'Category1','Category2','Category3','Category4','Category5'}; 
data = [15,30,10,25,20];
% Create a basic pie chart
figure; 
subplot(1,3,1); 
pie(data, categories);
title('Basic Pie Chart'); 
hold on;
% Create a Exploded Pie Chart
subplot(1,3,2);
exploded=[0.1,0,0,0,0];
% Explode the first slice 
pie(data, exploded, categories);
title('Exploded Pie Chart');
hold on;
% Create a donut chart
subplot(1,3,3);
pie(data,categories);
hold on;

theta = linspace(0, 2*pi, 50);
innerRadius = 0.2;

fill(innerRadius*cos(theta), ...
     innerRadius*sin(theta), ...
     'white', 'EdgeColor', 'white');

axis equal;
% Remove slice edges to create a donut
title('Donut Chart');
hold on;
% Adjust layout
sgtitle('DIFFERENT TYPES OF PIE CHARTS');