%   Performs explicit euler 
%   Parameters: (function, time step size, final time, initial value)

function [x,y,count] = Explicit_Euler(func,h,T,y0)

x = 0:h:T;
y(1) = y0;
count = 0;
for i=1:length(x)-1
    y(i+1) = y(i) + h*func(x(i),y(i));
    count = count + 1;
end


