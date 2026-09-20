% Create sample data
data = [10, 25, 15, 30, 20];
groupedData = [10, 25, 15, 30, 20; 15, 20, 10, 25, 18];
stackedData = [10, 25, 15, 30, 20; 15, 20, 10, 25, 18];
errorData = [10, 25, 15, 30, 20];
errors = [1, 2, 1.5, 3, 2];
data3D = rand(3, 4); 
% Regular Bar Graph 
subplot(2, 3, 1) 
bar(data); 
xlabel('Categories'); 
ylabel('Values'); 
title('Regular Bar Graph');
% Grouped Bar Graph 
subplot(2, 3, 2); bar(groupedData); xlabel('Categories'); ylabel('Values'); title('Grouped Bar Graph'); legend('Series 1', 'Series 2'); 
% Stacked Bar Graph 
subplot(2, 3, 3); bar(stackedData, 'stacked'); xlabel('Categories'); ylabel('Values'); title('Stacked Bar Graph'); legend('Series 1', 'Series 2');
% Bar Graph with Error Bars
subplot(2, 3, 4); bar(errorData); hold on; errorbar(errorData, errors, 'r.', 'LineWidth', 1.5); hold off; xlabel('Categories'); ylabel('Values'); title('Bar Graph with Error Bars'); % Horizontal Bar Graph 
subplot(2, 3, 5); barh(data); xlabel('Values'); ylabel('Categories'); title('Horizontal Bar Graph');
% 3D Bar Graph
subplot(2, 3, 6); bar3(data3D); xlabel('X-axis'); ylabel('Y-axis'); zlabel('Values'); title('3D Bar Graph');