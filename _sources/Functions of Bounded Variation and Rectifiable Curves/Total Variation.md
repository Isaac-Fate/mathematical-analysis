# Total Variation
```{index} total variation
```

Recall that $f$ is said to be of bounded of variation
on $[a, b]$ if, equivalently to what we stated, the set

```{math}
:label: eq:2
\set{\sum_{k=1}^n \abs{\Delta f_k}}{P \in \CALP[a, b]}
```

or with our shortened notation

```{math}
\set{v(P, f)}{P \in \CALP[a, b]}
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

V_a^b (f)
:= \sup_{P \in \CALP[a, b]} v(P, f)
= \sup\set{\sum_{k=1}^n \abs{\Delta f_k}}{P \in \CALP[a, b]}
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

The simplest function of bounded variation
(well, apart from a constant function) is
monotonic function.
It is natural to ask what is its total variation.
With a little thought,
one can imagine that
it should be the absolute value of the difference at the endpoints.


````{prf:proposition} 

If $f$ is a monotonic function on $[a, b]$,
then its total variation is the absolute value of the difference
of the function values at the endpoints, i.e.,

```{math}

V_a^b(f) = \abs{f(a) - f(b)}
```

````

````{prf:proof}

We only prove the case that $f$ is increasing.
For any partition $P = \{x_0, \dots, x_n\}$ of $[a, b]$, we have

```{math}
\sum_{k=1}^n \abs{f(x_k) - f(x_{k-1})}
= \sum_{k=1}^n [f(x_k) - f(x_{k-1})]
= f(b) - f(a)

```

Note that the sum is independent of the partition.
Hence, the set in {eq}`eq:2` is just a constant.
Therefore, the total variation $V_a^b(f) = f(b) - f(a)$.

````

When studying functions of bounded variation,
in most cases, we are often interested in
monotonic functions
or continuous and differentiable functions.
({prf:ref}`prop:1` and {prf:ref}`prop:3`.)


:::{note}

On one hand, we will see in {prf:ref}`thm:4`,
a function is of bounded variation if and only if
it can be expressed as a difference
of two increasing functions,
the need of studying monotonic functions arises naturally.

On the other hand, as we shall see in the chapter on Riemann-Stieltjes integrals,
we assume the integrator $\alpha$ is of bounded variation.
Since integrator $\alpha$ will be put after the
differential operator, $\dif \alpha$,
and we often hope to express it as $\alpha^\prime(t) \dif t$
to reduce the integral to Riemann integral
and compute its value,
we would like $\alpha$ to be differentiable.

:::

But if we are curious about whether some piecewise functions
are of bounded variation,
then {prf:ref}`prop:1` and {prf:ref}`prop:3` will not be enough.

For example, consider the following function defined on $[0, 3]$:

```{math}

f(x) = \begin{cases}
x,           & 0 \leq x \leq 1 \\
-(x-1)(x-3), & 1 < x \leq 3
\end{cases}
```
{numref}`fig:4` depicts its graph.
```{figure} /figures/piecewise-function-of-bounded-variation.png
---
name: fig:4
---
Is this function of bounded variation on $[0, 3]$?
```

Intuitively, the function in {numref}`fig:4` should be of bounded variation.
But we must be careful about the jump point,
which we have not covered in the previous discussion.


````{prf:proposition} 

Suppose $f$ is of bounded variation on $[a, b]$,
and is continuous at $x = a$.
If function $g$ is defined by revising the value at $x=a$, i.e.,

```{math}

g(x) = \begin{cases}
f(x), & x \in (a, b] \\
y,    & x = a
\end{cases}
```

then $g$ is still of bounded variation on $[a, b]$.
And its total variation is given by

```{math}

V_a^b(g) = V_a^b(f) + \abs{y - f(a)}
```

````

````{prf:proof}

Let $P$ be a partition of $[a, b]$.
We have

```{math}
:label: eq:12

v(P, g) & = \abs{g(x_1) - g(a)} + \cdots\abs{g(x_n) - g(x_{n-1})}\nonumber\\& = \abs{f(x_1) - y} + \cdots\abs{f(x_n) - f(x_{n-1})}\nonumber\\& \leq\left[\abs{y -  f(a)} + \abs{f(x_1) - f(a)}\right] + \cdots\abs{f(x_n) - f(x_{n-1})}\nonumber\\& = \abs{y - f(a)} + v(P, f) \nonumber\\& \leq\abs{y - f(a)} + V_a^b(f)

```

This shows that $g$ is of bounded variation on $[a, b]$.

Now, we compute its total variation.
Let $\varepsilon > 0$ be arbitrary.
Because $f$ is continuous at $x=a$,
there exists $\delta > 0$ such that

```{math}
\abs{x - a} < \delta\implies\abs{f(x) - f(a)} < \varepsilon/4

```

By the definition of total variation and {prf:ref}`prop:4`,
there exists a fine enough partition $P$
such that the minimum length of the subinterval is less than $\delta$, and

```{math}

v(P, f) > V_a^b(f) - \varepsilon/2

```

On the subinterval $[a=x_0, x_1]$, we have

```{math}
\abs{\Delta g_1}& = \abs{g(x_1) - g(x_0)}\\& = \abs{f(x_1) - y}\\& \geq\abs{f(a) - y} - \abs{f(x_1) - f(a)}\\& = \abs{f(a) - y} + \abs{f(x_1) - f(a)} -
2\abs{f(x_1) - f(a)}\\& \text{Note that $\abs{x_1 - x_0} < \delta$, hence we may estimate the last term as follows}\\& > \abs{f(a) - y} + \abs{f(x_1) - f(a)} - 2 \cdot\varepsilon/4 \\& > \abs{f(a) - y} + \abs{f(x_1) - f(a)} - \varepsilon/2

```

:::{note}

When reaching

```{math}
\abs{\Delta g_1}\geq\abs{f(a) - y} - \abs{f(x_1) - f(a)}
```

in the above derivation,
one may be worried that
it is not proceeding towards the goal
since we have a minus sign before $\abs{f(x_1) - f(a)}$.
But since this term $\abs{f(x_1) - f(a)}$ can be made arbitrarily small,
we can always add it (to construct the sum $v(P, f)$)
and then subtract it,
and make the trailing negative term $-2\abs{f(x_1) - f(a)}$ negligible,
as what we did above.

:::

It then follows that

```{math}

v(P, g) > \abs{f(a) - y} + v(P, f) - \varepsilon/2
> \abs{f(a) - y} + V_a^b(f) - \varepsilon
```

Therefore, we have

```{math}

V_a^b(g) \geq v(P, g) \geq\abs{f(a) - y} + V_a^b(f)

```

Compare this to {eq}`eq:12`, we may conclude

```{math}

V_a^b(g) = V_a^b(f) + \abs{f(a) - y}
```

````

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

Let $P^\prime$ and $P^{\prime\prime}$ be partitions of $[a, c]$ and $[c, b]$,
respectively,
and let $P = P^\prime \cup P^{\prime\prime}$.
Note that $P$ is a partition of $[a, b]$,
and by reviewing the notation of $v(P, f)$
one may easily conclude that $v(P^\prime, f) + v(P^{\prime\prime}, f) = v(P, f)$.
Since $f$ is of bounded of variation on $[a, b]$, we have

```{math}
:label: eq:6

v(P^\prime, f) + v(P^{\prime\prime}, f) = v(P, f) \leq V_a^b (f)

```

The above inequality holds for any partition $p^\prime$ of $[a, c]$
and any partition $P^{\prime\prime}$ of $[c, b]$.
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
such that $v(P, f) > V_a^b(f) - \varepsilon$.
Let

```{math}

P^\prime = ( P \cap[a, c]) \cup\{c\}\quad\text{and}\quad
P^{\prime\prime} = ( P \cap[c, b]) \cup\{c\}
```

It is clear that $P^\prime$ and $P^{\prime\prime}$
are partitions of $[a, c]$ and $[c, b]$, respectively.
By {prf:ref}`prop:4`, we have

```{math}
:label: eq:8

V_a^c(f) + V_c^b(f) \geq v(P^\prime, f)
+ v(P^{\prime\prime}, f)
\geq v(P, f) > V_a^b(f) - \varepsilon
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
Therefore, we can regard $V_a^x (f)$ as a function of $x$.


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
is more generalized definition of the Riemann integral.
In the texts of the Riemann-Stieltjes integral $\int_a^b f \dif \alpha$,
we often assume that the integrator $\alpha$ is increasing
(or slightly more generalized, monotonic){cite}`rudinPrinciplesMathematicalAnalysis1976`.
But we can extend the results easily to a even more
general assumption that the integrator $\alpha$
is of bounded variation on $[a, b]$.

The key of achieving this is that a function of bounded variation
can be written as a difference of two increasing functions,
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