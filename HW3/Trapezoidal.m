%   Numerical Solution using Trapezoidal Method
%   Parameters: (function, final time, interval size, initial value)

function [x,y,count] = Trapezoidal(func,h,T,y0)

x = 0:h:T;
y(1) = y0;
count = 0;
for i=1:length(x)-1
    Y_i = func(x(i),y(i));
    [Y,~,~,eval] = fsolve(@(Y) Y-y(i)-(h/2)*(Y_i + func(x(i+1),Y)), y0,optimset('Display','off'));
    y(i+1) = y(i) + (h/2)*(Y_i + func(x(i+1),Y));
    count= count + eval.funcCount + 2;
end

