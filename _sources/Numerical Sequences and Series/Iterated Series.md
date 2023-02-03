# Iterated Series

In practice, it is very common to encounter situations where interchanging the order of summations of a double series will make the computation much easier. That is, sometimes we favor the right-hand side over the left-hand side in {eq}`eq:125`.

```{math}
:label: eq:125
\begin{align}\sum_{m=1}^\infty\sum_{n=1}^\infty a_{m,n}
= \sum_{n=1}^\infty\sum_{m=1}^\infty a_{m,n}\end{align}
```

We state a sufficient condition in the following theorem so that {eq}`eq:125` is valid.


````{prf:theorem}
:label: thm:61

Let $\{a_{m,n}\}$ be a double sequence with complex terms. If
- ⒜ $\sum_{n=1}^\infty a_{m,n}$ converges absolutely for each $m$, and
- ⒝ $\sum_{m=1}^\infty \sum_{n=1}^\infty \abs{a_{m,n}}$ converges,


then
- ➀ the double series $\sum_{m,n} a_{m,n}$ converges absolutely,
- ➁ $\sum_{m=1}^\infty a_{m,n}$ converges absolutely for each $n$, and
- ➂ $\sum_{n=1}^\infty \sum_{m=1}^\infty a_{m,n}$(regarded as a series with terms $\sum_{m=1}^\infty a_{m,n}$) also converges absolutely with the same sum as $\sum_{m=1}^\infty \sum_{n=1}^\infty a_{m,n}$ and $\sum_{m,n} a_{m,n}$, that is,

```{math}
\begin{align*}\sum_{m=1}^\infty\sum_{n=1}^\infty a_{m,n}
= \sum_{n=1}^\infty\sum_{m=1}^\infty a_{m,n}
= \sum_{m, n} a_{m,n}\end{align*}
```


````

````{prf:proof}
(Proof of 1) Let $g$ be an arrangement of $\{ a_{m,n} \}$ into $\{b_k\}$. For any given $K \in \N^\ast$, we have

```{math}
\begin{align*}\sum_{k=1}^K \abs{b_k}\leq\sum_{m=1}^M \sum_{n=1}^N \abs{a_{m,n}}\leq\sum_{m=1}^\infty\sum_{n=1}^\infty\abs{a_{m,n}}\end{align*}
```

where $M = \max \{m_1, \ldots, m_K\}$ and $N = \max \{n_1, \ldots, n_K\}$ where $g(k) = (m_k, n_k) \; \forall k = 1, \ldots, K$. This implies that the sequence of partial sums of $\sum \abs{b_k}$ is bounded above, which further implies $\sum b_k$ converges absolutely. And then by {prf:ref}`lem:4`, the double series $\sum_{m,n} a_{m,n}$ also converges absolutely.

(Proof of 2 and 3) The last two statements follow directly from {prf:ref}`thm:62`.

````
