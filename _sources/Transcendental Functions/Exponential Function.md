# Exponential Function

Consider the power series $\sum a_n (z - z_0)^n$ given by

```{math}
:label: eq:132
\begin{align}\sum_{n=0}^\infty\frac{z^n}{n!}\end{align}
```

It can be regarded as a expansion of a function in $z$
about the origin.
Recall we can find its radius of convergence
using methods based on
either the root test or the ratio test.
By applying the root test, we find

```{math}
\begin{align*}\limsup\sqrt[n]{\abs{a_n}}
= \limsup\frac{1}{\sqrt[n]{n!}}
= 0
\end{align*}
```

Therefore, the radius of convergence is $\infty$.
On the other hand, the ratio test shows that

```{math}
\begin{align*}\liminf\abs{\frac{a_n}{a_{n+1}}}
= \liminf\frac{1 / n!}{1 / (n+1)!}
= \liminf(n+1)
= \infty\end{align*}
```

This implies that the sequence
$\{\abs{a_{n} /  a_{n+1}}\}$ diverges to infinity,
which means the radius of convergence is infinity.

Either way, by referring to {prf:ref}`thm:66`,
we see that the power series {eq}`eq:132`
converges absolutely for each $z \in \C$.
And it converges uniformly on the entire complex plane
if we regard it as a function of $z$.
It is by this power series that we define
the well-known exponential function,
which is personally I think the most fundamental
and the most important function in mathematics.


````{prf:definition}
:label: def:4

```{index} exponential function
```

The **exponential function**
is defined by

```{math}
\begin{align*}\exp(z) := \sum_{n=0}^\infty\frac{z^n}{n!},
\quad z \in\C\end{align*}
```

````

The following addition formula
captures the central behavior of
the exponential function.


````{prf:theorem}
:label: thm:68

Given any two complex numbers $z, w \in \C$, we have

```{math}
\begin{align*}\exp(z + w) = \exp(z) \exp(w)
\end{align*}
```

````

````{prf:proof}

Since the power series expansion of the exponential function
converges absolutely for every $z \in \C$,
we may multiply these two power series together
by applying Mertens Theorem ({prf:ref}`thm:69`).
We have

```{math}
\begin{align*}\exp(z) \exp(w)
&= \sum_{n=0}^\infty\sum_{k=0}^n
\frac{1}{(n-k)!}\frac{1}{k!} z^{n-k} w^k \\&= \sum_{n=0}^\infty\sum_{k=0}^n
\frac{1}{n!}\binom{n}{k} z^{n-k} w^k \\&= \sum_{n=0}^\infty\frac{1}{n!}(z+w)^n \\&= \exp(z+w)
\end{align*}
```

````
