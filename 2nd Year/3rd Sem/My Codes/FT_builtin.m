syms t;
f=exp(t)*(heaviside(t-1)-heaviside(t-2));
F=fourier(f)
