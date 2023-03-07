# Lebesgue Criterion for Existence of Riemann Integrals

````{prf:definition}
:label: def:6

```{index} zero-measure sets
```

A set $S$ in $\R$ is said to have measure zero,
or a **zero-measure** set
if for any given $\varepsilon > 0$,
there exists a countable covering of $S$
by by open intervals the sum of whose lengths
is bounded by $\varepsilon$.
Mathematically, that is to say there exists
a family of intervals $\{(a_k, b_k)\}_{k \in I}$
where the index set $I$ is countable such that

```{math}
:label: eq:145
\begin{align}
S \subseteq\bigcup_{k \in I}(a_k, b_k)
\quad\text{and}\quad\sum_{k \in I}(b_k - a_k) < \varepsilon\end{align}
```

````

If the index set $I$ is countably infinite,
then we often take $I = \N^\ast$.
In this way, {eq}`eq:145` is written as

```{math}
:label: eq:146
\begin{align}
S \subseteq\bigcup_{k=1}^\infty(a_k, b_k)
\quad\text{and}\quad\sum_{k=1}^\infty(b_k - a_k) < \varepsilon\end{align}
```

On the other hand,
if $I$ is finite,
then in order to write {eq}`eq:145`
as {eq}`eq:146` for consistency,
we append countably infinitely many degenerate open intervals,
i.e., the empty sets $\emptyset$ to the covering.
Since taking the union with empty sets will not change the origin set,
and the sum of lengths of empty sets is zero,
{eq}`eq:146` remains valid.


It is evident that the union of two zero-measure sets also has measure zero.
By Mathematical induction,
any finite unions of zero-measure sets also has measure zero.
In fact, this is also the case for countable union of zero-measure sets,
as stated in the following theorem.


````{prf:theorem}
:label: thm:86

Let $\{S_k\}$ be a countable family of zero-measure sets.
Then their union also has measure zero.

````

````{prf:proof}

Without loss of generality,
we consider countably infinite family
$\{S_k\}_{k=1}^\infty$
of zero-measure sets.
Given $\varepsilon > 0$,
for each $S_k$,
there exists a family of open intervals
$\{I_{k,j} = (a_{k,j}, b_{k,j})\}_{j=1}^\infty$(including degenerate ones),
such that

```{math}
\begin{align*}
S_k \subseteq\bigcup_{j=1}^\infty I_{k,j}\quad\text{and}\quad\sum_{j=1}^\infty(b_{k,j} - a_{k,j})
< \frac{\varepsilon}{2^{k+1}}\end{align*}
```

We have

```{math}
\begin{align*}\sum_{k=1}^\infty\sum_{j=1}^\infty(b_{k,j} - a_{k,j})
\leq\sum_{k=1}^\infty\frac{\varepsilon}{2^{k+1}}
= \frac{\varepsilon}{2}
< \varepsilon\end{align*}
```

By {prf:ref}`thm:61`,
the double series $\sum_{k,j} (b_{k,j} - a_{k,j})$
also converges (absolutely) and its sum is less than $\varepsilon$.

We can rearrange the doubly-indexed sets $I_{k,j}$ into
$I_n$ by defining a bijection between $\N^\ast \times \N^\ast$
and $\N^\ast$, $n = g(k,j)$.
It is clear that

```{math}
\begin{align*}\bigcup_{k=1}^\infty S_k
\subseteq\bigcup_{n} I_{n}\end{align*}
```

Moreover,

```{math}
\begin{align*}\sum_{n=1}^\infty(b_n - a_n)
= \sum_{k,j}(b_{k,j} - a_{k,j})
< \varepsilon\end{align*}
```

since the double series converges absolutely ({prf:ref}`thm:61`).
Therefore, $\bigcup_{k=1}^\infty S_k$ indeed has measure zero.

````

Next, we introduce the concept of oscillation,
which has actually been already applied
in several proofs from previous sections.


````{prf:definition}
:label: def:7

Let $f$ be defined and bounded on an interval $I$.
($I$ can be open, closed or half-open.)
Let $S \subseteq I$ be a subset.
The number

```{index} oscillation of a function on a set
```

```{math}
\begin{align*}\Omega_f (S)
= \sup_{x,y \in S}[f(x) - f(y)]\end{align*}
```

is called the **oscillation of $f$ on $S$**.

````

The oscillation of $f$ on $S$ measures the
greatest difference between two function values.
Recall {prf:ref}`thm:27`.
Equivalently, it is the difference between
the supremum and the infimum.
We have

```{math}
\begin{align*}\Omega_f (S)
= \sup_{x \in S} f(x) - \inf_{x \in S} f(x)
\end{align*}
```

Another simple observation is that
if $S \subseteq T$, then

```{math}
\begin{align*}\Omega_f(S) \leq\Omega_f(T)
\end{align*}
```

```{index} oscillation of a function at a point
```

We can also define the **oscillation of $f$ at a point $x$**.
Consider a neighborhood $B_r(x) \cap I$ of $x$ in $I$.
Note that the oscillation of $f$ on $B_r(x) \cap I$,
$\Omega_f(B_r(x) \cap I)$,
will get smaller and smaller
as the radius $r$ decreases.
Hence, we can regard

```{math}
\begin{align*}\Omega_f (B_r(x) \cap I) =: g(r)
\end{align*}
```

as an increasing function of $r$.
Then by {prf:ref}`thm:15`,
we know $g(0+)$ exists.

:::{note}

Well, to apply {prf:ref}`thm:15`,
function $g$ needs to be defined on a closed interval.
Since the oscillation is always greater than or equal to zero,
we may define $g(0) = 0$
without violating the hypothesis that $g$ is increasing.
Then, we may apply {prf:ref}`thm:15` to $g$ on $[0, R]$
where $R$ is any fixed positive number.

:::

The oscillation of $f$ at $x$ is defined as
precisely this limit.


````{prf:definition}
:label: def:8

Let $f$ be defined and bounded on an interval $I$.
The oscillation of $f$ at point $x \in I$ is
defined by

```{math}
\begin{align*}\Omega_f(x)
= \lim_{r \to 0^{+}}\Omega_f (B_r(x) \cap I)
\end{align*}
```

````

````{prf:example}
:label: eg:16

We often say

```{math}
\begin{align*}
f(x) = \sin(x) \ind\{x \neq 0\}\end{align*}
```
*oscillates* at $0$.
We can now measure the degree of this oscillation.
For any $r > 0$,
we can always find a large enough integer $n \in \N^\ast$
such that

```{math}
\begin{align*}
x_n = \frac{1}{\pi / 2 + 2n\pi}\quad\text{and}\quad
y_n = \frac{1}{-\pi / 2 + 2n\pi}\end{align*}
```

are both in $B_r(0)$.
Note that $f(x_n) = 1$ and $f(y_n) = -1$
are the supremum and infimum of $f$, respectively.
Therefore,

```{math}
\begin{align*}\Omega_f(B_r(0)) = 1 - (-1) = 2
\quad\forall r > 0
\end{align*}
```

And the oscillation of $f$ at $0$ is exactly

```{math}
\begin{align*}\Omega_f(0) = 2
\end{align*}
```

````
