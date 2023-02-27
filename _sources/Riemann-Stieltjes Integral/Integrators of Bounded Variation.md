# Integrators of Bounded Variation

If $f \in \mathfrak{R}(\alpha_1)$ and $f \in \mathfrak{R}(\alpha_2)$ on $[a, b]$ where $\alpha_1$ and $\alpha_2$ are both increasing functions, then we know from {prf:ref}`thm:19` that $f \in \mathfrak{R}(\alpha)$ where $\alpha = \alpha_1 - \alpha_2$. Moreover, by {prf:ref}`thm:22`, we are immediately informed that $\alpha$ is of bounded variation.

Now, let us think about the converse of this statement. Suppose $f \in \mathfrak{R}(\alpha)$ on $[a, b]$ where $\alpha$ if of bounded variation. Can we assert that $f \in \mathfrak{R}(\alpha_1)$ and $f \in \mathfrak{R}(\alpha_2)$ on $[a, b]$ where $\alpha_1$ and $\alpha_2$ are any increasing functions satisfying $\alpha = \alpha_1 - \alpha_2$? Unfortunately, this is not true in general. For example, the Dirichlet function $\ind_\Q$ is integrable w.r.t. $\alpha(x) = 0$ on $[0, 1]$. We can write $\alpha(x) = 0 = x - x$. But clearly $\ind_\Q \notin \mathfrak{R}$ on $[0, 1]$.

However, as the next theorem will state, $f$ is always integrable
w.r.t. the total variation $V_a^x(\alpha)$ of $\alpha$
provided that $f \in \mathfrak{R}(\alpha)$.


````{prf:theorem}
:label: thm:37

If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$, then $f \in \mathfrak{R}(V_a^x(\alpha))$ on $[a, b]$ where $V_a^x(\alpha)$ is the total variation of $\alpha$, which is regarded as a function of $x$ as in {prf:ref}`def:3`.

````

Before presenting the proof, we first introduce some notations we shall use as well as the general strategy of this proof.

For a sub-interval $[x_{k-1}, x_k]$ in the partition $P = \{ x_0, \ldots, x_n \}$ on $[a, b]$, we adopt the following notation:

```{math}
\begin{align*}
M_k = \sup_{x \in[x_{k-1}, x_k]} f(x),
\quad
m_k = \inf_{x \in[x_{k-1}, x_k]} f(x)
\quad\text{and}\quad\Delta V_k = V_{x_{k-1}}^{x_k}(\alpha)
\end{align*}
```

And we write $V(x)$ instead of $V_a^x(\alpha)$ to emphasize that the total variation is a function of $x$.

Observe that $V(x)$ is monotonically increasing, hence we shall prove $f$ is integrable w.r.t. $V(x)$ mainly relies on Riemann's condition ({prf:ref}`thm:28`). We intend to bound the difference between the upper and the lower sum, which is shown in the following, with an arbitrarily small positive number.

```{math}
\begin{align*}
U(P,f,V) - L(P,f,V)
&= \sum_k (M_k - m_k) \Delta V_k \\&= \sum_k (M_k - m_k) \left(\Delta V_k - \abs{\Delta\alpha_k}\right)+ \sum_k (M_k - m_k) \abs{\Delta\alpha_k}\end{align*}
```

Therefore, we shall focus on bounding each of the two terms on the right-hand side of the above equation.

We now present the proof as follows.


````{prf:proof}

If $f$ is a constant function, then this theorem holds trivially. We assume that $f$ is non-constant in the rest of the proof. Let $A$ be given by

```{math}
\begin{align*}
A = \sup_{x \in[a, b]} f(x) - \inf_{x \in[a, b]} f(x)
\end{align*}
```

Since $f$ is non-constant, it is clear that $A > 0$.

Let $\varepsilon > 0$ be chosen arbitrarily. Since $\alpha$ is of bounded variation on $[a, b]$, by the definition of total variations, there exists a partition $P^\prime_\varepsilon$ on $[a, b]$ such that

```{math}
:label: eq:85
\begin{align}
V_a^b(\alpha)
< V(P, \alpha)
+ \frac{\varepsilon}{3A}\quad\forall P \supseteq P^\prime_\varepsilon\end{align}
```

We shall use this inequality later.

Now, we prepare another inequality that will be in use. Because $f \in \mathfrak{R}(\alpha)$, there exists a partition $P^{\prime\prime}_\varepsilon$ such that

```{math}
:label: eq:86
\begin{align}\abs{
\sum \left(f(s_k) - f(t_k)\right)\Delta \alpha_k
} < \frac{\varepsilon}{3}\quad\forall P \supseteq P^{\prime\prime}_\varepsilon\end{align}
```

where $s_k$ and $t_k$ are any two points in the $k$-th subinterval of $P$.

Let $P_\varepsilon = P^\prime_\varepsilon \cup P^{\prime\prime}_\varepsilon$, and let $P = \left\{x_0, \ldots, x_n\right \} \supseteq P_\varepsilon$ be a refinement. We have

```{math}
\begin{align*}
U(P,f,V) - L(P,f,V)
&= \sum_{k=1}^n (M_k - m_k) \Delta V_k \\&= \sum_{k=1}^n (M_k - m_k) \left(\Delta V_k - \abs{\Delta\alpha_k}\right)+ \sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}\end{align*}
```

Recall $A = \sup f - \inf f$. Hence, the right-hand side of the equality above can be further enlarged to

```{math}
:label: eq:87
\begin{align}
U(P,f,V) - L(P,f,V)
\leq A \sum_{k=1}^n \left(\Delta V_k - \abs{\Delta\alpha_k}\right)+ \sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}\end{align}
```

Note that $P \supseteq P_\varepsilon \supseteq P^\prime_\varepsilon$. It then follows from {eq}`eq:85` that

```{math}
\begin{align*}\sum_{k=1}^n \Delta V_k
= V_a^b(\alpha)
< V(P, \alpha)
+ \frac{\varepsilon}{3A}
= \sum_{k=1}^n \abs{\Delta\alpha_k}
+ \frac{\varepsilon}{3A}\end{align*}
```

Rearranging the terms, we obtain

```{math}
:label: eq:88
\begin{align}\sum_{k=1}^n \left(\Delta V_k - \abs{\Delta\alpha_k}\right)< \frac{\varepsilon}{3A}\end{align}
```

By combining {eq}`eq:87` and {eq}`eq:88`, we have

```{math}
:label: eq:89
\begin{align}
U(P,f,V) - L(P,f,V)
< \frac{\varepsilon}{3}
+ \sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}\end{align}
```

It requires much more work to bound the term $\sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}$ in {eq}`eq:89`. Let $h$ be a positive number given by

```{math}
\begin{align*}
h = \frac{\varepsilon}{3(V_a^b (\alpha) + 1)}\end{align*}
```

Let $I(P), J(P) \subseteq \left\{0, 1, \ldots, n\right \}$ be defined as

```{math}
\begin{align*}
I(P) &= \set{k}{\Delta\alpha_k \geq 0}&
J(P) &= \set{k}{\Delta\alpha_k < 0}\end{align*}
```

For $k \in I(P)$, we can choose a pair of points, $s_k$ and $t_k$, in the $k$-th subinterval of $P$ such that

```{math}
\begin{align*}
M_k - m_k < f(s_k) - f(t_k) + h
\end{align*}
```

In this case,

```{math}
:label: eq:90
\begin{align}(M_k - m_k)\abs{\Delta\alpha_k}
< \left(f(s_k) - f(t_k) + h\right)\abs{\Delta\alpha_k}
=  \left(f(s_k) - f(t_k) + h\right)\Delta\alpha_k
\end{align}
```

On the other hand, for $k \in J(P)$, we can choose a pair of points, $s_k$ and $t_k$, in the $k$-th subinterval of $P$ such that

```{math}
\begin{align*}
M_k - m_k < -f(s_k) + f(t_k) + h
\end{align*}
```

It then follows that

```{math}
:label: eq:91
\begin{align}(M_k - m_k)\abs{\Delta\alpha_k}
< \left(-f(s_k) + f(t_k) + h\right)\abs{\Delta\alpha_k}
=  \left(f(s_k) - f(t_k) - h\right)\Delta\alpha_k
\end{align}
```

Compare {eq}`eq:90` and {eq}`eq:91`, we conclude

```{math}
\begin{align*}(M_k - m_k)\abs{\Delta\alpha_k}
< \left(f(s_k) - f(t_k)\right)\Delta\alpha_k
+ h \abs{\Delta\alpha_k}\quad\forall k \in\left\{0, 1, \ldots, n\right\}\end{align*}
```

Therefore,

```{math}
\begin{align*}\sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}&< \sum_{k=1}^n \left(f(s_k) - f(t_k)\right)\Delta\alpha_k + h \sum_{k=1}^n \abs{\Delta\alpha_k}\\&\leq\sum_{k=1}^n \left(f(s_k) - f(t_k)\right)\Delta\alpha_k + h V_a^b (\alpha) \\&< \frac{\varepsilon}{3} + \sum_{k=1}^n \left(f(s_k) - f(t_k)\right)\Delta\alpha_k \\&\leq\frac{\varepsilon}{3} + \abs{\sum_{k=1}^n \left(f(s_k) - f(t_k)\right)\Delta\alpha_k}\end{align*}
```

In summary,

```{math}
:label: eq:92
\begin{align}\sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}
< \frac{\varepsilon}{3} + \abs{\sum_{k=1}^n \left(f(s_k) - f(t_k)\right)\Delta\alpha_k}\end{align}
```

Since $P \supseteq P_\varepsilon \supseteq P^{\prime\prime}_\varepsilon$, we may apply {eq}`eq:86` to {eq}`eq:92` and obtain that

```{math}
:label: eq:93
\begin{align}\sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}
< \frac{\varepsilon}{3} + \frac{\varepsilon}{3}
= \frac{2\varepsilon}{3}\end{align}
```
Finally, by combining {eq}`eq:89` and {eq}`eq:93`, we have

```{math}
\begin{align*}
U(P,f,V) - L(P,f,V)
< \frac{\varepsilon}{3} + \frac{2\varepsilon}{3}
= \varepsilon\end{align*}
```

Therefore, $f \in \mathfrak{R}(V(x))$ by {prf:ref}`thm:28` since $V(x)$ is increasing.

````

Recall that all the theorems proved in previous section
are under the common assumption that the integrator $\alpha$
is increasing.
Now, thanks to {prf:ref}`thm:37`,
we can easily show that some of them are also valid
if we only assume $\alpha$ is of bounded variation.
For example, we can generalize {prf:ref}`thm:40` as follows.


````{prf:theorem}
:label: thm:80

Suppose $\alpha$ is of bounded variation on $[a, b]$.
Let $[c, d] \subseteq[a, b]$ be a subinterval.
If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$,
then we also have $f \in \mathfrak{R}(\alpha)$ on $[c, d]$.

````

````{prf:proof}

Let $V(x)$ denote $V_a^x (\alpha)$. By {prf:ref}`thm:37`,
we know $f \in \mathfrak{R}(V)$
and $f \in \mathfrak{R}(V - \alpha)$ on $[a, b]$.
Since both $V$ and $V - \alpha$ are increasing functions,
by applying {prf:ref}`thm:40` twice,
we have $f \in \mathfrak{R}(V)$
and $f \in \mathfrak{R}(V - \alpha)$ on $[c, d]$.
Finally, by {prf:ref}`thm:19`,
it follows that $f \in \mathfrak{R}(\alpha)$ on $[c, d]$.

````
{prf:ref}`thm:29`, {prf:ref}`thm:32`, {prf:ref}`thm:38` and {prf:ref}`thm:39`
can also be generalized similarly.


