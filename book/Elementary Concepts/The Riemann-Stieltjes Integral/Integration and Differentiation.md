# Integration and Differentiation

````{prf:theorem}
:label: thm:42

Suppose $\alpha$ is of bounded variation on $[a, b]$, and $f \in\mathfrak{R}(\alpha)$ on $[a, b]$. Define a function $F$ on $[a, b]$ by

```{math}
\begin{align*}
F(x) := \int_a^x f \;\mathrm{d}\alpha\end{align*}
```

Then we have the following:
1. $F$ is of bounded variation on $[a, b]$.

2.  If $\alpha$ is continuous at $x_0$, then $F$ is also continuous at $x_0$.

3.  Suppose that $\alpha$ is increasing. Then $F$ is differentiable at some point $x_0 \in(a, b)$ where $\alpha$ is differentiable and $f$ is continuous. That is, if $\alpha^\prime(x_0)$ exists and $f$ is continuous at $x_0$, then $F^\prime(x_0)$ exists. In that case,

```{math}
\begin{align*}
F^\prime(x_0) = f(x_0) \alpha^\prime(x_0)
\end{align*}
```



````


The proof of this theorem is an application of the First Mean Value Theorem for Riemann-Stieltjes Integrals ({prf:ref}`thm:27`), which we shall present in the following.


````{prf:proof}
(Sufficiency of Only Considering the Case Where $\alpha$ Is Increasing) Assume we can prove 1 and 2 for increasing $\alpha$. Then by applying {prf:ref}`thm:33`, {prf:ref}`thm:35` and {prf:ref}`thm:31`, we can prove 1 and 2 for $\alpha$ that is of bounded variation. Therefore, it suffices to only prove 1 and 2 assuming $\alpha$ is increasing.



(Result from the First Mean Value Theorem) For any pair of points $x_1, x_2 \in[a, b]$. By {prf:ref}`thm:27`, there exists some value $c$ such that 

```{math}
:label: eq:72
\begin{align}
F(x_2) - F(x_1)
= c (\alpha(x_2) - \alpha(x_1))
\end{align}
```

Note that {eq}`eq:72` follows from {prf:ref}`thm:27` provided that $x_1 < x_2$. But the cases where $x_1 > x_2$ and $x_1 = x_2$ will also hold immediately by a few steps of arguments. We also have the following inequality, which follows from {eq}`eq:72`:

```{math}
:label: eq:73
\begin{align}\abs{F(x_2) - F(x_1)}
= M \abs{\alpha(x_2) - \alpha(x_1)}\end{align}
```

where $M$ is a constant such that $M > \abs{f(x)}\;\forall x \in[a, b]$.



(Proof of 1) For any partition $P = \left\{x_0, \ldots, x_n\right\}$ on $[a, b]$, by applying {eq}`eq:73`, we obtain

```{math}
\begin{align*}
V(P, F) = \sum\abs{F(x_k) - F( x_{k-1})}\leq M \sum\abs{\alpha(x_k) - \alpha(x_{k-1})}
= M (b-a)
\end{align*}
```

Note that the last equality follows from the assumption that $\alpha$ is increasing. Therefore, $V(P, F)$ is bounded above by a constant positive number, which implies $F$ is indeed of bounded variation on $[a, b]$.



(Proof of 2) Given $\varepsilon > 0$, since $\alpha$ is continuous at $x_0$, there exist $\delta > 0$ such that

```{math}
\begin{align*}\abs{x - x_0} < \delta\implies\abs{\alpha(x) - \alpha(x_0)} < \varepsilon / M
\end{align*}
```

For $x$ satisfying $\abs{x - x_0} < \delta$, it then follows from {eq}`eq:73` that 

```{math}
\begin{align*}\abs{F(x) - F(x_0)}
= M \abs{\alpha(x) - \alpha(x_0)}
< \varepsilon\end{align*}
```

This implies $F$ is continuous at $x_0$.



(Proof of 3) Let $\varepsilon > 0$ be arbitrary. Because $\alpha$ is differentiable at $x_0$, there exists $\delta_1 > 0$ such that 

```{math}
:label: eq:74
\begin{align}\abs{x - x_0} < \delta_1
\implies\abs{\frac{\alpha(x) - \alpha(x_0)}{x - x_0} - \alpha^\prime(x_0)} < \varepsilon\end{align}
```

And because $f$ is continuous at $x_0$, there exists $\delta_2 > 0$ such that 

```{math}
:label: eq:75
\begin{align}\abs{x - x_0} < \delta_2
\implies\abs{f(x) - f(x_0)} < \varepsilon\end{align}
```

To ease the notation, let $I_x$ denote the interval with endpoints $x$ and $x_0$. Let $\delta = \min\left\{\delta_1, \delta_2\right\}$. 



In the rest of the proof we consider point $x$ satisfying $\abs{x - x_0} < \delta$, it then follows from {eq}`eq:72` that 

```{math}
:label: eq:76
\begin{align}
F(x) - F(x_0)
= c_x (\alpha(x) - \alpha(x_0))
\end{align}
```

where $c_x$ depends on the choice of $x$. Moreover, 

```{math}
\begin{align*}\inf_{t \in I_x} f(t) \leq c_x \leq\sup_{t\in I_x} f(t)
\end{align*}
```

From {eq}`eq:76`, we have 

```{math}
:label: eq:77
\begin{align}\abs{
\frac{F(x) - F(x_0)}{x - x_0}
- f(x_0) \alpha^\prime(x_0)
}\leq\abs{
c_x
}\abs{
\frac{\alpha(x) - \alpha(x_0)}{x - x_0}
- \alpha^\prime(x_0)
} + \abs{
\alpha^\prime(x_0)
}\abs{
c_x - f(x_0)
}\end{align}
```

Our goal is to bound the right-hand side of {eq}`eq:77` by an arbitrarily small quantity.


Let us first consider expressions involving $c_x$. It follows from {eq}`eq:75` that 

```{math}
\begin{align*}\abs{\sup_{t \in I_x}f(t) - f(x_0)}&\leq\varepsilon&
\abs{\inf_{t \in I_x}f(t) - f(x_0)}&\leq\varepsilon\end{align*}
```

which further implies

```{math}
\begin{align*}\sup_{t \in I_x}f(t)
- \inf_{t \in I_x}f(t) \leq 2\varepsilon\end{align*}
```

Since $c_x$ and $f(x_0)$ both take values in between $\inf_{t \in I_x}f(t)$ and $\sup_{t \in I_x}f(t)$, we have 

```{math}
:label: eq:78
\begin{align}\abs{c_x - f(x_0)}\leq 2\varepsilon\end{align}
```

And the value of $c_x$ itself is bounded by 

```{math}
:label: eq:79
\begin{align}\abs{c_x}\leq\abs{f(x_0)} + 2\varepsilon\end{align}
```


Finally, by taking into consideration {eq}`eq:77`, {eq}`eq:78`, {eq}`eq:79` and {eq}`eq:74`, we have 

```{math}
\begin{align*}\abs{x - x_0}\implies\abs{
\frac{F(x) - F(x_0)}{x - x_0}
- f(x_0) \alpha^\prime(x_0)
}\leq\left( \abs{f(x_0)} + 2\varepsilon\right) \varepsilon + \abs{\alpha^\prime(x_0)}\cdot 2\varepsilon\end{align*}
```

Observe that the right-hand side of the inequality above is indeed an arbitrarily small quantity. This completes the proof.

````

````{prf:theorem}
:label: thm:3

Let $f \in\mathfrak{R}$ on $[a, b]$. For $x \in[a, b]$, put 

```{math}
\begin{align*}
F(x) = \int_a^x f(t) \;\mathrm{d} t
\end{align*}
```

Then, $F$ is continuous on $[a, b]$(more precisely, $F$  is uniformly continuous). Furthermore, if $f$ is continuous at some point $x_0 \in[a, b]$, then $F$ is differentiable at $x_0$, and 

```{math}
\begin{align*}
F^\prime(x_0) = f(x_0)
\end{align*}
```

````

````{prf:proof}
TODO

````

````{prf:example}

Consider the function 

```{math}
\begin{align*}
f(x) = \begin{cases}
2x \sin \frac{1}{x} - \cos \frac{1}{x} &-\frac{1}{\pi} \leq x \leq \frac{1}{\pi}, \; x \neq 0 \\ 
0 &x = 0
\end{cases}\end{align*}
```

Let $F(x) = \int_{-1/\pi}^{x} f(t) \;\mathrm{d} t$, then a few steps of computation shows 

```{math}
\begin{align*}
F(x) = \begin{cases}
x^2 \sin \frac{1}{x}  &-\frac{1}{\pi} \leq x \leq \frac{1}{\pi}, \; x \neq 0 \\ 
0 &x = 0
\end{cases}\end{align*}
```

Note that even though $f$ is discontinuous at $x = 0$, $F$ remains continuous on the entire interval. But, because of this discontinuity of $f$,  $F$ is not differentiable at $x=0$.

````

````{prf:theorem} Fundamental Theorem of Calculus
:label: thm:1

If $ f \in\mathfrak{R}$ on $[a, b]$ and $F$ is a differentiable function on $[a, b]$ such that $F^\prime = f$, then we have

```{math}
\begin{align*}\int_a^b f \;\mathrm{d} x = F(b) - F(a)
\end{align*}
```

````

````{prf:proof}
TODO

````

````{prf:theorem} Integration by Parts
:label: thm:2

Let $F, G$ be differentiable functions on $[a, b]$ such that $F^\prime = f \in\mathfrak{R}$ and $G^\prime = g \in\mathfrak{R}$, then 

```{math}
\begin{align*}\int_a^b F(x)g(x) \;\mathrm{d} x = F(b)G(b) - F(a)G(a) - \int_a^b f(x)G(x) \;\mathrm{d} x
\end{align*}
```

````

````{prf:proof}
TODO

````
