# Riemann's Condition

When we are discussing about whether
the limit $\lim$ exists or not,
we check that if
the limit inferior $\liminf$
and the limit superior $\limsup$
are equal.

Similarly, it is reasonable to guess that
the existence of the integral $\int$ depends on
the equality of the lower and upper integrals
(whether $\underline{\int} = \overline{\int}$).

```{index} Riemann's condition
```

````{prf:definition} 
:label: eq:42

We say that a function $f$
satisfies the  **Riemann's condition** 
with respect to $\alpha$ on $[a, b]$
if for any $\varepsilon > 0$,
there exists a partition $P_\varepsilon$ such that

```{math}
:label: eq:42

P \supseteq P_\varepsilon\implies
0 \leq U(P, f, \alpha) - L(P, f, \alpha) < \varepsilon
```

or equivalently, just saying that

```{math}
:label: eq:43

0 \leq U(P_\varepsilon, f, \alpha) - L(P_\varepsilon, f, \alpha) < \varepsilon
```

````

:::{note}
{eq}`eq:42` is the definition given in {cite}`apostolMathematicalAnalysisModern1974`.
But clearly {eq}`eq:42`$\iff${eq}`eq:43`.
({eq}`eq:42`$\implies${eq}`eq:43` is obvious.)
If {eq}`eq:43` holds,
then by {prf:ref}`thm:9`
we know that the upper sum will decrease while the lower sum will increase
as the partition gets finer,
and the lower sum is always no greater than the upper sum.
Therefore, {eq}`eq:42` holds.

:::

````{prf:proposition} 
:label: prop:7

Let $f$ be a bounded function on $[a, b]$. We have

```{math}
\sup_{x, y \in [a, b]}[f(x) - f(y)]
= \sup_{x \in [a, b]} f(x) - \inf_{x \in [a, b]} f(x)

```

````

````{prf:proof}

Let $M = \sup_{x \in [a, b]} f(x)$ and $m = \inf_{x \in [a, b]} f(x)$.
Clearly

```{math}

f(x) - f(y) \leq M - m \quad\forall x, y \in[a, b]
```

That is, $M-m$ is an upper bound of the
set $\{f(x) - f(y) \mid x, y \in [a, b]\}$.
We now show that $M - m$ is the least upper bound.
Let $\varepsilon > 0$ be arbitrary.
There exists $x_0 \in [a, b]$ such that $f(x_0) > M - \varepsilon/2$,
and there exists $y_0 \in [a, b]$ such that $f(y_0) < m + \varepsilon/2$.
It then follows that

```{math}

f(x_0) - f(y_0) > M - m - \varepsilon
```

This completes the proof.

````

The following theorem ease the procedure of proving
the existence of an integral.


````{prf:theorem} 

Assume $\alpha$ is increasing on $[a, b]$.
Then the following statements are equivalent:
1. $f \in \mathfrak{R}(\alpha)$ on $[a, b]$.
2. $f$ satisfies the Riemann's condition with respect to $\alpha$ on $[a, b]$.
3. $\underline{\int_a^b} f \dif \alpha = \overline{\int_a^b} f \dif \alpha$.

````

````{prf:proof}
\noindent **Proof of 1 $\implies$ 2:** 
Let $\varepsilon > 0$ be arbitrary.
Because $f \in \mathfrak{R}(\alpha)$ on $[a, b]$,
there exists a partition $P_\varepsilon$ such that
for all $P \supseteq P_\varepsilon$
and any list of representatives $T$ of $P$, we have

```{math}
:label: eq:44
\abs{ S(P, T, f, \alpha) - \int_a^b f \dif \alpha } < \varepsilon / 4

```

We now construct two particular lists of representatives
$T_1$ and $T_2$ of $P$ as follows.
Write $P = \{x_0, \ldots, x_n\}$.
On each subinterval $[x_{k-1}, x_k]$,
we can find a $t_k$ such that

```{math}

f(t_k) \Delta\alpha_k < m_k + \frac{\varepsilon}{4n}
```

and we can find a $t_k^\prime$ such that

```{math}

f(t_k^\prime) \Delta\alpha_k > M_k - \frac{\varepsilon}{4n}
```

Let $T_1$ be the list of all such $t_k$'s
and $T_2$ be the list of all $t_k^\prime$'s.
It then follows that

```{math}

S(P, T_1, f, \alpha) & < L(P, f, \alpha) + \varepsilon / 4 \\
S(P, T_2, f, \alpha) & > U(P, f, \alpha) - \varepsilon / 4

```

Taking the difference yields

```{math}
:label: eq:45

U(P, f, \alpha) - L(P, f, \alpha)
< S(P, T_1, f, \alpha) - S(P, T_2, f, \alpha) + \varepsilon/2

```

But {eq}`eq:44` implies that

```{math}
\abs{S(P, T_1, f, \alpha) - S(P, T_2, f, \alpha)} < \varepsilon/2

```

Combined with {eq}`eq:45`, we obtain

```{math}

U(P, f, \alpha) - L(P, f, \alpha) < \varepsilon
```

which holds for any refinement $P$ of $P_\varepsilon$.
Therefore, $f$ satisfies the Riemann's condition
with respect to $\alpha$ on $[a, b]$.

\noindent **Proof of 2 $\implies$ 3:** 
Let $\varepsilon > 0$ be arbitrary.
Because $f$ satisfies the Riemann's condition.
There exists a partition $P_\varepsilon$ such that

```{math}

U(P_\varepsilon, f, \alpha) - L(P_\varepsilon, f, \alpha) < \varepsilon
```

But

```{math}

0 \leq\overline{\int_a^b} f \dif\alpha
- \underline{\int_a^b} f \dif\alpha\leq U(P_\varepsilon, f, \alpha) - L(P_\varepsilon, f, \alpha)

```

Therefore,

```{math}

0 \leq\overline{\int_a^b} f \dif\alpha
- \underline{\int_a^b} f \dif\alpha < \varepsilon
```

Since the above inequality holds for every $\varepsilon$,
we have $ \underline{\int_a^b} f \dif \alpha = \overline{\int_a^b} f \dif \alpha$.


\noindent **Proof of 3 $\implies$ 1:** 
Let $\varepsilon > 0$ be arbitrary.
There exists a partition $P_\varepsilon^\prime$ such that

```{math}
\overline{\int_a^b} f \dif\alpha + \varepsilon
> U(P_\varepsilon^\prime, f, \alpha)

```

and a partition $P_\varepsilon^{\prime\prime}$ such that

```{math}
\underline{\int_a^b} f \dif\alpha - \varepsilon
< L(P_\varepsilon^{\prime\prime}, f, \alpha)

```

Let $P_\varepsilon = P_\varepsilon^\prime \cup P_\varepsilon^{\prime\prime}$.
For any refinement $P \supseteq P_\varepsilon$,
and any list of representatives $T$ of $P$,
we have

```{math}
\underline{\int_a^b} f \dif\alpha - \varepsilon
< L(P, f, \alpha)
\leq S(P, T, f, \alpha)
\leq U(P, f, \alpha)
< \overline{\int_a^b} f \dif\alpha + \varepsilon
```

Because the lower and upper integrals are equal,
we can write $A = \underline{\int_a^b} f \dif \alpha - \varepsilon = \overline{\int_a^b} f \dif \alpha - \varepsilon$.
It then follows that

```{math}
\abs{ S(P, T, f, \alpha) - A } < \varepsilon
```

This implies that $f \in \mathfrak{R}(\alpha)$ on $[a, b]$,
and the value of the integral
equals to that of both lower and upper integrals.

````