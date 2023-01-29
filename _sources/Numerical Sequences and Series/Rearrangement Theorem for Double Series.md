# Rearrangement Theorem for Double Series

````{prf:definition}

Suppose $\{a_{m,n}\}$ is a double sequence, and $g: \N^\ast \to \N^\ast \times \N^\ast$ is a **bijective** function. Let $b_k$ be defined by

```{math}
\begin{align*}
b_k = a_{g(k)} = a_{m, n},
\quad k \in\N^\ast\end{align*}
```

```{index} arrangement of double sequences
```

Then function $g$ is said to be an **arrangement** of $\{a_{m,n}\}$ into the (single) sequence $\{b_k\}$.

````

````{prf:lemma}
:label: lem:4

Let $\sum a_{m,n}$ be a double series, and $g$ an arrangement of double sequence $\{a_{m,n}\}$ into $\{b_k\}$. Then the series $\sum b_k$ converges absolutely if and only if $\sum a_{m,n}$ converges absolutely.

````

````{prf:proof}

We first suppose that $\sum a_{m,n}$ converges absolutely. By {prf:ref}`thm:47`, the set of its partial sums of the series $\sum \abs{a_{m,n}}$ must be bounded above by some positive number, say $A$, that is,

```{math}
\begin{align*}\sum_{m=1}^p \sum_{n=1}^q \abs{a_{m,n}}\leq A
\quad\forall p,q \in\N^\ast\end{align*}
```

The $K$-th partial sum of $\sum \abs{b_k}$ satisfies

```{math}
\begin{align*}\sum_{k=1}^K \abs{b_k}
= \sum_{k=1}^K \abs{a_{g(k)}}\end{align*}
```

where the right-hand side is just a partial sum of $\sum \abs{a_{m,n}}$. Hence,

```{math}
\begin{align*}\sum_{k=1}^K \abs{b_k}\leq A
\quad\forall K \in\N^\ast\end{align*}
```

Then $\sum \abs{b_k}$ indeed converges by {prf:ref}`thm:47`, i.e., $\sum b_k$ converges absolutely.

Conversely, suppose now the series $\sum b_k$ converges absolutely. Hence, the set of partial sums of $\sum \abs{b_k}$ is bounded above by some number $B > 0$. It follows that

```{math}
\begin{align*}\sum_{m=1}^p \sum_{n=1}^q \abs{a_{m,n}}\leq\sum_{k=1}^K \abs{b_k}\end{align*}
```

where

```{math}
\begin{align*}
K = \max\set{ g^{-1}(m,n) }{1 \leq m \leq p, 1 \leq n \leq q}\end{align*}
```

We then have

```{math}
\begin{align*}\sum_{m=1}^p \sum_{n=1}^q \abs{a_{m,n}}\leq B
\quad\forall p,q \in\N^\ast\end{align*}
```

Therefore, $\sum \abs{a_{m,n}}$ converges absolutely by {prf:ref}`thm:47`.

````

````{prf:theorem}

Suppose $\sum a_{m,n}$ is an absolutely convergent double series with sum $s$. Let $g$ be an arrangement of double sequence $\{a_{m,n}\}$ into $\{b_k\}$. Then
- ➀ $\sum b_k$ converges absolutely to $s$.
- ➁ Series $\sum_n a_{m,n}$ converges absolutely for each $m \in \N^\ast$, and series $\sum_m a_{m,n}$ converges absolutely for each $n \in \N^\ast$.
- ➂ Let $r_m = \sum_{n=1}^\infty a_{m,n}$ and $c_n = \sum_{m=1}^\infty a_{m,n}$. Then the series $\sum r_m$ and $\sum c_n$ both converge absolutely to the same sum $s$, i.e.,

```{math}
\begin{align*}\sum_{m=1}^\infty r_m
= \sum_{n=1}^\infty c_n
= s
\end{align*}
```

If we expand $r_m$ and $c_n$, then we obtain the same equation as above in terms of iterated sums:

```{math}
\begin{align*}\sum_{m=1}^\infty\sum_{n=1}^\infty a_{m,n}
= \sum_{n=1}^\infty\sum_{m=1}^\infty a_{m,n}
= s
\end{align*}
```

````

:::{note}

The symbols $r_m$ and $c_n$ have the meanings of the sum of $m$-th row and $n$-th column, respectively.

:::

````{prf:proof}

By the above lemma ({prf:ref}`lem:4`), we know that $\sum b_k$ converges absolutely. Now, we show that it converges to $s$. Choose an arbitrary $\varepsilon > 0$. Let $s_{p,q} = \sum_{m=1}^{p} \sum_{n=1}^{q} a_{m,n}$. Since $\sum a_{m,n}$ converges to $s$, there exists an integer $N_1 \in \N^\ast$ such that

```{math}
\begin{align*}\abs{s_{p,q} - s} < \varepsilon / 2
\quad\forall p,q \geq N_1
\end{align*}
```

On the other hand, since $\sum \abs{a_{m,n}}$ converges, there exists $N_2 \in \N^\ast$ such that

```{math}
\begin{align*}
S_{p+l, p+l} - S_{p,p} < \varepsilon / 2
\quad\forall p \geq N_2 \;\forall l \in\N^\ast\end{align*}
```

where $S_{p,q} = \sum_{m=1}^{p} \sum_{n=1}^{q} \abs{a_{m,n}}$. Let $N = \max\{N_1, N_2\}$. In particular, we have

```{math}
:label: eq:108
\begin{align}\abs{s_{N,N} - s} < \varepsilon / 2
\quad\text{and}\quad
S_{N+l,N+l} - S_{N,N} < \varepsilon / 2
\quad\forall l \in\N^\ast\end{align}
```

Let

```{math}
\begin{align*}
K = \max\set{g^{-1}(m,n)}{1 \leq m \leq N, 1 \leq n \leq N}\end{align*}
```

Combined with {eq}`eq:108`, we find

```{math}
\begin{align*}\abs{\sum_{k=1}^K b_k - s}\leq\abs{\sum_{k=1}^K b_k - s_{N,N}}
+ \abs{s_{N,N} - s}
< \varepsilon\end{align*}
```

:::{note}

Terms $b_1, \ldots, b_K$ includes all the terms $a_{m,n}$ with $1 \leq m \leq N$ and $1 \leq n \leq N$. Hence, the difference $\sum_{k=1}^K b_k - s_{N, N}$ is a sum of terms $a_{m,n}$, at least one of whose two indices is greater than $N$.

:::

Therefore, $\sum b_k$ indeed converges to sum $s$.

Let $m \in \N^\ast$ be fixed. Define a function $h_m: \N^\ast \to \N^\ast \times \N^\ast$ by

```{math}
\begin{align*}
h_m(n) = (m, n)
\end{align*}
```

And let function $f_m: \N^\ast \to \N^\ast$ be defined as a composition of $h_m$ and $g^{-1}$, i.e.,

```{math}
:label: eq:109
\begin{align}
f_m = g^{-1}\circ h_m
\end{align}
```

Note that $f_m$ is injective since both $h_m$ and $g$ are injective. For a term $a_{m,n}$, through arrangement $g$, we have

```{math}
\begin{align*}
a_{m,n} = b_k
\quad\text{where $k = g^{-1}(m,n)$}\end{align*}
```

Applying $f_m$ to $n$, we find that

```{math}
\begin{align*}
f_m(n) = g^{-1}( h_m(n) )
= g^{-1}(m, n)
= k
\end{align*}
```

This implies $\sum_n a_{m,n}$ is a subseries of $\sum b_k$. Because $\sum b_k$ converges absolutely, by {prf:ref}`thm:50`, $\sum_n a_{m,n}$ also converges absolutely. Similarly, each $\sum_m a_{m,n}$ also converges absolutely.

Write $r_m = \sum_{n=1}^\infty a_{m,n}$. Define $f_m$ for each $m \in \N^\ast$ as in {eq}`eq:109`. It can be shown that
- ➀ $f_m$ is injective,
- ➁ $f_m(\N^\ast) \subseteq \N^\ast$, and
- ➂ $\biguplus_{m=1}^\infty f_m(\N^\ast) = \N^\ast$.
(See {ref}`Exercise 2<ex:6>`.) Hence, all the requirements of {prf:ref}`thm:50` are met. Therefore, $\sum r_m$ converges absolutely, and

```{math}
\begin{align*}\sum_{m=1}^\infty r_m
= \sum_{k=1}^\infty b_k
= s
\end{align*}
```

Similarly, we can also show that $\sum c_n$ converges absolutely to $s$.

````

````{admonition} Exercise 2
:name: ex:6

Complete the above proof by showing
- ➀ $f_m$ is injective,
- ➁ $f_m(\N^\ast) \subseteq \N^\ast$, and
- ➂ $\biguplus_{m=1}^\infty f_m(\N^\ast) = \N^\ast$.

Each function $f_m$ is defined by {eq}`eq:109`.

````

````{admonition} Solution
:class: tip, dropdown

The first two statements are evident by {eq}`eq:109`. We now show

```{math}
\begin{align*}\biguplus_{m=1}^\infty f_m(\N^\ast) = \N^\ast\end{align*}
```

Given $k \in \N^\ast$, we have

```{math}
\begin{align*}
g(k) = (m, n)
\end{align*}
```

It then follows from {eq}`eq:109` that

```{math}
\begin{align*}
f_m(n) = g^{-1}(h_m(n))
= g^{-1}(m,n)
= k
\end{align*}
```

Hence, $n \in f_m(\N^\ast)$. This, along with the fact $f_m(\N^\ast) \subseteq \N^\ast$, implies the union of all function ranges is the set of natural numbers, i.e.,

```{math}
\begin{align*}\bigcup_{m=1}^\infty f_m(\N^\ast) = \N^\ast\end{align*}
```

We also need to show that every two function ranges are mutually disjoint. Assume that, on the contrary, there exist $m_1, m_2 \in \N^\ast$ such that $m_1 \neq m_2$ and

```{math}
\begin{align*}
k \in f_{m_1}(\N^\ast) \cap f_{m_2}(\N^\ast)
\end{align*}
```

for some integer $k \in \N^\ast$. It then follows that there exist $n_1, n_2 \in \N^\ast$ satisfying

```{math}
\begin{align*}
f_{m_1}(n_1) = k
\quad\text{and}\quad
f_{m_2}(n_2) = k
\end{align*}
```

But then

```{math}
\begin{align*}
f_{m_1}(n_1)
= g^{-1}(m_1, n_1)
= k
= g^{-1}(m_2, n_2)
= f_{m_2}(n_2)
\end{align*}
```

Since $g$ is bijective, we must have $m_1 = m_2$, which leads to a contradiction. Therefore, every two function ranges are mutually disjoint. This completes the proof.

````
