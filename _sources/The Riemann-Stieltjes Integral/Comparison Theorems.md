# Comparison Theorems

````{prf:theorem} 

Assume $\alpha$ is increasing and $f \geq 0$ on $[a, b]$.
If $f \in \mathfrak{R}(\alpha)$, then

```{math}
\int_a^b f \dif\alpha\geq 0

```

````

````{prf:proof}

Let $P$ be any partition of $[a, b]$.
On any subinterval $[x_{k-1}, x_k]$,
we have $f(x) \geq 0$ and hence

```{math}
\sup_{[x_{k-1}, x_k]} f(x) \Delta\alpha_k \geq 0

```

Summing up over $k$, we obtain

```{math}

U(P, f, \alpha) \geq 0

```

Finally, taking the infimum over $P$ yields

```{math}
\overline{\int_a^b} f \dif\alpha\geq 0

```

Because $f \in \mathfrak{R}(\alpha)$,
its integral equals to the upper integral,
hence greater than or equal to zero.

````

````{prf:corollary} 

Assume $\alpha$ is increasing and $f \leq g$ on $[a, b]$.
If $f, g \in \mathfrak{R}(\alpha)$, then

```{math}
\int_a^b f \dif\alpha\leq\int_a^b g \dif\alpha
```

````