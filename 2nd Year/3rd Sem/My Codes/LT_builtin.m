syms t
f1=sin(t);
f2=sin(2*t);
f3=sin(3*t);
F=laplace(f1+(f2-f1)*heaviside(t-pi)+(f3-f2)*heaviside(t-2*pi))
