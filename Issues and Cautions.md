### Issues
1.The command
```
testprima_ex
``` 
will run the 
```
setup
```
function, which has already been done in previous tests. Additionally, the command will also run the RosenBrock Function, which is scheduled to be tested later. Therefore, once we have installed the Mex tools, we can run the command
```
test_prima_ex
```
at once to complete all the testing tasks.

### Cautions
1.Matlab Online provide a virtual environment to run Matlab codes in Linux environment with almost all standard packages installed. However, with absence of parallel computing environment, running 
```
example1
example2
example3
example4
```
will result in an error.

When we run the code locally instead, the problem won't appear. But running the testing code without the Parallel Computing Package will costs a lot of time. Therefore, it is highly suggested that install the Parallel Computing Packages before hand. Additionally, paying attention to the informations in Cautions given by 
```
help benchmark
```
will be beneficial.
