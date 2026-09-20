% Example Matrix
A = input('Enter the Matrix A: ');

% Rank of the Matrix
R = rank(A);
disp('Rank of A:');
disp(R);

% Determinant of the Matrix
det_A = det(A);
disp('Determinant of A:');
disp(det_A);

% Inverse of the Matrix
i = inv(A);
disp('Inverse of A:');
disp(i);

% Transpose of the Matrix
t = transpose(A);
disp('Transpose of A:');
disp(t);

% Eigen Values and Eigen Vectors of the Matrix
[eigen_vectors, eigen_values] = eig(A);

disp('Eigen values of A:');
disp(diag(eigen_values));

disp('Eigen vectors of A:');
disp(eigen_vectors);