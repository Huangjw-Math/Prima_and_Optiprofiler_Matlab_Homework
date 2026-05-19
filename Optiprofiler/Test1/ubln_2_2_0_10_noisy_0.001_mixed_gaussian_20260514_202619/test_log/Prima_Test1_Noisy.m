function Prima_Test1_Noisy()

fprintf('Test 1:\n');
fprintf('Solver1: Precision Double\n');
fprintf('Solver2: Precision Single\n');
fprintf('Feature_Name: Noisy\n');

options.ptype = 'ubln';
options.mindim = 2;
options.maxdim = 2;
options.feature_name = 'noisy';

scores = benchmark({@Solver_Precision_Double, @Solver_Precision_Single}, options);
end