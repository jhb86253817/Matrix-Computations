% Experiments with a simple PageRank algorithm. This is the core idea of
% Google's original search engine.
%
% Consider a small Internet with only five pages. The matrix below
% indicates which pages have links to other pages. More precisely, the
% element A(i,j) = 1 if page j has a link to page i, and A(i,j) = 0
% otherwise. Here i is row index and j is column index.
%
% Samuli Siltanen November 2013

% Define adjacency matrix corresponding to the "five-page Internet"
% described in the lectures
A = [...
    [0 1 0 1 1];...
    [0 0 1 1 1];...
    [1 0 0 1 0];...
    [0 0 0 0 1];...
    [0 0 1 0 0]]

% Compute eigenvalues and eigenvectors
[V,D] = eig(A)

% Pick out the relevant eigenvector
r = V(:,1);

% Normalize and display the ranking vector
r = r/sum(r)

