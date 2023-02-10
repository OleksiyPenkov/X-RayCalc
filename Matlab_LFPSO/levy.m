function [z] = levy(n,m,beta)
% This function implements Levy's flight. 

% For more information see 
%'Multiobjective cuckoo search for design optimization Xin-She Yang, Suash Deb'. 


% Input parameters
% n     -> Number of steps 
% m     -> Number of Dimensions 
% beta  -> Power law index  % Note: 1 < beta < 2

% Output 
% z     -> 'n' levy steps in 'm' dimension

    num = gamma(1+beta)*sin(pi*beta/2); % used for Numerator 
    
    den = gamma((1+beta)/2)*beta*2^((beta-1)/2); % used for Denominator

    sigma_u = (num/den)^(1/beta);% Standard deviation
% 
%     u = random('Normal',0,sigma_u^2,n,m); 
%     
%     v = random('Normal',0,1,n,m);
    u = normrnd(0,sigma_u,n,m);

    v = normrnd(0,1,n,m);

    z = u./(abs(v).^(1/beta));
    
     
end



