clear

W_MGA1 = energyCal('OtterMGAcase1');
W_RRT1 = energyCal('OtterRRTcase1');
W_Dstar1 = energyCal('OtterDstarLitecase1');
W_HybridAstar1 = energyCal('OtterHybridAstarcase1');
W_GA1 = energyCal('OtterGAcase1');


W_MGA2 = energyCal('OtterMGAcase2');
W_RRT2 = energyCal('OtterRRTcase2');
W_GA2 = energyCal('OtterGAcase2');
W_Dstar2 = energyCal('OtterDstarLitecase2');
W_HybridAstar2 = energyCal('OtterHybridAstarcase2');

function W = energyCal(filename)
data = load(filename);
out = data.out;
omega_chi = out.omega_chi;
U = out.speed;
n = out.propeller;

y_pont  = 0.395;    % distance from centerline to waterline area center (m)
g   = 9.81;         % acceleration of gravity (m/s^2)

% Experimental propeller data including lever arms
l1 = -y_pont;                           % lever arm, left propeller (m)
l2 = y_pont;                            % lever arm, right propeller (m)
k_pos = 0.02216/2;                      % Positive Bollard, one propeller 
k_neg = 0.01289/2;                      % Negative Bollard, one propeller 
n_max =  sqrt((0.5*24.4 * g)/k_pos);    % maximum propeller rev. (rad/s)
n_min = -sqrt((0.5*13.6 * g)/k_neg);    % minimum propeller rev. (rad/s)

F = [];
M = [];
for j = 1: length(n)
    Thrust = zeros(2,1);
    for i = 1:1:2
        if n(j, i) > n_max              % saturation, physical limits
           n(j, i) = n_max; 
        elseif n(j, i) < n_min
           n(i) = n_min; 
       end

       if n(j, i) > 0                          
         Thrust(i) = k_pos * n(j, i)*abs(n(j, i));    % positive thrust (N) 
       else
         Thrust(i) = k_neg * n(j, i)*abs(n(j, i));    % negative thrust (N) 
       end
    end
    F = [F ;Thrust(1)+Thrust(2)];
    M = [M; -l1*Thrust(1)-l2*Thrust(2)];
end

% instant power every 0.05 s
P = F.*U + M.* omega_chi;
% total energy consumption kJ
W = sum(P).*0.05/1000;
end