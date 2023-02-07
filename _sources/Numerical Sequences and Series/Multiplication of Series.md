# Multiplication of Series

````{prf:definition}

Given two complex-valued series $\sum_{n=0}^\infty a_n$ and $\sum_{n=0}^\infty b_n$. Let

```{math}
\begin{align*}
c_n = \sum_{k=0}^{n} a_{n-k} b_k,
\quad n \in\N\end{align*}
```

Then the series $\sum_{n=0}^\infty c_n$ is called the **Cauchy product** of $\sum a_n$ and $\sum b_n$.

````

````{prf:theorem} Mertens
:label: thm:67

Let $\sum a_n$ and $\sum b_n$ be two series that converge to sums $A$ and $B$, respectively. Suppose further that $\sum a_n$ converges absolutely. Then their Cauchy product $\sum c_n$ also converges with sum $AB$. In this case, we can write

```{math}
\begin{align*}\sum_{n=0}^\infty c_n
= \sum_{n=0}^\infty\sum_{k=0}^n a_{n-k} b_k
= \sum_{n=0}^\infty a_n
\sum_{n=0}^\infty b_n
\end{align*}
```

````

````{prf:proof}

Let $\varepsilon > 0$ be chosen arbitrarily. Firstly, because $\sum b_n$ converges, by {prf:ref}`thm:51`, there exists $M > 0$ such that

```{math}
:label: eq:112
\begin{align}\abs{\sum_{k=m}^n b_k}\leq M
\quad\forall m \in\N^\ast\;\forall n \geq M
\end{align}
```

Suppose $\sum \abs{a_n}$ converges to $S$. Moreover, by Cauchy's criterion for series, there exist $N_1, N_2 \in \N^\ast$ such that

```{math}
:label: eq:110
\begin{align}\sum_{k=m}^{m+j}\abs{a_k}
< \frac{\varepsilon / 2}{\abs{M}}\quad\forall m \geq N_1 \;\forall j \in\N\end{align}
```

and

```{math}
:label: eq:111
\begin{align}\abs{\sum_{k=m}^{m+j} b_k}
< \frac{\varepsilon / 2}{S + 1}\quad\forall m \geq N_2 \;\forall j \in\N\end{align}
```

Let $N = \max \{N_1, N_2\}$.

Let $A_n$, $B_n$ and $C_n$ denote

```{math}
\begin{align*}
A_n = \sum_{k=0}^n a_k,
\quad
B_n = \sum_{k=0}^n b_k,
\quad\text{and}\quad
C_n = \sum_{k=0}^n c_k
\end{align*}
```

Let $n \geq 2N$. After a few steps of algebraic computation, we obtain

```{math}
\begin{alignat*}2
A_n B_n - C_n
&=& \;& a_1 b_n \\&&&+ a_2 (b_{n-1} + b_n) \\&&&+ a_3 (b_{n-2} + b_{n-1} + b_n) \\&&&+ \cdots\\&&&+ a_n (b_1 + b_2 + \cdots + b_n)
\end{alignat*}
```

It then follows that

```{math}
:label: eq:113
\begin{alignat}2\abs{A_n B_n - C_n}&\leq& \;& \abs{a_1}\abs{b_n}\nonumber\\&&&+ \cdots\nonumber\\&&&+ \abs{a_{n-N}}\abs{b_{N+1} + \cdots + b_n}\nonumber\\&&&+ \abs{a_{n-N+1}}\abs{b_{N} + \cdots + b_n}\nonumber\\&&&+ \cdots\nonumber\\&&&+ \abs{a_n}\abs{b_{1} + \cdots + b_n}\end{alignat}
```

Applying {eq}`eq:111` to the first $n-N$ terms on right-hand side of {eq}`eq:113`, we find

```{math}
:label: eq:114
\begin{align}\abs{a_1}\abs{b_n}
+ \cdots
+ \abs{a_{n-N}}\abs{b_{N+1} + \cdots + b_n}&< (\abs{a_1} + \cdots + \abs{a_{n-N}}) \frac{\varepsilon / 2}{S + 1}\nonumber\\&\leq S \times\frac{\varepsilon / 2}{S + 1}\nonumber\\&< \varepsilon / 2
\end{align}
```

Meanwhile, applying {eq}`eq:112` to the last $N$ terms on the right-hand side of {eq}`eq:113` yields

```{math}
:label: eq:115
\begin{multline}\abs{a_{n-N+1}}\abs{b_{N} + \cdots + b_n}
+ \cdots
+ \abs{a_n}\abs{b_{1} + \cdots + b_n}\\
< \abs{a_{n-N+1}} M
+ \cdots
+ \abs{a_n} M
= (\abs{a_{n-N+1}} + \cdots + \abs{a_n}) M
\end{multline}
```

By using {eq}`eq:110`, the right-hand side of {eq}`eq:115` can be further enlarged to

```{math}
\begin{align*}(\abs{a_{n-N+1}} + \cdots + \abs{a_n}) M
< \frac{\varepsilon / 2}{M}\cdot M
= \varepsilon / 2
\end{align*}
```

Hence,

```{math}
:label: eq:116
\begin{align}\abs{a_{n-N+1}}\abs{b_{N} + \cdots + b_n}
+ \cdots
+ \abs{a_n}\abs{b_{1} + \cdots + b_n}
< \varepsilon / 2
\end{align}
```

Combined with {eq}`eq:113`, {eq}`eq:114` and {eq}`eq:116`, we find

```{math}
\begin{align*}\abs{A_n B_n - C_n} < \varepsilon\quad\forall n \geq 2N
\end{align*}
```

Therefore, the limit of $\{ A_n B_n - C_n \}$ exists, and it equals zero, that is,

```{math}
\begin{align*}\lim_{n \to \infty} A_n B_n - C_n = 0
\end{align*}
```

But since $\lim_{n \to \infty} A_n = A$ and $\lim_{n \to \infty} B_n = B$, by the algebraic properties of limits, we conclude that the limit of $\{C_n\}$ also exists, and it equals $AB$. In other words, $\sum c_n$ converges to $AB$.

````
