syms x y z
eqn1 = 32*x + 21*y + 28*z == 19.26;
eqn2 = 25*x + 32*y + 21*z == 19.69;
eqn3 = 23*x + 25*y + 32*z == 20.84;
[A,B] = equationsToMatrix([eqn1, eqn2, eqn3], [x, y, z])
X = linsolve(A,B)

332624