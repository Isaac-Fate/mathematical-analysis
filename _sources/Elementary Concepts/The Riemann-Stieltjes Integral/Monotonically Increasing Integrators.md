# Monotonically Increasing Integrators


It is much easier to study and prove some properties of the Riemann-Stieltjes integrals if we require that $\alpha$ is monotonically increasing. 



Thanks to {prf:ref}`thm:33`, which states that every function of bounded variation can express as a difference of two increasing functions, almost all the properties introduced in this section can be extended with ease to integrators of bounded variation. 


````{prf:theorem}
:label: thm:34

If $f$ is continuous on $[a, b]$ and $\alpha$ is increasing on $[a, b]$, then $f \in\mathfrak{R}(\alpha)$ on $[a, b]$.

````

````{prf:proof}
:class: dropdown

Note that $f$ is actually uniformly continuous on $[a, b]$. It follows that for a given $\varepsilon > 0$, there exists $\delta > 0$ such that 

```{math}
\begin{align*}\abs{x - y} < \delta\implies\abs{f(x) - f(y)} < \varepsilon / (b - a)
\end{align*}
```

We can find a partition $P$ on $[a, b]$ such that the length of each subinterval is less than $\delta$, i.e., $x_i - x_{i-1} < \delta$. It then follows that 

```{math}
\begin{align*}\sup f_i - \inf f_i
= \sup_{x \in[x_{i-1}, x_i]} f(x)
- \inf_{x \in[x_{i-1}, x_i]} f(x)
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

````{prf:theorem}
:label: thm:26

Suppose that $\alpha$ is increasing on $[a, b]$. If $f, g \in\mathfrak{R}(\alpha)$ on $[a, b]$, and $f \leq g$, then 

```{math}
\begin{align*}\int_a^b f \;\mathrm{d}\alpha\leq\int_a^b g \;\mathrm{d}\alpha\end{align*}
```

````
