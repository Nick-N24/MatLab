function [g, dgdx]=gauss(x, x0, a)
%  g=gauss(x, x0, a)
%
%  gaussian centered at x0
%  with width a
%      Author: K.F. Gauss

pref=1/(a*sqrt(2*pi));
g=pref*exp( -(x-x0).^2 /(2*a^2));

%% find derivative
dx=1e-5 * a;
xp=x+dx;
xm=x-dx;
gp=pref*exp( -(xp-x0).^2 /(2*a^2));
gm=pref*exp( -(xm-x0).^2 /(2*a^2));
dgdx=(gp-gm)/(2*dx);