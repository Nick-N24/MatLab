%% animate

clear
clc

%set parameters
T=2; %period
tmin=0;
tmax=2*T
Nt=300;

%% tabulate sine curve
t=linspace(tmin,tmax,Nt);
y=sin(2*pi*t/T);

% plot with amination
for it=1:Nt
    plot(t(it),y(it),'ro',...
        t(1:it),y(1:it),'b')
    axis([tmin,tmax,-1.1,1.1]);
    grid on
    ylabel('y')
    xlabel('x')
    drawnow
end
