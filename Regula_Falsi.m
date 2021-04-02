Copyright (c) <2021>, 9mpd
All rights reserved.

This source code is licensed under the BSD-style license found in the
LICENSE file in the root directory of this source tree. 

% Finding the root of a function using Regula-Falsi Method of iteration. 
% And, calculating the time of execution.

clear all
clc

syms x

f = input("\nEnter the function : ",'s');
fun = str2func(['@(x)',f]);

X0 = input("Enter the value of x0 : ");
X1 = input("Enter the value of x1 : ");

f0 = fun(X0);
f1 = fun(X1);

X2 = X1 - ((X1 - X0)/(f1 - f0))*f1;
Itr = input("Enter the number of iterations you want to perform : ");

if(f0*f1>0)
 disp('No Solution')
 return
else
    tic
    for i=1:Itr
        f0 = fun(X0);
        f1 = fun(X1);
        X2 = X1 - ((X1 - X0)/(f1 - f0))*f1;
        f2 = fun(X2);
        if (f0*f2 < 0)
            X1 = X2;
            f1 = f2;
        elseif (f1*f2 < 0)
            X0 = X2;
            f0 = f2;
        end
    end
    toc
end
fprintf("\nSolution after %d iterations = %0.7f\n", Itr,X2);






