function xdot = vdpolin(tn,x)
xdot = [x(1).*(1-x(2).^2)-x(2);x(1)];
end

