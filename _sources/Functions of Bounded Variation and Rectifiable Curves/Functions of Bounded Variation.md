# Functions of Bounded Variation
```{index} partition of an interval
```

````{prf:definition} 

Let $[a, b]$ be an interval.
A set of points

```{math}

P = \{ x_0, x_1, \dots, x_n \}
```

satisfying

```{math}

a = x_0 < x_1 < \cdots < x_n = b

```

is called a  **partition**  of $[a, b]$.

The interval $[x_{k-1}, x_k]$ is called the $k$-th subinterval of $P$,
and we often write $\Delta x_k = x_k - x_{k-1}$.

The collection of all partitions of $[a, b]$ is denoted by $\CALP[a, b]$.

````

:::{note}

In mathematics texts, we have another definition of partitions,
which states that a partition of a set $S$ is a collection of subsets of $S$
such that they are disjoint and their union equals $S$.
We should not confuse these two definitions.

:::
```{index} functions of bounded variation
```

````{prf:definition} 
:label: eq:1

Let $f$ be a real-valued function on $[a, b]$.
If $P = \{x_0, \dots x_n\}$ is a partition of $[a, b]$,
write $\Delta f_k = f(x_k) - f(x_{k-1})$.
If there exists a positive number $M$ such that

```{math}
:label: eq:1
\sum_{k=1}^n \abs{\Delta f_k}\leq M 
```

for all partitions $P$ of $[a, b]$, then we say that $f$
is  **of bounded variation** 
on $[a, b]$.

````

:::{note}

A geometric interpretation of the sum $\sum_{k=1}^n \abs{\Delta f_k}$
is the total vertical length of several pieces of the function.
Imagine a point moving along the curve of the function from the
left to the right.
If the partition gets finer and finer,
then $\sum_{k=1}^n \abs{\Delta f_k}$
will become the length of its journey projected on the $y$-axis.
In fact, it is defined as the total variation as we shall introduce later.

:::

Sometimes, it is convenient to denote the sum $\sum_{k=1}^n \abs{\Delta f_k}$
by the symbol

```{math}

v(P, f) := \sum_{k=1}^n \abs{\Delta f_k}
```

We do not use the capital letter $V$ here for it is reserved for
the total variation.

A simple observation is that a function of bounded variation is also bounded.


````{prf:proposition} 
:label: prop:2

Let $f$ be a function of bounded variation on $[a, b]$.
Then $f$ is bounded on $[a, b]$.

````

````{prf:proof}

By definition, there exists $M > 0$ such that {eq}`eq:1` holds
for any partitions of $[a, b]$.
For any $x \in (a, b)$, consider the partition $P = \{a, x, b\}$.
We have

```{math}
\abs{f(x) - f(a)} + \abs{f(b) - f(x)}\leq M

```

This implies that $\abs{f(x) - f(a)} \leq M$, which further
implies $\abs{f(x)} \leq \abs{f(a)} + M$.
Note that $x$ is arbitrarily chosen from $(a, b)$.
Therefore, $f$ is indeed bounded on $[a, b]$.

````

But a bounded function is not necessarily of bounded variation.


````{prf:example}
:label: eg:1

Consider the function

```{math}

f(x) = \begin{cases}
\cos \frac{1}{x}, & x \in (0, 1] \\
0,                & x = 0
\end{cases}
```

Its graph is shown in {numref}`fig:1`.
```{figure} /figures/bounded-function-that-is-not-of-bounded-variation.png
---
name: fig:1
---
Graph of the function $f(x) = \cos\frac{1}{x}$ for $x \in (0, 1]$ and $f(0) = 0$. It is bounded on $[0, 1]$ but not of bounded variation for it varies rapidly near $x=0$.
```

Clearly, this function is bounded by $1$.
But intuitively, it is not of bounded variation since it varies rapidly
near $x=0$.
Let $P$ be a partition of $[0, 1]$ where each $x_k$ is given by

```{math}

x_k = \begin{cases}
\frac{1}{(n-k) \pi}, & 1 \leq k \leq n-1 \\
0,                   & k = 0             \\
1,                   & k = n
\end{cases}
```

For $k=1, \dots, n-1$, we have

```{math}

f(x_k) = \cos( (n-k) \pi) \in\{-1, 1\}
```

The function value is either $1$ or $-1$ and the sign alternates between
each two consecutive points. Hence,

```{math}
\sum_{k=1}^{n}\abs{\Delta f_k}\geq\sum_{k=2}^{n-1}\abs{\Delta f_k} = 2 (n - 2)

```

As we increase the number of points in the partition, $\sum \abs{\Delta f_k}$
will exceeds any given number.
Therefore, $f$ is not of bounded variation on $[0, 1]$.

````

````{prf:proposition} 
:label: prop:1

If $f$ is monotonic on $[a, b]$, then $f$ is of bounded variation on $[a, b]$.

````

````{prf:proof}

Assume $f$ is increasing.
For any partition $P = \{x_0, \dots, x_n\}$ of $[a, b]$, we have

```{math}
\sum_{k=1}^n \abs{\Delta f_k}
= \sum_{k=1}^n (f(x_k) - f(x_{k-1}))
= f(b) - f(a)

```

Therefore, $f$ is of bounded variation on $[a, b]$.

If $f$ is decreasing, then $-f$ is increasing.
Applying what we have proved, we may conclude that $-f$ is of bounded variation.
Hence, $f$ is also of bounded variation
since $\sum \abs{\Delta (-f)_k} = \sum \abs{\Delta f_k}$.

````

````{prf:proposition} 
:label: prop:3

Suppose that $f$ is continuous on $[a, b]$ and the
derivative $f^\prime$ exists in $(a, b)$.
If $\abs{f^\prime(x)} \leq A$ for all $x \in (a, b)$,
then $f$ is of bounded variation on $[a, b]$.

````

:::{note}

The assumption that $f$ being continuous on $[a, b]$,
and $f^\prime$ exists in $(a, b)$ coincides with the mean value theorem.
And indeed, it is the key of this proof.

:::

````{prf:proof}

Let $P = \{x_0, \dots, x_n\}$ be a partition of $[a, b]$.
By the mean value theorem, there exists $t_k \in (x_{k-1}, x_k)$
for all $k=1, \dots, n$ such that

```{math}

f(x_k) - f(x_{k-1}) = f^\prime(t_k) (x_k - x_{k-1})

```

It then follows that

```{math}
\sum_{k=1}^n \abs{\Delta f_k}& = \sum_{k=1}^n \abs{f^\prime(t_k)}(x_k - x_{k-1}) \\& \leq\sum_{k=1}^n A (x_k - x_{k-1}) \\& = A (f(b) - f(a))

```

Therefore, $f$ is of bounded variation on $[a, b]$.

````

The following is a well crafted example of showing that
a continuous and differentiable function is not necessarily
of bounded variation
if we do not impose that its derivative is bounded in the interior.


````{prf:example}
:label: fig:2

Consider function defined on $[0, 1]$ given by

```{math}

f(x) = \begin{cases}
x \cos \frac{\pi}{2x}, & x \in (0, 1] \\
0,                     & x = 0
\end{cases}
```

Its graph is shown in Figure {numref}`fig:2`.

```{figure} /figures/continuous-function-that-is-not-of-bounded-variation.png
---
name: fig:2
---
Graph of the function $f(x) = x \cos \frac{\pi}{2x}$ for $x \in (0, 1]$ and $f(0) = 0$. This function is continuous and its derivative exists in $(0, 1)$. But the derivative is unbounded.
```

The fact that this function is not of bounded variation may be less intuitive
than the one given in {prf:ref}`eg:1`.
The function still varies rapidly near $x=0$.
However, it does not range from $-1$ and $1$.
Instead, it damps out at $x=0$ and becomes $0$.
But we will show in the following that we can find a partition so fine that
by collecting each small function variation,
the overall sum may still increase to infinity.

Consider the partition

```{math}

P = \{0, \frac{1}{2n}, \frac{1}{2n - 1}, \dots, \frac{1}{3}, \frac{1}{2}, 1\}
```

We have

```{math}
\sum_k \abs{\Delta f_k}& = \frac{1}{2n} + \frac{1}{2n} + \frac{1}{2n - 1} + \frac{1}{2n - 1}
+ \dots + \frac{1}{2} + \frac{1}{2}\\& = 1 + \cdots + \frac{1}{n}
```

As $n$ gets larger and larger,
the sum on the right hand-side will increase infinitely
for we know that the harmonic series $\sum \frac{1}{n}$ diverges.
Therefore, this function is not of bounded variation.

````

Of course, the condition of the derivative being bounded is not necessary
for a function to be of bounded variation.


````{prf:example}

The derivative of the square root function $f(x) = \sqrt{x}$ in $(0, 1)$
is $f^\prime(x) = \frac{1}{2\sqrt{x}}$,
which tends to infinity as $x \to 0$.
But $f$ is clearly of bounded variation on $[0, 1]$
by {prf:ref}`prop:1` for it is increasing.

````

Let $P$ be a partition of $[a, b]$.
If we make it finer by adding some intermediate points,
then the sum of variations will increase.
This result may be helpful in some proofs.


````{prf:proposition} 
:label: prop:4

Let $f$ be defined on $[a, b]$,
and $P$ a partition of $[a, b]$.
If $P^\prime$ is finer than $P$, i.e., $P^\prime \supset P$,
then

```{math}

v(P^\prime, f) \geq v(P, f)

```

````

:::{note}

Compare this to the upper and lower Darboux sums
when we introduce them in a later section.

:::

````{prf:proof}

It suffices to that prove for the case
where $P^\prime$ is one point finer than $P$.
Suppose $P = \{x_0, \dots, x_n\}$ and $P^\prime = P \sqcup \{c\}$.
We have

```{math}

v(P^\prime, f)
& = \abs{f(x_1) - f(x_0)} + \cdots
+ \abs{f(c) - f(x_{j-1})} + \abs{f(x_j) - f(c)} + \cdots
+ \abs{f(x_n) - f(x_{n-1})}\\& \geq\abs{f(x_1) - f(x_0)} + \cdots
+ \abs{f(x_j) - f(x_{j-1})} + \cdots
+ \abs{f(x_n) - f(x_{n-1})}\\& = v(P, f)

```

:::{note}

Note that $j$ may equal to $1$ or $n$ in the above notations.
We write down the summation in the expanded form
to make the proof easier to read.

:::

This completes the proof.

````