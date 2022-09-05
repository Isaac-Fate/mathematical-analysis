# Integration and Differentiation
````{prf:theorem} 
:label: thm:3
Let $f \in \mathfrak{R}$ on $[a, b]$. For $x \in [a, b]$, put 
```{math}
\begin{align*}
F(x) = \int_a^x f(t) \ \mathrm{d} t
\end{align*}
```
Then, $F$ is continuous on $[a, b]$ (more precisely, $F$  is uniformly continuous). Furthermore, if $f$ is continuous at some point $x_0 \in [a, b]$, then $F$ is differentiable at $x_0$, and 
```{math}
\begin{align*}
F^\prime(x_0) = f(x_0)
\end{align*}
```
````
````{prf:proof}
TODO
````
````{prf:example}
Consider the function 
```{math}
\begin{align*}
f(x) = \begin{cases}
2x \sin \frac{1}{x} - \cos \frac{1}{x} &-\frac{1}{\pi} \leq x \leq \frac{1}{\pi}, \ x \neq 0 \\ 
0 &x = 0
\end{cases}
\end{align*}
```
Let $F(x) = \int_{-1/\pi}^{x} f(t) \ \mathrm{d} t$, then a few steps of computation shows 
```{math}
\begin{align*}
F(x) = \begin{cases}
x^2 \sin \frac{1}{x}  &-\frac{1}{\pi} \leq x \leq \frac{1}{\pi}, \ x \neq 0 \\ 
0 &x = 0
\end{cases}
\end{align*}
```
Note that even though $f$ is discontinuous at $x = 0$, $F$ remains continuous on the entire interval. But, because of this discontinuity of $f$,  $F$ is not differentiable at $x=0$.
````
````{prf:theorem} Fundamental Theorem of Calculus
:label: thm:1
If $ f \in \mathfrak{R} $ on $[a, b]$ and $F$ is a differentiable function on $[a, b]$ such that $F^\prime = f$, then we have
```{math}
\begin{align*}
\int_a^b f \ \mathrm{d} x = F(b) - F(a)
\end{align*}
```
````
````{prf:proof}
TODO
````
````{prf:theorem} Integration by Parts
:label: thm:2
Let $F, G$ be differentiable functions on $[a, b]$ such that $F^\prime = f \in \mathfrak{R}$ and $G^\prime = g \in \mathfrak{R}$, then 
```{math}
\begin{align*}
\int_a^b F(x)g(x) \ \mathrm{d} x = F(b)G(b) - F(a)G(a) - \int_a^b f(x)G(x) \ \mathrm{d} x
\end{align*}
```
````
````{prf:proof}
TODO
````
