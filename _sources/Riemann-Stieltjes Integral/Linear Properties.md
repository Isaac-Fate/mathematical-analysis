# Linear Properties
The integral is linear in the integrand. In other words, the integral of a linear combination of functions is equal to the linear combination of integrals of each function.


````{prf:theorem}
:label: thm:18

Suppose that $f, g \in \mathfrak{R}(\alpha)$ on $[a,b]$. Then $c_1 f + c_2 g \in \mathfrak{R}(\alpha)$ on $[a,b]$ where $c_1$ and $c_2$ are constants. In that case,

```{math}
\begin{align*}\int_a^b c_1 f + c_2 g \;\mathrm{d}\alpha
= c_1 \int_a^b f \;\mathrm{d}\alpha
+ c_2 \int_a^b g \;\mathrm{d}\alpha\end{align*}
```

````

````{prf:proof}

Let $P$ be a partition on $[a,b]$. The Riemann-Stieltjes sum of $c_1 f + c_2 g$ can be written as

```{math}
\begin{align*}
S(P, c_1 f + c_2 g, \alpha)
&= \sum_{k} c_1 f(t_k) + c_2 g(t_k) \Delta\alpha_k \\&= c_1 \sum_{k} f(t_k) \Delta\alpha_k
+ c_2 \sum_{k} g(t_k) \Delta\alpha_k \\&= c_1 S(P, f, \alpha) + c_2 S(P, g, \alpha)
\end{align*}
```

Given $\varepsilon > 0$. Since $f \in \mathfrak{R}(\alpha)$ on $[a,b]$ then there exists a partition $P_\varepsilon^{\prime}$
such that

```{math}
\begin{align*}\abs{S(P, f, \alpha) - \int_a^b f \; \mathrm{d}\alpha} < \frac{\varepsilon / 2}{1 + \abs{c_1}}\quad\forall P \supseteq P_\varepsilon^{\prime}\end{align*}
```

Similarly, since $g \in \mathfrak{R}(\alpha)$, there exists a partition $P_\varepsilon^{\prime\prime}$ such that

```{math}
\begin{align*}\abs{S(P, g, \alpha) - \int_a^b g \; \mathrm{d}\alpha} < \frac{\varepsilon / 2}{1 + \abs{c_2}}\quad\forall P \supseteq P_\varepsilon^{\prime\prime}\end{align*}
```

Let $P_\varepsilon$ be the refinement of $P_\varepsilon^{\prime}$ and $P_\varepsilon^{\prime\prime}$, i.e., $P = P_\varepsilon^{\prime} \cup P_\varepsilon^{\prime\prime}$. Then for any $P \supseteq P_\varepsilon$, we have

```{math}
\begin{align*}&\abs{
S(P, c_1 f + c_2 g, \alpha)
- c_1 \int_a^b f \; \mathrm{d}\alpha
- c_2 \int_a^b g \; \mathrm{d}\alpha
}\\&\leq\abs{c_1}\abs{S(P,f,\alpha) - \int_a^b f \; \mathrm{d}\alpha}
+ \abs{c_2}\abs{S(P,g,\alpha) - \int_a^b g \; \mathrm{d}\alpha}\\&< \abs{c_1}\frac{\varepsilon / 2}{1 + \abs{c_1}}
+ \abs{c_2}\frac{\varepsilon / 2}{1 + \abs{c_2}}\\&< \varepsilon\end{align*}
```

This completes the proof.

````
The integral is also linear in the integrator.


````{prf:theorem}
:label: thm:19

If $f \in \mathfrak{R}(\alpha)$ and $f \in \mathfrak{R}(\beta)$ on $[a,b]$, then $f \in \mathfrak{R}(c_1 \alpha + c_2 \beta)$ where $c_1$ and $c_2$ are constants. In that case,

```{math}
\begin{align*}\int_a^b f \;\mathrm{d}(c_1 \alpha + c_2 \beta)
= c_1 \int_a^b f \;\mathrm{d}\alpha
+ c_2 \int_a^b f \;\mathrm{d}\beta\end{align*}
```

````

````{prf:proof}

Let $P$ be a partition on $[a,b]$. We have

```{math}
\begin{align*}
S(P, f, c_1 \alpha + c_2 \beta)
&= \sum_{k=0} f(t_k) + \Delta(c_1 \alpha + c_2 \beta)_k \\&= c_1 \sum_{k=0} f(t_k) \Delta\alpha_k
+ c_2 \sum_{k=0} f(t_k) \Delta\beta_k \\&= c_1 S(P, f, \alpha) + c_2 S(P, f, \beta)
\end{align*}
```

Given $\varepsilon > 0$. Since $f \in \mathfrak{R}(\alpha)$ on $[a,b]$ then there exists a partition $P_\varepsilon^{\prime}$
such that

```{math}
\begin{align*}\abs{S(P, f, \alpha) - \int_a^b f \; \mathrm{d}\alpha} < \frac{\varepsilon / 2}{1 + \abs{c_1}}\quad\forall P \supseteq P_\varepsilon^{\prime}\end{align*}
```

Similarly, since $f \in \mathfrak{R}(\beta)$, there exists a partition $P_\varepsilon^{\prime\prime}$ such that

```{math}
\begin{align*}\abs{S(P, f, \beta) - \int_a^b f \; \mathrm{d}\beta} < \frac{\varepsilon / 2}{1 + \abs{c_2}}\quad\forall P \supseteq P_\varepsilon^{\prime\prime}\end{align*}
```

Let $P = P_\varepsilon^{\prime} \cup P_\varepsilon^{\prime\prime}$. Then for any $P \supseteq P_\varepsilon$, we have

```{math}
\begin{align*}&\abs{
S(P, f, c_1 \alpha + c_2 \beta)
- c_1 \int_a^b f \; \mathrm{d}\alpha
- c_2 \int_a^b f \; \mathrm{d}\beta
}\\&\leq\abs{c_1}\abs{S(P,f,\alpha) - \int_a^b f \; \mathrm{d}\alpha}
+ \abs{c_2}\abs{S(P,f,\beta) - \int_a^b f \; \mathrm{d}\beta}\\&< \abs{c_1}\frac{\varepsilon / 2}{1 + \abs{c_1}}
+ \abs{c_2}\frac{\varepsilon / 2}{1 + \abs{c_2}}\\&< \varepsilon\end{align*}
```

````
If we divide the interval $[a, b]$ into two parts with some point $c \in (a, b)$ in the middle, then the integral over the entire interval is the sum of the integrals on these two sub-intervals. This is also a kind of linearity of integrals considering the interval of integration.


````{prf:lemma}

Suppose $c \in (a, b)$. We have

```{math}
:label: eq:27
\begin{align}\int_a^b f \;\mathrm{d}\alpha
= \int_a^c f \;\mathrm{d}\alpha
+ \int_c^b f \;\mathrm{d}\alpha\end{align}
```

The existence of two integrals in {eq}`eq:27` will imply the existence of the third one.

````

````{prf:proof}

We have

```{math}
:label: eq:26
\begin{align}
S(P,f,\alpha) = S(P^\prime, f, \alpha) + S(P^{\prime\prime}, f, \alpha)
\quad\forall P = P^\prime\cup P^{\prime\prime}\end{align}
```

where $P$, $P^\prime$ and $P^{\prime\prime}$ are partitions on $[a, b]$, $[a, c]$ and $[c, b]$, respectively. Let $\varepsilon > 0$ be chosen arbitrarily.

(Proof of existence of $\int_a^b f \; \mathrm{d}\alpha$) Assume $\int_a^c f \; \mathrm{d}\alpha$ and $\int_c^b f \; \mathrm{d}\alpha$ exist. Then

```{math}
\begin{align*}\abs{S(P^\prime, f, \alpha) - \int_a^c f \; \mathrm{d}\alpha} < \varepsilon / 2
\quad\forall P^\prime\supseteq P_\varepsilon^\prime\end{align*}
```

for some $P_\varepsilon^\prime$ on $[a, c]$. And

```{math}
\begin{align*}\abs{S(P^{\prime\prime}, f, \alpha) - \int_a^c f \; \mathrm{d}\alpha} < \varepsilon / 2
\quad\forall P^{\prime\prime}\supseteq P_\varepsilon^{\prime\prime}\end{align*}
```

for some $P_\varepsilon^{\prime\prime}$ on $[c, b]$. Let

```{math}
\begin{align*}
P_\varepsilon = P_\varepsilon^\prime\cup P_\varepsilon^{\prime\prime}\end{align*}
```
(Note that $c \in P_\varepsilon$.) Let

```{math}
\begin{align*}
P &\supseteq P_\varepsilon&
P^\prime&= P \cap[a, c]&
P^{\prime\prime}&= P \cap[c, b]\end{align*}
```

Observe that

```{math}
\begin{align*}
P^\prime&\supseteq P_\varepsilon^\prime&
P^{\prime\prime}&\supseteq P_\varepsilon^{\prime\prime}\end{align*}
```

It then follows from {eq}`eq:26` that

```{math}
\begin{align*}&\abs{
S(P, f, \alpha)
- \int_a^c f \; \mathrm{d}\alpha
- \int_c^b f \; \mathrm{d}\alpha
}\\&\leq\abs{
S(P^\prime, f, \alpha)
- \int_a^c f \; \mathrm{d}\alpha
} + \abs{
S(P^{\prime\prime}, f, \alpha)
- \int_c^b f \; \mathrm{d}\alpha
}\\&< \varepsilon / 2 + \varepsilon / 2 \\&= \varepsilon\end{align*}
```

Therefore, $f \in \mathfrak{R}(\alpha)$ on $[a, b]$ and {eq}`eq:27` holds.

(Proof of existence of $\int_c^b f \; \mathrm{d}\alpha$) Assume $\int_a^b f \; \mathrm{d}\alpha$ and $\int_a^c f \; \mathrm{d}\alpha$ exist. Then

```{math}
\begin{align*}\abs{S(P, f, \alpha) - \int_a^b f \; \mathrm{d}\alpha} < \varepsilon / 2
\quad\forall P \supseteq P_\varepsilon\end{align*}
```

for some $P_\varepsilon$ on $[a, b]$. And

```{math}
\begin{align*}\abs{S(P^\prime, f, \alpha) - \int_a^c f \; \mathrm{d}\alpha} < \varepsilon / 2
\quad\forall P^\prime\supseteq P_\varepsilon^\prime\end{align*}
```

for some $P_\varepsilon^\prime$ on $[a, c]$.
Let

```{math}
\begin{align*}
P_\varepsilon^{\prime\prime} = (P_\varepsilon\cup P_\varepsilon^\prime) \cap[c, b]\end{align*}
```

Let

```{math}
\begin{align*}
P^{\prime\prime}&\supseteq P_\varepsilon^{\prime\prime}&
P^\prime&\supseteq(P_\varepsilon\cup P_\varepsilon^\prime) \cap[a, c]&
P &= P^\prime\cup P^{\prime\prime}\end{align*}
```

Observe that

```{math}
\begin{align*}
P^\prime&\supseteq P_\varepsilon^\prime&
P &= P^\prime\cup P^{\prime\prime}\supseteq(P_\varepsilon\cap[a, c]) \cup(P_\varepsilon\cap[c, b])
= P_\varepsilon\end{align*}
```

It then follows from {eq}`eq:26` that

```{math}
\begin{align*}&\abs{
S(P^{\prime\prime}, f, \alpha)
- \int_a^b f \; \mathrm{d}\alpha
+ \int_a^c f \; \mathrm{d}\alpha
}\\&\leq\abs{
S(P, f, \alpha)
- \int_a^b f \; \mathrm{d}\alpha
} + \abs{
S(P^\prime, f, \alpha)
- \int_a^c f \; \mathrm{d}\alpha
}\\&< \varepsilon / 2 + \varepsilon / 2 \\&= \varepsilon\end{align*}
```

Therefore, $f \in \mathfrak{R}(\alpha)$ on $[c, b]$ and {eq}`eq:27` holds.



(Proof of existence of $\int_a^c f \; \mathrm{d}\alpha$) Assume $\int_a^b f \; \mathrm{d}\alpha$ and $\int_c^b f \; \mathrm{d}\alpha$ exist. Then

```{math}
\begin{align*}\abs{S(P, f, \alpha) - \int_a^b f \; \mathrm{d}\alpha} < \varepsilon / 2
\quad\forall P \supseteq P_\varepsilon\end{align*}
```

for some $P_\varepsilon$ on $[a, b]$. And

```{math}
\begin{align*}\abs{S(P^{\prime\prime}, f, \alpha) - \int_c^b f \; \mathrm{d}\alpha} < \varepsilon / 2
\quad\forall P^{\prime\prime}\supseteq P_\varepsilon^{\prime\prime}\end{align*}
```

for some $P_\varepsilon^{\prime\prime}$ on $[c, b]$.
Let

```{math}
\begin{align*}
P_\varepsilon^\prime = (P_\varepsilon\cup P_\varepsilon^{\prime\prime}) \cap[a, c]\end{align*}
```

Let

```{math}
\begin{align*}
P^\prime&\supseteq P_\varepsilon^\prime&
P^{\prime\prime}&\supseteq(P_\varepsilon\cup P_\varepsilon^{\prime\prime}) \cap[c, b]&
P &= P^\prime\cup P^{\prime\prime}\end{align*}
```

Observe that

```{math}
\begin{align*}
P^{\prime\prime}&\supseteq P_\varepsilon^{\prime\prime}&
P &= P^\prime\cup P^{\prime\prime}\supseteq(P_\varepsilon\cap[a, c]) \cup(P_\varepsilon\cap[c, b])
= P_\varepsilon\end{align*}
```

It then follows from {eq}`eq:26` that

```{math}
\begin{align*}&\abs{
S(P^\prime, f, \alpha)
- \int_a^b f \; \mathrm{d}\alpha
+ \int_c^b f \; \mathrm{d}\alpha
}\\&\leq\abs{
S(P, f, \alpha)
- \int_a^b f \; \mathrm{d}\alpha
} + \abs{
S(P^{\prime\prime}, f, \alpha)
- \int_c^b f \; \mathrm{d}\alpha
}\\&< \varepsilon / 2 + \varepsilon / 2 \\&= \varepsilon\end{align*}
```

Therefore, $f \in \mathfrak{R}(\alpha)$ on $[a, c]$ and {eq}`eq:27` holds.


````

````{prf:theorem}
:label: thm:25

The existence of two integrals in {eq}`eq:44` will imply the existence of the third one.

```{math}
:label: eq:44
\begin{align}\int_a^b f \;\mathrm{d}\alpha
= \int_a^c f \;\mathrm{d}\alpha
+ \int_c^b f \;\mathrm{d}\alpha\end{align}
```

````
