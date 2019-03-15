%   Plots numerical solution at varying time steps 
%   stable, unstable, and barely stable vs. exact solution

function Plotting_Functions(Methods,X,Y,X_exact,Y_exact,Title,leg)

m = 2;
for i=1:length(Methods)
    figure
    plot(X_exact,Y_exact); hold on;
    for j=1:4
        % Plots stable and unstable time steps
        if j<=2
            plot(X{j}{i},abs(Y{j}{i})); hold on;
            title(Title{i}); legend(leg{j,1});xlabel('time'); ylabel('Solution');
        else
        % Plots barely stable and barely unstable plots 
            figure
            plot(X_exact,Y_exact); hold on;                    
            plot(X{j}{i},Y{j}{i});
            title(Title{i});legend(leg{j,m}); xlabel('time'); ylabel('Solution');
            hold off
            m = m + 1;
        end
    end
    m = 2;
end
end