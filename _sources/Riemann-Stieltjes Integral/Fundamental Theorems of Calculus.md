
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

(Proof of 2) There exits $M > 0$ such that $\abs{f} \leq M$.
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

(Proof of 3) Suppose $\alpha^\prime(c)$ exits and $f$ is
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

````{prf:theorem} Second Fundamental Theore of Calculus
:label: thm:82

TODO

````
