# Tesing Report

### By Jinwen Huang

## 1.Introduction

This is a report file of my Matlab-package-testing homework written in Markdown.

## 2.Testing Environment

Firstly, the author attempted to complete the tasks with Matlab Online on the Mathwork official website("https://matlab.mathworks.com/". Additionally, one can upload files in "https://drive.mathworks.com/files/"), with an attempt to saving enormous time from installing and settling down relevant environment.

However, due to a lack of parallel computing environment, we are unable to test Optiprofiler with Matlab Online (I will talk about more details later). As a result, the author turned back to the local environment and completed the task with Matlab R2026a in his computer.

## 3.Testing

### 3.1 The Prima Package

For codes in this task, see "Prima_Testing.m".

### 3.1.1 The Prerequisite : MEX

Install "MATLAB Support for MinGW-w64 C/C++/Fortran Compiler" and run

```
mex('-setup', '-v', 'fortran'); mex('-v', fullfile(matlabroot, 'extern', 'examples', 'refbook', 'timestwo.F'));
```

### 3.1.2 Setting up Prima and testing the examples

Download the source code from github directly when we need to test it locally. One can add the Prima package directly on the online environment otherwise.

Run

```
options.debug=true; options.single=true; options.quadruple=true; setup(options); testprima
```
and
```
testprima_ex
```
Note that the second command will complete all the tasks from setting up to testing the Resenbrock function(The conditions are different).

### 3.1.3 Test the Rosenbrock function in dimension n

Pay attention to the boundary conditions. The example may be helpful. There is no difficulty in this task.

### 3.2 The Optiprofiler Package

For codes in this task, see "Optiprofiler_Testing2.m".

### 3.2.1 Installation

Use git to clone the repository. The author refers to "https://docs.net9.org/basic/git/" and "https://www.liaoxuefeng.com/wiki/896043488029600". Effective cooperation with AI with also be helpful.

Run

```
setup
```

in the folder.

### 3.2.2 Testing the examples

Run
```
example1
example2
example3
example4
```

### 3.2.3 Testing the Prima Package.

Testing with 4 different conditions. 

```
help benchmark
```
will be helpful.

Additionally, one can refer to the codes in the examples.

## 4.Cautions and Issues

The author has encountered many unexpected problems during the testing.

### Caution 1:

In the Prima package, the 

```
testprima_ex
```
will complete all the testing process including installing, 'test_prima' and running the Rosenbrock funcitions.

### Caution 2:

We need to deal with the nonlinear conditions beforehand.

### Problem 1: 

There's no parallel computing environment provided by the online environemnt, which makes it impossible to complete the second tasks.

```
Start Example 1...

错误使用 getDefaultProfileOptions (第 6 行)
No default cluster available. 创建一个集群及其关联的配置文件。

出错 benchmark (第 609 行)
    profile_options = getDefaultProfileOptions(solvers, feature, profile_options);
                      ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
出错 example1 (第 20 行)
    scores = benchmark({@solver1, @solver2})
             ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
出错 Optiprofiler_Testing (第 5 行)
example1
^^^^^^^^
```

### Solution: 

Turn to the local environment, but it costs numerous time to settle the prerequisite.

### Findings:

The author had not installed the parallel computing packages locally, but it still works.

By comparison, we found out that:

1.If we hasn't installed the parallel computing package, then Optiprofiler will run without a cluster, which is what has happened initally in my computer.

2.However, if we has installed the parallel computing package but doesn't provide Matlab with the demanded environment, it will return with an error (That's what happened with the online environment).

### Problem 2: 
git can't upload my local documents to github.(can't link to github) 

```
$ git push -u origin master
fatal: unable to access 'https://github.com/Huangjw-Math/Prima_and_Optiprofiler_Matlab_Homework.git/': Failed to connect to github.com port 443 after 21074 ms: Could not connect to server
```

Copilot tells me to run
```
curl -I https://github.com
```
in a terminal.

The Result is:

```
curl: (28) Failed to connect to github.com port 443 after 21051 ms: Could not connect to server
```

Diagnosis:

```
Diagnosis
You cannot connect to github.com via HTTPS from your current environment.
This almost always means network blocking — by firewall, proxy, or ISP.
```

### Solution: 
Upload files manually.

### Problem 3:
The last task is too time-consuming.

### Solution:
I reduce to parameter 'maxdim' from 20 to 2, which results in a decreasing number of problems to be tested from 400+ to 100+.

The Example_Testing costs about 30mins with 40+ problems tested. Therefore, I assume that each test will costs 1.5h ~ 2h.

Additionally, there are other unexpected problems that occured in the testing process. For example:
1. Sometimes it fails to generate a PDF file or merge the files (for unknown reasons). 
2. Memory errors, sometimes it get stuck.

## 5.Summary

Testing the Prima and Optiprofiler package provides me with an opportunity to enhance my skills in coping with unexpected problems and writing testing codes based on examples. It requires familiarity with Matlab and skills to tackle issues raised abruptedly.