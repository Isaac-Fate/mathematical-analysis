
```{index} tail of a sequence
```
# Limit Superior and Limit Inferior

Given a real-valued sequence $\{a_n\}$, sometimes the information about the upper and lower bounds of the *entire* sequence, if they exist, may not be useful for we are often interested in the **tail** of the sequence, which is simply the portion of $\{a_n\}$ after a few indices. To be  specific, the $n$-th tail of $\{a_n\}$ is defined by $\{a_{m+n-1}\}_{m \in \N^\ast}$, and is written as $\{a_m\}_{m \geq n}$ in shorthand.

If $\{a_n\}$ is bounded, we can define two sequences of upper and lower bounds, $\{u_n\}$ and $\{l_n\}$, of the tail $\{a_m\}_{m \geq n}$ by

```{math}
\begin{align*}
u_n = \sup_{m \geq n} a_m
\quad\text{and}\quad
l_n = \inf_{m \geq n} a_m,
\quad n \in\N^\ast\end{align*}
```

To study the limiting behavior of $\{a_n\}$, it is helpful to know how the $n$-th tail $\{a_m\}_{m \geq n}$ is bounded when $n$ is relatively large.

At a first glance, we observe that $\{u_n\}$ is decreasing and $\{l_n\}$ is increasing, which we shall prove in the next lemma.


````{prf:lemma}
:label: lem:5

Let $\{a_n\}$ be a sequence of real numbers.
- ➀ If $\{a_n\}$ is bounded above, for each integer $n \in \N^\ast$ we can define

```{math}
\begin{align*}
u_n = \sup_{m \geq n} a_m,
\quad n \in\N^\ast\end{align*}
```

The sequence $\{u_n\}$ is decreasing.
- ➁ If $\{a_n\}$ is bounded below, for each integer $n \in \N^\ast$ we can define

```{math}
\begin{align*}
l_n = \inf_{m \geq n} a_m,
\quad n \in\N^\ast\end{align*}
```

The sequence $\{l_n\}$ is increasing.

````

````{prf:proof}

We only prove 1. For every $m \in \N^\ast$ with $m \geq n+1$, it is clear

```{math}
\begin{align*}
a_{m}\in\set{a_m}{m \geq n, n \in \N^\ast}\end{align*}
```

Note that $u_n$ is an upper bound of the set on the right-hand side. Hence,

```{math}
\begin{align*}
a_m \leq u_n
\quad\forall m \geq n+1
\end{align*}
```

This implies $u_n$ is also an upper bound of

```{math}
\begin{align*}\set{a_m}{m \geq n+1, n \in \N^\ast}\end{align*}
```

It then follows that $u_{n+1} \leq u_n$ since $u_{n+1}$ is the least upper bound of the set above. Therefore, we have shown

```{math}
\begin{align*}
u_{n}\geq u_{n+1}\quad\forall n \in\N^\ast\end{align*}
```

Hence, $\{u_n\}$ is decreasing.

````

By {prf:ref}`thm:57`, we know that the limits of $\{u_n\}$ and $\{l_n\}$ always exist (as finite or infinite numbers). This gives rise to the definitions of limit superior as well as limit inferior. We also take into consideration the cases where $\{a_n\}$ is not bounded.


````{prf:definition}

```{index} limit superior
```

Let $\{a_n\}$ be a sequence of real numbers. The **limit superior** of $\{a_n\}$, denoted by $\limsup_{n \to \infty} a_n$, is defined as follows:
- ➀ $\limsup_{n \to \infty} a_n := \infty$ if $\{a_n\}$ is not bounded above, and
- ➁ $\limsup_{n \to \infty} a_n := \lim_{n \to \infty} u_n$ if $\{a_n\}$ is bounded above where $u_n = \sup_{m \geq n} a_m$.

```{index} limit inferior
```

The **limit inferior** of $\{a_n\}$ is denoted by $\liminf_{n \to \infty} a_n$ and is defined similarly.

````

:::{note}

The notation $\limsup$ consists of two parts, the limit symbol and the supremum symbol. Indeed, as we can see from the definition, this notation arises naturally for we can write

```{math}
\begin{align*}\limsup_{n \to \infty} a_n
= \lim_{n \to \infty}\sup_{m \geq n} a_m
\end{align*}
```

if $\{a_n\}$ is bounded above.

:::

````{prf:example}

Let

```{math}
\begin{align*}
a_n = \brk{1 + \frac{10}{n}}\sin\frac{n \pi}{32}\end{align*}
```

We claim that the limit superior and limit inferior of $\{a_n\}$ are $1$ and $-1$, respectively. See {numref}`fig:12`.


```{figure} /figures/limsup-liminf.png
---
name: fig:12
---
Limit superior and limit inferior of $\{a_n\}$ where $a_n = \brk{1 + \frac{10}{n}} \sin \frac{n \pi}{32}$.

```

Now, we show that the values of limit superior and limit inferior are indeed as claimed. Note that for any given integer $n \in \N^\ast$, we can choose an integer $k$ such that $16 + 64k \geq n$. Let $m = 16 + 64k$. We have

```{math}
\begin{align*}
a_m = \brk{1 + \frac{10}{m}}\sin\frac{(16 + 64k) \pi}{32}
= \brk{1 + \frac{10}{m}}\sin\brk{
\frac{\pi}{2} + 2k\pi
}
= 1 + \frac{10}{m}
> 1
\end{align*}
```

This implies that

```{math}
\begin{align}
u_n = \sup_{m \geq n} a_m > 1
\quad\forall n \in\N^\ast\end{align}
```

which means the sequence $\{u_n\}$ is bounded below by $1$. We know by {prf:ref}`lem:5` that $\{u_n\}$ is decreasing. Thus, by {prf:ref}`thm:57`, $\{u_n\}$ converges to the infimum of its range, $\inf_{n \in \N^\ast} u_n$. We need to show that $\inf_{n \in \N^\ast} u_n = 1$. Given $\varepsilon > 0$, there exists $n \in \N^\ast$ such that $10 / n < \varepsilon/2$. Then, for every $m \geq n$, we have

```{math}
\begin{align*}
1 + \frac{10}{m} < 1 + \varepsilon/2
\end{align*}
```

Because the absolute value of the sine function is bounded by $1$, it follows that

```{math}
\begin{align*}
a_m = \brk{1 + \frac{10}{m}}\sin\frac{m \pi}{32} < 1 + \varepsilon/2
\quad\forall m \geq n
\end{align*}
```

Taking the supremum, we obtain

```{math}
\begin{align*}
u_n = \sup_{m \geq n} a_m
\leq 1 + \varepsilon/2
< 1 + \varepsilon\end{align*}
```

Therefore,

```{math}
\begin{align*}\limsup_{n \to \infty} a_n
= \lim_{n \to \infty} u_n
= \inf_{n \in \N^\ast} u_n = 1
\end{align*}
```

The proof of $\liminf_{n \to \infty} a_n = -1$ is similar and is left as an exercise.

````
