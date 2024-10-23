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

````{prf:proof}
\noindent **Proof of 1:** 
We only prove $U(P^\prime, f, \alpha) \leq U(P, f, \alpha)$.
The idea of the proof is simple.
But to write it down with symbols,
we must carefully design the notations.

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

Consider a particular subinterval $[x_{k-1}, x_k]$.
We are going to show that the portion of $U(P^\prime, f, \alpha)$
associated with $[x_{k-1}, x_k]$
is no larger than that of $U(P, f, \alpha)$.
We have

```{math}
\sup_{x \in [y_{j-1}, y_{j}]} f(x)
\leq\sup_{x \in [x_{k-1}, x_k]} f(x)
= M_k
\quad\forall j=m_{k-1}+1, \ldots, m_k

```

It then follows that

```{math}
\sum_{j=m_{k-1} + 1}^{m_k}\sup_{x \in [y_{j-1}, y_{j}]}
f(x) [\alpha(y_{j}) - \alpha(y_{j-1})]& \leq\sum_{j=m_{k-1} + 1}^{m_k} M_k [\alpha(y_{j}) - \alpha(y_{j-1})]\\& = M_k [\alpha(y_{m_k}) - \alpha(y_{m_{k-1}})]\\& = M_k [\alpha(x_k) - \alpha(x_{k-1})]\\& = M_k \alpha_k

```

Summing over $k$ on both sides of the above inequality yields

```{math}

U(P^\prime, f, \alpha)
& = \sum_{k=1}^n \sum_{j=m_{k-1} + 1}^{m_k}\sup_{x \in [y_{j-1}, y_{j}]}
f(x) [\alpha(y_{j}) - \alpha(y_{j-1})]\\& \leq\sum_{k=1}^n M_k \alpha_k \\& =U(P, f, \alpha)

```

which is exactly what we want to show.

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