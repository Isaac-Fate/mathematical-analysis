# Sufficient Conditions for Existence of Riemann-Stieltjes Integrals

We begin to study when does the integral exist.
The continuous function is the most intuitive
and straightforward type of function that possesses integrals.


````{prf:theorem} 

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