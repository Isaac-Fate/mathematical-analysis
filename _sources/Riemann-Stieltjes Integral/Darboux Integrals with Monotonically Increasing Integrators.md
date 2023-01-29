
```{index} Darboux integrals
```
# Darboux Integrals with Monotonically Increasing Integrators

In this section, we shall introduce another formulation of integrals, which is known as the **Darboux integrals**. As we noted before, the Riemann-Stieltjes sum $S(P,f,\alpha)$ also depends on the choice of representatives, $ t_k$s. This uncertainty increases the difficulty of proving assertions related to integrals. For example, as we have seen in {prf:ref}`eg:4`, it takes quite a lot of work to prove that integral does not exist. Hence, we need Darboux's formulation, which has the advantage of being easier to apply in computations or proofs.


````{prf:definition}
:label: def:2

Let $f$ be a bounded function on $[a, b]$, and $P = \{a=x_0, x_1, \ldots, x_n=b\}$ a partition. In each sub-interval $[x_{k-1}, x_k]$, we use the symbols $M_k$ and $m_k$ to denote

```{index} upper Riemann-Stieltjes sum
```

```{index} lower Riemann-Stieltjes sum
```

```{math}
\begin{align*}
M_k = \sup\set{f(x)}{x \in[x_{k-1}, x_k]}\quad\text{and}\quad
m_k = \inf\set{f(x)}{x \in[x_{k-1}, x_k]}\end{align*}
```
(The supremum and infimum are well-defined since we assume $f$ is bounded.) The **upper Riemann-Stieltjes sum**$U(P,f,\alpha)$ and **lower Riemann-Stieltjes sum**$L(P,f,\alpha)$ are defined by

```{math}
\begin{align*}
U(P,f,\alpha) = \sum_{k=1}^n M_k \Delta\alpha_k
\quad\text{and}\quad
L(P,f,\alpha) = \sum_{k=1}^n m_k \Delta\alpha_k
\end{align*}
```

````

```{index} upper Darboux sum
```

```{index} lower Darboux sum
```

If $\alpha(x) = x$, we write $U(P,f)$ and $L(P,f)$ with the specification of $\alpha$ dropped. And in this case, $U(P,f)$ and $L(P,f)$ are called the **upper and lower Darboux sum**.


:::{note}

From the definition, we note that, unlike $S(P,f,\alpha)$, $U(P,f,\alpha)$ and $L(P,f,\alpha)$ only depend on $P$, $f$ and $\alpha$.

:::

On each sub-interval $[x_{k-1}, x_k]$, by definition, we have

```{math}
:label: eq:46
\begin{align}
m_k \leq f(x) \leq M_k
\quad\forall x \in[x_{k-1}, x_k]\end{align}
```

It follows that

```{math}
:label: eq:45
\begin{align}
L(P,f,\alpha) \leq U(P,f,\alpha)
\end{align}
```

If we pick a representative $t_k \in[x_{k-1}, x_k]$ in each interval and assume $\alpha$ is monotonically increasing, then {eq}`eq:46` yields

```{math}
\begin{align*}
L(P,f,\alpha) \leq S(P,f,\alpha) \leq U(P,f,\alpha)
\end{align*}
```

The following theorem states that not only $L(P,f,\alpha) \leq U(P,f,\alpha)$ for the same partition $P$, but also $L(P_1,f,\alpha) \leq U(P_2,f,\alpha)$ for any two partitions $P_1$ and $P_2$. The theorem also says the upper sums will decrease as the partition gets finer and finer while the lower sums will increase.


````{prf:theorem}
:label: thm:26

Suppose $\alpha$ is increasing on $[a, b]$. We have the following statements.
- ➀ If $P^\prime \supseteq P$, then

```{math}
\begin{align*}
U(P^\prime,f,\alpha) \leq U(P,f,\alpha)
\quad\text{and}\quad
L(P^\prime,f,\alpha) \geq L(P,f,\alpha)
\end{align*}
```
- ➁ For any two partitions $P_1$ and $P_2$ on $[a, b]$, we have

```{math}
\begin{align*}
L(P_1, f, \alpha) \leq U(P_2, f, \alpha)
\end{align*}
```

````

````{prf:proof}
(Proof of 1) We only prove $U(P^\prime,f,\alpha) \leq U(P,f,\alpha)$ since the proof for lower sums is similar. Note that it suffices to prove the case where $P^\prime$ has exactly one point, say $c$, more than $P$.

:::{note}

If $P^\prime$ has $m$ points more than $P$, then we can construct a chain of partitions:

```{math}
\begin{align*}
P^\prime = P_1 \supseteq P_2 \cdots\supseteq P_m = P
\end{align*}
```

in such a way that $P_i$ has one point more than $P_{i+1}$. Then by applying the inequality $U(P_i,f,\alpha) \leq U(P_{i+1},f,\alpha)$, which is assumed proved, we obtain

```{math}
\begin{align*}
U(P^\prime,f,\alpha) \leq U(P_2,f,\alpha) \leq\cdots\leq U(P,f,\alpha)
\end{align*}
```

:::

Suppose $P=\{x_0,x_1,\ldots,x_n\}$, and point $c$ is in between $x_{i-1}$ and $x_i$. The upper sum $U(P^\prime,f,\alpha)$ is then

```{math}
\begin{align*}
U(P^\prime,f,\alpha)
= \sum_{k=1, k \neq i}^n M_k \Delta\alpha_k
+ M^\prime[\alpha(c) - \alpha(x_{i-1})]
+ M^{\prime\prime}[\alpha(x_{i})-\alpha(c)]\end{align*}
```

where

```{math}
\begin{align*}
M^\prime = \sup\set{f(x)}{x \in[x_{i-1}, c]}\quad\text{and}\quad
M^{\prime\prime} = \sup\set{f(x)}{x \in[c, x_i]}\end{align*}
```

Since $M_i \geq M^\prime, M^{\prime\prime}$, we have

```{math}
\begin{align*}
M^\prime[\alpha(c) - \alpha(x_{i-1})]
+ M^{\prime\prime}[\alpha(x_{i})-\alpha(c)]\leq M_i \Delta\alpha_i
\end{align*}
```

Hence, $U(P^\prime,f,\alpha) \leq U(P,f,\alpha)$.

(Proof of 2) Let $P$ be a common refinement of $P_1$ and $P_2$, say $P = P_1 \cup P_2$. Applying what we have just proved, it follows that

```{math}
\begin{align*}
L(P,f,\alpha) \geq L(P_1,f,\alpha)
\quad\text{and}\quad
U(P,f,\alpha) \leq U(P_2,f,\alpha)
\end{align*}
```

As noted before in {eq}`eq:45`, $L(P,f,\alpha) \leq U(P,f,\alpha)$. Therefore,

```{math}
\begin{align*}
L(P_1,f,\alpha) \leq L(P,f,\alpha)
\leq U(P,f,\alpha) \leq U(P_2,f,\alpha)
\end{align*}
```

````

In particular, since every partition is a refinement of the trivial partition $P_0 = \{a, b\}$, {prf:ref}`thm:26` leads to

```{math}
:label: eq:47
\begin{align}\inf_{x\in[a,b]} f(x) [\alpha(b) - \alpha(a)]\leq L(P_1, f, \alpha) \leq U(P_2, f, \alpha)
\leq\sup_{x\in[a,b]} f(x) [\alpha(b) - \alpha(a)]\end{align}
```

```{index} upper Riemann-Stieltjes integral
```

```{index} lower Riemann-Stieltjes integral
```

What {eq}`eq:47` implies is that all the upper and lower Riemann-Stieltjes sums are bounded. Therefore, the infimum of upper sums and supremum of lower sums both exist as *finite* numbers, which gives rise to the definition of **upper and lower Riemann-Stieltjes integrals**.


````{prf:definition}

Suppose $f$ is bounded and $\alpha$ is monotonically increasing on $[a, b]$. The upper and lower Riemann-Stieltjes integrals, written as $\upint_a^b f \; \mathrm{d}\alpha$ and $\lowint_a^b f \; \mathrm{d}\alpha$, are defined by

```{math}
\begin{align*}\upint_a^b f \;\mathrm{d}\alpha
= \inf\set{U(P,f,\alpha)}{P \in \mathcal{P}[a,b]}\quad\text{and}\quad\lowint_a^b f \;\mathrm{d}\alpha
= \sup\set{L(P,f,\alpha)}{P \in \mathcal{P}[a,b]}\end{align*}
```

````

Sometimes, we will just say upper and lower integrals for short.

As indicated by the names, one should expect that the lower integral should be less than or equal to the upper integral. This is indeed the case.


````{prf:theorem}

Suppose $\alpha$ is increasing on $[a, b]$. We have

```{math}
:label: eq:48
\begin{align}\lowint_a^b f \;\mathrm{d}\alpha\leq\upint_a^b f \;\mathrm{d}\alpha\end{align}
```

````

````{prf:proof}

Given $\varepsilon > 0$, there exists a partition $P_\varepsilon$ such that

```{math}
\begin{align*}
U(P_\varepsilon,f,\alpha) < \upint_a^b f \;\mathrm{d}\alpha + \varepsilon\end{align*}
```

By {prf:ref}`thm:26`, for any partition $P$, we have

```{math}
\begin{align*}
L(P,f,\alpha) \leq U(P_\varepsilon,f,\alpha)
\end{align*}
```

It then follows that

```{math}
\begin{align*}
L(P,f,\alpha) < \upint_a^b f \;\mathrm{d}\alpha + \varepsilon\quad\forall P \in\mathcal{P}[a,b]\end{align*}
```

This implies that $\upint_a^b f \; \mathrm{d}\alpha + \varepsilon$ is an upper bound of all the lower Riemann-Stieltjes sums. Thus, it must be no less than their supremum, that is,

```{math}
\begin{align*}\lowint_a^b f \;\mathrm{d}\alpha\leq\upint_a^b f \;\mathrm{d}\alpha + \varepsilon\end{align*}
```

Since the above inequality holds for any positive number $\varepsilon > 0$, we have

```{math}
\begin{align*}\lowint_a^b f \;\mathrm{d}\alpha\leq\upint_a^b f \;\mathrm{d}\alpha\end{align*}
```

````

There exist cases where the inequality {eq}`eq:48` is strict.


````{prf:example}
:label: eg:5

Consider the Dirichlet function

```{math}
\begin{align*}\ind_{\Q}(x) = \begin{cases}
1 &x \in \Q\\
0 &x \notin \Q
\end{cases}\end{align*}
```

restricted on $[0,1]$. For any partition $P = \{0=x_0, x_1, \ldots, x_n=1\}$, the infimum of $\ind_{\Q}$ on each sub-interval $[x_{k-1}, x_k]$ is $0$. Hence, $L(P,\ind_{\Q}) = \sum_{k=1}^n 0 \cdot (x_k - x_{k-1}) = 0$, which implies the lower Darboux sum is always $0$. Therefore, the lower integral is $0$, i.e., $\lowint_0^1 \ind_\Q(x) \; \mathrm{d}x = 0$. Similarly, because the supremum of the Dirichlet function is $1$ in each sub-interval, the upper Darboux sum is always $1$. Hence, $\upint_0^1 \ind_\Q(x) \; \mathrm{d}x = 1$. In this case, the lower integral is strictly less than the upper integral.

````

In the following theorems, we introduce some properties of upper and lower integrals.


````{prf:theorem}

Suppose that $f$ is bounded and $\alpha$ is increasing on $[a, b]$. Let $c \in (a, b)$. We have
- ➀ $\upint_a^b f \; \mathrm{d}\alpha = \upint_a^c f \; \mathrm{d}\alpha + \upint_c^b f \; \mathrm{d}\alpha$
- ➁ $\lowint_a^b f \; \mathrm{d}\alpha = \lowint_a^c f \; \mathrm{d}\alpha + \lowint_c^b f \; \mathrm{d}\alpha$

````

````{prf:proof}

We only prove 1, the equality concerning the upper integrals, since 2 can be proved similarly.

Given $\varepsilon > 0$, there exist a partition $P_1$ on $[a, c]$ and a partition $P_2$ on $[c, b]$ such that

```{math}
:label: eq:49
\begin{align}
U(P_1,f,\alpha) < \upint_a^c f \;\mathrm{d}\alpha + \varepsilon/2
\quad\text{and}\quad
U(P_2,f,\alpha) < \upint_c^b f \;\mathrm{d}\alpha + \varepsilon/2
\end{align}
```

Let $P = P_1 \cup P_2$. Note that $P$ is a partition on $[a, b]$, Furthermore, the upper Riemann-Stieltjes sum $U(P,f,\alpha)$ is given by

```{math}
:label: eq:50
\begin{align}
U(P,f,\alpha) = U(P_1,f,\alpha) + U(P_2,f,\alpha)
\end{align}
```

But

```{math}
:label: eq:51
\begin{align}
U(P,f,\alpha) \geq\upint_a^b f \;\mathrm{d}\alpha\end{align}
```

Combining {eq}`eq:49`, {eq}`eq:50` and {eq}`eq:51` together, we have

```{math}
\begin{align*}\upint_a^b f \;\mathrm{d}\alpha
< \upint_a^c f \;\mathrm{d}\alpha + \upint_c^b f \;\mathrm{d}\alpha + \varepsilon\end{align*}
```

Since the above inequality holds for any $\varepsilon > 0$. It follows that

```{math}
:label: eq:52
\begin{align}\upint_a^b f \;\mathrm{d}\alpha\leq\upint_a^c f \;\mathrm{d}\alpha + \upint_c^b f \;\mathrm{d}\alpha\end{align}
```

On the other hand, letting $\varepsilon > 0$ be chosen arbitrarily, there exists a partition $P$ on $[a, b]$ such that

```{math}
:label: eq:53
\begin{align}
U(P,f,\alpha) < \upint_a^b f \;\mathrm{d}\alpha + \varepsilon\end{align}
```

We want to split $P$ into two partitions, one on $[a,c]$ and the other on $[c, b]$. But we need to ensure that $c$ is in $P$. To do so, we consider a refinement $P^\prime = P \cup \{c\}$. By {prf:ref}`thm:26`, we know that the upper Riemann-Stieltjes sum concerning $P^\prime$ is reduced, i.e.,

```{math}
:label: eq:54
\begin{align}
U(P^\prime,f,\alpha) \leq U(P,f,\alpha) < \upint_a^b f \;\mathrm{d}\alpha + \varepsilon\end{align}
```

where the second inequality follows from {eq}`eq:53`. Let $P_1$ and $P_2$ be given by

```{math}
\begin{align*}
P_1 = \set{x \in P^\prime}{x \leq c}\quad\text{and}\quad
P_2 = \set{x \in P^\prime}{x \geq c}\end{align*}
```

Note that indeed $P_1$ and $P_2$ are partitions on $[a, c]$ and $[c, b]$, respectively. We have

```{math}
:label: eq:55
\begin{align}
U(P^\prime,f,\alpha) = U(P_1,f,\alpha) + U(P_2,f,\alpha)
\end{align}
```

Moreover, The two upper Riemann-Stieltjes sums are bounded below by the corresponding upper integrals, that is,

```{math}
:label: eq:56
\begin{align}
U(P_1,f,\alpha) \geq\upint_a^c f \;\mathrm{d}\alpha\quad\text{and}\quad
U(P_2,f,\alpha) \geq\upint_c^b f \;\mathrm{d}\alpha\end{align}
```

Then, by combining {eq}`eq:54`, {eq}`eq:55` and {eq}`eq:56`, we obtain

```{math}
\begin{align*}\int_a^b f \;\mathrm{d}\alpha + \varepsilon
> \int_a^c f \;\mathrm{d}\alpha
+ \int_c^b f \;\mathrm{d}\alpha\end{align*}
```

Similarly, since the above inequality holds for any $\varepsilon > 0$, we have

```{math}
:label: eq:57
\begin{align}\int_a^b f \;\mathrm{d}\alpha\geq\int_a^c f \;\mathrm{d}\alpha
+ \int_c^b f \;\mathrm{d}\alpha\end{align}
```

Finally, the equation

```{math}
\begin{align*}\upint_a^b f \;\mathrm{d}\alpha = \upint_a^c f \;\mathrm{d}\alpha + \upint_c^b f \;\mathrm{d}\alpha\end{align*}
```

follows from {eq}`eq:52` and {eq}`eq:57`.

````

However, some equations of integrals will not be valid for upper and lower integrals. For example, the following equation is a special case of {prf:ref}`thm:18`.

```{math}
\begin{align*}\int_{a}^{b}(f+g) \;\mathrm{d}\alpha
= \int_{a}^{b} f \;\mathrm{d}\alpha
+ \int_{a}^{b} g \;\mathrm{d}\alpha\end{align*}
```

It will not hold if we replace the integrals with upper and lower integrals. To fix this, we also need to replace equality with inequality, as stated in the next theorem.


````{prf:theorem}

Suppose that $f$ and $g$ are bounded and $\alpha$ is increasing on $[a, b]$. We have
- ➀ $\upint_a^b (f+g) \; \mathrm{d}\alpha \leq \upint_a^b f \; \mathrm{d}\alpha + \upint_a^b g \; \mathrm{d}\alpha$
- ➁ $\lowint_a^b (f+g) \; \mathrm{d}\alpha \geq \lowint_a^b f \; \mathrm{d}\alpha + \lowint_a^b g \; \mathrm{d}\alpha$

````

````{prf:proof}

We only prove 1. Given $\varepsilon > 0$, there exist partitions $P_1$ and $P_2$ on $[a, b]$ such that

```{math}
\begin{align*}
U(P_1,f,\alpha) < \upint_a^b f \;\mathrm{d}\alpha + \varepsilon/2
\quad\text{and}\quad
U(P_2,g,\alpha) < \upint_a^b g \;\mathrm{d}\alpha + \varepsilon/2
\end{align*}
```

Let $P = P_1 \cup P_2$. It follows from {prf:ref}`thm:26` that

```{math}
\begin{align*}
U(P,f,\alpha) \leq U(P_1,f,\alpha) < \upint_a^b f \;\mathrm{d}\alpha + \varepsilon/2
\quad\text{and}\quad
U(P,g,\alpha) \leq U(P_2,g,\alpha) < \upint_a^b g \;\mathrm{d}\alpha + \varepsilon/2
\end{align*}
```

Adding the two inequalities above yields

```{math}
:label: eq:58
\begin{align}
U(P,f,\alpha) + U(P,g,\alpha)
< \upint_a^b f \;\mathrm{d}\alpha +  \upint_a^b g \;\mathrm{d}\alpha + \varepsilon\end{align}
```

Write $P=\{ x_0, x_1, \ldots, x_n \}$. Let $M_k$, $M_k^\prime$ and $M_k^{\prime\prime}$ denote

```{math}
\begin{align*}
M_k &= \sup\set{f(x) + g(x)}{x \in[x_{k-1}, x_k]}\\
M_k^\prime&= \sup\set{f(x)}{x \in[x_{k-1}, x_k]}\\
M_k^{\prime\prime}&= \sup\set{g(x)}{x \in[x_{k-1}, x_k]}\end{align*}
```

It is clear that

```{math}
\begin{align*}
M_k \leq M_k^\prime + M_k^{\prime\prime}\quad\forall k = 1, \ldots, n
\end{align*}
```

since $f(x) + g(x) \leq M_k^\prime + M_k^{\prime\prime} \; \forall x \in[x_{k-1}, x_k]$. It then follows that

```{math}
\begin{align*}
U(P,f+g,\alpha) \leq U(P,f,\alpha) + U(P,g,\alpha)
\end{align*}
```

Because $U(P,f+g,\alpha)$ is bounded below by its upper integral, we further have

```{math}
:label: eq:59
\begin{align}\upint_a^b (f+g) \;\mathrm{d}\alpha\leq U(P,f+g,\alpha) \leq U(P,f,\alpha) + U(P,g,\alpha)
\end{align}
```

Combining inequalities {eq}`eq:58` and {eq}`eq:59`, we obtain

```{math}
\begin{align*}\upint_a^b (f+g) \;\mathrm{d}\alpha
< \upint_a^b f \;\mathrm{d}\alpha +  \upint_a^b g \;\mathrm{d}\alpha + \varepsilon\end{align*}
```

Because the above inequality holds for any $\varepsilon > 0$, we finally have the inequality

```{math}
\begin{align*}\upint_a^b (f+g) \;\mathrm{d}\alpha\leq\upint_a^b f \;\mathrm{d}\alpha +  \upint_a^b g \;\mathrm{d}\alpha\end{align*}
```

as desired.

````

The following is an example where both inequalities are strict.


````{prf:example}

Let functions

```{math}
\begin{align*}
f = \ind_\Q\quad\text{and}\quad
g = -\ind_\Q\end{align*}
```

be restricted on $[0, 1]$. We have calculated the upper and lower integrals of $f$ in {prf:ref}`eg:5`. We can do the same for $g$ similarly. The results are as follows.

```{math}
\begin{align*}\upint_0^1 f(x) \;\mathrm{d}x = 1,
\quad\lowint_0^1 f(x) \;\mathrm{d}x = 0,
\quad\upint_0^1 g(x) \;\mathrm{d}x = 0,
\quad\text{and}\quad\lowint_0^1 g(x) \;\mathrm{d}x = -1,
\end{align*}
```

Note that the sum of the two functions is zero, i.e., $f + g = 0$. Hence, we have

```{math}
\begin{align*}\upint_0^1 (f+g)(x) \;\mathrm{d}x
= 0
< 1
= \upint_0^1 f(x) \;\mathrm{d}x + \upint_0^1 g(x) \;\mathrm{d}x \\\lowint_0^1 (f+g)(x) \;\mathrm{d}x
= 0
> -1
= \lowint_0^1 f(x) \;\mathrm{d}x + \lowint_0^1 g(x) \;\mathrm{d}x
\end{align*}
```

````
