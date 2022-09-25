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

````{admonition} Exercise
:class: note

An exercise
````

````{admonition} Solution
:class: tip, dropdown

This is a 



muti-line 



solution.
````
