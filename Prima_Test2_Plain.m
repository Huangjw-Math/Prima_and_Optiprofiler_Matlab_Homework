function Prima_Test2_Plain()

fprintf('Test 2:\n');
fprintf('Solver1: Precision Double\n');
fprintf('Solver2: Precision Quadruple\n');
fprintf('Feature_Name: Plain\n');

options.ptype = 'ubln';
options.mindim = 2;
options.maxdim = 20;
options.feature_name = 'plain';

scores = benchmark({@Solver_Precision_Double, @Solver_Precision_Quadruple}, options);
end