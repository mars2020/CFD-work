%   Numerical Solution using Runge-Kutta 4
%   Parameters: (function,final time,interval size,initial value)

function [x,y,count] = RK4(func,h,T,y0)

x = 0:h:T;
y(1) = y0;
count = 0;
for i=1:length(x)-1
    k1 = func(x(i),y(i)); 
    Y1 = y(i) + (h/2)*k1;
    k2 = func(x(i),Y1);
    Y2 = y(i) + (h/2)*k2;
    k3 = func(x(i),Y2);
    Y3 = y(i) +  h*k3;
    k4 = func(x(i),Y3);
    y(i+1) = y(i) + (h/6)*(k1+2*k2+2*k3+k4);
    count = count + 8;
end

