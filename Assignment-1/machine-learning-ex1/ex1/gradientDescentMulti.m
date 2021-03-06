function [theta, J_history] = gradientDescentMulti(X, y, theta, alpha, num_iters)
%GRADIENTDESCENTMULTI Performs gradient descent to learn theta
%   theta = GRADIENTDESCENTMULTI(x, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCostMulti) and gradient here.
    %


    prediction = sum(theta' .* X,2);
    errors = (prediction - y);
    % x_zero = X(:,1);
    % x_one = X(:,2);
    % x_second = X(:,3);

    % theta_zero = theta(1) - (alpha/m) * sum(errors' * x_zero);
    % theta_one = theta(2) - (alpha/m) * sum(errors' * x_one);
    % theta_second = theta(3) - (alpha/m) * sum(errors' * x_second);
    
    % theta = [theta_zero;theta_one;theta_second];
    theta = theta - (alpha/m) * sum((errors' * X));

    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCostMulti(X, y, theta);
end

end
