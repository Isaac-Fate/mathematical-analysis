# Monotonically Increasing Integrators


It is much easier to study and prove some properties of the Riemann-Stieltjes integrals if we require that $\alpha$ is monotonically increasing. 



Thanks to {prf:ref}`thm:33`, which states that every function of bounded variation can express as a difference of two increasing functions, almost all the properties introduced in this section can be extended with ease to integrators of bounded variation. 

## The Darboux Sum
## Existence

````{prf:theorem}
:label: thm:4

Suppose $\alpha$ is increasing on $[a, b]$. $f \in\mathfrak{R}(\alpha)$ on $[a, b]$ if and only if for any given $\varepsilon > 0$, there exists a partition $P$ on $[a, b]$ such that 

```{math}
\begin{align*}
U(P, f, \alpha) - L(P, f, \alpha) < \varepsilon\end{align*}
```

````

````{prf:theorem}
:label: thm:34

If $f$ is continuous on $[a, b]$ and $\alpha$ is increasing on $[a, b]$, then $f \in\mathfrak{R}(\alpha)$ on $[a, b]$.

````

````{prf:proof}

Note that $f$ is actually uniformly continuous on $[a, b]$. It follows that for a given $\varepsilon > 0$, there exists $\delta > 0$ such that 

```{math}
\begin{align*}\abs{x - y} < \delta\implies\abs{f(x) - f(y)} < \varepsilon / (b - a)
\end{align*}
```

We can find a partition $P$ on $[a, b]$ such that the length of each subinterval is less than $\delta$, i.e., $ x_k - x_{k-1} < \delta$. It then follows that 

```{math}
\begin{align*}\sup f_i - \inf f_i
= \sup_{x \in[x_{k-1},  x_k]} f(x)
- \inf_{x \in[x_{k-1},  x_k]} f(x)
< \varepsilon / (b-a)
\end{align*}
```

Therefore, 

```{math}
\begin{align*}
U(P, f, \alpha) - L(P, f, \alpha)
= \sum(\sup f_i - \inf f_i) \Delta\alpha_i
< \varepsilon / (b-a) \sum\Delta\alpha_i
= \varepsilon\end{align*}
```

This implies $f \in\mathfrak{R}(\alpha)$.

````
## Comparison Theorems

````{prf:theorem}
:label: thm:26

Suppose that $\alpha$ is increasing on $[a, b]$. If $f, g \in\mathfrak{R}(\alpha)$ on $[a, b]$, and $f \leq g$, then 

```{math}
\begin{align*}\int_a^b f \;\mathrm{d}\alpha\leq\int_a^b g \;\mathrm{d}\alpha\end{align*}
```

````

````{prf:theorem}
:label: thm:37

Suppose $\alpha$ is increasing on $[a, b]$. If $f \in\mathfrak{R}(\alpha)$ on $[a, b]$, then $\abs{f}\in\mathfrak{R}(\alpha)$ on $[a, b]$. And we have the inequality

```{math}
:label: eq:95
\begin{align}\abs{\int_a^b f \; \mathrm{d}\alpha}\leq\int_a^b \abs{f}\;\mathrm{d}\alpha\end{align}
```

````


The critical step of the proof is to note 

```{math}
\begin{align*}\sup_{x \in[x_{k-1}, x_k]} f(x) - \inf_{x \in[x_{k-1}, x_k]} f(x) 
= \sup_{x,y \in[x_{k-1}, x_k]}\abs{f(x) - f(y)}\end{align*}
```

````{prf:proof}

For a partition $P$ on $[a, b]$, let $M_k(f)$ and $m_k(f)$ denote 

```{math}
\begin{align*}
M_k(f) &= \sup_{x \in[x_{k-1}, x_k]} f(x) &
m_k(f) &= \inf_{x \in[x_{k-1}, x_k]} f(x)
\end{align*}
```

And let $M_k(\abs{f})$ and $m_k(\abs{f})$ have the similar meanings. Note that 

```{math}
\begin{align*}
M_k(f) - m_k(f) = \sup_{x,y \in[x_{k-1}, x_k]}\abs{f(x) - f(y)}\end{align*}
```

It then follows from the triangle inequality

```{math}
\begin{align*}\abs{\abs{f(x)} - \abs{f(y)}}\leq\abs{f(x) - f(y)}\end{align*}
```

that 

```{math}
:label: eq:96
\begin{align}
M_k(\abs{f}) - m_k(\abs{f}) 
= \sup_{x,y \in[x_{k-1}, x_k]}\abs{\abs{f(x)} - \abs{f(y)}}\leq\sup_{x,y \in[x_{k-1}, x_k]}\abs{f(x) - f(y)}
= M_k(f) - m_k(f)
\end{align}
```


Given $\varepsilon > 0$, since $f \in\mathfrak{R}(\alpha)$, there exists a partition $P$ such that  

```{math}
\begin{align*}
U(P, f, \alpha) - L(P, f, \alpha)
= \sum(M_k(f) - m_k(f)) \Delta\alpha_k
< \varepsilon\end{align*}
```

It then follows from {eq}`eq:96` that 

```{math}
\begin{align*}
U(P, \abs{f}, \alpha) - L(P, \abs{f}, \alpha)
= \sum\abs{M_k(f) - m_k(f)}\Delta\alpha_k
\leq\sum(M_k(f) - m_k(f)) \Delta\alpha_k
< \varepsilon\end{align*}
```

Note that we also need the condition that $\alpha$ is increasing for the above inequality to hold. Therefore, we conclude that $\abs{f}\in\mathfrak{R}(\alpha)$ by {prf:ref}`thm:4`. The inequality {eq}`eq:95` then follows form {prf:ref}`thm:26`.

````
