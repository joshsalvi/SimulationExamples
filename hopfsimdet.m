function [tv,xv]=hopfsimdet(mu,omega,tstart,tend,zinit,dt)
%
% Deterministic simulation of the normal form of a Hopf bifurcation 
%
% function [tv,zv]=hopfsimdet(mu,omega,tstart,tend,zinit,dt)
% zinit includes  starting conditions for x1 and x2; [x1(0) x2(0)]'
%
% jsalvi@rockefeller.edu
%


if iscolumn(zinit) == 0
    zinit = zinit';
end

[tv,xv]=ode23(@hopfdetfun,tstart:dt:tend,zinit,zinit,mu,omega);

end




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function fv = hopfdetfun(t,x,mu,omega)
fv(1,1) = mu*x(1) - omega*x(2) - x(1)*(x(1).^2 + x(2).^2);
fv(2,1) = omega*x(1) + mu*x(2) - x(2)*(x(1).^2 + x(2).^2);
end
