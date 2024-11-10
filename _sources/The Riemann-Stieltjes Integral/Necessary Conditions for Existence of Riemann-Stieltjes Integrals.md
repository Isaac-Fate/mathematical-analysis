# Necessary Conditions for Existence of Riemann-Stieltjes Integrals

````{prf:theorem} 

Assume $\alpha$ is increasing on $[a, b]$.
Let $a \leq c < b$.
If $f$ and $\alpha$ are discontinuous from the right at $c$,
then $f \notin \mathfrak{R}(\alpha)$ on $[a, b]$.

Analogously, letting $a < c \leq b$,
if $f$ and $\alpha$ are discontinuous from the left at $c$,
then $f \notin \mathfrak{R}(\alpha)$ on $[a, b]$.

````

````{prf:proof}

We only prove the case
when $f$ and $\alpha$ are discontinuous from the right at $c$.

Because $f$ and $\alpha$ are discontinuous from the right at $c$,
there exists $\varepsilon > 0$ such that for every $\delta > 0$,
we can find $x, y \in (c, c+\delta)$ such that

```{math}
\abs{f(x) - f(c)} > \varepsilon\quad\text{and}\quad\abs{\alpha(y) - \alpha(c)} = \alpha(y) - \alpha(c) > \varepsilon
```

We want to show that $f$ does not satisfy the Riemann's condition.
More precisely, choosing the number $\varepsilon_0 = \varepsilon^2$,
we claim that for every partition $P_{\varepsilon_0}$ of $[a, b]$,
there exists a refinement $P$ such
that $U(P, f, \alpha) - L(P, f, \alpha) > \varepsilon_0$.

First, exploiting the fact that $\alpha$ is discontinuous from the right at $c$
we can find a number $d > c$ such
that $\alpha(d) - \alpha(c) > \varepsilon$.
Let partition $P = P_{\varepsilon_0} \cup \{c, d\}$.
In this way, we guarantee that the subinterval $[c, d]$
is contained in the partition.
Then, since $f$ is discontinuous from the right at $c$,
we can find $t \in (c, d)$ such that $\abs{f(t) - f(c)} > \varepsilon$.
It then follows that

```{math}
\omega_f([c, d])
= \sup_{x, y \in [c, d]}\abs{f(x) - f(y)}\geq\abs{f(t) - f(c)}
> \varepsilon
```

Multiplying by $ [\alpha(d) - \alpha(c)]$ yields

```{math}
\omega_f([c, d]) [\alpha(d) - \alpha(c)] > \varepsilon^2 = \varepsilon_0

```

Therefore,

```{math}

U(P, f, \alpha) - L(P, f, \alpha)
\geq\omega_f([c, d]) [\alpha(d) - \alpha(c)]
> \varepsilon_0

```

This completes the proof.

````