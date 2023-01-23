# The Ratio Test and the Root Test

````{prf:theorem} Ratio Test

Given a series $\sum a_n$ with nonzero complex terms, let

```{math}
\begin{align*}
r = \liminf_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}\quad\text{and}\quad
R = \limsup_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}\end{align*}
```

Then
- 1️⃣ $\sum a_n$ converges absolutely if $R < 1$,
- 2️⃣ $\sum a_n$ diverges if $r > 1$, and
- 3️⃣ the test is inclusive if $r \leq 1 \leq R$.
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

````{prf:example}
:label: eg:7

Let

```{math}
\begin{align*}\sum a_n = \sum_{n=1}^\infty\frac{1}{n}\end{align*}
```

We know that this series diverges.

Since $\abs{ a_{n+1} / a_n } = n / (n+1)$, we have

```{math}
\begin{align*}\liminf_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= \limsup_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= \lim_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= 1
\end{align*}
```

````

````{prf:example}
:label: eg:8

Let

```{math}
\begin{align*}\sum a_n = \sum_{n=1}^\infty\frac{1}{n^2}\end{align*}
```

This series converges.

In this case, $\abs{ a_{n+1} / a_n } = n^2 / (n+1)^2$. We have

```{math}
\begin{align*}\liminf_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= \limsup_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= \lim_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}}
= 1
\end{align*}
```

````
