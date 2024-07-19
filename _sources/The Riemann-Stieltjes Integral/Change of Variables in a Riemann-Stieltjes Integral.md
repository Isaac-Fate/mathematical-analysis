# Change of Variables in a Riemann-Stieltjes Integral

````{prf:theorem} 

Suppose $f \in \mathfrak{R}(f)$ on $[a, b]$.
Let $g$ be a strictly monotonic and surjective function defined
on an interval $J$ having endpoints $c$ and $d$.
Suppose also that $g(c) = a$ and $g(d) = b$.
Let

```{math}

h(x) = f[g(x)]\quad\text{and}\quad\beta(x) = \alpha[g(x)]\quad x \in J

```

Then $h \in \mathfrak{R}(\beta)$ on $J$,
and $\int_a^b f \dif \alpha = \int_c^d h \dif \beta$.
That is,

```{math}
\int_{a = g(c)}^{b = g(d)} f(t) \dif t
= \int_c^d f[g(x)]\dif\alpha[g(x)]
```

````

:::{note}

Originally in {cite}`apostolMathematicalAnalysisModern1974`,
the condition of function $g$ is that it is strictly monotonic and continuous.
As a matter of fact, these two conditions are equivalent.
At the end of the day,
we impose these to conditions of $g$ so that it has
an inverse $g^{-1}$ defined on $[a, b]$.
($g^{-1}$ is also continuous of course.)

The key of this proof is constructing a one-to-one relation
using function $g$
between a partition $P$ of $[a, b]$ and a partition $P'$ of $J$.
In the proof below, we write $P = g(P^\prime)$
and $P^\prime = g^{-1}(P)$.

:::

````{prf:proof}

Without loss of generality, we may assume that $g$ is strictly increasing.
If $g$ is decreasing, we may easily obtain the same result
by applying the linearity of the integrals.

Let $\varepsilon > 0$ be arbitrary.
There exists a partition $P_\varepsilon$ of $[a, b]$ satisfying
the property described in {prf:ref}`def:1`.
As noted previously, we may construct a partition of $[c, d]$,
$P^\prime_\varepsilon = g^{-1}(P_\varepsilon)$.
Let $P^\prime \supseteq P^\prime_\varepsilon$ be any refinement.
Similarly, we may construct a partition of $[a, b]$
associated with $P^\prime$, $P = g(P^\prime)$.


:::{note}

To exploit the property of $P_\varepsilon$,
we would want to have $P \supseteq P_\varepsilon$.
Luckily, this is indeed true.

:::

Now, we show that $P \supseteq P_\varepsilon$.
For any point $x \in P_\varepsilon$,
we have $g^{-1}(x) \in P^\prime_\varepsilon \subseteq P^\prime$.
Since $x = g[g^{-1}(x)]$,
it then follows that $x \in g(P^\prime) = P$.
This shows $P \supseteq P_\varepsilon$.

Write $P^\prime = \{y_0, \ldots, y_n\}$.
Suppose $T^\prime$ is a list of representatives of $P^\prime$.
Let $T = g(T^\prime)$.
Then, of course, $T$ is a list of representatives of $P$.
This implies that

```{math}

S(P^\prime, T^\prime, h, \beta)
& = \sum_{k=1}^n f[g(s_k)]\left\{\alpha[g(y_k)] - \alpha[y_{k-1}]\right\}\\& = \sum_{k=1}^n f(t_k) [\alpha(x_k) - \alpha(x_{k-1}) ]\\& = S(P, T, f, \alpha)

```

The remainder of the proof is straightforward and is therefore omitted.

````