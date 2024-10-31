# Darboux Integration -- Defining Integrals with Upper and Lower Integrals

From now on, the theory of Riemann-Stieltjes integration
will be developed for increasing integrators.

One may have the feeling that
it is troublesome to prove the existence of Integrals
because not only are we required to find a partition
but also consider all possible choices $T$ of points in subintervals.

The definition of upper and lower sums
will get rid of $T$ in $S(P,T,f,\alpha)$.

```{index} lower Darboux sum
```

````{prf:definition} 

Let $P=\{x_0, x_1, \ldots, x_n\}$ be a partition of $[a, b]$.
For $k=1, \ldots, n$, define

```{math}

M_k(f) & := \sup_{x \in [x_{k-1}, x_{k}]} f(x) \\
m_k(f) & := \inf_{x \in [x_{k-1}, x_k]} f(x)

```

The sums

```{math}

U(P, f, \alpha) & := \sum_{k=1}^n M_k(f) \Delta\alpha_k \\
L(P, f, \alpha) & := \sum_{k=1}^n m_k(f) \Delta\alpha_k

```

are called  **upper and lower Darboux sums**  respectively.

````

Let $t_k \in [x_{k-1}, x_k]$, clearly, we have

```{math}

m_k(f) \leq f(t_k) \leq M_k

```

If the integrator $\alpha$ is increasing, then

```{math}

m_k(f) \Delta\alpha_k \leq f(t_k) \Delta\alpha_k \leq M_k \Delta\alpha_k

```

Summing over $k$ yields

```{math}

L(P, f, \alpha) \leq S(P, T, f, \alpha) \leq U(P, f, \alpha)

```

````{prf:theorem} 
:label: thm:9

Assume $\alpha$ is increasing on $[a, b]$. Then
1. if $P^\prime \supseteq P$, we have

```{math}

U(P^\prime, f, \alpha) \leq U(P, f, \alpha)
\quad\text{and}\quad
L(P^\prime, f, \alpha) \geq L(P, f, \alpha)

```

In other words, as the partition gets finer the upper Darboux sum decreases
while the lower Darboux sum increases.
2. For any two partitions $P_1$ and $P_2$, we have

```{math}

L(P_1, f, \alpha) \leq U(P_2, f, \alpha)

```

That is, any lower Darboux sum is no greater than any upper Darboux sum.

````

Think about how to prove $U(P^\prime, f, \alpha) \leq U(P, f, \alpha)$ in 1.
One way to do this is by designing notations to
explicitly write down
the expressions for $P^\prime$ and $U(P^\prime, f, \alpha)$.
My way is as follows.
Let $P = \{x_0, \ldots, x_n\}$.
Since $P \supseteq P$, we can express $P^\prime$ as

```{math}

P^\prime& = & \{& y_{0}, \\& & & y_{1}, \ldots y_{m_1}, \\& & & \ldots, \\& & & y_{m_{k-1}+1}, \ldots y_{m_k}, \\& & & \ldots, \\& & & y_{m_{n-1}+1}, \ldots y_{m_n}\}
```

where $y_{m_k} = x_k$($m_0 = 0$) for $k=0, 1, \ldots, n$.
And we have

```{math}

U(P^\prime, f, \alpha)
= \sum_{k=1}^n \sum_{j=m_{k-1} + 1}^{m_k}\sup_{x \in [y_{j-1}, y_{j}]}
f(x) [\alpha(y_{j}) - \alpha(y_{j-1})]
```

And the rest of the proof can be done easily.

However, we can be a little smarter about this proof.
Note that the major difficulty is that
the form of the refinement $P^\prime$
is undetermined.
It may contain many extra points scattered in different locations.
But we can start by consider the simplest case
where $P^\prime$ has only one point more than $P$.
And then we can extend the conclusion to any
larger refinements by applying the mathematical induction.


````{prf:proof}
\noindent **Proof of 1:** 
We only prove $U(P^\prime, f, \alpha) \leq U(P, f, \alpha)$.
First, consider the case where $P^\prime$
has only one point $y$ more than $P = \{x_0, \ldots, x_n\}$.
Suppose $y \in (x_{j-1}, x_j)$.
On the subinterval $[x_{j-1}, x_j]$, we have
\begin{multline*}
\sup_{x \in [x_{j-1}, y]} f(x) [\alpha(y) - \alpha(x_{j-1})]
+ \sup_{x \in [y, x_j]} f(x) [\alpha(x_{j}) - \alpha(y)] \\
\leq \sup_{x \in [x_{j-1}, x_j]} f(x) [\alpha(x_{j}) - \alpha(x_{j-1})]
= M_j
\end{multline*}
Then it is clear that $U(P^\prime, f, \alpha) \leq U(P, f, \alpha)$.

In general, suppose $\abs{P^\prime} = \abs{P} + n$,
one may then prove this easily by
applying the mathematical induction.


\noindent **Proof of 2:** 
Let $P = P_1 \cup P_2$.
Then $P$ is a refinement of both $P_1$ and $P_2$.
Applying the first part of this theorem and the inequality that

```{math}

L(P, f, \alpha) \leq U(P, f, \alpha)

```

we obtain

```{math}

L(P_1, f, \alpha) \leq L(P, f, \alpha) \leq U(P, f, \alpha)
\leq U(P_2, f, \alpha)

```

````

Let $P_0 = \{a, b\}$ be the trivial partition on $[a, b]$.
Then $U(P, f, \alpha) \geq L(P_0, f, \alpha)$
and $L(P, f, \alpha) \leq U(P_0, f, \alpha)$ for every partition $P$,
which means that the set of all upper Darboux sums is bounded below,
and the set of all lower Darboux sums is bounded above.
Then we may take the infimum and supremum, respectively, of the two sets
to introduce the definitions of the upper and lower integrals.

```{index} lower Darboux integral
```

````{prf:definition} 

Assume $\alpha$ is increasing on $[a, b]$.
The  **upper Darboux integral** 
is defined by

```{math}
\overline{\int_a^b} f \dif\alpha
:= \inf_{P \in \CALP[a, b]} U(P, f, \alpha)

```

and the  **lower Darboux integral** 
is defined by

```{math}
\underline{\int_a^b} f \dif\alpha
:= \sup_{P \in \CALP[a, b]} L(P, f, \alpha)

```

````

:::{note}

Upper and lower integrals always exist
assuming $f$ is bounded and $\alpha$ is increasing, of course.

:::

Intuitively, the lower integral should be no greater than the upper integral.


````{prf:theorem} 
:label: eq:40

Assume $\alpha$ is increasing on $[a, b]$, we have

```{math}
:label: eq:40
\underline{\int_a^b} f \dif\alpha\leq\overline{\int_a^b} f \dif\alpha
```

````

````{prf:proof}

Let $\varepsilon > 0$ be arbitrary.
By the property of infimums, there exists a partition $P_1$ of $[a, b]$
such that

```{math}
\underline{\int_a^b} f \dif\alpha
< L(P_1, f, \alpha) + \varepsilon/2

```

Similarly, by the property of supremums,
there exists a partition $P_2$ of $[a, b]$
such that

```{math}
\overline{\int_a^b} f \dif\alpha
> U(P_2, f, \alpha) - \varepsilon/2

```

It then follows that

```{math}
\underline{\int_a^b} f \dif\alpha& < L(P_1, f, \alpha) + \varepsilon/2 \\& \leq U(P_2, f, \alpha) + \varepsilon/2 \\& < \overline{\int_a^b} f \dif\alpha + \varepsilon/2 + \varepsilon/2 \\& = \overline{\int_a^b} f \dif\alpha + \varepsilon
```

In summary, we have

```{math}
\underline{\int_a^b} f \dif\alpha
< \overline{\int_a^b} f \dif\alpha + \varepsilon\quad\forall\varepsilon > 0

```

This implies that $\underline{\int_a^b} f \dif \alpha \leq \overline{\int_a^b} f \dif \alpha$.

````

There are examples where the inequality in {eq}`eq:40` is strict.


````{prf:example}

Consider the Dirichlet function $\ind_{\Q}(x)$ restricted on $[a, b]$.
Let $P$ an arbitrary partition of $[a, b]$.
On any subinterval $[x_{k-1}, x_k]$, we have

```{math}
\sup_{[x_{k-1}, x_k]}\ind_{\Q}(x) = 1
\quad\text{and}\quad\inf_{[x_{k-1}, x_k]}\ind_{\Q}(x) = 0

```

It then follows that

```{math}

U(P, \ind_\Q, x) = b - a
\quad\text{and}\quad
L(P, \ind_\Q, x) = 0

```

Since the above equations hold for all $P \in \CALP[a, b]$,
the upper and lower integrals are

```{math}
\overline{\int_a^b}\ind_{\Q}(x) \dif x = b - a
\quad\text{and}\quad\underline{\int_a^b}\ind_{\Q}(x) \dif x = 0

```

````