function Hvec = Euclidean_Hessian_vector_product(Y, Ydot, problem_data, use_Cholesky)
%function Hvec = Euclidean_Hessian_vector_product(Y, Ydot, problem_data, use_Cholesky)
%
% This function computes and returns the value of the Euclidean Hessian at
% the point Y evaluated along the tangent direction Ydot.

% Copyright (C) 2016 by David M. Rosen

if nargin < 3
    use_Cholesky = true;
end

% Squared L2
%Hvec = 2*Qproduct(Ydot', problem_data, use_Cholesky)';

% Unsquared L2
Yt = Ydot';
YQ = Qproduct(Yt, problem_data, use_Cholesky)';

trQYtY = sqrt(trace(YQ * Yt));

Hvec = YQ/trQYtY;

end

