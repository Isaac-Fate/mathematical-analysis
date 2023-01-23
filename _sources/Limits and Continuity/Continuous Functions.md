# Continuous Functions

The next theorem states that the composite function of continuous functions is also continuous.


````{prf:theorem}
:label: thm:3

Let $(X, d_X)$, $(Y, d_Y)$ and $(Z, d_Z)$ be metric spaces. Let $f: X \to Y$ and $g: Y \to Z$ be functions, and let $h = g \circ f$ be the composite function defined on $X$. If $f$ is continuous at $p \in X$, and $g$ is continuous at $f(p)$, then $h$ is continuous at $p$.

````

````{prf:proof}

Given $\varepsilon > 0$, since $g$ is continuous at $f(p)$, there exists some $\delta^\prime > 0$ such that

```{math}
:label: eq:7
\begin{align}
d_Y(y, f(p)) < \delta^\prime\implies d_Z(g(y), g(f(p))) < \varepsilon\end{align}
```

And since $f$ is continuous at $p$, there exists some $\delta > 0$ such that

```{math}
:label: eq:8
\begin{align}
d_X(x, p) < \delta\implies d_Y(f(x), f(p)) < \delta^\prime\end{align}
```

Now, choosing $x \in X$ satisfying $d_X(x, p) < \delta$, and then applying {eq}`eq:8` followed by {eq}`eq:7`, we have

```{math}
\begin{align*}
d_Z(g(f(x)), g(f(p))) < \varepsilon\end{align*}
```

This is precisely $d_Z(h(x), h(p)) < \varepsilon$. Hence, $h$ is continuous at $p$.

````

````{prf:theorem}
:label: thm:6

Let $f: X \to \R$ be a real-valued continuous function from a metric space $X$ to $\R$. Let $K \subset X$ be a compact subset. Then there exist points $p, q \in K$ such that

```{math}
\begin{align*}
f(p) = \sup f(K)
\quad\text{and}\quad
f(q) = \inf f(K)
\end{align*}
```

````
