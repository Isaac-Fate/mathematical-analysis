# Properties of Riemann-Stieltjes Integrals With Respect to Increasing Integrators

It is much easier to study and prove some properties of the Riemann-Stieltjes integrals if we require that $\alpha$ is monotonically increasing.

Thanks to {prf:ref}`thm:37`, which we will prove in {doc}`/Riemann-Stieltjes Integral/Integrators of Bounded Variation`, almost all the properties introduced in this section can be extended with ease to integrators of bounded variation.


## Integrability on Sub-Intervals

Let $c \in (a, b)$ be a point that splits the interval into two parts. If $f$ is integrable w.r.t. $\alpha$ on the entire interval $[a, b]$, then it is also integrable on both of the sub-intervals.


````{prf:lemma}
:label: lem:3

Suppose $\alpha$ is increasing on $[a, b]$. Let $c \in (a, b)$ be an interior point. If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$, then $f \in \mathfrak{R}(\alpha)$ on $[a, c]$ and $f \in \mathfrak{R}(\alpha)$ on $[c, b]$
````

````{prf:proof}

We only prove $f \in \mathfrak{R}(\alpha)$ on $[a, c]$. Given $\varepsilon > 0$. By {prf:ref}`thm:28`, there exists a partition $P_\varepsilon$ on $[a, b]$ such that

```{math}
\begin{align*}
U(P,f,\alpha) - L(P,f,\alpha) < \varepsilon\quad\forall P \supset P_\varepsilon\end{align*}
```

Let $P_\varepsilon^\prime = (P_\varepsilon \cup \{ c \}) \cap[a, c]$. Note that $P_\varepsilon^\prime$ is a partition on $[a, c]$. Now, let $P^\prime$ be a refinement of $ P_\varepsilon^\prime$ on $[a, c]$, and $P$ a refinement of $P_\varepsilon$ on $[a, b]$. It is evident that

```{math}
\begin{align*}
P^{\prime\prime} = P^\prime\cup(P \cap[c, b])
\end{align*}
```

is a refinement of $P_\varepsilon$. Therefore, we have

```{math}
\begin{align*}
U(P^{\prime\prime},f,\alpha) - L(P^{\prime\prime},f,\alpha) < \varepsilon\end{align*}
```

:::{note}
$P^{\prime\prime}$ can be regarded as a partition formed by adding points to $P^\prime$ that are greater than $c$.

:::

Then it is clear

```{math}
\begin{multline*}
U(P^{\prime},f,\alpha) - L(P^{\prime},f,\alpha)
= \sum_{k \text{ such that } x_k \leq c}(M_k - m_k) \Delta\alpha_k \\\leq\sum_{k}(M_k - m_k) \Delta\alpha_k
\leq U(P^{\prime\prime},f,\alpha) - L(P^{\prime\prime},f,\alpha)
\end{multline*}
```

Hence,

```{math}
\begin{align*}
U(P^{\prime},f,\alpha) - L(P^{\prime},f,\alpha) < \varepsilon\end{align*}
```

which implies $f \in \mathfrak{R}(\alpha)$ on $[a, c]$ by {prf:ref}`thm:28`.

````

In fact, $f$ is integrable on all sub-intervals of $[a, b]$.



````{prf:theorem}
:label: thm:40

Suppose $\alpha$ is increasing on $[a, b]$. Let $[c, d] \subset[a, b]$ be a sub-interval. If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$, then $f \in \mathfrak{R}(\alpha)$ on $[c, d]$.

````

````{prf:proof}

Without loss of generality, assume $a < c < d < b$. {prf:ref}`lem:3` implies that $f$ is integrable w.r.t. $\alpha$ on $[a, c]$ and $[a, d]$. We then conclude the proof using {prf:ref}`thm:18`.

````
## Comparison Theorem

It is very common in practice to compare the values of two integrals. Intuitively,

```{math}
:label: eq:69
\begin{align}\int_{a}^{b} f \;\mathrm{d}\alpha\leq\int_{a}^{b} g \;\mathrm{d}\alpha\end{align}
```

provided that $f \leq g$ and $\alpha$ is increasing. The proof of this inequality follows from the following lemma, which says the integral of $f$ w.r.t. $\alpha$ is non-negative whenever $f$ stays non-negative and $\alpha$ is increasing on $[a, b]$. Note that this is a special case of inequality {eq}`eq:69`.


````{prf:lemma}
:label: lem:1

Suppose that $\alpha$ is increasing and $f \in \mathfrak{R}(\alpha)$ on $[a, b]$. If $f(x) \geq 0 \; \forall x \in[a, b]$, then

```{math}
\begin{align*}\int_{a}^{b} f \;\mathrm{d}\alpha\geq 0
\end{align*}
```

````

````{prf:proof}

Consider the trivial partition $P = \{a, b\}$. We have

```{math}
\begin{align*}
L(P,f,\alpha) = \inf_{x \in[a, b]} f(x) [\alpha(b) - \alpha(a)]\geq 0
\end{align*}
```

It then follows that

```{math}
\begin{align*}\lowint_a^b f \;\mathrm{d}\alpha\geq L(P,f,\alpha)
\geq 0
\end{align*}
```

Note that $\int_{a}^{b} f \; \mathrm{d}\alpha = \lowint_a^b f \; \mathrm{d}\alpha$ since $f \in \mathfrak{R}(\alpha)$. The proof is then complete.

````

Inequality {eq}`eq:69` can be proved easily by applying the above lemma and {prf:ref}`thm:18`.


````{prf:theorem}
:label: thm:30

Suppose that $\alpha$ is increasing and $f, g \in \mathfrak{R}(\alpha)$ on $[a, b]$. If $f(x) \leq g(x) \; \forall x \in[a, b]$, then we have the inequality

```{math}
\begin{align*}\int_{a}^{b} f \;\mathrm{d}\alpha\leq\int_{a}^{b} g \;\mathrm{d}\alpha\end{align*}
```

````

````{prf:proof}

Note that the difference $(g-f)(x) \geq 0 \; \forall x \in[a, b]$. Furthermore, $(g-f) \in \mathfrak{R}(\alpha)$ on $[a, b]$ by {prf:ref}`thm:18`. Then {prf:ref}`lem:1` gives

```{math}
\begin{align*}\int_{a}^{b}(g-f) \;\mathrm{d}\alpha\geq 0
\end{align*}
```

Using {prf:ref}`thm:18` again to split the integrand, we have

```{math}
\begin{align*}\int_{a}^{b} g \;\mathrm{d}\alpha
- \int_{a}^{b} f \;\mathrm{d}\alpha\geq 0
\end{align*}
```

````
## Applying Continuous Functions to Integrable Functions

Suppose we know $f \in \mathfrak{R}(\alpha)$ on $[a, b]$. The following theorem tells us that we can produce more integrable functions by applying continuous functions to $f$.


````{prf:theorem}
:label: thm:29

Suppose that $\alpha$ is increasing and $f \in \mathfrak{R}(\alpha)$ on $[a, b]$. Let $M$ and $m$ denote the supremum and infimum of $f$ on $[a, b]$. If function $\phi: [m, M] \to \R$ is continuous, then the composite function $\phi \circ f$ is also integrable w.r.t. $\alpha$ on $[a, b]$, i.e., $\phi \circ f \in \mathfrak{R}(\alpha)$.

````

````{prf:proof}

In the following proof, we assume that $\alpha$ is non-constant.

Given $\varepsilon > 0$. Since $\phi$ is uniformly continuous on $[m, M]$, there exists $\delta > 0$ such that

```{math}
:label: eq:70
\begin{align}\abs{s - t} < \delta\implies\abs{\phi(s) - \phi(t)} < \frac{\varepsilon / 2}{\alpha(b) - \alpha(a)}\end{align}
```

Suppose that $\phi$ is bounded by a positive number $A > 0$, i.e.,

```{math}
\begin{align*}\abs{\phi} < A
\end{align*}
```

Because $f \in \mathfrak{R}(\alpha)$, there exists a partition $P_\varepsilon$ on $[a, b]$ such that

```{math}
:label: eq:71
\begin{align}
U(P,f,\alpha) - L(P,f,\alpha) < \frac{\varepsilon \delta}{4A}\end{align}
```

for any refinement $P \supset P_\varepsilon$.

Write $P = \{x_0,x_1, \ldots, x_n\}$. We now separate the indices of sub-intervals into two sets in the following way.

```{math}
\begin{align*}
I &= \set{k=1,\ldots,n}{M_k(f) - m_k(f) < \delta}\\
J &= \set{k=1,\ldots,n}{M_k(f) - m_k(f) \geq \delta}\end{align*}
```

We first consider the sub-intervals whose indices belong to $I$. Suppose $k \in I$. Since $M_k(f) - m_k(f) < \delta$, it follows from {eq}`eq:70` that

```{math}
\begin{align*}\abs{\phi[f(s)] - \phi[f(t)]}
< \frac{\varepsilon / 2}{\alpha(b) - \alpha(a)}\quad\forall s,t \in[x_{k-1}, x_{k}]\end{align*}
```

Then by {prf:ref}`thm:27`, we have

```{math}
\begin{align*}
M_k(\phi\circ f) - m_k(\phi\circ f)
= \sup_{s,t \in[x_{k-1}, x_k]}\abs{\phi[f(s)] - \phi[f(t)]}\leq\frac{\varepsilon / 2}{\alpha(b) - \alpha(a)}\end{align*}
```

Summing up over $k \in I$ yields

```{math}
:label: eq:72
\begin{align}\sum_{k \in I}\left[M_k(\phi\circ f) - m_k(\phi\circ f) \right]\Delta\alpha_k
\leq\varepsilon / 2
\end{align}
```

Now, suppose $k \in J$. Note that

```{math}
\begin{align*}\sum_{k \in I}\left[M_k(\phi\circ f) - m_k(\phi\circ f) \right]\Delta\alpha_k
\leq U(P,f,\alpha)
< \frac{\varepsilon \delta}{4 A}\end{align*}
```

where the last inequality follows from {eq}`eq:71`. Because $M_k(f) - m_k(f) \geq \delta$, we have

```{math}
\begin{align*}\delta\sum_{k \in I}\Delta\alpha_k
\leq\sum_{k \in I}\left[M_k(\phi\circ f) - m_k(\phi\circ f) \right]\Delta\alpha_k
< \frac{\varepsilon \delta}{4 A}\end{align*}
```

which further implies

```{math}
:label: eq:73
\begin{align}\sum_{k \in I}\Delta\alpha_k
< \frac{\varepsilon}{4 A}\end{align}
```

Recall that $\abs{\phi} < A$. Hence, the difference $M_k(\phi \circ f) - m_k(\phi \circ f)$ is bounded above by

```{math}
:label: eq:74
\begin{align}
M_k(\phi\circ f) - m_k(\phi\circ f)
< 2A
\end{align}
```

Combining inequalities {eq}`eq:73` and {eq}`eq:74`, we obtain

```{math}
:label: eq:75
\begin{align}\sum_{k \in I}\left[M_k(\phi\circ f) - m_k(\phi\circ f) \right]\Delta\alpha_k
< \varepsilon / 2
\end{align}
```

Note that the difference $U(P,\phi \circ f, \alpha) - L(P,\phi \circ f, \alpha)$ can be summed up as follows.

```{math}
\begin{multline*}
U(P,\phi\circ f, \alpha) - L(P,\phi\circ f, \alpha)
= \sum_{k=1}^n \left[M_k(\phi\circ f) - m_k(\phi\circ f) \right]\Delta\alpha_k \\
= \sum_{k \in I}\left[M_k(\phi\circ f) - M_k(\phi\circ f) \right]\Delta\alpha_k
+ \sum_{k \in J}\left[M_k(\phi\circ f) - m_k(\phi\circ f) \right]\Delta\alpha_k
\end{multline*}
```

Finally, by applying {eq}`eq:72` and {eq}`eq:75`, the difference of upper and lower sums are bounded by

```{math}
\begin{align*}
U(P,\phi\circ f, \alpha) - L(P,\phi\circ f, \alpha) < \varepsilon\end{align*}
```

Therefore, the composite function $\phi \circ f$ satisfies Riemann's condition, and hence $\phi \circ f \in \mathfrak{R}(\alpha)$ on $[a, b]$ by {prf:ref}`thm:28`.

````

Note that the absolute value function $\phi(x) = \abs{x}$ is continuous. Applying it to an integrable function $f \in \mathfrak{R}(\alpha)$, we immediately conclude that $\abs{f}$ is also integrable.


````{prf:theorem}
:label: thm:31

Suppose $\alpha$ is increasing. If$f \in \mathfrak{R}(\alpha)$ on $[a, b]$, then $\abs{f} \in \mathfrak{R}(\alpha)$ on $[a, b]$, and we have

```{math}
:label: eq:76
\begin{align}\abs{\int_{a}^{b} f \; \mathrm{d}\alpha}\leq\int_{a}^{b}\abs{f}\;\mathrm{d}\alpha\end{align}
```

````

````{prf:proof}

First, we note that $\abs{f} \in \mathfrak{R}(\alpha)$ on $[a, b]$ by {prf:ref}`thm:29` since $\phi(x) = \abs{x}$ is continuous.

It then follows from the inequality

```{math}
\begin{align*}
-\abs{f}\leq f \leq\abs{f}\end{align*}
```

and {prf:ref}`thm:30` that

```{math}
\begin{align*}
-\int_{a}^{b}\abs{f}\;\mathrm{d}\alpha
= \int_{a}^{b} -\abs{f}\;\mathrm{d}\alpha\leq\int_{a}^{b} f \;\mathrm{d}\alpha\leq\int_{a}^{b}\abs{f}\;\mathrm{d}\alpha\end{align*}
```

This completes the proof.

````

The converse of this theorem is not true. That is, $f$ is not necessarily integrable if $\abs{f}$ is integrable.


````{prf:example}

Let

```{math}
\begin{align*}
f(x) = \ind_{\Q}(x) - \ind_{\R \setminus \Q}(x),
\quad x \in[a, b]\end{align*}
```

and $\alpha$ be any *non-constant* increasing function on $[a, b]$.

Note that the absolute value of $f$, $\abs{f} = 1$ is constant, and hence $f \in \mathfrak{R}(\alpha)$ on $[a, b]$. And

```{math}
\begin{align*}\int_{a}^{b} f \;\mathrm{d}\alpha = 0
\end{align*}
```

But $f$ is not integrable w.r.t. $\alpha$ on $[a,b]$ since

```{math}
\begin{align*}\upint_a^b f \;\mathrm{d}\alpha = \alpha(b) - \alpha(a) > 0
\quad\text{and}\quad\lowint_a^b f \;\mathrm{d}\alpha = \alpha(a) - \alpha(b) < 0
\end{align*}
```

The upper and lower integrals are not equal to each other for we have assumed $\alpha$ is non-constant.

````

````{admonition} Exercise 13

Prove the existence of $\int_a^b \abs{f} \; \mathrm{d}\alpha$ in {prf:ref}`thm:31` without using {prf:ref}`thm:29`.

````

````{admonition} Solution
:class: tip, dropdown

TODO

````

Put $\phi(x) = x^2$ in {prf:ref}`thm:29`, and we will have another remarkable conclusion which says the square of $f$, $f^2$, is integrable w.r.t. $\alpha$ whenever $f \in \mathfrak{R}(\alpha)$.


````{prf:theorem}
:label: thm:32

Suppose $\alpha$ is increasing. If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$, then its square $f^2$ is also integrable w.r.t. $\alpha$, i.e., $f^2 \in \mathfrak{R}(\alpha)$ on $[a, b]$.

````

````{prf:proof}

Because $\phi(x) = x^2$ is continuous on $\R$, it is, of course, continuous on the closed interval joining the infimum and supremum of $f$, $[m, M]$. Then by {prf:ref}`thm:29`, $f^2 \in \mathfrak{R}(\alpha)$ on $[a, b]$.

````

An alternative proof without using {prf:ref}`thm:29` is left as an exercise.


````{admonition} Exercise 14

Prove {prf:ref}`thm:32` without using {prf:ref}`thm:29`. But feel free to use {prf:ref}`thm:31`.

````

````{admonition} Solution
:class: tip, dropdown

TODO

````

An immediate consequence of the above theorem is as follows, which states the product of two integrable functions is also integrable.


````{prf:theorem}
:label: thm:38

Suppose $\alpha$ is increasing. If $f, g \in \mathfrak{R}(\alpha)$ on $[a, b]$, then $fg \in \mathfrak{R}(\alpha)$ on $[a, b]$.

````

````{prf:proof}

Note that the product $fg$ can be written as

```{math}
\begin{align*}
f g = \frac{1}{4}[(f + g)^2 - (f - g)^2
]\end{align*}
```

Then this theorem follows directly from {prf:ref}`thm:18` and {prf:ref}`thm:32`.

````
## Riemann-Stieltjes Integral with a Variable Upper Limit

We know by {prf:ref}`thm:38` that the product $fg$ is integrable w.r.t. $\alpha$ whenever $f$ and $g$ are integrable. The next theorem provides an alternative view of the integral $\int_{a}^{b} f g \; \mathrm{d}\alpha$. As we will see, we can define a function $G$ in such a way that the symbol $g \; \mathrm{d}\alpha$ in the original integral can be replaced with $\mathrm{d}G$. Or we can replace $f \; \mathrm{d}\alpha$ with $\mathrm{d}F$ by defining a function $F$.


````{prf:theorem}
:label: thm:39

Suppose that $\alpha$ is increasing, and $f, g \in \mathfrak{R}(\alpha)$ on $[a, b]$. Define

```{math}
\begin{align*}
F(x) = \int_{a}^{x} f \;\mathrm{d}\alpha\quad\text{and}\quad
G(x) = \int_{a}^{x} g \;\mathrm{d}\alpha,
\quad x \in[a, b]\end{align*}
```

Then $f \in \mathfrak{R}(G)$ and $g \in \mathfrak{R}(F)$ on $[a, b]$(of course $fg \in \mathfrak{R}(\alpha)$ by {prf:ref}`thm:38`), and we have

```{math}
\begin{align*}\int_{a}^{b} fg \;\mathrm{d}\alpha
= \int_{a}^{b} f \;\mathrm{d}G
= \int_{a}^{b} g \;\mathrm{d}F
\end{align*}
```

````

````{prf:proof}

We only prove $f \in \mathfrak{R}(G)$ and $\int_{a}^{b} f g \; \mathrm{d}\alpha = \int_{a}^{b} f \; \mathrm{d}G$. Suppose $g$ is bounded by some positive number, say $A$, i.e., $\abs{g(x)} < A \; \forall x \in[a, b]$. Given $\varepsilon > 0$, since $f g \in \mathfrak{R}(\alpha)$, there exists a partition $P_\varepsilon$ on $[a, b]$ such that

```{math}
:label: eq:96
\begin{align}\abs{U(P,f,\alpha) - L(P,f,\alpha)} < \varepsilon / A
\end{align}
```

holds for any refinement $P$ of $P_\varepsilon$. Let $P = \{x_0, x_1, \ldots, x_n\} \supset P_\varepsilon$ and $t_k \in[x_{k-1}, x_k]$. We have

```{math}
:label: eq:94
\begin{align}
S(P,f, G)
&= \sum_k f(t_k) \Delta G \nonumber\\&= \sum_k f(t_k) \int_{x_{k-1}}^{x_k} g \;\mathrm{d}\alpha\nonumber\\&= \sum_k \int_{x_{k-1}}^{x_k} f(t_k) g(t) \;\mathrm{d}\alpha(t)
\end{align}
```

On the other hand, we can write

```{math}
:label: eq:95
\begin{align}\int_{a}^{b} f g  \;\mathrm{d}\alpha
= \sum_k \int_{x_{k-1}}^{x_k} f(t) g(t) \;\mathrm{d}\alpha(t)
\end{align}
```

Subtracting {eq}`eq:94` and {eq}`eq:95` yields

```{math}
\begin{align*}
S(P,f, G) - \int_{a}^{b} f g  \;\mathrm{d}\alpha
= \sum_k \int_{x_{k-1}}^{x_k}[f(t_k) - f(t)] g(t) \;\mathrm{d}\alpha(t)
\end{align*}
```

It then follows from {prf:ref}`thm:31` that

```{math}
\begin{align*}\abs{S(P,f, G) - \int_{a}^{b} f g  \; \mathrm{d}\alpha}&\leq\sum_k \abs{
\int_{x_{k-1}}^{x_k} [f(t_k) - f(t)] g(t) \; \mathrm{d}\alpha(t)
}\\&\leq\sum_k \int_{x_{k-1}}^{x_k}\abs{f(t_k) - f(t)}\abs{g(t)}\;\mathrm{d}\alpha(t) \\&\leq\sum_k \int_{x_{k-1}}^{x_k}(M_k - m_k) \abs{g(t)}\;\mathrm{d}\alpha(t) \\&= \sum_k (M_k - m_k) \int_{x_{k-1}}^{x_k}\abs{g(t)}\;\mathrm{d}\alpha(t)
\end{align*}
```

Recall $\abs{g} \leq A$. Using {prf:ref}`thm:30`, we obtain

```{math}
\begin{align*}\abs{S(P,f, G) - \int_{a}^{b} f g  \; \mathrm{d}\alpha}&\leq\sum_k (M_k - m_k) \int_{x_{k-1}}^{x_k} A \;\mathrm{d}\alpha(t) \\&= A \sum_k (M_k - m_k) \Delta\alpha_k \\&= A (U(P,f,\alpha) - L(P,f,\alpha))
\end{align*}
```

Hence,

```{math}
\begin{align*}\abs{S(P,f,G) - \int_{a}^{b} f g  \; \mathrm{d}\alpha} < \varepsilon\end{align*}
```

by {eq}`eq:96`. Therefore, $f$ is integrable w.r.t. $G$ on $[a, b]$ with $\int_{a}^{b} f \; \mathrm{d}G = \int_{a}^{b} f g  \; \mathrm{d}\alpha$.

````

````{prf:example}

Let

```{math}
\begin{align*}\alpha(x)
= \begin{cases}
1 &x \geq 0 \\
0 &x < 0
\end{cases},
\quad
-1 \leq x \leq 1
\end{align*}
```

Suppose $f$ and $g$ are any two functions defined on $[-1, 1]$ being continuous from the left at $x=0$. By {prf:ref}`thm:24` and {prf:ref}`thm:40`, we know both functions are integrable w.r.t. $\alpha$ on $[-1, x]$ if $-1 < x \leq 1$ with

```{math}
\begin{align*}
F(x) = \int_{-1}^x f \;\mathrm{d}\alpha = \begin{cases}
f(0) &x \geq 0 \\
0 &x < 0
\end{cases}\quad\text{and}\quad
G(x) = \int_{-1}^x g \;\mathrm{d}\alpha = \begin{cases}
g(0) &x \geq 0 \\
0 &x < 0
\end{cases}\end{align*}
```

Note that $F$ and $G$ are also step functions that are continuous from the right at $x = 0$. Hence, by applying {prf:ref}`thm:24` again, we have

```{math}
\begin{align*}\int_{-1}^{1} f \;\mathrm{d}G = f(0)g(0)
\quad\text{and}\quad\int_{-1}^{1} g \;\mathrm{d}F = f(0)g(0)
\end{align*}
```

On the other hand, since the product $f g$ is continuous from the left at $x=0$, it follows from {prf:ref}`thm:24` that 
```{math}
\begin{align*}\int_{-1}^{1} f g \;\mathrm{d}\alpha
= f(0)g(0)
\end{align*}
```

The results agree with {prf:ref}`thm:39` as expected.

````
