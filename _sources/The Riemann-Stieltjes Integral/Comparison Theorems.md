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
:label: cor:2

Assume $\alpha$ is increasing and $f \leq g$ on $[a, b]$.
If $f, g \in \mathfrak{R}(\alpha)$, then

```{math}
\int_a^b f \dif\alpha\leq\int_a^b g \dif\alpha
```

````

````{prf:theorem} 
:label: eq:47

Assume $\alpha$ is increasing on $[a, b]$.
If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$,
then $\abs{f} \in \mathfrak{R}(\alpha)$ on $[a, b]$, and

```{math}
:label: eq:47
\abs{\int_a^b f \dif \alpha}\leq\int_a^b \abs{f}\dif\alpha
```

````

````{prf:proof}

Let $\varepsilon > 0$ be arbitrary.
Because $f \in \mathfrak{R}(\alpha)$ on $[a, b]$
equivalently, satisfying the Riemann's condition,
there exists a partition $P_\varepsilon = \{x_0, \ldots, x_n\}$
such that $U(P, f, \alpha) - L(P, f, \alpha) < \varepsilon$.
On each subinterval $I_k = [x_{k-1}, x_k]$, we have

```{math}
\omega_{\abs{f}}(I_k)
= \sup_{x, y \in I_k}( \abs{f(x)} - \abs{f(y)})
\leq\sup_{x, y \in I_k}\abs{ f(x) - f(y) }
= \omega_f(I_k)

```

Multiplying by $\Delta \alpha_k$ on both sides and then summing over $k$,
we obtain

```{math}

U(P_\varepsilon, \abs{f}, \alpha) - L(P_\varepsilon, \abs{f}, \alpha)
& = \sum_{k=1}^n \omega_{\abs{f}}(I_k) \Delta\alpha_k \\& \leq\sum_{k=1}^n \omega_{f}(I_k) \Delta\alpha_k \\& = U(P_\varepsilon, f, \alpha) - L(P_\varepsilon, f, \alpha) \\& < \varepsilon
```

This implies that $\abs{f}$ also satisfies the Riemann's condition
and hence integrable.

Then, since $-\abs{f} \leq f \leq \abs{f}$, {eq}`eq:47`
is proved by applying {prf:ref}`cor:2`.

````