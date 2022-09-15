# Integration by Parts

````{prf:theorem}

If $f \in\mathfrak{R}(\alpha)$ on $[a, b]$, then $\alpha\in\mathfrak{R}(f)$ on $[a, b]$, and 

```{math}
\begin{align*}\int_a^b f \;\mathrm{d}\alpha
+ \int_a^b \alpha\;\mathrm{d}f
= f(b)\alpha(b) - f(a)\alpha(a)
\end{align*}
```

````

````{prf:remark}

This can be treated as the *reciprocity law* for integrals.

````

````{prf:proof}

Given $\varepsilon > 0$, since $f \in\mathfrak{R}(\alpha)$ on $[a, b]$, there exists a partition $P_\varepsilon$ such that 

```{math}
:label: eq:57
\begin{align}\abs{S(P, f, \alpha) - \int_a^b f \; \mathrm{d}\alpha} < \varepsilon\quad\forall P \supset P_\varepsilon\end{align}
```

Let $P = \left\{x_0, x_1, \ldots, x_n\right\}\supset P_\varepsilon$ be any refinement of $P_\varepsilon$. The Riemann-Stieltjes sum of $\alpha$ with respect to $f$ is 

```{math}
:label: eq:54
\begin{align}
S(P, \alpha, f)
= \sum_{k=1}^n \alpha(t_k) (f(x_k) - f(x_{k-1}))
= \sum_{k=1}^n \alpha(t_k) f(x_k)
- \sum_{k=1}^n \alpha(t_k) f(x_{k-1})
\end{align}
```

Let 

```{math}
:label: eq:56
\begin{align}
P^\ast = P \cup\set{t_k}{1 \leq k \leq n}\end{align}
```

Denote by $A$ the value 

```{math}
\begin{align*}
A = f(b)\alpha(b) - f(a)\alpha(a)
\end{align*}
```

Note that $A$ can be written as 

```{math}
:label: eq:55
\begin{align}
A = \sum_{k=1}^n f(x_k) \alpha(x_k)
- \sum_{k=1}^n f(x_{k-1}) \alpha(x_{k-1})
\end{align}
```

Subtracting {eq}`eq:54` from {eq}`eq:54`, we obtain

```{math}
\begin{align*}
A - S(P, \alpha, f)
= \sum_{k=1}^n f(x_k) (\alpha(x_k) - \alpha(t_k))
+ \sum_{k=1}^n f(x_{k-1}) (\alpha(t_k) - \alpha(x_{k-1}))
\end{align*}
```

By recalling the construction of $P^\ast$ in {eq}`eq:56`, we observe that the right-hand side of the above equation is precisely the Riemann-Stieltjes sum $S(P^\ast, f, \alpha)$. That is, 

```{math}
\begin{align*}
A - S(P, \alpha, f) = S(P^\ast, f, \alpha)
\end{align*}
```

Since $P^\ast\supset P \supset P_\varepsilon$, it follows from {eq}`eq:57` that 

```{math}
\begin{align*}\abs{A - S(P, \alpha, f) - \int_a^b f \; \mathrm{d}\alpha} 
= \abs{S(P^\ast, f, \alpha) - \int_a^b f \; \mathrm{d}\alpha}
< \varepsilon\end{align*}
```

Recall $A = f(b)\alpha(b) - f(a)\alpha(a)$, we have 

```{math}
\begin{align*}\abs{S(P, \alpha, f) + \int_a^b f \; \mathrm{d}\alpha - f(b)\alpha(b) + f(a)\alpha(a)} < \varepsilon\quad\forall P \supset P_\varepsilon\end{align*}
```

This implies that $\alpha\in\mathfrak{R}(f)$ on $[a, b]$, and 

```{math}
\begin{align*}\int_a^b f \;\mathrm{d}\alpha
= -\int_a^b f \;\mathrm{d}\alpha 
+ f(b)\alpha(b) - f(a)\alpha(a)
\end{align*}
```

````
