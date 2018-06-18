function X_rr = construct_X_rr(measurements)
%function X_rr = construct_X_rr(measurements)

D = length(measurements.t{1}); % D = dimension of SE(d)
N = max(max(measurements.edges));  % N = number of nodes in the pose graph
M = size(measurements.edges,1); % M = number of edges in the pose graph

X_rr = cell(N,N);

for i=1:N
   for j=1:N
      X_rr{i,j}=eye(D); 
   end
end

