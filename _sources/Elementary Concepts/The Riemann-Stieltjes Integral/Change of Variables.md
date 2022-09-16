# Change of Variables

````{prf:theorem}

Suppose $f \in\mathfrak{R}(\alpha)$ on $[a, b]$, and $g$ is a **strictly monotonic continuous** function on a closed interval $I$ with endpoints $c$ and $d$. ($I$ is either $[c, d]$ or $[d, c]$.) Assume

```{math}
\begin{align*}
a &= g(c) & b &= g(d)
\end{align*}
```

Define two composite functions:

```{math}
\begin{align*}
h &= f(g(x)) & 
\beta&= \alpha(g(x))
\end{align*}
```

Then $h \in\mathfrak{R}(\beta)$ on $I$, and $\int_a^b f \;\mathrm{d}\alpha = \int_c^d h \;\mathrm{d}\beta$, i.e., 

```{math}
\begin{align*}\int_a^b f(x) \;\mathrm{d}\alpha(x) = \int_c^d f(g(x)) \;\mathrm{d}\alpha(g(x))
\end{align*}
```

````

````{prf:remark}

The reason why we assume that $g$ is strictly monotonic and continuous is to ensure that it is a bijective function. It is equivalent to assume $g$ is strictly monotonic and injective.

````

````{prf:proof}
:class: dropdown
(One-To-One Relation of Partitions) Without loss of generality, we may assume that $g$ is strictly *increasing* and continuous. Then $I = [c, d]$. From the conditions of $g$, we can immediately conclude that it has a bijective inverse function

```{math}
\begin{align*}
g^{-1}: [a, b]\to[c, d]\end{align*}
```

For any partition $P^\prime = \left\{x_0, \ldots, x_n\right\}$ on $[a, b]$, we can associate it with a partition $P$ on $[c, d]$, which is given by 

```{math}
\begin{align*}
P := g^{-1}(P^\prime) 
:= \left\{g^{-1}(x_0), \ldots, g^{-1}(x_n)\right\}\end{align*}
```

On the other hand, for any partition $P = \left\{y_0, \ldots, y_n\right\}$ on $[c, d]$, we can define a partition $P^\prime$ on $[a, b]$ by 

```{math}
\begin{align*}
P^\prime := g(P) := \left\{g(y_0), \ldots, g(y_n)\right\}\end{align*}
```


(Existence of the Integral) Given $\varepsilon > 0$, since $f \in\mathfrak{R}(\alpha)$ on $[a, b]$, there exists a partition $P^\prime_\varepsilon$ on $[a, b]$ such that 

```{math}
:label: eq:67
\begin{align}\abs{S(P^\prime, f, \alpha) - \int_a^b f \; \mathrm{d}\alpha} < \varepsilon\quad\forall P^\prime\supset P^\prime_\varepsilon\end{align}
```

Let partition $P_\varepsilon$ on $[c, d]$ be given by $P_\varepsilon = g^{-1}(P^\prime_\varepsilon)$. For any refinement $P \supset P_\varepsilon$, we have 

```{math}
\begin{align*}
S(P, h, \beta)
= \sum h(s_i) \Delta\beta_i
= \sum h(s_i) (\beta(s_i) - \beta(s_{i-1}))
\end{align*}
```

For each point $s_i$, we can map it to $[a, b]$ by $t_i = g(s_i)$. It then follows that 

```{math}
\begin{align*}
S(P, h, \beta)
&= \sum h(g^{-1}(t_i)) (\beta(g^{-1}(t_i)) - \beta(g^{-1}(t_{i-1}))) \\&= \sum f(t_i) (\alpha(t_i) - \alpha(t_{i-1})) \\&= S(P^\prime, f, \alpha)
\end{align*}
```

where $P^\prime = g(P)$. In summary,

```{math}
:label: eq:68
\begin{align}
S(P, h, \beta) = S(P^\prime, g, \alpha)
\end{align}
```

What is left to shown is that $P^\prime\supset P^\prime_\varepsilon$. For any point $x \in P^\prime_\varepsilon$, we have $g^{-1}(x) \in P_\varepsilon$ since $P_\varepsilon = g^{-1}(P_\varepsilon)$. Recall that $P \supset P_\varepsilon$. Thus, $g^{-1}(x) \in P$. And because $P^\prime = g(P)$, we have $x = g(g^{-1}(x)) \in P^\prime$. Therefore, indeed $P^\prime\supset P^\prime_\varepsilon$. It then follows from {eq}`eq:67` and {eq}`eq:68` that 

```{math}
\begin{align*}\abs{S(P, h, \beta) - \int_a^b f \; \mathrm{d}\alpha} < \varepsilon\quad\forall P \supset P_\varepsilon\end{align*}
```

This completes the proof.

````
