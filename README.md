# Regula_Falsi_Method
Iteration method to find root of a function.

### This method is  based on the first degree equation.

Geometrically, in this method we replace the function **f(x)** by a straight line, **l** \
or a chord passing through the points **(x<sub>k</sub>, f<sub>k</sub>)** and \
**(x<sub>k-1</sub>, f<sub>k-1</sub>)** and take the point of intersection, **x<sub>k+1</sub>** of the straight line with the x-axis \
as the next approximation to the root.

![image](https://user-images.githubusercontent.com/58243776/113376661-d51d3680-938f-11eb-9b4a-7282bb58c53c.png)

Equating slope of the line, **m** gives :\
<strong>m = (f<sub>k</sub> - f<sub>k-1</sub>)/(x<sub>k</sub> - x<sub>k-1</sub>) = (-f<sub>k</sub>)/(x<sub>k+1</sub> - x<sub>k</sub>)</strong>\
<strong>=> x<sub>k+1</sub> = x<sub>k</sub> - (x<sub>k</sub> - x<sub>k-1</sub>)*f<sub>k</sub> / (f<sub>k</sub> - f<sub>k-1</sub>)</strong>

<i>If the approximations are such that <strong>f<sub>k</sub> * f<sub>k-1</sub> < 0</strong> then the method is known as Regula Falsi method.</i>\
For next iteration use :\
**x<sub>k</sub> = x<sub>k+1</sub>** if **f<sub>k</sub> * f<sub>k-1</sub> < 0**\
**x<sub>k-1</sub> = x<sub>k+1</sub>** if **f<sub>k</sub> * f<sub>k-1</sub> > 0**                                                                            
