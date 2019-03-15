%   Plots Numerical Solution with varying step size
%   Parameters: (data points x and y, name of numerical solution)

function Convergence(x,y,h,Title,index)

subplot(2,2,index)
plot(x,y,'LineWidth',2); 
title(Title)
xlabel('Time');
ylabel('Numerical Solution');
legend(num2str(h));
end