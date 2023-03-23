# Improper Riemann Integrals

````{prf:definition}
:label: def:10

If $f \in \mathfrak{R}$ on $[a, b]$
for every $b \geq a$,
and the limit

```{index} improper Riemann integral of the first kind
```

```{math}
\begin{align*}\lim_{b \to \infty}\int_a^b f(x) \;\mathrm{d}x
\end{align*}
```

exists, then $f$ is said to be **improper Riemann integrable**
on $[ a, \infty )$,
and the **improper Riemann integral**,
denoted by $\int_a^\infty f \; \mathrm{d} x$, is defined by
the equation

```{math}
\begin{align*}\int_a^\infty f(x) \;\mathrm{d} x
= \lim_{b \to \infty}\int_a^b f(x) \;\mathrm{d}x
\end{align*}
```

The improper Riemann integrals

```{index} improper Riemann integral of the second kind
```

```{math}
\begin{align*}\int_{-\infty}^b f(x) \;\mathrm{d} x
\quad\text{and}\quad\int_{-\infty}^\infty f(x) \;\mathrm{d} x
\end{align*}
```

are defined in a similar fashion.
In fact, the above improper Riemann integrals
are categorized as the **first kind**
for the upper or lower limit of the integral
is infinity.

The **second kind** improper integrals
are those whose
upper and lower limits are finite whereas the integrand
is not defined at either of the endpoints.
Formally, if $f \in \mathfrak{R}$ on $[a, c]$ for every $c \leq b$,
the function value at $b$ is not defined,
and the limit

```{math}
\begin{align*}\lim_{c \to b^{-}}\int_a^c f(x) \;\mathrm{d} x
\end{align*}
```

exists, then the improper Riemann integral,
denoted by $\int_a^b f(x) \; \mathrm{d} x$,
is defined by

```{math}
\begin{align*}\int_a^b f(x) \;\mathrm{d}x
= \lim_{c \to b^-}\int_a^c f(x) \;\mathrm{d}x
\end{align*}
```

The improper integral whose integrand
is not defined at $a$ or at both points
is defined similarly.

````
