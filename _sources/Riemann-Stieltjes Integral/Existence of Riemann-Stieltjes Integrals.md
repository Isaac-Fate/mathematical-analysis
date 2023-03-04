# Existence of Riemann-Stieltjes Integrals
## Sufficient Conditions

In a Calculus course,
the first theorem about integrability one might be taught is
that $ f $ is Riemann integrable if it is continuous.
When considering the Riemann-Stieltjes integrals,
we impose one more condition that the integrator
$ \alpha $ is of bounded variation.


````{prf:theorem}
:label: thm:75

If $f$ is continuous,
and $\alpha$ is of bounded variation on $[a, b]$,
then $f \in \mathfrak{R}(\alpha)$ on $[a, b]$.

````

````{prf:proof}

If $\alpha$ is constant, then the conclusion is trivial.
Assume now $ \alpha $ is non-constant.
By {prf:ref}`thm:22` and {prf:ref}`thm:18`,
it suffices to prove this theorem when $ \alpha $ is increasing.

Given $ \varepsilon > 0 $,
since $ f $ is continuous on $ [a, b] $,
there exists $ \delta > 0 $ such that

```{math}
\begin{align*}\abs{s - t} < \delta\implies\abs{f(s) - f(t)} < \frac{ \varepsilon / 2 }{
\alpha(b) - \alpha(a)
}\end{align*}
```

Let $ P_{ \varepsilon } $ be a partition on $ [a, b] $ with
$ \norm{P_\varepsilon} < \delta $.
Let $ P $ be any refinement of $ P_\varepsilon $.
On each subinterval $ [x_{k-1}, x_k] $, we have

```{math}
\begin{align*}\abs{f(s) - f(t)} < \frac{ \varepsilon / 2 }{
\alpha(b) - \alpha(a)
}\quad\forall s, t \in[x_{k-1}, x_k]\end{align*}
```

Taking the supremum on both sides yields

```{math}
\begin{align*}\sup_{s,t \in[x_{k-1}, x_k]}\abs{f(s) - f(t)}\leq\frac{ \varepsilon / 2 }{
\alpha(b) - \alpha(a)
} < \frac{ \varepsilon }{
\alpha(b) - \alpha(a)
}\end{align*}
```

Applying {prf:ref}`thm:27` to the left-hand side, we find

```{math}
\begin{align*}
M_k - m_k < \frac{ \varepsilon }{
\alpha(b) - \alpha(a)
}\end{align*}
```

It then follows that

```{math}
\begin{align*}
U(P,f, \alpha) - L(P,f, \alpha)
= \sum_{k}(M_k - m_k) \Delta\alpha_k
< \frac{ \varepsilon }{ \alpha(b) - \alpha(a) }\sum_{k}\Delta\alpha_k
= \varepsilon\end{align*}
```

Therefore, $ f \in \mathfrak{R}(\alpha) $ on $ [a, b] $
since it satisfies Riemann's condition ({prf:ref}`thm:28`).

````

Thanks to integration by parts,
we can get for free
an additional theorem of existence
of Riemann integrals from {prf:ref}`thm:75`.
That is, $ \int f \; \mathrm{d} x $ exists
if $ f $ is of bounded variation.


````{prf:theorem}
:label: thm:76

The Riemann integral $ \int_a^b f \; \mathrm{d} x $
exists if one of the following conditions is satisfied.
- ➀ $ f $ is continuous on $ [a, b] $.
- ➁ $ f $ is of bounded variation on $ [a, b] $.


````

````{prf:proof}

If $ f $ is continuous on $ [a, b] $, then
$ f \in \mathfrak{R} $ on $ [a, b] $ by {prf:ref}`thm:75`
since the identity function is of bounded variation.

If $ f $ is of bounded variation on $ [a, b] $,
then by {prf:ref}`thm:75`,
$ x \in \mathfrak{R}(f) $ on $ [a, b] $
since the identity function is continuous.
Then by applying {prf:ref}`thm:20`,
we also have $ f \in \mathfrak{R} $ on $ [a, b] $.

````
## Necessary Conditions
