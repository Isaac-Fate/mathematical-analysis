# The Definition of the Riemann-Stieltjes Integral
```{index} Riemann-Stieltjes integral
```

````{prf:definition} 
:label: def:1

Let $f$ and $\alpha$ be real-valued functions on $[a, b]$.
Assume $\alpha$ is bounded.
We say $f$ is
**Riemann-Stieltjes integrable** 
with respect to $\alpha$ on $[a, b]$
if there exists a number $A$ such that
for any choice of $\varepsilon > 0$,
we can always find a partition $P_\varepsilon$ of $[a, b]$ such that
for any partition $P$ finer than $P_\varepsilon$, $P \supseteq P_\varepsilon$,
and for any list of representatives $T$ of $P$,
the  **Riemann-Stieltjes sum** 
satisfies

```{math}
\abs{ S(P, T, f, \alpha) - A } < \varepsilon
```

The number $A$ is denoted by $\int_a^b f \dif \alpha$
or more verbose, $\int_a^b f(x) \dif \alpha(x)$,
and is referred to as the (value of)
**Riemann-Stieltjes integral** (of $f$ w.r.t. $\alpha$ on $[a, b]$).

````

In Apostol's definition {cite}`apostolMathematicalAnalysisModern1974`,
the function $f$ is assumed to be bounded.
This assumption is made because if $f$ is unbounded,
the integral is bound not to exist.
Consequently, Apostol chose not to explore integrals of unbounded functions,
excluding them from his definition.

However, for educational purposes,
we aim to demonstrate explicitly that
the integral does not exist when $f$ is unbounded.
Therefore, we modify the definition to allow $f$
to be unbounded and subsequently prove the non-existence of the integral.


````{prf:proposition} 

If $f$ is unbounded, the $f \notin \mathfrak{R}(\alpha)$ on $[a, b]$.

````

````{prf:proof}

We shall prove by contradiction.
Assume, on the contrary, $f \in \mathfrak{R}(\alpha)$ on $[a, b]$
and $\int_a^b f \dif \alpha = A$.
Then there exists a partition $P = \{x_0, \ldots, x_n\}$ of $[a, b]$ such that
for any list of representatives $T$ of $P$,

```{math}
:label: eq:46
\abs{S(P, T, f, \alpha) - A} < \frac{1}{2}
```

Let $T_0$ be a particular list of representatives.
Because $f$ is unbounded on $[a, b]$,
there exists $j \in \{1, \ldots, n\}$
such that $f$ is unbounded on $[x_{j-1}, x_j]$.
It then follows that we may choose a
point $t_j^\prime \in [x_{j-1}, x_j]$
such that

```{math}
\abs{f(t_j^\prime) - f(t_j)}\abs{\Delta \alpha_j} > 1

```

Let $T^\prime$ be constructed by replacing
the $j$-th point $t_j$ with $t_j^\prime$ in $T_0$.
We have

```{math}
\abs{S(P, T^\prime, f, \alpha) - S(P, T_0, f, \alpha)}
= \abs{ [ f(t_j^\prime) - f(t_j) ] \Delta \alpha_j}
> 1

```

It then follows that

```{math}
\abs{S(P, T^\prime, f, \alpha) - A}& > \abs{S(P, T^\prime, f, \alpha) - S(P, T_0, f, \alpha)}
- 	\abs{S(P, T_0, f, \alpha) - A}\\& > 1 - \frac{1}{2}\\& = \frac{1}{2}
```

This results in a contradiction with {eq}`eq:46`.

````