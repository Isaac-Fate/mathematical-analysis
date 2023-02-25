# Integral as a Function of Its Upper Limit

````{prf:theorem}
:label: thm:79

Let $\alpha$ be of bounded variation on $[a, b]$.
Suppose that $f \in \mathfrak{R}(\alpha)$ on $[a, b]$.
Define

```{math}
\begin{align*}
F(x) = \int_a^x f \;\mathrm{d}\alpha,
\quad x \in[a, b]\end{align*}
```

We have the following:
- ➀ $F$ is of bounded variation on $[a, b]$.
- ➁ $F$ is continuous at the point where $\alpha$ is continuous.
- ➂ If $\alpha$ is increasing,
then $F^\prime(x)$ exists at each $x \in (a, b)$
where $\alpha^\prime(x)$ exists
and $f$ is continuous. For such $x$, we have

```{math}
\begin{align*}
F^\prime(x) = f(x) \alpha^\prime(x)
\end{align*}
```


````

````{prf:proof}

It suffices to prove this theorem when $\alpha$ is increasing.

(Proof of 1) Let $P$ be any partition on $[a, b]$.
We have

```{math}
\begin{align*}
V(P,F) = \sum_{k}\abs{
\int_{x_{k-1}}^{x_k} f \; \mathrm{d} \alpha
}\leq\sum_{k}\int_{x_{k-1}}^{x_k}\abs{f}\;\mathrm{d}\alpha
= \int_{a}^{b}\abs{f}\;\mathrm{d}\alpha\end{align*}
```

Hence, $F$ is of bounded of variation on $[a, b]$
since the right-hand side does not depend on $P$.

(Proof of 2) There exits $M > 0$ such that $\abs{f} \leq M$.
Suppose $\alpha$ is continuous at $c$.
We have

```{math}
\begin{align*}\abs{F(x) - F(c)}
= \abs{
\int_c^x f \; \mathrm{d} \alpha
}\leq\int_c^x \abs{f}\;\mathrm{d}\alpha\leq M [\alpha(x) - \alpha(c)
]\end{align*}
```

By taking $x \to c$ on both sides, we see that
the limit $\lim_{x \to c} F(x)$ exists, and it equals $F(c)$.
Hence, $F$ is also continuous at $c$.

(Proof of 3) Suppose $\alpha^\prime(c)$ exits and $f$ is
continuous at $c$.
Applying the first mean value theorem ({prf:ref}`thm:77`),
there exists a number $\xi$ in the closed interval
joining $x$ and $c$($x \neq c$) such that

```{math}
\begin{align*}
F(x) - F(c)
= \int_c^x f \;\mathrm{d}\alpha
= f(\xi) [\alpha(x) - \alpha(c) ]\end{align*}
```

Dividing by $(x - c)$ on both sides yields

```{math}
\begin{align*}\frac{F(x) - F(c)}{x - c}
= f(\xi) \frac{\alpha(x) - \alpha(c)}{x - c}\end{align*}
```

Since $f$ is continuous at $c$ and $\alpha^\prime(c)$ exists.
The limit of the left-hand side exists as $x \to c$.
Hence, $F^\prime(c)$ exists.
Letting $x \to c$, we have

```{math}
\begin{align*}
F^\prime(c) = \lim_{x \to c}\frac{F(x) - F(c)}{x - c}
= f(c) \alpha^\prime(c)
\end{align*}
```

````
