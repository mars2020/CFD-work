%   Numerical Solution using Runge-Kutta 2
%   Parameter: (function, final time, interval size, initial value)

function [x,y,count] = RK2(func,h,T,y0)

x = 0:h:T;
y(1) = y0;
count = 0;
for i=1:length(x)-1
    X = (x(i+1)+x(i))/2;
    Y = y(i) + (h/2)*func(x(i),y(i));
    y(i+1) = y(i) + h*func(X,Y);
    count = count + 2;
end


