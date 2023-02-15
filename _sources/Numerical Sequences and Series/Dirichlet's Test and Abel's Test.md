# Dirichlet's Test and Abel's Test

The tests in this section are helpful
to determine the convergence of series
that may not converge absolutely.
And the series we will study
throughout this section are of the from

```{math}
\begin{align*}\sum_{n=1}^\infty a_n b_n
\end{align*}
```

The frequently used tests are Dirichlet's test
as well as the Abel's test.
Both of them are based on
{eq}`eq:138` given in the following theorem,
which is known as the formula of

```{index} summation by parts
```
**summation by parts**.


````{prf:theorem} Summation by Parts
:label: thm:73

Let $\{a_n\}$ and $\{b_n\}$ be two complex sequences.
Define

```{math}
\begin{align*}
A_n = a_1 + \cdots + a_n,
\quad n \in\N^\ast\end{align*}
```

Then we have the identity:

```{math}
:label: eq:138
\begin{align}\sum_{k=1}^n a_k b_k
= A_n b_{n+1}
- \sum_{k=1}^n A_k (b_{k+1} - b_k)
\end{align}
```

````

:::{note}

We can use {eq}`eq:138` to test convergence of
series in the form of $\sum a_n b_n$.
That is, $\sum a_n b_n$ converges
if both the sequence $\{A_n b_{n+1}\}$
and the series $\sum A_n(b_{n+1} - b_n)$ converge.

:::

````{prf:proof}

Define $A_0 = 0$ so that we can write

```{math}
\begin{align*}
a_k = A_{k} - A_{k-1}\quad\forall k \in\N^\ast\end{align*}
```

It then follows that

```{math}
\begin{align*}\sum_{k=1}^n a_k b_k
&= \sum_{k=1}^n (A_{k} - A_{k-1}) b_k \\&= \sum_{k=1}^n A_k b_k
- \sum_{k=0}^{n-1} A_k b_{k+1}\\&= \sum_{k=1}^n A_k b_k
- A_0 b_1 - \sum_{k=1}^n A_k b_{k+1}
+ A_n b_{n+1}\\&=	A_n b_{n+1}
- \sum_{k=1}^n A_k (b_{k+1} - b_k)
\end{align*}
```

The last equality is exactly {eq}`eq:138`.

````

```{index} Dirichlet's test
```

The **Dirichlet's test**
is applicable when all partial sums of $\sum a_n$ is bounded,
and the sequence $\{b_n\}$ decreases to zero.


````{prf:theorem} Dirichlet's Test
:label: thm:74

Let $\sum a_n$ be a series of complex terms
and $\{b_n\}$ a real-valued sequence.
If
- ➀ the sequence of partial sums of $\sum a_n$,
$\{A_n\}$ is bounded,
- ➁ $\{b_n\}$ is decreasing, and
- ➂ $\{b_n\}$ converges to zero,


then $\sum a_n b_n$ converges.

````

````{prf:proof}

Since $\{A_n\}$ is bounded and $\{b_n\}$ converges to zero,
the sequence $\{A_n b_{n+1}\}$ converges to zero.

Next, we are going to show the convergence of
$\sum A_n(b_{n+1} - b_n)$ using the comparison test.
There exists $M > 0$ such that
$\abs{A_n} \leq M \; \forall n \in \N^\ast$.
We have

```{math}
\begin{align*}\abs{A_n (b_{n+1} - b_n)}\leq M \abs{b_{n+1} - b_{n}}
= M (b_n - b_{n+1})
\end{align*}
```

Because

```{math}
\begin{align*}\sum_{k=1}^n (b_k - b_{k+1})
= b_1 - b_{n+1}\end{align*}
```

and $\lim_{n \to \infty} b_n = 0$,
the series $\sum (b_n - b_{n+1})$ converges to $b_1$.
Then by the comparison test ({prf:ref}`thm:52`),
$\sum A_n (b_{n+1} - b_{n})$ converges absolutely.

Therefore, $\sum a_n b_n$ converges by {prf:ref}`thm:73`.

````
