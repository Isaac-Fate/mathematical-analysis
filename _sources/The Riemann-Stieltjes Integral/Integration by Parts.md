# Integration by Parts

````{prf:theorem} 
:label: eq:19

If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$,
then $\alpha \in \mathfrak{R}(f)$ on $[a, b]$, and

```{math}
:label: eq:19
\int_a^b f \dif\alpha
+ \int_a^b \alpha\dif f
= f(b) \alpha(b) - f(a) \alpha(a)

```

````

````{prf:proof}

Let $\varepsilon > 0$ be arbitrary.
Because $f \in \mathfrak{R}(\alpha)$ on $[a, b]$, by definition,
there exists $P_\varepsilon$ such that for
any refinement $P \supseteq P_\varepsilon$
and any set of representatives $T$ of $P$,
the Riemann-Stieltjes sum $S(P, T, f, \alpha)$ satisfies that

```{math}
\abs{S(P, T, f, \alpha) - \int_a^b f \dif \alpha} < \varepsilon
```

Consider an arbitrary refinement $P^\prime \supseteq P_\varepsilon$.
And let $T^\prime$ be a list of representatives of $P^\prime$.
We want to show that $S(P^\prime, T^\prime, \alpha, f)$
is near the desired value.
Write $P^\prime = \{x_0, \ldots, x_n\}$.
The Riemann-Stieltjes sum $S(P^\prime, T^\prime, \alpha, f)$ can be then
written as

```{math}
:label: eq:17

S(P^\prime, T^\prime, \alpha, f)
= \sum_{k=1}^n \alpha(t_k) [f(x_k) - f(x_{k-1}]
= \sum_{k=1}^n \alpha(t_k) f(x_k)
- \sum_{k=1}^n \alpha(t_k) f(x_{k-1})

```

Meanwhile, the difference $A = f(b)\alpha(b) - f(a)\alpha(a)$
on the right-hand side of {eq}`eq:19`
can be written as

```{math}
:label: eq:18

A & = & & f(b)\alpha(b) - f(a)\alpha(a) \nonumber\\& = & & f(x_n)\alpha(x_n)
- f(x_{n-1})\alpha(x_{n-1}) \nonumber\\& & & + f(x_{n-1})\alpha(x_{n-1})
- \cdots
- f(x_{1})\alpha(x_{1}) \nonumber\\& & & + f(x_{1})\alpha(x_{1})- f(x_0)\alpha(x_0) \nonumber\\& = & & \sum_{k=1}^n f(x_k)\alpha(x_k) - \sum_{k=1}^n f(x_{k-1})\alpha(x_{k-1})

```

Subtracting {eq}`eq:17` from {eq}`eq:18`, we obtain

```{math}
:label: eq:20

A - S(P^\prime, T^\prime, \alpha, f)
= \sum_{k=1}^n f(x_k) [\alpha(x_k) - \alpha(t_k) ]
+ \sum_{k=1}^n f(x_{k-1}) [\alpha(t_k) - \alpha(x_{k-1}) ]
```

Taking a close look at the right-hand side of {eq}`eq:20`,
one may realize that it is also a Riemann-Stieltjes sum.
To see this, let $P^{\prime\prime} = P^\prime \cup T^\prime$,
and let $T^{\prime\prime}$ be the list of representatives constructed as follows.
Choose $x_k$ in $[t_k, x_k]$(if $t_k < x_k$)
and chose $x_{k-1}$ in $[x_{k-1}, t_k]$(if $x_{k-1} < t_k$).

:::{note}

There are chances that $t_k = x_k$ or $t_k = x_{k-1}$.
In that case, the term $f(x_k)[\alpha(x_k)-\alpha(t_k)]$
or $f(x_{k-1})[\alpha(t_k)-\alpha(x_{k-1})]$
would be zero.

:::

Consider the diagram shown in Figure {numref}`fig:5`.
```{figure} /figures/integration-by-parts-proof-diagram.png
---
name: fig:5
---
The blue part is associated with $f(x_k)[\alpha(x_k)-\alpha(t_k)]$ while the orange part is associated with $f(x_{k-1})[\alpha(t_k)-\alpha(x_{k-1})]$. We see that summing them up yields $S(P^{\prime\prime}, T^{\prime\prime}, f, \alpha)$.
```

The right-hand side of {eq}`eq:20`
is just $S(P^{\prime\prime}, T^{\prime\prime}, f, \alpha)$.
Since $P^{\prime\prime} \supseteq P_\varepsilon$,
we have

```{math}
\abs{
S(P^{\prime\prime}, T^{\prime\prime}, f, \alpha)
- \int_a^b f \dif \alpha
} < \varepsilon\implies\abs{
A - S(P^\prime, T^\prime, \alpha, f) -  \int_a^b f \dif \alpha
} < \varepsilon
```

This shows that $\alpha \in \mathfrak{R}(f)$ on $[a, b]$,
and {eq}`eq:19` is proved.

````