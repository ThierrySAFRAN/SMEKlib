function y = aux_intlogspace(x1, x2, Npoints)
%aux_intlogspace auxiliary logspace function.
% 
% Function y = aux_intlogspace(x1, x2, Npoints) returns logarithmically 
% spaced points on the interval ]x1,x2[
% x1,x2 can be nx1 vectors
% 
% Copyright (c) 2016 Antti Lehikoinen / Aalto University

lob = logspace( 0, 1, Npoints + 2); %basic log space

ytemp = bsxfun(@plus, bsxfun(@times, (x2-x1)/9, lob), x1 - (x2-x1)/9);

y = ytemp(:, 2:(Npoints+1));

end