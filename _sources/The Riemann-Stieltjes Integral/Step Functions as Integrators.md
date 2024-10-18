# Step Functions as Integrators

````{prf:proposition} 
:label: prop:6

Suppose $\alpha$ is constant on $[a, b]$ except possibly at point $x=a$,
that is, $\alpha(x) = \alpha(b)$ for all $a < x \leq b$.
If $f$ is continuous from the right at $a$,
then $f \in \mathfrak{R}(\alpha)$ on $[a, b]$, and

```{math}
\int_a^b f \dif\alpha = f(a)[\alpha(b) - \alpha(a)]
```

````

:::{note}

Note that we assume $\alpha$ possibly has a different value at $a$.
If $\alpha$ is constant on the entire interval $[a, b]$,
the integral clearly exists and is zero.

An analogous result holds
when we assume $\alpha$ is constant on $[a, b]$ except possibly
at the right endpoint $x=b$.

:::

````{prf:proof}

If $\alpha(a) = \alpha(b)$, the conclusion is trivial.
In the following proof, we assume $\alpha(a) \neq \alpha(b)$.

Let $\varepsilon > 0$ be arbitrary.
Because $f$ is continuous at $x=a$, there exists $\delta > 0$ such that

```{math}

x - a < \delta\implies\abs{f(x) - f(a)} < \frac{\varepsilon}{\abs{\alpha(b) - \alpha(a)}}
```

Let $P_\varepsilon = \{x_0, \ldots, x_n\}$ be a partition of $[a, b]$
such that $x_1 < x_0 + \delta$.
For any refinement $P \supseteq P_\varepsilon$, we have

```{math}

S(P, T, f, \alpha) = \sum_{k=1}^n f(x_k) \Delta\alpha_k
= f(t_1) [\alpha(x_1) - \alpha(x_0)]
= f(t_1) [\alpha(b) - \alpha(a)]
```

It then follows that

```{math}
\abs{S(P,T,f,\alpha) - f(a)[\alpha(b) - \alpha(a)]}& = \abs{f(t_1) - f(a)}\abs{\alpha(b) - \alpha(a)}\\& < \frac{\varepsilon}{\abs{\alpha(b) - \alpha(a)}}\abs{\alpha(b) - \alpha(a)}\\& =\varepsilon
```

This completes the proof.

````

````{prf:theorem} 
:label: thm:6

Given $a < c <b$.
Let $\alpha$ be constant on $[a, b]$ except at point $x=c$.
That is, let $\alpha(a)$, $\alpha(c)$ and $\alpha(b)$ be arbitrary.
Define

```{math}
\alpha(x) := \begin{cases}
\alpha(a), & a \leq x < c \\
\alpha(c), & x=c          \\
\alpha(b), & c < x \leq b
\end{cases}
```

If function $f$ is defined in such a way that
1. At least one of $f$ and $\alpha$ is continuous from the left at $c$, and
2. at least one of $f$ and $\alpha$ is continuous from the right at $c$,

then $f \in \mathfrak{R}(\alpha)$ on $[a, b]$, and

```{math}
\int_a^b f \dif\alpha = f(c)[\alpha(c+) - \alpha(c-)]
```

````

````{prf:proof}

It follows from {prf:ref}`prop:6` and its analogous result
that $f \in \mathfrak{R}(\alpha)$ on $[a, c]$
and $f \in \mathfrak{R}$ on $[c, b]$.
The values of the integrals are

```{math}
\int_a^c f \dif\alpha = f(c)[\alpha(c) - \alpha(a)]\quad\text{and}\quad\int_c^b f \dif\alpha = f(c)[\alpha(b) - \alpha(c)]
```

Then {prf:ref}`thm:5` implies
that $f \in \mathfrak{R}(\alpha)$ on $[a, b]$, and

```{math}
\int_a^b f \dif\alpha
= \int_a^c f \dif\alpha + \int_c^b f \dif\alpha
= f(c)[\alpha(b) - \alpha(a)]
= f(c)[\alpha(c+) - \alpha(c-)]
```

````