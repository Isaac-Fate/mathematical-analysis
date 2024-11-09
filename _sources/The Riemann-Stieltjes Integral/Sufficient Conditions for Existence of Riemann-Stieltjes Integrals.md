# Sufficient Conditions for Existence of Riemann-Stieltjes Integrals

We begin to study when does the integral exist.

One may recall from the calculus that the continuous function is the most intuitive
and straightforward type of function that possesses the Riemann integrals.

We will show in the following theorem that this is also true
for Riemann-Stieltjes
integrals with integrators of bounded variation.



````{prf:theorem} 
:label: thm:16

If $f$ is continuous on $[a, b]$ and if $\alpha$ is of bounded variation on $[a, b]$,
then $f \in \mathfrak{R}(\alpha)$ on $[a, b]$.

````

````{prf:proof}

It suffices to prove this theorem for increasing $\alpha$.

If $\alpha(a) = \alpha(b)$, then $\alpha$ is a constant function,
in which case the conclusion is trivial.
In what follows, we assume $\alpha(a) < \alpha(b)$.

Let $\varepsilon > 0$ be arbitrary.
Because $f$ is continuous on $[a, b]$, $f$ is uniformly continuous there.
Then there exists $\delta > 0$ such that

```{math}
\abs{x - y} < \delta\implies\abs{f(x) - f(y)}
< \frac{\varepsilon / 2}{\alpha(b) - \alpha(a)}
```

Let $P_\varepsilon$ be a partition such that $x_k - x_{k-1} < \delta$ for all $k$.
It then follows that

```{math}
\omega_f(I_k) = \sup_{x, y \in I_k}\abs{f(x) - f(y)}\leq\frac{\varepsilon / 2}{\alpha(b) - \alpha(a)}
< \frac{\varepsilon}{\alpha(b) - \alpha(a)}
```

Multiply by $\Delta \alpha_k$ and sum over $k$, and we will obtain

```{math}
\sum_{k}\omega_f(I_k) \Delta\alpha_k
< \frac{\varepsilon}{\alpha(b) - \alpha(a)}\sum_{k}\Delta\alpha_k
= \varepsilon
```

This implies that $f$ satisfies the Riemann's condition w.r.t. $\alpha$ on $[a, b]$.

````

Thanks to the theorem of integration by parts ({prf:ref}`thm:15`),
by swapping the assumptions for the integrand and the integrator,
we can immediately obtain another sufficient condition for
existence of Riemann-Stieltjes integrals.


````{prf:theorem} 
:label: thm:17

If $f$ is of bounded variation on $[a, b]$ and $\alpha$ is continuous,
then $f \in \mathfrak{R}(\alpha)$ on $[a, b]$.

````

Put $\alpha(x) = x$ in {prf:ref}`thm:16` and {prf:ref}`thm:17`,
and we may conclude that continuous functions and functions of bounded variation
are Riemann integrable.


````{prf:theorem} 

If on $[a, b]$,
1. $f$ is continuous, or
2. $f$ is of bounded variation

then $f \in \mathfrak{R}(x)$ on $[a, b]$, i.e., $\int_a^b f(x) \dif x$ exists.

````