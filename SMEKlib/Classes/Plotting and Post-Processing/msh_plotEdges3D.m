function [] = msh_plotEdges3D(msh, edges, varargin)
%msh_plotEdges3D edge plot in 3D.
% 
% (c) 2017 Antti Lehikoinen / Aalto University

if edges < 0
    edges = 1:size(msh.edges, 2);
end
%{
plot3( [msh.nodes(1, msh.edges(1, edges));
    msh.nodes(1, msh.edges(2, edges))], ...
    [msh.nodes(2, msh.edges(1, edges));
    msh.nodes(2, msh.edges(2, edges))], ...
    [msh.nodes(3, msh.edges(1, edges));
    msh.nodes(3, msh.edges(2, edges))], ...
    varargin{:});
%}

%{
plot3( reshape(msh.nodes(1, msh.edges(:,edges)), 2, []), ...
    reshape(msh.nodes(2, msh.edges(:,edges)), 2, []), ...
    reshape(msh.nodes(3, msh.edges(:,edges)), 2, []), ...
    varargin{:});
%}

line( reshape(msh.nodes(1, msh.edges(:,edges)), 2, []), ...
    reshape(msh.nodes(2, msh.edges(:,edges)), 2, []), ...
    reshape(msh.nodes(3, msh.edges(:,edges)), 2, []), ...
    varargin{:});

end