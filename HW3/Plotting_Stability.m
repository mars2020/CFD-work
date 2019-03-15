%   Plotting all stability functions

function Plotting_Stability(Stability_function,Stability_info,range)


for i=1:length(Stability_function)
    plot(range,Stability_function{i})
    hold on
end
axis([0 inf 0 1])
title('Stability Functions')
xlabel('Range of stability')
ylabel('R(z)')
legend(Stability_info)


end