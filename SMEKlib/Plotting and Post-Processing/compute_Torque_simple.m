function T = compute_Torque_simple(A, msh, ri, ro, arg1, varargin)
%compute_Torque_simple simple torque computation.
% 
% Computes torque with Arkkio's method. Call syntax either
% T = compute_Torque_simple(A, msh, ri, ro, el_ag),
% T = compute_Torque_simple(A, msh, ri, ro, t_ag), or
% T = compute_Torque_simple(A, msh, ri, ro, t_ag, rotorAngles)
% where msh.t(:, el_ag) or t_ag must define a triangulation of one or more
% air-gap bands with the inner and outer radii of ri and ro respectively.
% 
% Eccentricity is not supported for now.
% In harmonic problems, rms-scaling of A is assumed, i.e. the
% time-dependent vector potential is assumed to be
% At(t) = real(A)*cos(2*pi*f*t) - imag(A)*sin(2*pi*f*t)
% 
% (c) 2017 Antti Lehikoinen / Aalto University

mu0 = pi*4e-7;

if numel(varargin)
    %computing torque for a time-dependent problem
    T = internal_timedependentTorque(A, msh, ri, ro, varargin{1});
    return
end

%stationary problem (or time-harmonic)
if min(size(arg1)) == 1
    el_ag = arg1;
    msh_comp = msh;
else
    msh_comp = struct('t', arg1, 'p', msh.p);
    el_ag = 1:size(arg1, 2);
end
Ne = numel(el_ag);

[F, F0] = mappingTerms(msh_comp, el_ag);
detF = mappingDeterminant(F);

[X_quad, W_quad] = get_2DtriangleIntegrationPoints(1);
N_quad = numel(W_quad);

T = zeros(1, size(A,2));
for kcol = 1:size(A,2)
    for k_quad = 1:N_quad
        B = zeros(2, Ne);
        x_global = mappingTimesVector(X_quad(:,k_quad), false, false, F) + F0;

        %computing flux density
        for kn = 1:3
            B = B + bsxfun(@times, evaluate_ShapeFunction('curl', 'nodal', kn, F, detF), ...
                transpose(A(msh_comp.t(kn, el_ag), kcol)));
        end
        Br_r = dotProduct(B, x_global); %Br * |r|
        Bphi_r = dotProduct(B, [0 -1;1 0]*x_global); %Bphi * |r|

        T(kcol) = T(kcol) + W_quad(k_quad) * sum( real(conj(Br_r) .* Bphi_r) ...
            ./ sum(x_global.^2,1).^0.5 .*abs(detF));    
    end
end

T = T / (mu0*(ro-ri)) /2;

end

function T = internal_timedependentTorque(A, msh, ri, ro, rotorAngles)
%internal_timedependentTorque torque computation for time-stepping
%problems.

mu0 = pi*4e-7;
msh_comp = struct('p', msh.p, 't', msh.bandData.t_ag);
Ne = size(msh_comp.t, 2);

Nsamples = numel(rotorAngles);

T = zeros(1, Nsamples);
[X_quad, W_quad] = get_2DtriangleIntegrationPoints(1);
N_quad = numel(W_quad);

for ksample = 1:Nsamples
    if isobject(msh.bandData)
        %[t_local, pnew] = msh.bandData.t_ag(rotorAngles(ksample));
        %t_ag = t_local;
        
        %computing torque from the constant part of ag mesh only
        t_ag = msh.bandData.t_const;
        pnew = msh.bandData.p_virt;
    else
        [t_ag, ~, pnew] = updateRotorPosition(rotorAngles(ksample), msh);
    end
    msh_comp.t = t_ag;
    msh_comp.p = pnew;
    
    [F, F0] = mappingTerms(msh_comp);
    detF = mappingDeterminant(F);
    
    for k_quad = 1:N_quad
        B = zeros(2, size(msh_comp.t,2));
        x_global = mappingTimesVector(X_quad(:,k_quad), false, false, F) + F0;
        
        
        %computing flux density
        for kn = 1:3
            if isfield(msh, 'symmetrySectors')
                A_true = transpose(A( msh.bandData.el_table(2, msh_comp.t(kn, :)), ksample)) ...
                    .* msh.bandData.el_table(3, msh_comp.t(kn, :));
            else
                A_true = transpose( A(msh_comp.t(kn, :), ksample ) );
            end
            B = B + bsxfun(@times, evaluate_ShapeFunction('curl', 'nodal', kn, F, detF), ...
                A_true);
        end
        
        Br_r = dotProduct(B, x_global); %Br * |r|
        Bphi_r = dotProduct(B, [0 -1;1 0]*x_global); %Bphi * |r|

        T(ksample) = T(ksample) + W_quad(k_quad) * sum(( Br_r .* Bphi_r ) ...
            ./ sum(x_global.^2,1).^0.5 .*abs(detF));    
        
    end
end
disp(['Radius of airgap used in calculations: ' num2str(ro-ri)]);
T = T / (mu0*(ro-ri));

end