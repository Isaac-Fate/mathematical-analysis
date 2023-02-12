# Alternating Series

````{prf:definition}
:label: def:5

If $a_n \geq 0$, then we call the series of the form

```{index} alternating series
```

```{math}
\begin{align*}\sum_{n=1}^\infty(-1)^{n+1} a_n
\end{align*}
```

the **alternating series**.

````

The next theorem is known as the

```{index} alternating series test
```
**alternating series test**.


````{prf:theorem} Alternating Series Test
:label: thm:70

If $\{a_n\}$ is a sequence such that
- ➀ $a_n \geq 0 \; \forall n \geq \N^\ast$,
- ➁ it is decreasing, and
- ➂ it converges to zero, i.e.,
$\lim_{n \to \infty} a_n = 0$,


then the alternating series $\sum (-1)^{n+1} a_n$
converges.
Moreover, suppose the series converges to sum $s$,
and $\{s_n\}$ is the sequence of its partial sums,
then we have

```{math}
:label: eq:133
\begin{align}
0 \leq(-1)^n (s - s_n) \leq a_{n+1}\end{align}
```

````

:::{note}

What {eq}`eq:133` tells us is that
the absolute value of the
sum of the tail of the series starting
from the $(n+1)$-term is bounded above
by the value of the $(n+1)$-th term.
This shows how quickly this
alternating series will converge.
In other words, when we approximate the sum
of this series by the sum of first $n$ terms,
the error is bounded by $a_{n+1}$.

:::

````{prf:proof}

We have

```{math}
\begin{align*}
s_{n+p} - s_n
= (-1)^{n+2} a_{n+1}
+ (-1)^{n+3} a_{n+2}
+ \cdots
+ (-1)^{n+p+1} a_{n+p}\end{align*}
```

Multiplying $(-1)^n$ on both sides, we find

```{math}
:label: eq:134
\begin{alignat}2&& \;& (-1)^{n}(s_{n+p} - s_{n}) \nonumber\\& = & & \begin{cases}
a_{n+1} - a_{n+2} + a_{n+3} - a_{n+4} + a_{n+5}
- \cdots - a_{n+p-1} + a_{n+p}
&\text{if $p$ is odd} \\
a_{n+1} - a_{n+2} + a_{n+3} - a_{n+4} + a_{n+5}
- \cdots - a_{n+p-2} + a_{n+p-1} - a_{n+p}
&\text{if $p$ is even}
\end{cases}\end{alignat}
```

By grouping every two consecutive terms on the
right-hand side of {eq}`eq:134`,
possibly except for the last term when $p$ is odd,
we find

```{math}
\begin{alignat*}2& & \;& (-1)^{n}(s_{n+p} - s_{n}) \\& = & & \begin{cases}
(a_{n+1} - a_{n+2}) + (a_{n+3} - a_{n+4})
+ \cdots + (a_{n+p-2} - a_{n+p-1}) + a_{n+p}
&\text{if $p$ is odd} \\
(a_{n+1} - a_{n+2}) + (a_{n+3} - a_{n+4})
+ \cdots + (a_{n+p-1} - a_{n+p})
&\text{if $p$ is even}
\end{cases}\\& \geq& & 0
\end{alignat*}
```

since $\{a_n\}$ is decreasing
(and $a_{n+p} \geq 0$ for the case where $p$ is odd).

On the other hand,
by grouping every two consecutive terms
on the right-hand side of {eq}`eq:134`
starting from $a_{n+2}$,
possibly except for $a_{n+p}$ when $p$ is even,
we obtain

```{math}
\begin{alignat*}2& & \;& (-1)^{n}(s_{n+p} - s_{n}) \\& = & & \begin{cases}
a_{n+1} - (a_{n+2} - a_{n+3}) - (a_{n+4} - a_{n+5})
- \cdots - (a_{n+p-1} - a_{n+p})
&\text{if $p$ is odd} \\
a_{n+1} - (a_{n+2} - (a_{n+3}) - (a_{n+4} - a_{n+5})
- \cdots - (a_{n+p-2} - a_{n+p-1}) - a_{n+p}
&\text{if $p$ is even}
\end{cases}\\& \leq& & a_{n+1}\end{alignat*}
```

In summary, we have shown that

```{math}
:label: eq:135
\begin{align}
0 \leq(-1)^n (s_{n+p} - s_{n}) \leq a_{n+1}\quad\forall n \in\N^\ast\;\forall p \in\N^\ast\end{align}
```

Given $\varepsilon > 0$,
because $\{a_n\}$ converges to zero,
there exists $N \in \N^\ast$ such that
$\abs{a_n} < \varepsilon$ for all $n \geq N$.
It then follows from {eq}`eq:135` that

```{math}
\begin{align*}\abs{s_{n+p} - s_n} < \varepsilon\quad\forall n \geq N \;\forall p \in\N^\ast\end{align*}
```

Then Cauchy's criterion implies
the series $\sum (-1)^{n+1} a_n$ indeed converges.
Say it converges to sum $s$.
Letting $p \to \infty$ in {eq}`eq:135` yields {eq}`eq:133`.

````
