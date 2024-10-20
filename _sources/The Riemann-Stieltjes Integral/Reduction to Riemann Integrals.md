# Reduction to Riemann Integrals

The next theorem tells us that we may replace
the symbol $\dif \alpha$ with $\alpha^\prime(x) \dif x$
under some conditions.


````{prf:theorem} 
:label: thm:8

Suppose $f \in \mathfrak{R}(\alpha)$ on $[a, b]$,
and $\alpha$ has a continuous derivative on $[a, b]$.
Then $f \alpha^\prime \in \mathfrak{R}$ on $[a, b]$, and

```{math}
\int_a^b f(x) \dif\alpha(x)
= \int_a^b f(x) \alpha^\prime(x) \dif x

```

````

````{prf:proof}

First, suppose $f$ is bounded by $M > 0$, i.e.,

```{math}
:label: eq:23
\abs{f(x)}\leq M \quad\forall x \in[a, b]
```

Let $\varepsilon > 0$ be arbitrary.


Because $\alpha^\prime$ is continuous on $[a, b]$,
it is continuous uniformly there.
There exists $\delta > 0$ such that

```{math}
:label: eq:22
\abs{s - t}\implies\abs{\alpha^\prime(s) - \alpha^\prime(t)}
< \frac{\varepsilon}{2M(b-a)}
```

Since $f$ is integrable w.r.t. $\alpha$ on $[a, b]$,
there exists a partition $P_\varepsilon$ of $[a, b]$
such that
for any refinement $P$ of $P_\varepsilon$,
and any list of representatives $T$ of $P$,
we have

```{math}
:label: eq:21
\abs{ S(P, T, f, \alpha) - \int_a^b f \dif \alpha}
< \varepsilon / 2

```

Then, we can find a finer
partition $P^\prime_\varepsilon \supseteq P_\varepsilon$
such that $\norm{P^\prime_\varepsilon} < \delta$.


Let $P \supseteq P^\prime_\varepsilon$ be a refinement
such that
and $T$ be a list of representatives of $P$.
Note that $P$ is of course also a refinement of $P_\varepsilon$.
Applying the mean value theorem, we have

```{math}

S(P,T,f,\alpha)
& = \sum_{k=1}^n f(t_k) [\alpha(t_k) - \alpha(t_{k-1}) ]\nonumber\\& = \sum_{k=1}^n f(t_k) \alpha^\prime(s_k) \Delta x_k

```

where each $s_k \in (x_{k-1}, x_k)$.

Taking the difference of $S(P,T,f \alpha^\prime, x)$
and $S(P,T,f,\alpha)$, we have

```{math}
\abs{S(P,T,f \alpha^\prime, x) - S(P,T,f,\alpha)}& = \abs{\sum_{k=1}^n f(t_k)
[\alpha^\prime(t_k) - \alpha^\prime(s_k)] \Delta x_k}\\& \leq\sum_{k=1}^n \abs{
f(t_k)
[\alpha^\prime(t_k) - \alpha^\prime(s_k)] \Delta x_k
}\\& = \sum_{k=1}^n \abs{
f(t_k)}\abs{ \alpha^\prime(t_k) - \alpha^\prime(s_k) }\Delta x_k

```

Then applying {eq}`eq:23` and {eq}`eq:22`,
the above difference is further bounded by

```{math}
:label: eq:24
\abs{S(P,T,f \alpha^\prime, x) - S(P,T,f,\alpha)}
< M \frac{\varepsilon}{2M(b-a)}\sum_{k=1}^n \Delta x_k
= \varepsilon / 2

```

Recall $P \supseteq P_\varepsilon$.
Then we may conclude this proof
by comparing {eq}`eq:21` and {eq}`eq:24`.

````