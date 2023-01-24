
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
