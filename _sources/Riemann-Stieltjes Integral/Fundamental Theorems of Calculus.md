
```{index} first fundamental theorem of calculus
```
# Fundamental Theorems of Calculus

The **first fundamental theorem of calculus**
establishes the relation between the antiderivative of function $f$
and its definite integral.
The following theorem is a sightly generalized version
where the integrator is any function of bounded variation.


````{prf:theorem}
:label: thm:79

Let $\alpha$ be of bounded variation on $[a, b]$.
Suppose that $f \in \mathfrak{R}(\alpha)$ on $[a, b]$.
Define

```{math}
\begin{align*}
F(x) = \int_a^x f \;\mathrm{d}\alpha,
\quad x \in[a, b]\end{align*}
```
(Note that $F$ is well-defined by {prf:ref}`thm:80`.)
We have the following:
- ➀ $F$ is of bounded variation on $[a, b]$.
- ➁ $F$ is continuous at the point where $\alpha$ is continuous.
- ➂ If $\alpha$ is increasing,
then $F^\prime(x)$ exists at each $x \in (a, b)$
where $\alpha^\prime(x)$ exists
and $f$ is continuous. For such $x$, we have

```{math}
\begin{align*}
F^\prime(x) = f(x) \alpha^\prime(x)
\end{align*}
```


````

:::{note}

Let us consider the case in statement 3
where $x$ is one of the endpoints,
i.e., $x = a$ or $x = b$.
Suppose $x = a$.
If one-sided derivative $\alpha^\prime_{+}(a)$
and the one-sided limit $f(a+)$ both exist and are finite,
then $F^\prime(a+)$ also exists, and

```{math}
\begin{align*}
F^\prime_{+}(a) = f(a+) \alpha^\prime_{+}(a)
\end{align*}
```

This can be proved by changing the limit processes
to the one-sided limits in the following proof
we are about to present.
An analogous result also holds for $x = b$.

Notice also that if $F$ is defined as

```{math}
\begin{align*}
F(x) = \int_c^x f \;\mathrm{d}\alpha,
\quad x \in[a, b]\end{align*}
```

where $c$ is any point in $[a, b]$,
then all the conclusions also hold,
as an immediate consequence of this theorem.
Too see this, we write

```{math}
\begin{align*}
F(x) = \int_a^x f \;\mathrm{d}\alpha
+ \int_c^a f \;\mathrm{d}\alpha\end{align*}
```

:::

````{prf:proof}

It suffices to prove this theorem when $\alpha$ is increasing.

(Proof of 1) Let $P$ be any partition on $[a, b]$.
We have

```{math}
\begin{align*}
V(P,F) = \sum_{k}\abs{
\int_{x_{k-1}}^{x_k} f \; \mathrm{d} \alpha
}\leq\sum_{k}\int_{x_{k-1}}^{x_k}\abs{f}\;\mathrm{d}\alpha
= \int_{a}^{b}\abs{f}\;\mathrm{d}\alpha\end{align*}
```

Hence, $F$ is of bounded of variation on $[a, b]$
since the right-hand side does not depend on $P$.

(Proof of 2) There exists $M > 0$ such that $\abs{f} \leq M$.
Suppose $\alpha$ is continuous at $c$.
We have

```{math}
\begin{align*}\abs{F(x) - F(c)}
= \abs{
\int_c^x f \; \mathrm{d} \alpha
}\leq\int_c^x \abs{f}\;\mathrm{d}\alpha\leq M [\alpha(x) - \alpha(c)
]\end{align*}
```

By taking $x \to c$ on both sides, we see that
the limit $\lim_{x \to c} F(x)$ exists, and it equals $F(c)$.
Hence, $F$ is also continuous at $c$.

(Proof of 3) Suppose $\alpha^\prime(c)$ exists and $f$ is
continuous at $c$.
Applying the first mean value theorem ({prf:ref}`thm:77`),
there exists a number $\xi$ in the closed interval
joining $x$ and $c$($x \neq c$) such that

```{math}
\begin{align*}
F(x) - F(c)
= \int_c^x f \;\mathrm{d}\alpha
= f(\xi) [\alpha(x) - \alpha(c) ]\end{align*}
```

Dividing by $(x - c)$ on both sides yields

```{math}
\begin{align*}\frac{F(x) - F(c)}{x - c}
= f(\xi) \frac{\alpha(x) - \alpha(c)}{x - c}\end{align*}
```

Since $f$ is continuous at $c$ and $\alpha^\prime(c)$ exists.
The limit of the left-hand side exists as $x \to c$.
Hence, $F^\prime(c)$ exists.
Letting $x \to c$, we have

```{math}
\begin{align*}
F^\prime(c) = \lim_{x \to c}\frac{F(x) - F(c)}{x - c}
= f(c) \alpha^\prime(c)
\end{align*}
```

````

In particular, let $\alpha(x) = x$, and {prf:ref}`thm:79`
will reduce to the traditional form the first fundamental
theorem of calculus.


````{prf:theorem} First Fundamental Theorem of Calculus
:label: thm:81

Suppose $f \in \mathfrak{R}$ on $[a, b]$.
Define

```{math}
\begin{align*}
F(x) = \int_a^x f(t) \;\mathrm{d} t
\end{align*}
```

Then we have the following:
- ➀ $F$ is of bounded variation on $[a, b]$.
- ➁ $F$ is continuous on $[a, b]$.
- ➂ If $f$ is continuous at $x \in (a, b)$,
then $F^\prime(x)$ exists and

```{math}
\begin{align*}
F^\prime(x) = f(x)
\end{align*}
```


````

:::{note}

We have similar comments for this theorem
to that of the preceding one.

In particular, if $f$ is continuous on $[a, b]$,
which is very common in practice,
then the derivative of $F$ exists everywhere
(including the one-sided derivatives at the endpoints).

:::

````{prf:example}
:label: eg:13

Let

```{math}
\begin{align*}
f(x) = \begin{cases}
1,
&x = 0 \\
0,
&x \neq 0
\end{cases},
\quad x \in[-1, 1]\end{align*}
```

Then

```{math}
\begin{align*}
F(x)
= \int_{-1}^x f(t) \;\mathrm{d} t
= 0
\end{align*}
```

is constantly zero.
Note that $f$ is not continuous at $0$.
Though the derivative of $F$ exists at $0$,
it does not equal $f(0)$.
We have $F^\prime(0) = 0 \neq 1 = f(0)$.

````

````{prf:example}
:label: eg:12

Let

```{math}
\begin{align*}
f(x) = \begin{cases}
1,
&x \geq 0 \\
0,
&x < 0
\end{cases},
\quad x \in[-1, 1]\end{align*}
```

Then

```{math}
\begin{align*}
F(x)
= \int_{-1}^x f(t) \;\mathrm{d} t
= \begin{cases}
x,
&x \geq 0 \\
0,
&x < 0
\end{cases}\end{align*}
```

Since $f$ is not continuous at $0$, in this example,
we see that $F^\prime(0)$ does not even exist.
See {numref}`fig:15`
```{figure} /figures/ma-015.png
---
name: fig:15
---
Left: $f(x)$. Right: $F(x) = \int_{-1}^x f(t) \; \mathrm{d} t$.

```

````

````{prf:theorem} Second Fundamental Theorem of Calculus
:label: thm:82

Suppose that $f \in \mathfrak{R}$ on $[a, b]$.
Let $F$ be a function defined on $[a, b]$
that is differentiable in $(a, b)$
with

```{math}
\begin{align*}
F^\prime(x) = f(x)
\quad\forall x \in(a, b)
\end{align*}
```

Suppose also at the endpoints, the one-sided limits
$F(a+)$ and $F(b-)$ both exist and satisfy
Then we have

```{math}
:label: eq:144
\begin{align}\int_a^b f(x) \;\mathrm{d} x
= F(b-) - F(a+)
\end{align}
```

````

````{prf:proof}

Given $\varepsilon > 0$, since $f$ is integrable,
there exists a partition $P_\varepsilon$ on $[a, b]$
such that for any refinement $P$ of $P_\varepsilon$,
we have

```{math}
\begin{align*}
U(P,f) - L(P,f) < \varepsilon\end{align*}
```

Let $P=\{x_1, \ldots, x_n\}$ be a refinement of $P_\varepsilon$.
On each subinterval $[x_{k-1}, x_k]$,
applying the mean value theorem for derivatives
({prf:ref}`thm:85`),
we have

```{math}
\begin{align*}
F(x_k -) - F(x_{k-1} +)
= F^\prime(\xi_k) \Delta x_k
= f(\xi_k) \Delta x_k
\end{align*}
```

Note that $F(x_k +) = F(x_k - ) = F(x_k)$ expect possibly
for two endpoints (when $x_k$ equals $a$ or $b$)
since $F$ is continuous in $(a, b)$
for it is differentiable there.
Summing up over $k$ yields

```{math}
\begin{align*}
F(b-) - F(a+)
= \sum_{k=1}^n F(x_{k} - ) - F(x_{k-1} + )
= \sum_{k=1}^n f(\xi_k) \Delta x_k
\end{align*}
```

It then follows that

```{math}
\begin{multline*}
U(P,f) - [F(b-) - F(a+)]
= \sum_{k=1}^n [M_k - f(\xi_k)]\Delta x_k \\\leq\sum_{k=1}^n (M_k - m_k) \Delta x_k
= U(P,f) - L(P,f)
< \varepsilon\end{multline*}
```

where $M_k = \sup_{x \in[x_{k-1}, x_k]} f(x)$.
Note that the above inequality
holds for any refinement $P$ of $P_\varepsilon$.
Taking the infimum over partition $P$, we obtain

```{math}
\begin{align*}\upint_a^b f(x) \;\mathrm{d} x
- [F(b-) - F(a+)]\leq\varepsilon\end{align*}
```

This proves {eq}`eq:144` since $\varepsilon > 0$
is arbitrary
and that the upper integral
equals $\int_a^b f(x) \; \mathrm{d} x$.

````