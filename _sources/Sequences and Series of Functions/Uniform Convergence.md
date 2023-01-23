
```{index} uniform convergence
```
# Uniform Convergence

As mentioned, only assuming $f_n(x) \to f(x)$ for each $x \in S$ is not enough to preserve certain properties of $f_n$. Hence, we need a stronger version of convergence than pointwise convergence. The condition $\lim_{n \to \infty} f_n(x) = f(x)$ says at a given point $x$, $f_n(x)$ will get closer and closer to $f(x)$. Chances are that $f_n(x_1)$ and $f_n(x_2)$ may not converge to $f(x_1)$ and $f(x_2)$ at the same speed. Now, we want $f_n(x)$ to get close to $f(x)$*uniformly* at the same pace for all $x \in S$. This gives rise to the definition of **uniform convergence**.


````{prf:definition}

Let $S$ be a subset of a metric space. A sequence of functions $\{f_n\}$ is said to converge to $f$ uniformly on $S$ if for every $\varepsilon > 0$, there exists an integer $N \in \N^\ast$ such that

```{math}
\begin{align*}\abs{f_n(x) - f(x)} < \varepsilon\quad\forall n \geq N \;\forall x \in S
\end{align*}
```

Symbolically, we write $f_n \to f$ uniformly on $S$.

````

The next theorem is useful to check whether $\{f_n\}$ converges uniformly.


````{prf:theorem}
:label: thm:46

Suppose $f_n \to f$ on $S$. Then $f_n \to f$ uniformly on $S$ if and only if

```{math}
\begin{align*}
M_n = \sup_{x \in S}\abs{f_n(x) - f(x)} < \infty\quad\forall n \geq N_0
\end{align*}
```

for some $N_0 \in \N^\ast$, and

```{math}
\begin{align*}\lim_{n \to \infty} M_n = 0
\end{align*}
```

````

:::{note}

To be clear, $M_n$ is only defined when $n \geq N_0$ for it has to be a real number.

:::

````{prf:proof}
(Sufficiency) If $\lim_{n \to \infty} M_n = 0$, then for any $\varepsilon > 0$ there exists $N \in \N^\ast$(of course, $N \geq N_0$) such that

```{math}
\begin{align*}\sup_{x \in S}\abs{f_n(x) - f(x)} < \varepsilon\quad\forall n \geq N
\end{align*}
```

Therefore, $f_n \to f$ uniformly on $S$ by definition since $\abs{f_n(x) - f(x)} \leq \sup_{x \in S} \abs{f_n(x) - f(x)}$ for all $x \in S$.

(Necessity) Suppose $f_n \to f$ uniformly on $S$. Given $\varepsilon > 0$, there exists $N \in \N^\ast$ such that

```{math}
\begin{align*}\abs{f_n(x) - f(x)} < \varepsilon\quad\forall n \geq N \;\forall x \in S
\end{align*}
```

Taking the supremum over $x$, we have

```{math}
\begin{align*}
M_n
= \sup_{x \in S}\abs{f_n(x) - f(x)}\leq\varepsilon\quad\forall n \geq N
\end{align*}
```

This implies that the sequence $\{M_n\}$ converges to $0$.

````

````{prf:example}

Let

```{math}
\begin{align*}
f_n(x) = \frac{1}{nx},
\quad x \in(0, 1)
\end{align*}
```

The limit of $\{f_n(x)\}$ at each $x$ is zero as $n \to \infty$. Hence, $f_n \to f = 0$. Note that

```{math}
\begin{align*}\sup_{x \in (0, 1)}\abs{f_n(x) - f(x)}
= \sup_{x \in (0, 1)}\frac{1}{nx}
= \infty\end{align*}
```

for every $n \in \N^\ast$. Therefore, by {prf:ref}`thm:46`, the convergence is not uniform.

````

````{prf:example}

Let

```{math}
\begin{align*}
f_n(x) = \frac{1}{x} + \frac{1}{n},
\quad x \in(0, 1)
\end{align*}
```

Note that $f(x) = \lim_{n \to \infty} f_n(x) = 1 / x$. We have

```{math}
\begin{align*}
M_n = \sup_{x \in (0, 1)}\abs{f_n(x) - f(x)}
= \frac{1}{n}\end{align*}
```

Since $\lim_{n \to \infty} M_n = 0$, $f_n \to f$ uniformly on $(0, 1)$.

````

```{index} uniformly bounded functions
```

A sequence of functions $\{f_n\}$ is said to be **uniformly bounded** on $S$ if there exists a positive constant $M > 0$ such that

```{math}
\begin{align*}\abs{f_n(x)}\leq M
\quad\forall n \in\N^\ast\;\forall x \in S
\end{align*}
```

````{prf:theorem}

Suppose $\{f_n\}$ is uniformly bounded on $S$. Then $f_n \to f$ uniformly on $S$ if and only if

```{math}
\begin{align*}\lim_{n \to \infty}\norm{f_n - f} = 0
\end{align*}
```

where $\norm{\cdot}$ is the uniform norm on the set of bounded functions on $S$, $\mathcal{B}(S)$.

````

Similar to the situation we encountered when dealing with numerical sequences and series, sometimes we want to prove that $\{f_n\}$ converges uniformly without knowing its limit.


````{prf:theorem} Cauchy's Criterion
:label: thm:42

A sequence of functions $\{f_n\}$ converges uniformly on $S$ if and only if for any $\varepsilon > 0$, there exists $N \in N^\ast$ such that

```{index} Cauchy's criterion for uniform convergence
```

```{math}
\begin{align*}\abs{f_m(x) - f_n(x)} < \varepsilon\quad\forall m, n \geq N \;\forall x \in S
\end{align*}
```

We say $\{f_n\}$ satisfies **Cauchy's criterion** if the above condition is met.

````

````{prf:proof}
(Sufficiency) Suppose $\{f_n\}$ satisfies Cauchy's criterion. Fix $x \in S$, we know that the numerical sequence $\{f_n(x)\}$ is a Cauchy sequence. Hence, it has a limit, and we denote this limit by $f(x)$. In this way, we can define a function $f$ on $S$ such that

```{math}
\begin{align*}
f(x) = \lim_{n \to \infty} f_n(x)
\quad\forall x \in S
\end{align*}
```

Given $\varepsilon > 0$. By Cauchy's criterion, there exists $N \in \N^\ast$ such that

```{math}
\begin{align*}\abs{f_m(x) - f_n(x)} < \varepsilon / 2
\quad\forall m, n \geq N \;\forall x \in S
\end{align*}
```

:::{note}

The reason why we choose $\varepsilon / 2$ is that when $m \to \infty$, the strict inequality will become a non-strict one.

:::

Letting $m \to \infty$, we have

```{math}
\begin{align*}\abs{f(x) - f_n(x)}
= \lim_{m \to \infty}\abs{f_m(x) - f_n(x)}\leq\varepsilon / 2
< \varepsilon\quad\forall n \geq N \;\forall x \in S
\end{align*}
```

Therefore, $f_n \to f$ uniformly on $S$.

(Necessity) Conversely, suppose $f_n \to f$ uniformly on $S$ for some function $f$. Given $\varepsilon > 0$, by definition, there exists $N \in \N^\ast$ such that

```{math}
\begin{align*}\abs{f_n(x) - f(x)} < \varepsilon / 2
\quad\forall n \geq N \;\forall x \in S
\end{align*}
```

Let $m, n \geq N$, we have

```{math}
\begin{align*}\abs{f_m(x) - f_n(x)}\leq\abs{f_m(x) - f(x)}
+ \abs{f_n(x) - f(x)}
< \varepsilon / 2 + \varepsilon / 2
= \varepsilon\quad\forall x \in S
\end{align*}
```

Hence, Cauchy's criterion is satisfied.

````
