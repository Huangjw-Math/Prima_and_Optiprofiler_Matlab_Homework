function x = Solver_Precision_Double(fun, x0, varargin)

Data = [varargin, cell(1,8)];
nonlcon = [];
if isempty(Data{7}) == 0 || isempty(Data{8}) == 0
    nonlcon = @(x) deal(Data{7}(x), Data{8}(x));
end

x = prima(fun, x0, Data{3}, Data{4}, Data{5}, Data{6}, Data{1}, Data{2}, nonlcon, struct('precision', 'double'));