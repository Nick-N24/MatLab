% Author: Nicholas Newton
% Date: 2/18/20
%euler population

% plot pop of community from t=0 to t=0
% equation:
%    dp/dt=G(pmax-p(t))*p(t)

clear
clc

%% Set parameters
pmax=10000;
G=.00005; % 1/people per year


% set up linspace and dt
tmin=0;
tmax=20;
Nx=100;
t=linspace(tmin,tmax,Nx);
dt=t(2)-t(1);

% set up empty p matrix
p=zeros(1,Nx);
p(1)=800;

%% calculations

for it = 1:Nx-1
    p(it+1)=p(it)+(dt*p(it)*G*(pmax-p(it)));
end

%% plot function
plot(t,p,'r-')
title('Euler Population')
xlabel('time (years)')
ylabel('population (people)')
grid on
axis(1.1*[0,20,0,10000])

