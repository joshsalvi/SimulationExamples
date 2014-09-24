function [t,x]=vdpol(ts,x0);
% Simulate the van der Pol equation
%
% function [t,x]=vdpol(ts,x0)
%
% ts : starting and ending time points, in the form [tstart tend]
% x0 : initial conditions [x01 x02]'
%
% jsalvi@rockefeller.edu


t0 = ts(1); tf=ts(2);dt=0.1;
if iscolumn(x0) == 0
    x0 = x0';
end
[t,x] = ode23(@vdpolin,t0:dt:tf,x0);
plot(t,x); title('van der Pol Oscillator');

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function xdot = vdpolin(tn,x)
xdot = [x(1).*(1-x(2).^2)-x(2);x(1)];
end
