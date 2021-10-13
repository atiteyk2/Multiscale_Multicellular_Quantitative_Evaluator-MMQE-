clc
clear all

%%%%%%%%%%%%%%%%%%%%%%%%
% load Ab2_d.mat

%%%%%%%%%%%%%%%%%%%%%%%%
Nth0 = 805;
Mthd = 9.16e-8;

%%%%%%%%%%%%%%%%%%%%%%%%
r1 = 3.8e7;
r2 = 18.6e-4;
r3 = 23.46e7;
r4 = 2.09e-4;
r5 = 1.8e-11; %2.08e-16; %1.8e-11;
r6 = 7.5e-2;
r7 = 1;
r8 = 1.2;
rtrue = [r1 r2 r3 r4 r5 r6 r7 r8]; 
y0 = [0 0 0 0 Nth0 0 3 5];

%%%%%%%%%%%%%%%%%%%%%%%%
N = 7200; 
tspan = linspace(0,N);
soltrue_1 = ode45(@(t,y)model_1_diffun(t,y,rtrue),tspan,y0);
yvalstrue_1 = deval(soltrue_1,tspan);
 
%%%%%%%%%%%%%%%%%%%%%%%% 
figure(1)
plot(tspan,yvalstrue_1(1,:))
hold on
plot(tspan,yvalstrue_1(2,:))
legend('Unbound IL-4R','Bound IL-4R')
xlabel('Proliferation time');
ylabel('Number of IL-4 receptor')
 
%% 
figure(2)
plot(tspan,yvalstrue_1(3,:))
hold on
plot(tspan,yvalstrue_1(4,:))
legend('Unbound IL-2R','Bound IL-2R')
xlabel('Proliferation time');
ylabel('Number of IL-2 receptor')
%%%%%%%%%%%%%%%%%%%%%%%% 
