%   Numerical solution using Implicit Euler
%   Parameters: (function, final time, interval size, initial value)

function [x,y,count] = Implicit_Euler(func,h,T,y0)

x = 0:h:T;
y(1) = y0;
count=0;
for i=1:length(x)-1
    X = x(i+1);
    [Y,~,~,eval] = fsolve(@(Y) Y-y(i)-h*func(X,Y), y0,optimset('Display','off'));
    y(i+1) = y(i) + h*func(X,Y);
    count = count + eval.funcCount + 1;
end


