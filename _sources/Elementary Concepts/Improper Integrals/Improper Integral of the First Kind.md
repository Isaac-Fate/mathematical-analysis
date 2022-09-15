# Improper Integral of the First Kind

````{prf:definition}

Suppose $f \in\mathfrak{R}$ on $[a,b]$ for all $b \geq a$ where $a$ is fixed. Define 

```{math}
:label: eq:49
\begin{align}\int_a^\infty f(x) \\mathrm{d}x
= \lim_{b \to \infty}\int_a^b f(x) \\mathrm{d}x
\end{align}
```

provided that the limit exists and is **finite**. In that case, we say the integral on the left-hand side of {eq}`eq:49`**converges**. And this kind of improper integral with infinite integration limits is called the **improper integral of the first kind**. If 

```{math}
\begin{align*}\int_a^\infty\abs{f(x)}\\mathrm{d}x
= \lim_{b \to \infty}\int_a^b \abs{f(x)}\\mathrm{d}x
< \infty\end{align*}
```

the integral $\int_a^\infty f(x) \\mathrm{d}x$ is said to converge **absolutely**.

````

````{prf:theorem}

Suppose that $f \in\mathfrak{R}$ on $[a,b]$ for all $b \geq a$, and $f \geq 0$ on $[a, \infty)$. Let $F(b) = \int_a^b f(x) \\mathrm{d}x$. Then $\int_a^\infty f(x) \\mathrm{d}x$ converges if and only if $F(b)$ is bounded on $[a, \infty)$.

````

````{prf:proof}

Assume first $\int_a^\infty f(x) \\mathrm{d}x$ converges, then $F(\infty) < \infty$. $F$ increases monotonically since $f \geq 0$. It follows that $F(b) \leq F(\infty) < \infty$, hence bounded. Conversely, if $F(b)$ is bounded on $[a, \infty)$, then by {prf:ref}`pro:2`, $F(\infty)$ exists, i.e., $\int_a^\infty f(x) \\mathrm{d}x$ converges since $F$ is increasing.

````

````{prf:theorem}
:label: thm:25

Suppose that $f, g \in\mathfrak{R}$ on $[a, b]$ for all $b \geq a$, and $f$ and $g$ satisfy the following inequality for sufficiently large $x$:

```{math}
\begin{align*}
0 \leq f(x) \leq g(x)
\quad\forall x > c
\end{align*}
```

where $c$ is a constant. Then we have 
1. $\int_a^\infty f(x) \\mathrm{d}x$ converges if $\int_a^\infty g(x) \\mathrm{d}x$ converges.

2. $\int_a^\infty g(x) \\mathrm{d}x$ diverges if $\int_a^\infty f(x) \\mathrm{d}x$ diverges.



````

````{prf:proof}
TODO
````

````{prf:theorem}

Suppose that $f, g \in\mathfrak{R}$ on $[a, b]$ for all $b \geq a$, and $g(x) > 0$ for sufficiently large $x$. Let $l$ be the limit of ratio of $f(x)$ to $g(x)$, i.e., 

```{math}
\begin{align*}\lim_{x \to \infty}\frac{f(x)}{g(x)} = l
\end{align*}
```

We have the following:
1.  If $0 < l < \infty$, then $\int_a^\infty f(x) \\mathrm{d}x$ and $\int_a^\infty g(x) \\mathrm{d}x$ both converge or both diverge. In other words, $\int_a^\infty f(x) \\mathrm{d}x$ converges if and only if $\int_a^\infty g(x) \\mathrm{d}x$ converges.

2.  If $l = 0$, then $\int_a^\infty f(x) \\mathrm{d}x$ converges if $\int_a^\infty g(x) \\mathrm{d}x$ converges.

3.  If $l = \infty$, then $\int_a^\infty f(x) \\mathrm{d}x$ diverges if $\int_a^\infty g(x) \\mathrm{d}x$ diverges.



````

````{prf:remark}

Note that all the conclusions are about $\int_a^\infty f(x) \\mathrm{d}x$. Indeed, the test is used to determine the convergence of $\int_a^\infty f(x) \\mathrm{d}x$ based on the knowledge of convergence of $\int_a^\infty g(x) \\mathrm{d}x$
````

````{prf:proof}
(Proof of 1) Choose $0 < \varepsilon < l$. Then there exists $c > a$ such that 

```{math}
\begin{align*}\abs{\frac{f(x)}{g(x)} - l} < \varepsilon\quad\forall x > c
\end{align*}
```

and $g(x) > 0 \\forall x > c$. It follows that 

```{math}
\begin{align*}(l - \varepsilon) g(x) < f(x) < (l + \varepsilon) g(x)
\quad\forall x > c
\end{align*}
```

By the Comparison Test ({prf:ref}`thm:25`), 

```{math}
\begin{align*}
0 < (l - \varepsilon) g(x) < f(x)
\quad\forall x > c
\end{align*}
```

implies that $\int_a^\infty g(x) \\mathrm{d}x$ converges if $\int_a^\infty f(x) \\mathrm{d}x$ converges. Similarly,

```{math}
\begin{align*}
0 \leq f(x) < (l + \varepsilon) g(x)
\quad\forall x > c
\end{align*}
```

implies that $\int_a^\infty f(x) \\mathrm{d}x$ converges if $\int_a^\infty g(x) \\mathrm{d}x$ converges.



(Proof of 2) Choose a positive number $\varepsilon > 0$. There exists $c > a$ such that 

```{math}
\begin{align*}\abs{\frac{f(x)}{g(x)}} < \varepsilon\quad\forall x > c
\end{align*}
```

and $g(x) > 0 \\forall x > c$. Rearranging the above inequality, we obtain

```{math}
\begin{align*}
0 \leq f(x) <  \varepsilon g(x)
\end{align*}
```

Thus, it follows from the Comparison Test that $\int_a^\infty f(x) \\mathrm{d}x$ converges if $\int_a^\infty g(x) \\mathrm{d}x$ converges. 



(Proof of 3) Choose a positive number $M > 0$. By the definition of infinite limits, there exists $c > a$ such that 

```{math}
\begin{align*}\frac{f(x)}{g(x)} > M
\quad\forall x > c
\end{align*}
```

and $g(x) > 0 \\forall x > c$. It follows that 

```{math}
\begin{align*}
f(x) > M g(x) > 0
\quad\forall x > c
\end{align*}
```

Then $\int_a^\infty f(x) \\mathrm{d}x$ diverges if $\int_a^\infty g(x) \\mathrm{d}x$ diverges.

````

````{prf:theorem}
:label: thm:22

Suppose that $f \geq 0$ and $f$ decreases monotonically on $[1, \infty)$. Then 

```{math}
\begin{align*}\int_1^\infty f(x) \\mathrm{d}x
\end{align*}
```

converges if and only if 

```{math}
\begin{align*}\sum_{n=1}^\infty f(n)
\end{align*}
```

converges.

````

````{prf:proof}
TODO
````
