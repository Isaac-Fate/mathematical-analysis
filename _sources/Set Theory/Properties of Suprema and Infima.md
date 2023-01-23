# Properties of Suprema and Infima

````{prf:theorem}
:label: thm:27

Let $f: X \to \R$ be a real-valued function. We have the following equation.

```{math}
:label: eq:66
\begin{align}\sup_{x \in X} f(x) - \inf_{x \in X} f(x)
= \sup_{x,y \in X}[f(x) - f(y)]\end{align}
```

````

````{prf:proof}

Let $M$ and $m$ denote

```{math}
\begin{align*}
M = \sup_{x \in X} f(x)
\quad\text{and}\quad
m = \inf_{x \in X} f(x)
\end{align*}
```

We have

```{math}
\begin{align*}
f(x) - f(y) \leq M - m
\quad\forall x,y \in X
\end{align*}
```

It then follows that

```{math}
:label: eq:67
\begin{align}\sup_{x,y \in X}[f(x) - f(y)]\leq M - m
\end{align}
```

On the other hand, given $\varepsilon > 0$, there exists $x, y \in X$ such that

```{math}
\begin{align}
f(x) > M - \varepsilon / 2
\quad\text{and}\quad
f(y) < m + \varepsilon / 2
\end{align}
```

It follows that

```{math}
\begin{align*}\sup_{x,y \in X}[f(x) - f(y)]\geq f(x) - f(y)
> M - m - \varepsilon\end{align*}
```

Because

```{math}
\begin{align*}\sup_{x,y \in X}[f(x) - f(y)]
> M - m - \varepsilon\end{align*}
```

holds for any $\varepsilon > 0$, we have

```{math}
:label: eq:68
\begin{align}\sup_{x,y \in X}[f(x) - f(y)]\geq M - m
\end{align}
```

Then, equation {eq}`eq:66` follows from {eq}`eq:67` and {eq}`eq:68`.

````
