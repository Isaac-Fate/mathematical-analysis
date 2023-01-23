# Infinite Series

The next theorem tells us that we can add two convergent series term by term. And we can also multiply a convergent series by a constant.


````{prf:theorem}
:label: thm:48

If $\sum a_n$ and $\sum b_n$ are two convergent series, then the series $\sum (\alpha a_n + \beta b_n)$ also converges where $\alpha$ and $\beta$ are constants. Furthermore, we have

```{math}
\begin{align*}\sum_{n=1}^\infty(\alpha a_n + \beta b_n)
= \alpha\sum_{n=1}^\infty a_n
+ \beta\sum_{n=1}^\infty b_n
\end{align*}
```

````

````{prf:proof}

TODO

````

```{index} Cauchy's criterion for series
```

Recall the convergence of a series $\sum a_n$ is defined by the convergence of the sequence of its partial sums $\{s_n\}$. Hence, by interpreting Cauchy's criterion for the sequence $\{s_n\}$ in terms of sums of terms $a_n$s, we will obtain a version of **Cauchy's criterion** for series.


````{prf:theorem} Cauchy's Criterion for Series
:label: thm:53

The series $\sum a_n$ converges if and only if for every $\varepsilon > 0$, there exists an integer $N \in \N^\ast$ such that

```{math}
\begin{align*}\abs{\sum_{k=1}^p a_{n+k}}
= \abs{a_{n+1} + \cdots + a_{n+p}}
< \varepsilon\quad\forall n \geq N \;\forall p \in\N^\ast\end{align*}
```

````

````{prf:corollary}
:label: cor:2

If $\sum a_n$ converges, then the absolute value of its term tends to zero. That is,

```{math}
\begin{align*}\lim_{n \to \infty}\abs{a_n} = 0
\end{align*}
```

````

````{prf:theorem}
:label: thm:51

If series $\sum a_n$ converges, then
- ➀ the set of its partial sums is bounded, that is,

```{math}
\begin{align*}\abs{\sum_{k=1}^n a_k}\leq A
\quad\forall n \in\N^\ast\end{align*}
```

for some positive constant $A$, and
- ➁ even more generally, all finite sums of consecutive terms are bounded by a common constant, that is, there exists $A > 0$ such that

```{math}
\begin{align*}\abs{\sum_{k=m}^n a_k}\leq A
\quad\forall m \in\N^\ast\;\forall n \geq m
\end{align*}
```

````

````{prf:proof}

TODO

````
