# Additive Property of Total Variation

````{prf:theorem}
:label: thm:34

Let $f$ be of bounded variation on $[a, b]$. For a point $c \in (a, b)$, we have $f$ is of bounded variation on $[a, c]$ and $[c, b]$, and

```{math}
:label: eq:79
\begin{align}
V_a^b(f) = V_a^c(f) + V_c^b(f)
\end{align}
```

````

````{prf:proof}

Let $P^\prime$ be a partition on $[a, c]$ and $P^{\prime\prime}$ a partition on $[c, b]$. Note that $P = P^\prime \cup P^{\prime\prime}$ forms a partition on $[a, b]$. We have

```{math}
\begin{align*}
V_a^b(P, f) = V_a^c(P^\prime, f) + V_c^b(P^{\prime\prime}, f)
\end{align*}
```

Since $f$ is of bounded variation on $[a, b]$, it follows that

```{math}
:label: eq:80
\begin{align}\infty > V_a^b(f)
\geq V_a^b(P, f)
= V_a^c(P^\prime, f) + V_c^b(P^{\prime\prime}, f)
\end{align}
```

Note that {eq}`eq:80` holds for any partition $P^\prime$ on $[a, c]$ and any partition $P^{\prime\prime}$ on $[c, b]$. Therefore, $f$ is of bounded variation on $[a, c]$ and $[c, b]$, i.e., $V_a^c(f), V_c^b(f) < \infty$.

Taking the supremum over all partitions on $[a, c]$ followed by taking the supremum over all partitions on $[a, c]$ on {eq}`eq:80`, we obtain

```{math}
:label: eq:81
\begin{align}
V_a^b(f)
\geq\sup_{P^\prime \in \mathcal{P}[a, c]} V_a^c(P^\prime, f)
+ \sup_{P^{\prime\prime} \in \mathcal{P}[c, b]} V_c^b(P^{\prime\prime}, f)
= V_a^c(f) + V_c^b(f)
\end{align}
```
Now, let $P$ be a partition on $[a, b]$. Let

```{math}
\begin{align*}
P^\prime&= (P \cap[a, c]) \cup\{ c \}&
P^{\prime\prime}&= P \cap[c, b]\cup\{ c \}\end{align*}
```

There are two cases. If $c \in P$, then

```{math}
\begin{align*}
V_a^b(P, f)
= V_a^c(P^\prime, f) + V_c^b(P^{\prime\prime}, f)
\end{align*}
```

If $c \notin P$, then

```{math}
\begin{align*}
V_a^b(P, f)
\leq V_a^c(P^\prime, f) + V_c^b(P^{\prime\prime}, f)
\end{align*}
```

Either way, it holds that

```{math}
:label: eq:82
\begin{align}
V_a^b(P, f)
\leq V_a^c(P^\prime, f) + V_c^b(P^{\prime\prime}, f)
\leq V_a^c(f) + V_c^b(f)
\end{align}
```

Taking the supremum over all partitions on $[a, b]$ on {eq}`eq:82`, we have

```{math}
:label: eq:83
\begin{align}
V_a^b(f)
= \sup_{P \in \mathcal{P}[a, b]} V_a^b(P, f)
\leq V_a^c(f) + V_c^b(f)
\end{align}
```

Equation {eq}`eq:79` then follows from {eq}`eq:80` and {eq}`eq:83`.

````

The total variation of a function with the same lower and upper limits is defined as zero, i.e., $V_x^x(f) = 0$ so that {eq}`eq:79` holds for $c = a$ and $c = b$.


````{prf:definition}
:label: def:3

Suppose that $f$ is of bounded variation on $[a, b]$. The total variation

```{math}
\begin{align*}
V_a^x(f) \quad a \leq x \leq b
\end{align*}
```

can be regarded as a function of $x$ on $[a, b]$ with an addition definition $V_a^a(f) := 0$.

````