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
$\{I_{k,j} = (a_{k,j}, b_{j,j})\}_{j=1}^\infty$(including degenerate ones),
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
