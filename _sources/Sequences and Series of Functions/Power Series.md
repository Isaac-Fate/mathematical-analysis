
```{index} power series
```
# Power Series

A **power series**(in variable $z \in \C$) has the form

```{math}
\begin{align*}\sum_{n=0}^\infty a_n (z - z_0)^n
\end{align*}
```

```{index} disk of convergence
```

```{index} radius of convergence
```

where $a_n \in \C$ is called the coefficient of the $n$-th term, and $z_0 \in \C$ is often referred to as the center of the series.

With every power series, there is associated a **disk of convergence** such that the series converges if $\abs{z - z_0} < r$ whereas diverges if $\abs{z - z_0} > r$. The number $r$ is called **radius of convergence**. If $r$ is a *finite positive* number, then the disk of convergence is exactly the open ball in the complex plane with radius $r$, $B_r(z_0)$. However, we allow $r$ to take the value of $0$ or $\infty$ in extreme cases. When the power series is nowhere convergent except for $z = z_0$, then we say the radius of convergence is zero, i.e., $r = 0$. And if the power series converges everywhere in the complex plane, then we write $r = \infty$.



````{prf:theorem}

Given a power series $\sum_{n=0}^\infty a_n (z - z_0)^n$, let

```{math}
\begin{align*}\lambda = \limsup_{n \to \infty}\sqrt[n]{\abs{a_n}}\quad\text{and}\quad
r = \frac{1}{\lambda}\end{align*}
```
(where $r = 0$ if $\lambda = \infty$ and $r = \infty$ if $\lambda = 0$.) Then
- ➀ the power series converges absolutely if $\abs{z - z_0} < r$, and
- ➁ diverges if $\abs{z - z_0} > r$.


Furthermore, the power series, regarded as a series of functions in variable $z$, converges uniformly on any compact subset $K$ interior to the disk of convergence.

````

````{prf:proof}
(Proof of 1 and 2) Applying the root test ({prf:ref}`thm:55`), we find

```{math}
\begin{align*}\limsup_{n \to \infty}\sqrt[n]{\abs{a_n(z - z_0)^n}}
= \abs{z - z_0}\limsup_{n \to \infty}\sqrt[n]{\abs{a_n}}
= \abs{z - z_0}\lambda\end{align*}
```

We investigate the value of $\abs{z - z_0} \lambda$ case by case.

(Case Where $\lambda = \infty$ and $r = 0$) If $\lambda = \infty$, then for any $z$ such that $\abs{z - z_0} > r = 0$, we have $\abs{z - z_0} \lambda = \infty > 1$. Hence, the power series diverges.

:::{note}

Note that, in this case, statement 1 is **vacuously true** since the hypothesis $\abs{z - z_0} < r = 0$ is false. In fact, this theorem does not conclude that $\sum a_n (z-z_0)^n$ converges (absolutely) if $z = z_0$ when $\lambda = \infty$. But we know this is true.

:::
(Case Where $\lambda = 0$ and $r = \infty$) In this case, $\abs{z - z_0} \lambda = 0$. Hence, the power series converges absolutely for any $z \in \C$. And we note that statement 2 is vacuously true in this case.

(Case Where $0 < r < \infty$) If $\abs{z-z_0} < r$, then

```{math}
\begin{align*}\abs{z - z_0}\lambda
< r \lambda
= \frac{1}{\lambda}\cdot\lambda
= 1
\end{align*}
```

Hence, the power series converges absolutely. And if $\abs{z-z_0} < r$, we then have

```{math}
\begin{align*}\abs{z - z_0}\lambda
> r \lambda
= \frac{1}{\lambda}\cdot\lambda
= 1
\end{align*}
```

Therefore, it diverges when $\abs{z - z_0} > r$.

(Proof of Uniform Convergence) We intend to prove that the power series converges uniformly using the Weierstrass M-test ({prf:ref}`thm:56`). Define

```{math}
\begin{align*}
g(z) = \abs{z - z_0},
\quad z \in K
\end{align*}
```

Note that $g$ is a continuous real-valued function defined on a compact set. Hence, $g$ attains its maximum on $K$ by {prf:ref}`thm:6`, that is, there exist $p \in K$ such that

```{math}
\begin{align*}
g(p) = \sup_{z \in K} g(z)
= \sup_{z \in K}\abs{z - z_0}\end{align*}
```

It then follows that

```{math}
\begin{align*}\abs{a_n (z - z_0)^n}
= \abs{a_n}\abs{z - z_0}^n
\leq\abs{a_n}[g(p)]^n
= \abs{a_n}\abs{p - z_0}^n
\end{align*}
```

Let

```{math}
\begin{align*}
M_n = \abs{a_n}\abs{p - z_0}^n
\end{align*}
```

Then the power series converges uniformly on $K$ if we can show that $\sum M_n$ converges. Indeed, by applying the root test, we have

```{math}
\begin{align*}\limsup_{n \to \infty}\sqrt[n]{\abs{M_n}}
= \abs{p - z_0}\limsup_{n \to \infty}\sqrt[n]{\abs{a_n}}
= \abs{p - z_0}\lambda
< r \lambda
= 1
\end{align*}
```

This completes the proof.

````

````{prf:theorem}

Suppose the series

```{math}
\begin{align*}
f(z) = \sum_{n=0}^\infty a_n (z - z_0)^n
\end{align*}
```

converges (absolutely) for $z \in B_R(z_0)$. Let $S$ be an open subset in $B_R(z_0)$ and $z_1 \in S$. Then there exists an open disk $B_r(z_1) \subset S$ in which $f$ has a power series expansion about $z_1$ of the form

```{math}
\begin{align*}
f(z) = \sum_{k=0}^\infty b_k (z - z_1)^k
\end{align*}
```

where

```{math}
\begin{align*}
b_k = \sum_{n=k}^\infty\binom{n}{k} a_n (z_1 - z_0)^{n-k}\end{align*}
```

````

```{figure} /figures/domain-001.png
---
name: fig:13
---
Domains of power series expansions about different points.

```

````{prf:proof}

Since $S$ is open, we can find a neighborhood $B_r(z_1)$ contained in $S$. Let $z \in B_r(z_1)$. Expanding the expression $(z-z_0)^n = [(z_1 - z_0) + (z  - z_1)]^n$ in $f(z)$ using the binomial theorem, we have

```{math}
:label: eq:126
\begin{align}
f(z) = \sum_{n=0}^\infty a_n (z - z_0)^n
= \sum_{n=0}^\infty a_n \sum_{k=0}^n \binom{n}{k}(z_1 - z_0)^{n-k}(z - z_1)^k
\end{align}
```

Define

```{math}
\begin{align*}
c_{n,k} = \begin{cases}
a_n \binom{n}{k} (z_1 - z_0)^{n-k} (z - z_1)^k,
&0 \leq k \leq n \\
0,
& \text{otherwise}
\end{cases}\end{align*}
```

In this way, we can rewrite the right-hand side of {eq}`eq:126` as an iterated series:

```{math}
:label: eq:127
\begin{align}
f(z) = \sum_{n=0}^\infty\sum_{k=0}^\infty c_{n,k}\end{align}
```

We desire to interchange the order of summations in {eq}`eq:127` using {prf:ref}`thm:61`. To do so, we need to show
- ➀ $\sum_{k=0}^\infty \abs{c_{n,k}}$ converges, and
- ➁ $\sum_{n=0}^\infty \sum_{k=0}^\infty \abs{c_{n,k}}$


For the first one, we note that $\sum_{k=0}^\infty \abs{c_{n,k}} = \sum_{k=0}^n c_{n,k}$ is just a finite sum. Hence, it of course converges. As for the second one, we have

```{math}
\begin{multline*}\sum_{n=0}^\infty\sum_{k=0}^\infty\abs{c_{n,k}}
= \sum_{n=0}^\infty\abs{a_n}\sum_{k=0}^n \binom{n}{k}\abs{z_1 - z_0}^{n-k}\abs{z - z_1}^k \\
= \sum_{n=0}^\infty\abs{a_n}\brk{\abs{z_1 - z_0} + \abs{z - z_1}}^n
= \sum_{n=0}^\infty\abs{a_n}\brk{z_2 - z_0}^n
\end{multline*}
```

where

```{math}
:label: eq:128
\begin{align}
z_2 = \abs{z_1 - z_0} + \abs{z - z_1} + z_0
\end{align}
```

Since the series $\sum_{n=0}^\infty a_n (z - z_0)^n$ converges absolutely for all $z \in B_{R}(z_0)$, $\sum_{n=0}^\infty \abs{a_n} \abs{z_2 - z_0}^n$ converges since $z_2 \in B_R(z_0)$({ref}`Exercise 7.2<ex:7>`). Note that $\brk{z_2 - z_0}^n = \abs{z_2 - z_0}^n$ since $z_2 - z_0$ is in fact a non-negative number. Hence, indeed $\sum_{n=0}^\infty \sum_{k=0}^\infty \abs{c_{n,k}}$ converges and {prf:ref}`thm:62` is applicable. We conclude that $\sum_{n=0}^\infty c_{n,k}$ converges absolutely, and $\sum_{k=0}^\infty \sum_{n=0}^\infty c_{n,k}$ also converges absolutely. By interchanging the summations in {eq}`eq:127`, we obtain

```{math}
\begin{align*}
f(z) = \sum_{k=0}^\infty\sum_{n=0}^\infty c_{n,k}
= \sum_{k=0}^\infty\sum_{n=k}^\infty c_{n,k}
= \sum_{k=0}^\infty\sum_{n=k}^\infty a_n \binom{n}{k}(z_1 - z_0)^{n-k}(z - z_1)^k
= \sum_{k=0}^\infty b_k (z - z_1)^k
\end{align*}
```

This completes the proof.

````

````{admonition} Exercise 7.2
:name: ex:7

Complete the above proof by showing $z_2 \in B_R(z_0)$. By {eq}`eq:128`, it is equivalent to show $\abs{z_1 - z_0} + \abs{z - z_1} < R$.

````

Though it is intuitive to see $\abs{z_1 - z_0} + \abs{z - z_1} < R$, the proof is not trivial.


````{admonition} Solution
:class: tip, dropdown

Without loss of generality, we may assume $z_1 \neq z_0$. Define

```{math}
\begin{align*}
w = z_1 + \frac{\abs{z - z_1}}{\abs{z_1 - z_0}}(z_1 - z_0)
\end{align*}
```

Refer to {numref}`fig:13` to see the geometric meaning of $w$. We have

```{math}
\begin{align*}\abs{w - z_1} = \abs{z - z_1} < r
\end{align*}
```

since $z \in B_r(z_1)$. This implies that $w \in B_r(z_1)$. But

```{math}
\begin{align*}
w \in B_r(z_1) \subset S \subset B_R(z_0)
\end{align*}
```

We have $\abs{w - z_0} < R$. Plugging the expression of $w$, we find

```{math}
\begin{align*}\abs{w - z_0}&= \abs{(z_1 - z_0) + \frac{\abs{z - z_1}}{\abs{z_1 - z_0}} (z_1 - z_0)}\\&= \abs{z_1 - z_0}\abs{1 + \frac{\abs{z - z_1}}{\abs{z_1 - z_0}}}\\&= \abs{z_1 - z_0}\brk{1 + \frac{\abs{z - z_1}}{\abs{z_1 - z_0}}}\\&= \abs{z_1 - z_0} + \abs{z - z_1}\end{align*}
```

Therefore, indeed

```{math}
\begin{align*}\abs{z_1 - z_0} + \abs{z - z_1} < R
\end{align*}
```

````
