function x = Solver_Precision_Single(fun, x0, varargin)

nonlcon = [];
if numel(varargin) == 8
    nonlcon = [varargin{7}, varargin{8}];
end

x = prima(fun, x0, varargin{3}, varargin{4}, varargin{5}, varargin{6}, varargin{1}, varargin{2}, nonlcon, struct(precision, 'single'));