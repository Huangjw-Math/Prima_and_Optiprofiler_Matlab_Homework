function Prima_Test1_Plain()

fprintf('Test 1:\n');
fprintf('Solver1: Precision Double\n');
fprintf('Solver2: Precision Single\n');
fprintf('Feature_Name: Plain\n');

options.ptype = 'ubln';
options.mindim = 2;
options.maxdim = 20;
options.feature_name = 'plain';

scores = benchmark({@Solver_Precision_Double, @Solver_Precision_Single}, options);
end