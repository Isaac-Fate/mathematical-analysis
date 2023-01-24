# The Ratio Test and the Root Test

````{prf:theorem} Ratio Test
:label: thm:54

Given a series $\sum a_n$ with nonzero complex terms, let

```{math}
\begin{align*}
r = \liminf_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}\quad\text{and}\quad
R = \limsup_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}\end{align*}
```

Then
- ➀ $\sum a_n$ converges absolutely if $R < 1$,
- ➁ $\sum a_n$ diverges if $r > 1$, and
- ➂ the test is inclusive if $r \leq 1 \leq R$.

````

````{prf:proof}
(Proof of 1) Choose a positive number $\varepsilon$ such that $R + \varepsilon < 1$. By the definition of limit superior, there exists an integer $N \in \N^\ast$ such that

```{math}
\begin{align*}\abs{\frac{a_{n+1}}{a_n}} < R + \varepsilon\quad\forall n \geq N
\end{align*}
```

Multiplying by $\abs{a_n}$ on both sides yields

```{math}
\begin{align*}\abs{a_{n+1}} < (R + \varepsilon) \abs{a_n}\quad\forall n \geq N
\end{align*}
```

By applying the above inequality repeatedly, we obtain

```{math}
\begin{align*}\abs{a_n} < (R+\varepsilon)^{n-N}\abs{a_N}
= [(R+\varepsilon)^{-N}\abs{a_N}](R+\varepsilon)^n
\quad\forall n \geq N+1
\end{align*}
```

Note that $\sum (R+\varepsilon)^n$ converges since it is a geometric series the absolute values of whose terms are less than $1$. Therefore, $\sum \abs{a_n}$ converges by the comparison test ({prf:ref}`thm:52`).

(Proof of 2) The proof of statement 2 is similar. This time, we can choose a positive number $\varepsilon$ such that $r-\varepsilon > 1$. Then

```{math}
\begin{align*}\abs{\frac{a_{n+1}}{a_n}} > r - \varepsilon\quad\forall n \geq N
\end{align*}
```

for some fixed integer $N \in \N^\ast$. By applying a similar argument, we have

```{math}
:label: eq:117
\begin{align}\abs{a_n} > [(r-\varepsilon)^{-N}\abs{a_N}](r-\varepsilon)^n
\quad\forall n \geq N+1
\end{align}
```

:::{note}

If we apply the comparison test here, then we can only conclude that the series $\sum \abs{a_n}$ diverges since the geometric series $\sum (r-\varepsilon)^n$ diverges. But this result is not sufficient enough to conclude that $\sum a_n$ also diverges.

:::

By observing the right-hand side of {eq}`eq:117`, we note that the sequence $\{\abs{a_n}\}$ does not converge to zero. In fact,

```{math}
\begin{align*}\lim_{n \to \infty}\abs{a_n} = \infty\end{align*}
```

Therefore, $\sum a_n$ diverges by {prf:ref}`cor:2`.

(Proof of 3) See {prf:ref}`eg:7` and {prf:ref}`eg:8`.

````

```{index} root test
```

Whenever the ratio test is inclusive, one can always try the **root test** as we shall soon introduce. It also has a close connection with the power series and the concept of the radius of convergence, which we shall cover in {doc}`/Sequences and Series of Functions/Power Series`.


````{prf:theorem} Root Test
:label: thm:55

Let $\sum a_n$ be a series of complex numbers. Let

```{math}
\begin{align*}\rho = \limsup_{n \to \infty}\sqrt[n]{\abs{a_n}}\end{align*}
```

Then
- ➀ $\sum a_n$ converges absolutely if $\rho < 1$,
- ➁ $\sum a_n$ diverges if $\rho > 1$, and
- ➂ the test is inclusive if $\rho = 1$.

````

````{prf:proof}
(Proof of 1) Choose $\varepsilon > 0$ such that $\rho + \varepsilon < 1$. By the property of limit superior, there exists $N \in \N^\ast$ such that

```{math}
\begin{align*}\sqrt[n]{\abs{a_n}} < \rho + \varepsilon\quad\forall n \geq N
\end{align*}
```

Hence,

```{math}
\begin{align*}\abs{a_n} < (\rho+\varepsilon)^n
\quad\forall n \geq N
\end{align*}
```

Note that the geometric series $\sum (\rho+\varepsilon)^n$ converges. Hence, $\sum \abs{a_n}$ converges by the comparison test. In other words, $\sum a_n$ converges absolutely.

(Proof of 2) Choose $\varepsilon > 0$ such that $\rho-\varepsilon > 1$. Again by the property of limit superior, for any integer $N \in \N^\ast$, we can always find an integer $n \geq N$ such that

```{math}
\begin{align*}\sqrt[n]{\abs{a_n}} > \rho - \varepsilon\end{align*}
```

That is,

```{math}
\begin{align*}\abs{a_n} > (\rho - \varepsilon)^n
\geq(\rho - \varepsilon)
\end{align*}
```

This implies that the sequence $\{\abs{a_n}\}$ cannot converge to zero. Therefore, $\sum a_n$ diverges by {prf:ref}`cor:2`.

(Proof of 3) See {prf:ref}`eg:7` and {prf:ref}`eg:8`.

````

````{prf:example}

Let

```{math}
\begin{align*}
a_n = \begin{cases}
\brk{\frac{i}{2}}^{n-1},
&\text{if $n$ is odd} \\
\brk{\frac{i}{2}}^{n},
&\text{if $n$ is even} \\
\end{cases},
\quad n \in\N^\ast\end{align*}
```

Let us investigate whether $\sum a_n$ converges or not.

We first apply the ratio test. Note that

```{math}
\begin{align*}\abs{\frac{a_{n+1}}{a_n}} =
\begin{cases}
\frac{1}{4},
&\text{if $n$ is odd} \\
1,
&\text{if $n$ is even} \\
\end{cases}\end{align*}
```

Hence,

```{math}
\begin{align*}
r = \liminf_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= \frac{1}{4}\quad\text{and}\quad
R = \limsup_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= 1
\end{align*}
```

The ratio test is inconclusive.

Now, let us try the root test. We have

```{math}
\begin{align*}\sqrt[n]{\abs{a_n}} =
\begin{cases}
\brk{\frac{1}{2}}^{1 - 1 / n},
&\text{if $n$ is odd} \\
\frac{1}{2},
&\text{if $n$ is even} \\
\end{cases}\end{align*}
```

Taking the limit superior, we obtain

```{math}
\begin{align*}\limsup_{n \to \infty}\sqrt[n]{\abs{a_n}}
= \frac{1}{2} < 1
\end{align*}
```

Therefore, $\sum a_n$ converges absolutely.

````

From the above example, the reader may conjecture that the root test is somehow more powerful than the ratio test. This is indeed true as we will see in the next theorem.


````{prf:theorem}

TODO

````

We will see in the following two examples that neither the ratio test nor the root test will be helpful.


````{prf:example}
:label: eg:7

Let

```{math}
\begin{align*}\sum a_n = \sum_{n=1}^\infty\frac{1}{n}\end{align*}
```

We know that this series diverges.

We first try the ratio test. Since $\abs{ a_{n+1} / a_n } = n / (n+1)$, we have

```{math}
\begin{align*}\liminf_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= \limsup_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= \lim_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= 1
\end{align*}
```

Because the limit inferior and limit superior of the ratio are both $1$, the ratio test is inclusive.

As for the root test, we find

```{math}
\begin{align*}\limsup_{n \to \infty}\sqrt[n]{\abs{a_n}}
= \lim_{n \to \infty}\sqrt[n]{\abs{a_n}}
= \lim_{n \to \infty}\frac{1}{\sqrt[n]{n}}
= 1
\end{align*}
```

Hence, the root test also fails.

````

````{prf:example}
:label: eg:8

Let

```{math}
\begin{align*}\sum a_n = \sum_{n=1}^\infty\frac{1}{n^2}\end{align*}
```

This series converges.

For the ratio test, since $\abs{ a_{n+1} / a_n } = n^2 / (n+1)^2$, we have

```{math}
\begin{align*}\liminf_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= \limsup_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= \lim_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= 1
\end{align*}
```

The ratio test fails.

Applying the root test, we find

```{math}
\begin{align*}\limsup_{n \to \infty}\sqrt[n]{\abs{a_n}}
= \lim_{n \to \infty}\sqrt[n]{\abs{a_n}}
= \lim_{n \to \infty}\frac{1}{\sqrt[n]{n^2}}
= \lim_{n \to \infty}\brk{\frac{1}{\sqrt[n]{n}} \times \frac{1}{\sqrt[n]{n}}}
= 1
\end{align*}
```

Hence, the root test also fails.

````
