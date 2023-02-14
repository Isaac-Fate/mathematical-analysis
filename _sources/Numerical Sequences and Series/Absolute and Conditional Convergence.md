# Absolute and Conditional Convergence

The next theorem reveals an underlying property
about a conditionally convergent series.


````{prf:theorem}
:label: thm:71

Let $\sum a_n$ be a series of real terms.
Define

```{math}
\begin{align*}
p_n = \frac{\abs{a_n} + a_n}{2}\quad\text{and}\quad
q_n = \frac{\abs{a_n} - a_n}{2},
\quad n \in\N^\ast\end{align*}
```

Then we have the following:
- ➀ If $\sum a_n$ converges conditionally,
then both $\sum p_n$ and $\sum q_n$ diverges to infinity,
i.e.,

```{math}
:label: eq:136
\begin{align}\sum_{n=1}^\infty p_n
= \sum_{n=1}^\infty q_n
= \infty\end{align}
```
- ➁ If $\sum a_n$ converges absolutely,
then both $\sum p_n$ and $\sum q_n$ converge,
and we have

```{math}
:label: eq:137
\begin{align}\sum_{n=1}^\infty a_n
= \sum_{n=1}^\infty p_n
- \sum_{n=1}^\infty q_n
\end{align}
```


````

:::{note}

Note that

```{math}
\begin{align*}
p_n = \begin{cases}
a_n,
&\text{if $a_n \geq 0$} \\
0,
&\text{if $a_n < 0$}
\end{cases}\quad\text{while}\quad
q_n = \begin{cases}
0,
&\text{if $a_n \geq 0$} \\
-a_n,
&\text{if $a_n < 0$}
\end{cases}\end{align*}
```

In other words, $\sum p_n$ is the sum of
all non-negative terms of $\sum a_n$,
while $\sum q_n$ is the
absolute value of the
sum of all negative terms.
What this theorem mainly tells us
is that for a conditionally convergent series,
the sum of all its non-negative terms is infinity,
and the sum of all its negative terms is negative infinity.

:::

````{prf:proof}
(Proof of 1)
We have $\sum \abs{a_n} = \infty$
since $\sum a_n$ only converges conditionally.
Then {eq}`eq:136` follows immediately
from {prf:ref}`thm:72`.

(Proof of 2)
Since $\sum \abs{a_n}$ also converges,
{eq}`eq:137` then follows from {prf:ref}`thm:48`.

````
