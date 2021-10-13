function dydt = model_1_diffun(~,y,r)
dydt = zeros(8,1);
%%%%%%%%%%%%%%%%%%%%
L = 100;
Mu_a = 0.085;
Sig = 1;
Th0 = 805;
Mu_death = 0.01; % T cell death rate

Rate_prod = Th0*Mu_death;
AntiG = lognrnd(Mu_a,Sig,1,L);
AntiG_die = 3.97e-2; % rate of antigen dearth
%%%%%%%%%%%%%%%%%%%%
%%
Ab_2 = 5.62e-4; % Internalization rate of bound receptors
Au_2 = 1.4e-4; % Internalization  rates of unbound receptors
Ab_4 = 5.27e-4; % Internalization rate of bound receptors
Au_4 = 0.35e-4; % Internalization  rates of unbound receptors
%%
% L = 100;
IL2 = 1.5e-11; % # 3e-11; % # 1.5e-11;
IL4 = 1.5e-10; %3.5e-11; % Mole
mu_2 = log(1698);      
sigma_2 = 1; 
mu_4 = log(7080);
sigma_4 = 1;
%%
No_2 = lognrnd(mu_2,sigma_2,1,L); % Number of receptors on the cell surface 
No_4 = lognrnd(mu_4,sigma_4,1,L);

syn = 8.8e-8; % synergy
Gs = 0.009;

Tr_IL2b = 2e4; % Threshold number of IL4
Mu_Bdeath = 0.01; %B cell death rate
Mu_Bdiff = 0.16e4; %B cell diff rate
s_IL4b = 18e4; % Threshold number of IL4
G2 = 0.0035; % B cell simulation rate by IL2
Gp = 3; %1.2; % # r(8) plasma B cell production rate

for i = 1:L
    dydt(1) = No_4(i) - r(1)*IL4*y(1) + r(2)*y(2) - Au_4*y(1); % EQUATION (2)
    dydt(2) = r(1)*IL4*y(1) - r(2)*y(2) - Ab_4*y(2); % EQUATION (3)
    
    dydt(3) = No_2(i) - r(3)*IL2*y(3) + r(4)*y(4) - Au_2*y(3) - syn*y(2)*y(3); % EQUATION (4)
    dydt(4) = r(3)*IL2*y(3) - r(4)*y(4) - Ab_2*y(4);  %EQUATION (5)
    
    dydt(5) =  Rate_prod*y(6) + Gs*y(5)*y(4)/(y(4) + Tr_IL2b)- Mu_death*y(5); % EQUATION (8) % # Rate_prod*y(2) + #- r(5)*AntiG(i)*y(5);
    dydt(6) = r(6)*AntiG(i) - AntiG_die*y(6);  % EQUATION (9)
    
    dydt(7) = r(7)*y(5)*y(2)/(y(2) + Tr_IL2b) + G2*y(7)*y(4)/(y(4) + s_IL4b) - (Mu_Bdeath + Mu_Bdiff)*y(7); % EQUATION (6) % # Rate_prod*y(2) + #- r(5)*AntiG(i)*y(5);
    dydt(8) = Gp*y(7); % EQUATION (7)
end
end


