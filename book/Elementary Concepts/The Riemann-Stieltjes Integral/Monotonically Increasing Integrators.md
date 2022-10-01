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


It is natural to assert that if $f$ is integrable on an interval $[a, b]$, then it must also be integrable on every subinterval contained in that.


````{prf:theorem}
:label: thm:38

Suppose $\alpha$ is increasing on $[a, b]$. If $f \in\mathfrak{R}(\alpha)$ on $[a, b]$, then $f \in\mathfrak{R}(\alpha)$ on every subinterval $[c, d]\subset[a, b]$.

````

````{prf:proof}
TODO

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
## Integral of Product of Two Functions

````{prf:theorem}
:label: thm:39

Suppose $\alpha$ is increasing on $[a, b]$. If $f, g \in\mathfrak{R}(\alpha)$, then $fg \in\mathfrak{R}(\alpha)$.

````

````{prf:proof}
TODO

````


When considering the integral of a product $fg$, the following theorem says we can merge $g$ into the integrator in the sense that $\int_a^b fg \;\mathrm{d}\alpha = \int_a^b f \;\mathrm{d}G$.


````{prf:theorem}
:label: thm:41

Suppose that $\alpha$ is increasing on $[a, b]$, and  $f, g \in\mathfrak{R}(\alpha)$. Define 

```{math}
\begin{align*}
F(x) &:= \int_a^x f \;\mathrm{d}\alpha&
G(x) &:= \int_a^x g \;\mathrm{d}\alpha\end{align*}
```
$F$ and $G$ are indeed well-defined due to {prf:ref}`thm:38` in the sense that the integrals exist for every $x \in[a, b]$. Then $f \in\mathfrak{R}(G)$ and $g \in\mathfrak{R}(F)$. In this case,

```{math}
:label: eq:97
\begin{align}\int_a^b f g \;\mathrm{d}\alpha
= \int_a^b f \;\mathrm{d}G
= \int_a^b g \;\mathrm{d}F
\end{align}
```

Note that $fg \in\mathfrak{R}(a)$ by {prf:ref}`thm:39`.

````

````{prf:proof}

We only prove that $f \in\mathfrak{R}(G)$ and the first equation in {eq}`eq:97`. Let $M_g > 0$ be an upper bound of $\abs{g}$, i.e., 

```{math}
\begin{align*}\abs{g(x)} < M_g
\quad\forall x \in[a, b]\end{align*}
```

Let $\varepsilon > 0$ be chosen arbitrarily. Since $f \in\mathfrak{R}(\alpha)$, by {prf:ref}`thm:4`, there exists a partition $P_\varepsilon$ on $[a, b]$ such that 

```{math}
:label: eq:98
\begin{align}
U(P, f, \alpha) - L(P, f, \alpha) < \frac{\varepsilon}{M_G}\quad\forall P \supset P_\varepsilon\end{align}
```


For any refinement $P \supset P_\varepsilon$, we have 

```{math}
:label: eq:99
\begin{align}
S(P, f, G)
&= \sum_k f(t_k) \Delta G_k \nonumber\\&= \sum_k f(t_k) \int_{x_{k-1}}^{x_k} g \;\mathrm{d}\alpha\nonumber\\&= \sum_k  \int_{x_{k-1}}^{x_k} f(t_k) g(t) \;\mathrm{d}\alpha(t)
\end{align}
```

We know from {prf:ref}`thm:38` that $\int_{x_{k-1}}^{x_k} fg \;\mathrm{d}\alpha$ exists for each $k$. We then subtract $\int_a^b fg \;\mathrm{d}\alpha$ from {eq}`eq:99`,

```{math}
\begin{align*}\abs{
S(P, f, G)
- \int_a^b fg \; \mathrm{d}\alpha
}&= \abs{
\sum_k \int_{x_{k-1}}^{x_k} (f(t_k) - f(t)) g(t) \; \mathrm{d}\alpha(t)
}\\&\leq\sum_k \abs{
\int_{x_{k-1}}^{x_k} (f(t_k) - f(t)) g(t) \; \mathrm{d}\alpha(t)
}\end{align*}
```

It then follows from {prf:ref}`thm:37` that 

```{math}
:label: eq:100
\begin{align}\abs{
S(P, f, G)
- \int_a^b fg \; \mathrm{d}\alpha
}&\leq\sum_k \abs{
\int_{x_{k-1}}^{x_k} (f(t_k) - f(t)) g(t) \; \mathrm{d}\alpha(t)
}\nonumber\\&\leq\sum_k \int_{x_{k-1}}^{x_k}\abs{f(t_k) - f(t)}\abs{g(t)}\;\mathrm{d}\alpha(t)
\end{align}
```

Note that $\abs{f(t_k) - f(t)}\in\mathfrak{R}(\alpha)$ on $[x_{k-1}, x_k]$ where $f(t_k)$ is a constant by {prf:ref}`thm:40` and {prf:ref}`thm:37` since $f \in\mathfrak{R}(\alpha)$.



Therefore, we can further enlarge the right-hand side of {eq}`eq:100` using {prf:ref}`thm:26`:

```{math}
:label: eq:101
\begin{align}\abs{
S(P, f, G)
- \int_a^b fg \; \mathrm{d}\alpha
}&\leq\sum_k \int_{x_{k-1}}^{x_k}\abs{f(t_k) - f(t)}\abs{g(t)}\;\mathrm{d}\alpha(t) \nonumber\\&\leq\abs{M_g}\sum_k \int_{x_{k-1}}^{x_k}\abs{f(t_k) - f(t)}\;\mathrm{d}\alpha(t)
\quad\text{recall $\abs{g} < M_g$}\end{align}
```


On subinterval $[x_{k-1}, x_k]$, denote 

```{math}
\begin{align*}
M_k &= \sup_{x \in[x_{k-1}, x_k]} f(x) &
m_k &= \inf_{x \in[x_{k-1}, x_k]} f(x)
\end{align*}
```

It is clear $M_k - m_k \in\mathfrak{R}(\alpha)$ on each subinterval $[x_{k-1}, x_k]$ since it is just a constant function. Then by {prf:ref}`thm:26`, we have 

```{math}
:label: eq:102
\begin{align}\int_{x_{k-1}}^{x_k}\abs{f(t_k) - f(t)}\;\mathrm{d}\alpha(t)
\leq\int_{x_{k-1}}^{x_k} M_k - m_k \;\mathrm{d}\alpha(t)
= (M_k - m_k) \Delta\alpha_k
\end{align}
```


By comparing {eq}`eq:101` and {eq}`eq:102`, we obtain 

```{math}
\begin{align*}\abs{
S(P, f, G)
- \int_a^b fg \; \mathrm{d}\alpha
}\leq\abs{M_g}\sum_k (M_k - m_k) \Delta\alpha_k 
= \abs{M_g}( U(P, f, \alpha) - L(P, f, \alpha) )
\end{align*}
```

Recall that $P \supset P_\varepsilon$, then it follows from {eq}`eq:98` that 

```{math}
\begin{align*}\abs{
S(P, f, G)
- \int_a^b fg \; \mathrm{d}\alpha
}  < \varepsilon\end{align*}
```

This implies that $f \in\mathfrak{R}(G)$, and 

```{math}
\begin{align*}\int_a^b fg \;\mathrm{d}\alpha
= \int_a^b f \;\mathrm{d}G
\end{align*}
```


With the similar arguments, we can also prove $g \in\mathfrak{R}(F)$ and 

```{math}
\begin{align*}\int_a^b fg \;\mathrm{d}\alpha
= \int_a^b g \;\mathrm{d}F
\end{align*}
```

````
