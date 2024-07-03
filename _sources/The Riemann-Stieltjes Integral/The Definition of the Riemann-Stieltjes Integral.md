# The Definition of the Riemann-Stieltjes Integral
```{index} Riemann-Stieltjes integral
```

````{prf:definition} 

Let $f$ and $\alpha$ be bounded on $[a, b]$.
We say $f$ is
**Riemann-Stieltjes integrable** 
with respect to $\alpha$ on $[a, b]$
if there exists a number $A$ such that
for any choice of $\varepsilon > 0$,
we can always find a partition $P_\varepsilon$ of $[a, b]$ such that
for any partition $P$ finer than $P_\varepsilon$, $P \supseteq P_\varepsilon$,
and for any set of representatives $T$ of $P$,
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