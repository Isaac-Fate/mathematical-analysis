# Total Variation
```{index} total variation
```

Recall that $f$ is said to be of bounded of variation
on $[a, b]$ if, equivalently to what we stated, the set

```{math}
:label: eq:2
\set{\sum_{k=1}^n \abs{\Delta f_k}}{P \in \CALP[a, b]}
```

is bounded above.
This set is of course nonempty for $\{a, b\}$ is clearly a partition.
By the least upper bound property,
the set in {eq}`eq:2` has a supremum, which is referred to as
**total variation**  of $f$ on $[a, b]$.


````{prf:definition} 

Let $f$ be of bounded variation on $[a, b]$.
The total variation, denoted by $V_a^b (f)$,
of $f$ on $[a, b]$ is defined as

```{math}

V_a^b (f) := \sup\set{\sum_{k=1}^n \abs{\Delta f_k}}{P \in \CALP[a, b]}
```

````

:::{note}

We adopt the notation $V_a^b(f)$,
which is inspired by the notion of
a definite integral $\int_a^b f(x) \dif x$.
And as we shall see,
these two concepts indeed share some similar properties, namely,
the linear properties.

Notations are very important for they provide intuitive expressions
of the intrinsic mathematical concepts.

:::

From this definition,
we have some simple observations.
First, the value of $V_a^b (f)$ is nonnegative.
And it is easy to prove that $V_a^b (f) = 0$
if and only if $f$ is constant on $[a, b]$.


````{prf:theorem} 
:label: eq:3

Let $f$ and $g$ be of bounded variation on $[a, b]$, then
so are their sum, difference and product.
Moreover, we have the following inequalities:

```{math}
:label: eq:3

V_a^b (f \pm g) \leq V_a^b f + V_a^b g

```

and

```{math}
:label: eq:4

V_a^b (fg) \leq\sup_{x \in [a, b]}\abs{g(x)} V_a^b (f)
+ \sup_{x \in [a, b]}\abs{f(x)} V_a^b (g)

```

````

:::{note}

Note that the supremums in {eq}`eq:4` indeed exist
since the functions $f$ and $g$ are bounded due to {prf:ref}`prop:2`.

:::

````{prf:proof}

We first show that the sum and the difference of two functions
are of bounded variation, and satisfy {eq}`eq:3`.
Let $P$ be an arbitrary partition of $[a, b]$.
On each subinterval, we have

```{math}
\abs{\Delta (f \pm g)_k}& = \abs{f(x_{k+1}) \pm g(x_{k+1}) - [f(x_k) \pm g(x_k)]}\\& = \abs{\Delta f_k \pm \Delta g_k}\\& \leq\abs{\Delta f_k} + \abs{\Delta g_k}
```

Taking the sum over $k$, we have

```{math}
\sum_{k}\abs{\Delta (f \pm g)_k}\leq\sum_{k}\abs{\Delta f_k} + \sum_k \abs{\Delta g_k}\leq V_a^b (f) + V_a^b (g)

```

The above inequality shows that $f \pm g$ is of bounded variation on $[a, b]$,
and {eq}`eq:3` is satisfied.

In the following, we show that the product of two Functions
are of bounded variation and satisfies {eq}`eq:4`.
Let $P$ be an arbitrary partition of $[a, b]$.
On each subinterval, we have

```{math}
\abs{\Delta (fg)_k}& = \abs{f(x_{k+1}) g(x_{k+1}) - f(x_k) g(x_k)}\\& \text{Add and subtract the term $f(x_k)g(x_{k+1})$}\\& = \abs{ g(x_{k+1})[ f(x_{k+1}) - f(x_k)] + f(x_k)[ g(x_{k+1}) - g(x_k) ] }\\& \leq\abs{g(x_{k+1})}\abs{\Delta f_k} + \abs{f(x_k)}\abs{ \Delta g_k }\\& \leq\sup_{x \in [a, b]}\abs{g(x)}\abs{\Delta f_k}
+ \sup_{x \in [a, b]}\abs{f(x)}\abs{\Delta g_k}
```

Summing over $k$, we have

```{math}
\sum_k \abs{\Delta (fg)_k}\leq\sup_{x \in [a, b]}\abs{g(x)}\sum_k \abs{\Delta f_k}
+ \sup_{x \in [a, b]}\abs{f(x)}\sum_k \abs{\Delta g_k}\\\leq\sup_{x \in [a, b]}\abs{g(x)} V_a^b (f)
+ \sup_{x \in [a, b]}\abs{f(x)} V_a^b (g)

```

This shows the product $fg$ is in fact of bounded variation on $[a, b]$,
and {eq}`eq:4` is satisfied.

````