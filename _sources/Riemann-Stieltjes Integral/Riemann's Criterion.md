
```{index} Riemann's criterion
```
# Riemann's Criterion

In Darboux's formulation, the integral exists if and only if the upper and lower integrals are equal to each other. We now show that this is equivalent to the criterion of the existence of integrals from our definition ({prf:ref}`def:1`). Furthermore, we will introduce another equivalent condition, **Riemann's criterion**, which is convenient to use in proofs.


````{prf:definition} Riemann's Criterion

Suppose $f$ is bounded and $\alpha$ is increasing on $[a, b]$. Function $f$ is said to satisfy **Riemann's criterion** w.r.t. $\alpha$ on $[a, b]$ if for any $\varepsilon > 0$, there exists a partition $P_\varepsilon$ on $[a, b]$ such that

```{math}
\begin{align*}
U(P,f,\alpha) - L(P,f,\alpha) < \varepsilon\end{align*}
```

for any refinement $P \supseteq P_\varepsilon$.

````

Essentially, Riemann's criterion requires that the upper and lower sums should be arbitrarily close.


The following states that the existence of Riemann-Stieltjes integrals, the existence of Darboux integrals and Riemann's criterion are equivalent.


````{prf:theorem}
:label: thm:28

Suppose $f$ is bounded and $\alpha$ is increasing on $[a, b]$. Then the following statements are equivalent.
- ➀ $f$ is integrable w.r.t. $\alpha$ on $[a, b]$, i.e., $f \in \mathfrak{R}(\alpha)$ on $[a, b]$.
- ➁ $f$ satisfies Riemann's criterion w.r.t. $\alpha$ on $[a, b]$.
- ➂ The upper and lower integrals are equal to each other, i.e., $\upint_a^b f \; \mathrm{d}\alpha = \lowint_a^b f \; \mathrm{d}\alpha$.


````

````{prf:proof}

If $\alpha$ is constant, then this theorem holds trivially. We assume $\alpha$ is non-constant in the rest of the proof.

(Proof of 1 $\implies$ 2) Given $\varepsilon > 0$, since $f \in \mathfrak{R}(\alpha)$, there exists a partition $P_\varepsilon$ on $[a, b]$ such that

```{math}
:label: eq:60
\begin{align}\abs{S(P,f,\alpha) - \int_{a}^{b} f \; \mathrm{d}\alpha} < \varepsilon / 6
\end{align}
```

for any refinement $P \supseteq P_\varepsilon$ and for any choice of representative $t_k$ in each sub-interval $[x_{k-1}, x_k]$. Let this partition $P$ be fixed for now.

Let $M_k$ and $m_k$ be as in {prf:ref}`def:2`. We can choose each $t_k^\prime \in[x_{k-1}, x_k]$ such that

```{math}
\begin{align*}
M_k - \frac{\varepsilon / 3}{\alpha(b) - \alpha(a)}
< f(t_k^\prime)
\leq M_k
\end{align*}
```

Multiplying by $\Delta \alpha_k$ and then summing up over $k$ yields

```{math}
:label: eq:61
\begin{align}
U(P,f,\alpha) - \varepsilon / 3
< S^\prime(P,f,\alpha)
\leq U(P,f,\alpha)
\end{align}
```

where $S^\prime(P,f,\alpha) = \sum_{k} f(t_k^\prime) \Delta\alpha_k$. We can instead choose each $t_k^{\prime\prime} \in[x_{k-1}, x_k]$ such that

```{math}
\begin{align*}
m_k + \frac{\varepsilon / 3}{\alpha(b) - \alpha(a)}
> f(t_k^{\prime\prime})
\geq m_k
\end{align*}
```

Similarly, we then have

```{math}
:label: eq:62
\begin{align}
L(P,f,\alpha) + \varepsilon / 3
> S^{\prime\prime}(P,f,\alpha)
\geq L(P,f,\alpha)
\end{align}
```

where $S^{\prime\prime}(P,f,\alpha) = \sum_{k} f(t_k^{\prime\prime}) \Delta\alpha_k$. By combining {eq}`eq:61` and {eq}`eq:62`, we will obtain the following two inequalities.

```{math}
:label: eq:63
\begin{align}
0
\leq U(P,f,\alpha) - S^{\prime}(P,f,\alpha)
< \varepsilon / 3
\end{align}
```

```{math}
:label: eq:64
\begin{align}
0
\leq S^{\prime\prime}(P,f,\alpha) - L(P,f,\alpha)
< \varepsilon / 3
\end{align}
```

Recall the Riemann-Stieltjes sums $S^{\prime}(P,f,\alpha)$ and $S^{\prime\prime}(P,f,\alpha)$ are formed with the same partition $P$. Hence, they both satisfy {eq}`eq:61`. Their difference is then bounded by

```{math}
:label: eq:65
\begin{align}\abs{S^{\prime}(P,f,\alpha) - S^{\prime\prime}(P,f,\alpha)}\leq\abs{S^{\prime}(P,f,\alpha) - \int_{a}^{b} f \; \mathrm{d}\alpha}
+ \abs{S^{\prime\prime}(P,f,\alpha) - \int_{a}^{b} f \; \mathrm{d}\alpha}
< \varepsilon / 3
\end{align}
```

Then, the difference between the upper and lower sums can be bounded as follows.

```{math}
\begin{alignat*}2&&\;& U(P,f,\alpha) - L(P,f,\alpha) \\&\leq&& \abs{U(P,f,\alpha) - S^\prime(P,f,\alpha)}
+ \abs{S^\prime(P,f,\alpha) - S^{\prime\prime}(P,f,\alpha)}
+ \abs{S^{\prime\prime}(P,f,\alpha) - L(P,f,\alpha)}\\&<&& \varepsilon / 3 + \varepsilon / 3 + \varepsilon / 3 \\&=&& \varepsilon\end{alignat*}
```

where the last inequality follows from {eq}`eq:63`, {eq}`eq:64` and {eq}`eq:65`. Therefore, Riemann's criterion is satisfied since the above inequality holds for any refinement $P$ of $P_\varepsilon$.

(Proof of 2 $\implies$ 3) Let $\varepsilon > 0$ be arbitrary. By Riemann's criterion, there exists a partition $P_\varepsilon$ such that

```{math}
\begin{align*}
U(P,f,\alpha) - L(P,f,\alpha) < \varepsilon\end{align*}
```

for any refinement $P \supseteq P_\varepsilon$. Because $\upint_a^b f \; \mathrm{d}\alpha \leq U(P,f,\alpha)$ and $\lowint_a^b f \; \mathrm{d}\alpha \geq L(P,f,\alpha)$, it follows that

```{math}
\begin{align*}
0 \leq\upint_a^b f \;\mathrm{d}\alpha - \lowint_a^b f \;\mathrm{d}\alpha
< \varepsilon\end{align*}
```

Therefore, the upper and lower integrals are equal to each other since the above inequality holds for any $\varepsilon > 0$.

(Proof of 3 $\implies$ 1) Given $\varepsilon > 0$. There exist partitions $P_1$ and $P_2$ on $[a, b]$ such that

```{math}
\begin{align*}
U(P_1,f,\alpha) < \upint_a^b f \;\mathrm{d}\alpha + \varepsilon\quad\text{and}\quad
L(P_2,f,\alpha) > \lowint_a^b f \;\mathrm{d}\alpha - \varepsilon\end{align*}
```

Let $P_\varepsilon = P_1 \cup P_2$ and $P$ be any of its refinements. By {prf:ref}`thm:26` and {eq}`eq:46`, it is clear

```{math}
\begin{align*}\lowint_a^b f \;\mathrm{d}\alpha - \varepsilon
< L(P,f,\alpha)
\leq S(P,f,\alpha)
\leq U(p,f,\alpha)
< \upint_a^b f \;\mathrm{d}\alpha + \varepsilon\end{align*}
```

holds for any choice of $t_k$ in each sub-interval $[x_{k-1}, x_k]$. Since the upper and lower integrals have the same value, say $A$, it then follows that

```{math}
\begin{align*}\abs{S(P,f,\alpha) - A} < \varepsilon\end{align*}
```

Therefore, indeed $f \in \mathfrak{R}(\alpha)$. This completes the proof.

````

As one should expect, the integral $\int_{a}^{b} f \; \mathrm{d}\alpha$ has to be equal to the upper and lower integrals whenever $f$ is integrable.


````{prf:corollary}

Suppose $\alpha$ be increasing on $[a, b]$. If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$, then

```{math}
\begin{align*}\int_{a}^{b} f \;\mathrm{d}\alpha
= \upint_{a}^{b} f \;\mathrm{d}\alpha
= \lowint_{a}^{b} f \;\mathrm{d}\alpha\end{align*}
```

````

````{prf:proof}

Given $\varepsilon > 0$, there exist partitions $P_1$ and $P_2$ on $[a, b]$ such that

```{math}
\begin{align*}
U(P_1,f,\alpha) < \upint_{a}^{b} f \;\mathrm{d}\alpha + \varepsilon\quad\text{and}\quad
L(P_2,f,\alpha) > \upint_{a}^{b} f \;\mathrm{d}\alpha - \varepsilon\end{align*}
```

Let $P_\varepsilon = P_1 \cup P_2$. For any refinement $P \supseteq P_\varepsilon$, we have

```{math}
\begin{align*}\upint_{a}^{b} f \;\mathrm{d}\alpha - \varepsilon
< L(P,f,\alpha)
\leq S(P,f,\alpha)
\leq U(P,f,\alpha)
< \upint_{a}^{b} f \;\mathrm{d}\alpha + \varepsilon\end{align*}
```

The upper and lower integrals are equal, say to $A$, by {prf:ref}`thm:8`. It follows that

```{math}
\begin{align*}\abs{S(P,f,\alpha) - A} < \varepsilon\end{align*}
```

By {prf:ref}`def:1`, $A = \int_{a}^{b} f \; \mathrm{d}\alpha$.

````

As an exercise, we reconsider {prf:ref}`eg:4` and prove that $f$ is not integrable w.r.t. $\alpha$.


````{admonition} Exercise 6.3

Let functions $f$ and $\alpha$ be given by

```{math}
\begin{align*}
f(x) = \begin{cases}
\frac{\abs{\sin(x)}}{x} &x \neq 0 \\
1 &x = 0
\end{cases}\quad\text{and}\quad\alpha(x) = \begin{cases}
-1 &x < 0 \\
1 &x \geq 0
\end{cases},
\quad x \in[-3\pi, 3\pi]\end{align*}
```

Show that $f \notin \mathfrak{R}(\alpha)$ on $[-3\pi, 3\pi]$.

[Hint: $\sin x < x \; \forall x > 0$.]
````

````{admonition} Solution
:class: tip, dropdown

It suffices to prove $f$ is not integrable w.r.t. $\alpha$ on $[-3\pi, 0]$ since $f \in \mathfrak{R}(\alpha)$ on $[0, 3\pi]$.

Note that For any partition $P = \{x_0, x_1, \ldots, x_n\}$ on $[-3\pi, 0]$, only the last sub-integral $[x_{n-1}, x_n = 0]$ contributes to the upper and lower sums. Furthermore, using the hint, we know

```{math}
\begin{align*}
M_n = 1
\quad\text{and}\quad
m_n = -1
\end{align*}
```

Then the upper and lower sums are given by

```{math}
\begin{align*}
U(P,f,\alpha) = M_n [\alpha(0) - \alpha(x_{n-1})] = 2
\quad\text{and}\quad
L(P,f,\alpha) = m_n [\alpha(0) - \alpha(x_{n-1})] = -2
\end{align*}
```

Since the above equations hold for any partition $P$ on $[-3\pi, 0]$, we have

```{math}
\begin{align*}\upint_{-3\pi}^0 = 2
\quad\text{and}\quad\lowint_{-3\pi}^0 = -2
\end{align*}
```

Therefore, by {prf:ref}`thm:28`, $f$ is not integrable w.r.t. $\alpha$ on $[-3\pi, 0]$, and hence on $[-3\pi, 3\pi]$.

This proof is way cleaner than the one given in {prf:ref}`eg:4` thanks to Darboux's formulation of integrals.

````
