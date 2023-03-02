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
By {prf:ref}`lem:6`, we can extend $\phi$
to $[a-\delta, b+\delta]$($\delta > 0$)
such that $\phi$ is differentiable at each $x \in[c, d]$.
Functions $f$ and $F$ can also be extended correspondingly
without violating the hypotheses.
(By abusing the notation,
the extended functions are also denoted by their
original symbols
in the rest of the proof.)
That is, $f$ remains continuous on $\phi([c-\delta, d+\delta])$,
and $F$ is also well-defined for $x \in \phi([c-\delta, d+\delta])$.

Note that $\phi^\prime(x)$ exists for each $x$ in $[c,d]$($x$ is an interior point of $[c-\delta, d+\delta]$)
and that $F$ is differentiable at $\phi(x)$($\phi(x)$ is an interior point in $\phi([c-\delta, d+\delta])$)
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
