% Solving the farm problem
%
% Samuli Siltanen October 2014

% Define the system matrix
A=[[4 2];[1 1]];

% Define the right-hand side
b = [96;35];

% Solve the problem:
inv(A)*b