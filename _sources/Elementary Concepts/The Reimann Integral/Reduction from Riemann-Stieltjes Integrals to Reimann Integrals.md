# Reduction from Riemann-Stieltjes Integrals to Reimann Integrals

````{prf:theorem}

If $f \in\mathfrak{R}(\alpha)$ on $[a, b]$, and $\alpha$ is continuously differentiable on $[a, b]$, i.e., $\alpha^\prime(x)$ exists for every $x \in[a, b]$ and $\alpha^\prime$ is continuous on $[a, b]$, then $f \alpha^\prime\in\mathfrak{R}$, and 

```{math}
:label: eq:85
\begin{align}\int_a^b f \;\mathrm{d}\alpha
= \int_a^b f(x) \alpha^\prime(x) \;\mathrm{d}x
\end{align}
```

````

````{prf:proof}

Choose an arbitrarily positive number $\varepsilon > 0$. Since $f \in\mathfrak{R}(\alpha)$, there exists a partition $P_\varepsilon$ such that 

```{math}
:label: eq:80
\begin{align}\abs{S(P, f, \alpha) - \int_a^b f \; \mathrm{d}\alpha} < \frac{\varepsilon}{2}\quad\forall P \supset P_\varepsilon\end{align}
```

On the other hand, because $\alpha^\prime$ is continuous, actually uniformly continuous on $[a, b]$, there exist $\delta > 0$ such that 

```{math}
:label: eq:81
\begin{align}\abs{s - t} < \delta\implies\abs{\alpha^\prime(s) - \alpha^\prime(t)} < \frac{\varepsilon}{2M(b-a)}\end{align}
```

where $M$ is a constant positive number such that $\abs{f(x)} < M \;\forall x \in[a, b]$. Let $P^\prime_\varepsilon\supset P_\varepsilon$ be a refinement such that the length of each subinterval is bounded by $\delta$, i.e., $\Delta x_k < \delta$.



Let $P \supset P^\prime_\varepsilon$. We compare the Riemann sum $S(P, f \alpha^\prime)$ to $\int_a^b f \;\mathrm{d}\alpha$:

```{math}
:label: eq:82
\begin{align}\abs{
S(P, f \alpha^\prime)
- \int_a^b f \; \mathrm{d}\alpha
}&\leq\abs{
S(P, f \alpha^\prime)
- S(P, f, \alpha)
} + \abs{
S(P, f, \alpha)
- \int_a^b f \; \mathrm{d}\alpha
}\end{align}
```

where $S(P, f \alpha^\prime)$ and $S(P, f, \alpha)$ share the same choice of point $t_k$ in each subinterval $[x_{k-1}, x_k]$. We consider each term on the right-hand side of {eq}`eq:82` in the following.



For the term $\abs{ S(P, f \alpha^\prime) - S(P, f, \alpha) }$, we have 

```{math}
\begin{align*}\abs{ 
S(P, f \alpha^\prime) 
- S(P, f, \alpha) 
}&= \abs{
\sum \left ( f(t_k) \alpha^\prime(t_k) \Delta x_k - f(t_k) \Delta \alpha_k \right )
}\\&= \abs{
\sum  f(t_k) \left ( \alpha^\prime(t_k)  - \alpha^\prime(\xi_k) \right ) \Delta x_k
}\quad\text{by the Mean Value Theorem}\\&\leq\sum\abs{f(t_k)}\abs{
\alpha^\prime(t_k)  
- \alpha^\prime(\xi_k)
}\Delta x_k \\&\leq M \sum\abs{
\alpha^\prime(t_k)  
- \alpha^\prime(\xi_k)
}\Delta x_k 
\quad\text{recall $\abs{f} < M$}\\&< M \frac{\varepsilon}{2M(b-a)}\sum\Delta x_k \\&= \frac{\varepsilon}{2}\end{align*}
```

Note that the second last inequality follows from {eq}`eq:81` since $\abs{t_k - \xi_k} < \delta$. In summary, we have obtained

```{math}
:label: eq:83
\begin{align}\abs{ 
S(P, f \alpha^\prime) 
- S(P, f, \alpha) 
} < \frac{\varepsilon}{2}\end{align}
```


We also need to consider the term $\abs{S(P, f, \alpha) - \int_a^b f \; \mathrm{d}\alpha}$ in {eq}`eq:82`. Recall that $P \supset P_\varepsilon$. It then follows from {eq}`eq:80` that 

```{math}
:label: eq:84
\begin{align}\abs{
S(P, f, \alpha)
- \int_a^b f \; \mathrm{d}\alpha
} < \frac{\varepsilon}{2}\end{align}
```


Finally, taking into consideration {eq}`eq:82`, {eq}`eq:83` and {eq}`eq:84`, we obtain

```{math}
\begin{align*}\abs{
S(P, f \alpha^\prime)
- \int_a^b f \; \mathrm{d}\alpha
} < \frac{\varepsilon}{2} + \frac{\varepsilon}{2}
= \varepsilon\quad\forall P \supset P^\prime_\varepsilon\end{align*}
```

This implies that $f\alpha^\prime\in\mathfrak{R}$, and {eq}`eq:85` indeed holds.

````

````{prf:theorem}
:label: thm:43

Suppose $f, g \in\mathfrak{R}$ on $[a, b]$. Let functions $F, G$ on $[a, b]$ be defined by

```{math}
\begin{align*}
F(x) &:= \int_a^x f(t) \;\mathrm{d}t & 
G(x) &:= \int_a^x g(t) \;\mathrm{d}t
\end{align*}
```

Then $F$ and $G$ are both continuous and of bounded variation on $[a, b]$. Moreover, $f \in\mathfrak{R}(G)$ and $g \in\mathfrak{R}(F)$. In this case, 

```{math}
:label: eq:103
\begin{align}\int_a^b f(x) g(x) \;\mathrm{d}x
= \int_a^b f \;\mathrm{d}G
= \int_a^b g \;\mathrm{d}F
\end{align}
```

````

````{prf:proof}

By {prf:ref}`thm:42`, we know $F$ and $G$ are of bounded variation on $[a, b]$. In addition, since identity integrator $t$ is clearly continuous on $[a, b]$, it follows that $F$ and $G$ are also continuous. 



Then, by {prf:ref}`thm:41`, we have $f \in\mathfrak{R}(G)$ and $g \in g \in\mathfrak{R}(F)$, and the equality {eq}`eq:103` holds.

````

````{prf:theorem}
:label: thm:45

Suppose $f \in\mathfrak{R}$ on $[a, b]$. If function $F$ is defined on $(a, b)$ with 

```{math}
\begin{align*}
F^\prime(x) = f(x)
\quad\forall x \in(a, b)
\end{align*}
```

Moreover, suppose $F(a+)$ and $F(b-)$ both exist as **finite** values. Then we have 

```{math}
:label: eq:106
\begin{align}\int_a^b f(x) \;\mathrm{d}x
= F(b-) - F(a+)
\end{align}
```

````

````{prf:proof}
(Extension of $F$) We first extend the function $F$ to the entire closed interval $[a, b]$ by defining

```{math}
\begin{align*}
F(a) &:= F(a+) &
F(b) &:= F(b-)
\end{align*}
```


(Applying Mean Value Theorem) For a partition $P$ on $[a, b]$, we have 

```{math}
\begin{align*}
F(b-) - F(a+) = F(b) - F(a) = \sum_k F(x_k) - F(x_{k-1})
\end{align*}
```

Then, by applying the extended version of Generalized Mean Value Theorem ({prf:ref}`thm:44`), there exists $t_k \in(x_k, x_{k-1})$ such that 

```{math}
\begin{align*}
F(x_k) - F(x_{k-1}) = f(t_k) \Delta x_k
\end{align*}
```

It then follows that 

```{math}
:label: eq:104
\begin{align}
F(b-) - F(a+) = \sum_k f(t_k) \Delta x_k
= S(P, f)
\end{align}
```


(Applying Integrability) Given $\varepsilon > 0$, since $f \in\mathfrak{R}$ on $[a, b]$, there exists a partition $P_\varepsilon$ such that for any refinement $P \supset P_\varepsilon$, we have 

```{math}
:label: eq:105
\begin{align}\abs{S(P, f) - \int_a^b f \; \mathrm{d}x} < \varepsilon\quad\forall P \supset P_\varepsilon\end{align}
```

Equation {eq}`eq:106` then follows from {eq}`eq:104` and {eq}`eq:105`.

````

````{prf:example}

Consider function 

```{math}
\begin{align*}
F(x) = \frac{x \sin(1 - x^2)}{1 - x^2}\quad x \in(-1, 1)
\end{align*}
```

The derivative $f$ of $F$ exists on $(-1, 1)$. After some computation, we will obtain the following expression for $f$:

```{math}
\begin{align*}
f(x) = F^\prime(x)
= \frac{(1+x^2)\sin(1-x^2) - 2x^2(1-x^2)\cos(1-x^2)}{(1-x^2)^2}\quad x \in(-1, 1)
\end{align*}
```

Note that $f$ is clearly continuous. Though $f$ is defined in $(-1, 1)$, the one-sided limits at two endpoints both exist, and 

```{math}
:label: eq:107
\begin{align}
f(-1+) = f(1-) = 1
\end{align}
```

The above result {eq}`eq:107` is not that obvious, and is left as an exercise ({ref}`ex:1`). Hence, we can extend $f$ on $[-1, 1]$ by defining

```{math}
\begin{align*}
f(-1) &:= 1 &
f(1) &:= 1
\end{align*}
```

and $f$ remains continuous on $[-1, 1]$.
The plotting of $f$ and $F$ is illustrated in {ref}`fig:1`.

```{figure} /Users/isaac/Documents/math/mathematical-analysis/tex/figures/reimann-integral-001.png
---
name: fig:1
---

```


Now, we want to compute the integral of $f$ on $[-1, 1]$, i.e., $\int_{-1}^1 f(x) \;\mathrm{d}x$. Applying {prf:ref}`thm:45`, we have 

```{math}
\begin{align*}\int_{-1}^1 f(x) \;\mathrm{d}x
= F(1-) - F(-1+)
= 1 - (-1)
=2
\end{align*}
```

````

````{admonition} Exercise
:class: note
:label: ex:1

Let $f$ be given by 

```{math}
\begin{align*}
f(x)
= \frac{(1+x^2)\sin(1-x^2) - 2x^2(1-x^2)\cos(1-x^2)}{(1-x^2)^2}\quad x \in(-1, 1)
\end{align*}
```

Show that $f(-1+)$ and $f(1-)$ both exist, and 

```{math}
\begin{align*}
f(-1+) = f(1-) = 1
\end{align*}
```
````

````{admonition} Solution
:class: tip, dropdown
TODO
````

````{prf:theorem}
:label: thm:46

Suppose $f \in\mathfrak{R}$ and $\alpha$ is continuous on $[a, b]$. Suppose further $\alpha^\prime$ exists and $\alpha^\prime\in\mathfrak{R}$ on $[a, b]$. Then $f \in\mathfrak{R}(\alpha)$ and $f \alpha^\prime\in\mathfrak{R}$ on $[a, b]$. In this case,

```{math}
:label: eq:111
\begin{align}\int_a^b f(x) \;\mathrm{d}\alpha(x)
= \int_a^b f(x) \alpha^\prime(x) \;\mathrm{d}x
\end{align}
```

````

````{prf:remark}

Note that the requirement of $\alpha$ being continuous is actually redundant since we assume that $\alpha^\prime$ exists on $[a, b]$. 

````

````{prf:proof}

Since $f, \alpha^\prime\in\mathfrak{R}$, it follows from {prf:ref}`thm:39` that their product is also integrable, i.e., $f \alpha^\prime\in\mathfrak{R}$. {prf:ref}`thm:43` tells us we may put $\alpha^\prime$ into the integrator in the sense that 

```{math}
:label: eq:108
\begin{align}\int_a^b f(x) \alpha^\prime(x) \;\mathrm{d}x
= \int_a^b f(x) \;\mathrm{d} A(x)
\end{align}
```

where 

```{math}
\begin{align*}
A(x) = \int_a^x \alpha^\prime(t) \;\mathrm{d}t
\end{align*}
```


But we know from {prf:ref}`thm:45` that

```{math}
\begin{align*}\alpha(x) - \alpha(a) = \int_a^x \alpha^\prime(t) \;\mathrm{d}t
\end{align*}
```

which implies 

```{math}
\begin{align*}
A(x) = \alpha(x) - \alpha(a)
\end{align*}
```

Then {eq}`eq:108` reduces to 

```{math}
:label: eq:109
\begin{align}\int_a^b f(x) \alpha^\prime(x) \;\mathrm{d}x
= \int_a^b f(x) \;\mathrm{d}(\alpha(x) - \alpha(a))
\end{align}
```


Note that $\alpha(a)$ is just a constant, and hence $f \in\mathfrak{R}(\alpha(a))$ and $\int_a^b f (x) \;\mathrm{d}\alpha(a) = 0$. Due to the linear property ({prf:ref}`thm:35`) of the integrals, we have 

```{math}
:label: eq:110
\begin{align}\int_a^b f(x) \;\mathrm{d}(\alpha(x) - \alpha(a))
= \int_a^b f(x) \;\mathrm{d}\alpha(x) 
- \int_a^b f(x) \;\mathrm{d}\alpha(a)
= \int_a^b f(x) \;\mathrm{d}\alpha(x)
\end{align}
```

Finally, {eq}`eq:111` follows from {eq}`eq:109` and {eq}`eq:110`.

````
