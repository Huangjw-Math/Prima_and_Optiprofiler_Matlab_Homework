options.debug=true; options.single=true; options.quadruple=true; setup(options); testprima



%% 
testprima_ex



%%

RosenBrock

function RosenBrock()
fprintf('Minimizing the Rosenbrock Function in the Following Constraints:\n');
x0 = [-1;-1;-1];

fprintf('1.Unconstrained:\n');
[x, fx, existflag, output] = prima(@chrosen, x0);
x
fx
existflag
output

fprintf('2.Boundary Constrains: x(i) <= 0 for all 1 <= i <= n\n');
Lower_Bound = [-inf; -inf; -inf];
Upper_Bound = [0; 0; 0];
[x, fx, existflag, output] = prima(@chrosen, x0, [], [], [], [], Lower_Bound, Upper_Bound);
x
fx
existflag
output

fprintf('3.Linear Constrains: ||x||_{1} <= 1, x(i) >= 0 for all 1 <= i <= n\n');
A = [1, 1, 1];
b = 1;
Lower_Bound = [0; 0; 0];
[x, fx, existflag, output] = prima(@chrosen, x0, A, b, [], [], Lower_Bound, []);
x
fx
existflag
output

fprintf('4.Nonlinear Constrains: ||x||^{2}_{2} <= 1, x(i) >= 0 for all 1 <= i <= n\n');
Lower_Bound = [0, 0, 0];
nonlcon = @nlc;
[x, fx, existflag, output] = prima(@chrosen, x0, [], [], [], [], Lower_Bound, [], nonlcon);
x
fx
existflag
output

return 

end

function f = chrosen(x)  % the subroutine defining the objective function
f = sum((x(1:end-1)-1).^2 + 4*(x(2:end)-x(1:end-1).^2).^2);
return

end

function [cineq, ceq] = nlc(x)  % the subroutine defining the nonlinear constraints
% The same as fmincon, nonlinear constraints cineq(x) <= 0 and ceq(x) = 0 are specified
% by a function with two returns, the first being cineq and the second being ceq.
cineq = x'*x - 1;
ceq = [];
return

end