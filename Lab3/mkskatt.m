function theta = mkskatt(y, u)
    y = y(:);
    u = u(:);
    
    % Number of samples
    N = length(y);
    
    % Shift signals to create regressor matrix Phi
    T = 1; % Time delay
    phi = [-y(T:N-1), u(T:N-1)];
    
    % Corresponding output values
    y_shifted = y(T+1:N);
    
    % Least-squares solution
    theta = (phi' * phi) \ (phi' * y_shifted);
end
