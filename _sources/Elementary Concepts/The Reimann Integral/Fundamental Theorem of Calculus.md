# Fundamental Theorem of Calculus

````{prf:theorem} First Fundamental Theorem of Calculus
:label: thm:48

Suppose $f \in\mathfrak{R}$ on $[a, b]$. Define function $F$ by 

```{math}
\begin{align*}
F := \int_a^x f(t) \;\mathrm{d}t
\end{align*}
```

Then
1. $F$ is of bounded variation on $[a, b]$, and 

2. $F$ is continuous on $[a, b]$, and 

3. $F$ is differentiable at $x_0 \in(a, b)$ if $f$ is continuous at $x_0$. In this case,

```{math}
\begin{align*}
F^\prime(x_0) = f(x_0)
\end{align*}
```



````

````{prf:proof}

This theorem follows directly from {prf:ref}`thm:42`.

````
