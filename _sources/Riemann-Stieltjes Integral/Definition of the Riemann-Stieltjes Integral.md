# Definition of the Riemann-Stieltjes Integral

````{prf:definition}
:label: def:1

Suppose that $f$ and $\alpha$ are **real-valued bounded** functions on $[a,b]$. Let $P = \left\{x_0, x_1, \ldots, x_n\right \}$ be a partition on $[a, b]$ and $t_k$ a point in the sub-interval $[x_{k-1}, x_k]$. A sum of the form

```{math}
\begin{align*}
S(P,f,\alpha)
= \sum_{k=1}^n f(t_k) \Delta\alpha_k
\end{align*}
```

is called a Riemann-Stieltjes sum of $f$ with respect to $\alpha$. We say $f$ is Riemann-integrable with respect to $\alpha$, and write $f \in \mathfrak{R}(\alpha)$ on $[a,b]$ if there exists a number $A$ having the following property: for any given $\varepsilon > 0$, there exists a partition $P_\varepsilon$ such that

```{math}
\begin{align*}\abs{S(P,f,\alpha) - A} < \varepsilon\end{align*}
```

for any refinement $P$ of $P_\varepsilon$ and for any choice of points $t_k$. (Note that $S(P,f,\alpha)$ depends on $t_k$.) Moreover, the number $A$ is **uniquely** determined if it exists (this is proved in {prf:ref}`pro:3`) and is denoted by 
```{math}
\begin{align*}\int_a^b f \;\mathrm{d}\alpha\end{align*}
```

````

:::{note}

To ease the nation, we will sometimes write

```{math}
\begin{align*}\sum_{k} f(t_k) \Delta\alpha_k
\end{align*}
```

without specifying the lower and upper limits of $k$ if no confusion will be caused.

:::
Recall {prf:ref}`def:1` only requires the existence of $A$. We now show that such number $A$ is also unique.


````{prf:proposition}
:label: pro:3

Let $S(P,f,\alpha)$ be as in {prf:ref}`def:1`. If $A$ and $A^\prime$ both satisfy the property stated in {prf:ref}`def:1`, then $A = A^\prime$.

````

````{prf:proof}

Given $\varepsilon > 0$, by the property in {prf:ref}`def:1`, there exist partitions $P_1$ and $P_2$ such that

```{math}
\begin{align*}\abs{S(P_1,f,\alpha) - A}&< \varepsilon / 2 &
\abs{S(P_2,f,\alpha) - A^\prime}&< \varepsilon / 2
\end{align*}
```

Let $P = P_1 \cup P_2$. We have

```{math}
\begin{align*}\abs{S(P,f,\alpha) - A}&< \varepsilon / 2 &
\abs{S(P,f,\alpha) - A^\prime}&< \varepsilon / 2
\end{align*}
```

It then follows that

```{math}
\begin{align*}\abs{A - A^\prime}\leq\abs{S(P,f,\alpha) - A} +
\abs{S(P,f,\alpha) - A^\prime}
< \varepsilon / 2 + \varepsilon / 2
= \varepsilon\end{align*}
```

Since $\varepsilon > 0$ is arbitrary, we must have $A = A^\prime$.

````
