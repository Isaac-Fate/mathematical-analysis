# Monotonic Functions

````{prf:theorem}
:label: thm:15

If $f$ is increasing on $[a, b]$, then $f(c+)$ and $f(c-)$ both exists for every $c \in (a, b)$, and we have

```{math}
\begin{align*}
f(c-) \leq f(c) \leq f(c+)
\end{align*}
```

As the endpoints, we have $f(a+)$ and $f(b-)$ both exists and

```{math}
:label: eq:18
\begin{align}
f(a) \leq f(a+)
\quad\text{and}\quad
f(b-) \leq f(b)
\end{align}
```

Analogous results exist for $f$ being a decreasing function.

````

````{prf:proof}

We only prove this theorem for increasing functions. Let $c \in (a, b)$ be an interior point.

(Existence of $f(c-)$) Define a set

```{math}
\begin{align*}
A = \set{f(x)}{a \leq x < c}\end{align*}
```

Note that $A$ is bounded above by $f(c)$ since $f$ is increasing. Then $A$ has the least upper bound, say $\alpha = \sup A$. We want to show that $f(c-)$ exists and equals $\alpha$. Given $\varepsilon > 0$, by the property of $\alpha$, there exists $x_\varepsilon = (c - \delta) \in \left[a, c \right)$ such that ($\delta$ depends on $\varepsilon$)

```{math}
\begin{align*}
f(c - \delta) > \alpha - \varepsilon\end{align*}
```

Because $f$ is increasing, we have

```{math}
\begin{align*}\alpha\geq f(x) \geq f(c-\delta) > \alpha-\varepsilon\quad\forall x \in(c-\delta, c)
\end{align*}
```

This implies that

```{math}
\begin{align*}\abs{f(x) - \alpha} < \varepsilon\quad\forall x \in(c-\delta, c)
\end{align*}
```

Hence, $\alpha$ is the left-hand limit of $f$ at $x = c$, i.e., $f(c-) = \alpha$. Recall $A$ is bounded above by $f(c)$. We have $\alpha \leq f(c)$, i.e.,

```{math}
\begin{align*}
f(c-) \leq f(c)
\end{align*}
```
(Existence of $f(c+)$) Define

```{math}
\begin{align*}
B = \set{f(x)}{c < x \leq b}\end{align*}
```

Let $\beta$ be the greatest lower bound of $B$. A similar argument shows that $f(c+)$, and $f(c+) = \beta$ with

```{math}
\begin{align*}
f(c) \leq f(c+)
\end{align*}
```
(Existence of $f(a+)$ and $f(b-)$) The existence of $f(a+)$ and $f(b-)$ along with {eq}`eq:18` can be proved by the exact argument as before.

````
