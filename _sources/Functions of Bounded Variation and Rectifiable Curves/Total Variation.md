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
:label: thm:1

Let $f$ and $g$ be of bounded variation on $[a, b]$, then
so are their sum, difference and product.
Moreover, we have the following inequalities:

```{math}
:label: eq:3

V_a^b (f \pm g) \leq V_a^b (f) + V_a^b (g)

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
\abs{\Delta (f \pm g)_k}& = \abs{f(x_{k}) \pm g(x_{k}) - [f(x_{k-1}) \pm g(x_{k-1})]}\\& = \abs{\Delta f_k \pm \Delta g_k}\\& \leq\abs{\Delta f_k} + \abs{\Delta g_k}
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
\abs{\Delta (fg)_k}& = \abs{f(x_{k}) g(x_{k}) - f(x_{k-1}) g(x_{k-1})}\\& \text{Add and subtract the term $f(x_{k-1})g(x_{k})$}\\& = \abs{ g(x_{k})[ f(x_{k}) - f(x_{k-1})] + f(x_{k-1})[ g(x_{k}) - g(x_{k-1}) ] }\\& \leq\abs{g(x_{k})}\abs{\Delta f_k} + \abs{f(x_{k-1})}\abs{ \Delta g_k }\\& \leq\sup_{x \in [a, b]}\abs{g(x)}\abs{\Delta f_k}
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

We must exclude the quotients from the above theorem
since the reciprocal $\frac{1}{f}$ of $f$ may not be of bounded variation
even though $f$ is.


````{prf:example}
:label: fig:3

Consider function

```{math}

f(x) = \begin{cases}
1-x, & 0 \leq x < 1     \\
-x,  & 1 \leq x  \leq 2
\end{cases}
```

Function $f$ is of bounded variation on $[0, 2]$ since it is decreasing.
Its reciprocal is

```{math}
\frac{1}{f(x)} = \begin{cases}
\frac{1}{1-x}, & 0 \leq x < 1     \\
-\frac{1}{x},  & 1 \leq x  \leq 2
\end{cases}
```

Figure {numref}`fig:3` depicts the graphs of $f$ and $\frac{1}{f}$.
```{figure} /figures/reciprocal-not-of-bounded-variation.png
---
name: fig:3
---
Left: $f$ is of bounded variation for it is decreasing. Right: $\frac{1}{f}$ is not of bounded variation for it is unbounded.
```

Note that $\frac{1}{f}$ goes to positive infinity when $x \to 1^-$.
Therefore, by {prf:ref}`prop:2`, $\frac{1}{f}$ is not of bounded variation on $[0, 2]$
since it is not bounded.

````

To extend {prf:ref}`thm:1` to quotients,
we need to required that $f$ is bounded away from zero in the interval.


````{prf:theorem} 

Let $f$ be of bounded variation on $[a, b]$.
And there exists $m > 0$ such that $f(x) \geq m$ for all $x \in [a, b]$.
Then the reciprocal of $f$ is of bounded variation on $[a, b]$, and

```{math}

V_a^b ( \frac{1}{f})
\leq\frac{1}{m^2} V_a^b (f)

```

````

````{prf:proof}

Let $P$ be any partition of $[a, b]$.
On each subinterval $[x_{k-1}, x_k]$, we have

```{math}
\abs{\Delta (\frac{1}{f})_k}& = \abs{\frac{1}{f(x_k)} - \frac{1}{f(x_{k-1})}}\\& = \abs{\frac{\Delta f_k}{f(x_{k-1}) f(x_k)}}\\& \leq\frac{\abs{ \Delta f_k }}{m^2}
```

Summing over $k$, we have

```{math}
\sum_k \abs{\Delta (\frac{1}{f})_k}\leq\frac{1}{m^2}\sum_k \abs{\Delta f_k}\leq\frac{1}{m^2} V_a^b (f)

```

Therefore, $\frac{1}{f}$ is of bounded variation on $[a, b]$.

````
## Additive Property of Total Variation

Consider the following continuous function defined on $[0, 3]$:

```{math}

f(x) = \begin{cases}
x,           & 0 \leq x \leq 1 \\
-(x-1)(x-3), & 1 < x \leq 3
\end{cases}
```
{numref}`fig:4` depicts its graph.
```{figure} /figures/additive-property-of-total-variation-example-1.png
---
name: fig:4
---
Function $f$ is of bounded variation on $[0, 1]$ and $[1, 3]$, separately.
```

We cannot prove $f$ is of bounded of variation using
{prf:ref}`prop:3` since its derivative does not exist at $x=1$.
However, we note that $f$ is of bounded variation
on $[0, 1]$ and $[1, 3]$, separately.
And intuitively, having only
fintely many points at which $f^\prime$ fail to exist
should not
prevent $f$ from being of bounded of variation on the entire interval.
This is indeed true, which is stated in the following theorem.


````{prf:theorem} 
:label: thm:2

Let $f$ be of bounded variation on $[a, b]$, and $c \in (a, b)$.
Then $f$ is of bounded variation on the subintervals $[c, b]$ and $[a, c]$.
Moreover, we have

```{math}
:label: eq:9

V_a^b(f) = V_a^c(f) + V_c^b(f)

```

````

````{prf:proof}

We will first show that $f$ is of bounded variation on each subinterval, and

```{math}
:label: eq:5

V_a^c(f) + V_c^b(f) \leq V_a^b(f)

```

To make the proof clear,
we introduce the notation $S(P) = \sum_k \abs{\Delta f_k}$
where $P$ is any partition of an arbitrary subinterval contained in $[a, b]$.
(Though it suffices to just consider the subintervals $[a, b]$, $[a, c]$
and $[c, b]$ in this proof.)

Let $P^\prime$ and $P^{\prime\prime}$ be partitions of $[a, c]$ and $[c, b]$,
respectively,
and let $P = P^\prime \cup P^{\prime\prime}$.
Note that $P$ is a partition of $[a, b]$,
and by reviewing the notation of $S(P)$
one may easily conclude that $S(P^\prime) + S(P^{\prime\prime}) = S(P)$.
Since $f$ is of bounded of variation on $[a, b]$, we have

```{math}
:label: eq:6

S(P^\prime) + S(P^{\prime\prime}) = S(P) \leq V_a^b (f)

```

The above inequality holds for any partition $p^\prime$ of $[a, c]$
and any partition $p^{\prime\prime}$ of $[c, b]$.
Therefore, by definition, $f$ is of bounded variation on $[a, c]$ and $[c, b]$.
Moreover, taking the supremum over $P^\prime$ and then over $P^{\prime\prime}$
on both sides of {eq}`eq:6`, we will obtain exactly {eq}`eq:5`.

To show the equality {eq}`eq:9`, we also need to show

```{math}
:label: eq:7

V_a^c(f) + V_c^b(f) \geq V_a^b (f)

```

Let $\varepsilon > 0$ be arbitrary.
There exists a partition $P$ of $[a, b]$
such that $S(P) > V_a^b(f) - \varepsilon$.
Let

```{math}

P^\prime = ( P \cap[a, c]) \cup\{c\}\quad\text{and}\quad
P^{\prime\prime} = ( P \cap[c, b]) \cup\{c\}
```

It is clear that $P^\prime$ and $P^{\prime\prime}$
are partitions of $[a, c]$ and $[c, b]$, respectively.
If $c \in P$, then clearly $S(P) = S(P^\prime) + S(P^{\prime\prime})$.
If $c \notin P$, supposing the intermediate
subinterval of $P$ containing $c$ is $[x_{j-1}, x_j]$,
then we have

```{math}
\abs{\Delta f_j} = \abs{f(x_j) - f(x_{j-1})}\leq\abs{f(x_j) - f(c)} + \abs{f(c) -  f(x_j)}
```

It then follows that $S(P) \leq S(P^\prime) + S(P^{\prime\prime})$.
Hence, no matter if $c \in P$ or $c \notin P$, we have

```{math}
:label: eq:8

V_a^c(f) + V_c^b(f) \geq S(P^\prime) + S(P^{\prime\prime}) \geq S(P) > V_a^b(f) - \varepsilon
```

Because {eq}`eq:8` holds for every $\varepsilon > 0$, {eq}`eq:7` is proved.

````

Applying the above theorem, we can immediately conclude that $f$
is also of bounded variation on any interval contained in $[a, b]$.


````{prf:corollary} 
:label: cor:1

If $f$ is of bounded variation on $[a, b]$,
and $[c, d] \subseteq[a, b]$,
then $f$ is also of bounded variation on $[c, d]$.

````

````{prf:proof}

With the given condition, we have $a \leq c < d \leq b$.
If $c = a$ or $d = b$,
then the assumption of this corollary reduces to the one in {prf:ref}`thm:2`.

Now, we assume that $a < c < d <b$.
Regarding $c$ as an intermediate point in $[a, b]$,
{prf:ref}`thm:2` shows that $f$ is of bounded variation on $[c, b]$.
Next, because $d \in (c, b)$, applying {prf:ref}`thm:2` again,
we conclude that $f$ is of bounded variation on $[c, d]$.

````
## Total Variation as a Function of the Right Endpoint

Suppose $f$ is of bounded variation on $[a, b]$.
For any $x \in (a, b)$.
{prf:ref}`thm:2` tells us that $f$ is of bounded variation on $[a, x]$.
Thereofore, we can regard $V_a^x (f)$ as a function of $x$.


:::{note}

This is very similar to considering $\int_a^x f(t) \dif t$ as a function
of the upper limit of the integral, which
again shows that our notation of the total variation rather helpful.

:::

When $x = b$, it is just the total variation of $f$ on the entire interval.
We don't have definition for $x = a$ yet.
But we can easily fix this by naturally defining $V_a^a (f) := 0$.
Now, function $V_a^x(f)$ is defined on the entire interval $[a, b]$.

In the next chapter, we will study the Riemann-Stieltjes integral, which
is more generalized definition of the Rieman intergral.
In the texts of the Riemann-Stieltjes integral $\int_a^b f \dif \alpha$,
we often assume that the integrator $\alpha$ is increasing
(or slightly more generalized, monotonic){cite}`rudinPrinciplesMathematicalAnalysis1976`.
But we can extend the results easily to a even more
general assumption that the integrator $\alpha$
is of bounded variation on $[a, b]$.

The key of achieving this is that a function of bounded variation
can be written as a difference of two increasing funcitons,
and conversely, the difference of two increasing functions
is of bounded variation
({prf:ref}`thm:4`).
And the following theorem tells us exactly how to
find such increasing
functions.


````{prf:theorem} 
:label: thm:3

Let $f$ be of bounded variation on $[a, b]$.
Then
1. $V_a^x(f)$ is increasing on $[a, b]$, and
2. $V_a^x(f) - f(x)$ is also increasing.

````

````{prf:proof}

Let $h > 0$(and $x + h \leq b$), by {prf:ref}`thm:2`, we have

```{math}

V_a^x (f) + V_x^{x+h}(f) = V_a^{x+h}(f)

```

:::{note}

We have seen in {prf:ref}`cor:1` that $V_x^{x+h}(f)$ indeed exists.

:::

It then follows that

```{math}

V_a^{x+h}(f) - V_a^{x}(f) = V_x^{x+h}(f) \geq 0

```

This shows $V_a^x(f)$ is increasing.

Next, we will prove $V_a^x(f) - f(x)$ is creasing.
To ease the notation, let $g(x) = V_a^x(f) - f(x)$.
Similarly, suppose $h > 0$ and $x + h \leq b$,
consider the difference

```{math}
:label: eq:10

g(x+h) - g(x)
= V_x^{x+h}(f) + [f(x+h) - f(x)]
```

:::{note}

Seeing the term $f(x+h) - f(x)$ in the context of total variation,
we immediately think of the partition $P = \{x, x+h\}$ of $[x, x+h]$.

:::

We have

```{math}
\abs{f(x+h) - f(x)}\leq V_x^{x+h}(f)

```

It then follows that

```{math}

V_x^{x+h}(f) \geq\abs{f(x+h) - f(x)}\geq -[f(x+h) - f(x)]
```

which further implies

```{math}
:label: eq:11

V_x^{x+h}(f) + [f(x+h) - f(x)]\geq 0

```

Comparing {eq}`eq:10` and {eq}`eq:11`, we conclude
that $g(x)$ is indeed increasing.

````
## Characterization of Functions of Bounded Variation

With the help of {prf:ref}`thm:3`, we can easily prove
the following elegant theorem,
which characterizes functions of bounded variation.
It states that a function on $[a, b]$ is of bounded variation
if and only if it can be written as a difference of two increasing functions.
The difficult part of find such increasing functions
is already handled by {prf:ref}`thm:3`.


````{prf:theorem} 
:label: thm:4

Let $f$ be defined on $[a, b]$,
then $f$ is of bounded variation if and only if
it can be expressed as a difference of two
increasing functions.

````

````{prf:proof}

We first suppose that $f$ is of bounded variation.
Then {prf:ref}`thm:3` shows that $V_a^x(f)$
and $V_a^x(f) - f(x)$ are both increasing on $[a, b]$.
Since we can write

```{math}

f(x) = V_a^x(f) - [ V_a^x (f) - f(x)]
```

It is proved.

Reversely, suppose that $f$ can be expressed as a difference of
two increasing functions $g$ and $h$ on $[a, b]$, $f = g - h$.
{prf:ref}`prop:1` tells us that $g$ and $h$ are of bounded variation
since they are increasing functions.
Then by {prf:ref}`thm:1`, we know that $g - h$ is also of bounded variation.
This completes the proof.

````

:::{note}

We can also make these two increasing functions strict.
Suppose $f = g - h$.
We can easily achieve this by defining $\tilde{g}(x) = g(x) + x$
and $\tilde{h}(x) = h(x) + x$.

:::