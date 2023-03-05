# Change of Variables in Riemann Integrals

````{prf:theorem} Change of Variables
:label: thm:83

Suppose that function $\phi$
with a continuous derivative on $[c, d]$,
and that $f$ is continuous on $\phi([c, d])$.
Define

```{math}
\begin{align*}
F(x) = \int_{\phi(c)}^x f(t) \;\mathrm{d} t,
\quad x \in\phi([c, d])
\end{align*}
```

Then for each $x$ in $[c, d]$, the integral
$\int_{c}^x f[\phi(t)] \phi^\prime(t) \; \mathrm{d} t$
exists and has the value $F[ \phi(x) ]$.
In particular, putting $x = d$ yields

```{math}
:label: eq:143
\begin{align}\int_{\phi(c)}^{\phi(d)} f(t) \;\mathrm{d} t
= \int_{c}^x f[\phi(t)]\phi^\prime(t) \;\mathrm{d} t
\end{align}
```

````

Note that the integrand on right-hand side of {eq}`eq:143`
looks like the expression that the chain rule will produce.
Indeed, the proof of this theorem
differs from other theorems in this chapter in that
it mainly relies on the chain rule,
which is a technique from differentiation.
And as one will expect,
we shall use fundamental theorems of calculus
to establish this connection.


````{prf:proof}

Consider the composite function $F[\phi(x)]$.
Note that $\phi^\prime(x)$ exists (and is finite)
for each $x$ in $[c,d]$
and that the derivative of $F$ exists (and is finite)
at $\phi(x)$
by the first fundamental theorem of calculus ({prf:ref}`thm:81`)
since $f$ is continuous there.
Then the chain rule ({prf:ref}`thm:4`) is applicable.
We have

```{math}
\begin{align*}\frac{ \mathrm{d} }{ \mathrm{d} x } F[\phi(x)]
= f[\phi(x) ]\phi^\prime(x)
=: g(x)
\end{align*}
```

Furthermore, note that $g(x)$ is continuous on $[c, d]$
since both $f[\phi(x)]$ and $\phi^\prime(x)$ are.
Hence, $g \in \mathfrak{R}$ on $[c, d]$,
which further implies that $g$ is integrable
on each subinterval $[c, x]$.
Then by the second fundamental theorem of calculus
({prf:ref}`thm:82`),
we have

```{math}
\begin{align*}\int_c^x g(t) \;\mathrm{d} t
= F[\phi(x)] - F[\phi(c)]
= F[\phi(x)]\end{align*}
```

Expanding expression of $g(t)$ proves the theorem.

````

````{prf:example}
:label: eg:14

Consider the integral

```{math}
\begin{align*}\int_0^1 f[x(x-1)(x-2)](3x^2 - 6x + 2) \;\mathrm{d} x
\end{align*}
```

where $f$ is any continuous function on $[0, 1]$.
Regarding the entire expression passed to $f$ as a new variable,
that is, letting $\phi(x) = x(x-1)(x-2)$,
we find

```{math}
\begin{align*}\int_0^1 f[x(x-1)(x-2)](3x^2 - 6x + 2) \;\mathrm{d} x
= \int_0^1 f[\phi(x)]\phi^\prime(x) \;\mathrm{d} x
= \int_{\phi(0) = 0}^{\phi(1) = 0}
f(x) \;\mathrm{d} x
= 0
\end{align*}
```
{numref}`fig:17` depicts the graph of $f[\phi(x)]$
where $f(x) = x \sin\frac{1}{x}$.


```{figure} /figures/ma-017.png
---
name: fig:17
---
The integral is zero where $f(x) = x \sin\frac{1}{x} \ind\{x \neq 0\}$ and $\phi(x) = x(x-1)(x-2)$.

```

````

Note that the function $\phi(x) = x(x-1)(x-2)$
can be decomposed into finitely many piece-wise monotonic
continuous functions.
In fact, it is increasing on $[0, (3 + \sqrt{3}) / 2]$
and is decreasing on $[(3 + \sqrt{3}) / 2, 1].$
Therefore, we can compute the integral by applying {prf:ref}`thm:21`
two times on each subintervals without even using {prf:ref}`thm:83`.
Hence, it seems that we did not
exploit the full power of {prf:ref}`thm:83`
In the following, the function $\phi$ cannot be
decomposed into finitely many monotonic functions.
In this case, {prf:ref}`thm:21` is no longer applicable.


````{prf:example}
:label: eg:15

Consider the integral

```{math}
\begin{align*}\int_{0}^{1 / \pi} f(x^3 \sin\frac{1}{x}\ind\{x \neq 0\})
(3x^2 \sin\frac{1}{x} - x\cos\frac{1}{x})
\ind\{x \neq 0\}\;\mathrm{d} x
\end{align*}
```

where $f$ can be any continuous functions on $[0, 1 / \pi]$.
Let

```{math}
\begin{align*}\phi(x) = x^3 \sin\frac{1}{x}\ind\{x \neq 0\}\end{align*}
```

Note that

```{math}
\begin{align*}\phi^\prime(x) =
\begin{cases}
3x^2 \sin \frac{1}{x} - x\cos\frac{1}{x},
& x > 0 \\
0,
& x = 0
\end{cases},
\quad
x \in[0, 1 / \pi]\end{align*}
```

Then by applying {prf:ref}`thm:83`, the integral
reduces to

```{math}
\begin{align*}\int_{\phi(0) = 0}^{\phi(1 / \pi) = 0} f(x) \;\mathrm{d} x
= 0
\end{align*}
```

See {numref}`fig:18`.


```{figure} /figures/ma-018.png
---
name: fig:18
---
The integral is zero where $f(x) = x \sin\frac{1}{x} \ind\{ x \neq 0 \}$ and $\phi(x) = x^3 \sin \frac{1}{x} \ind\{x \neq 0\}$.

```

````
