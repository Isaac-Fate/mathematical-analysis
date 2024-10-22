# Euler's Summation Formula

Euler's summation formula compares a sum $\sum f(n)$
with its associated integral $\int f(x) \dif x$.
See {numref}`fig:6` for an illustration.

```{figure} /figures/euler-summation-formula.png
---
name: fig:6
---
Euler's Summation Formula.
```

````{prf:theorem} Euler's Summation Formula
:label: eq:33

If $f$ has a continuous derivative $f^\prime$ on $[a, b]$,
then we have

```{math}
:label: eq:33
\sum_{n=\floor{a}+1}^{\floor{b}} f(n)
= \int_a^b f(x) \dif x
+ \int_a^b f^\prime(x) \{x\}\dif x
+ f(a) \{a\} - f(b) \{b\}
```

In particular, if $a, b \in \Z$ we have

```{math}
:label: eq:37
\sum_{n=a+1}^{b} f(n)
= \int_a^b f(x) \dif x
+ \int_a^b f^\prime(x) \{x\}\dif x

```

By adding the term $f(a)$ on both sides and applying
the fundamental theorem of calculus,
one may obtain a more symmetric formula:

```{math}
:label: eq:38
\sum_{n=a}^b f(n)
= \int_a^b f(x) \dif x
+ \int_a^b f^\prime(x) \left(\{x\} - \frac{1}{2}\right)\dif x
+ \frac{f(a) + f(b)}{2}
```

````

:::{note}
{eq}`eq:37` is easier to use in practice while {eq}`eq:38`
is more elegant in the sense of symmetry.
To derive {eq}`eq:38`, we need to use the fundamental theorem of calculus,
which will be introduced later.

:::

````{prf:proof}

Consider a partition of $[\floor{a}+1, \floor{b}]$:

```{math}

P = \{\floor{a}+1, \floor{a}+2, \ldots, \floor{b}\}
```

Applying {prf:ref}`thm:7`, we have

```{math}
:label: eq:29
\int_{\floor{a}+1}^{\floor{b}} f(x) \dif\floor{x}
= \sum_{n=\floor{a}+2}^b f(n)

```

:::{note}

Note that $n$ starts at $\floor{a}+2$
since the jump of the floor function $\floor{x}$
at $x=\floor{a}+1$ is $0$.

:::

Next, we examine the integrals $\int_a^{\floor{a}+1} f(x) \dif \floor{x}$
and $\int_{\floor{b}}^b f(x) \dif \floor{x}$.
It is clear that

```{math}
:label: eq:30
\int_{\floor{b}}^b f(x) \dif\floor{x} = 0

```

because it is zero be definition if $b \in \Z$
and when $b \neq \Z$, $\floor{x} = \floor{b}$ is constant on $[\floor{b}, b]$.
Now, we consider $\floor{x}$ on $[\floor{a}, \floor{a}+1]$.
We have

```{math}
\floor{x} = \begin{cases}
\floor{a},   & \floor{a} \leq x < \floor{a}+1 \\
\floor{a}+1, & x=\floor{a}+1
\end{cases}
```

Therefore, $\floor{x}$ has a jump $1$ at $x=\floor{a}+1$.
It then follows that

```{math}
:label: eq:31
\int_a^{\floor{a}+1} f(x) \dif\floor{x}
= f(\floor{a}+1)

```

Combining {eq}`eq:29`, {eq}`eq:30` and {eq}`eq:31`, we obtain

```{math}
:label: eq:32
\int_a^b f(x) \dif\floor{x} = \sum_{n=\floor{a}+1}^b f(n)

```

This expresses the summation in {eq}`eq:33`
as an integral.


The rest of the proof leverages the theorems of
integration by parts and reduction of Riemann integrals.
Applying integration by parts, we have

```{math}
:label: eq:34
\int_a^b f(x) \dif x + \int_a^b x \dif f(x)
= f(b)b - f(a)a

```

and

```{math}
:label: eq:35
\int_a^b f(x) \dif\floor{x} + \int_a^b \floor{x}\dif f(x)
= f(b) \floor{b} - f(a) \floor{a}
```

Subtracting {eq}`eq:35` from {eq}`eq:34` yields

```{math}
\int_a^b f(x) \dif x - \int_a^b f(x) \dif\floor{x}
+ \int_a^b \{x\}\dif f(x)
= f(b) \{b\} - f(a) \{a\}
```

Since $f$ has a continuous derivative,
by {prf:ref}`thm:8`,
we can replace $\dif f(x)$
with $f^\prime(x) \dif x$.
Then rearranging the terms, we obtain

```{math}
:label: eq:36
\int_a^b f(x) \dif\floor{x}
= \int_a^b f(x)\dif x
+ \int_a^b f^\prime(x) \{x\}\dif x
+ f(a) \{a\} - f(b) \{b\}
```
{eq}`eq:33` is proved by comparing {eq}`eq:32` and {eq}`eq:36`.

````

````{prf:example}
:label: eq:39

Using the Euler's summation formula {eq}`eq:37`,
we can derive the following
identities related to summing up terms of the form $\frac{1}{k^s}$:
1. If $s \neq 1$
```{math}
\sum_{k=1}^n \frac{1}{k^s} = \frac{1}{n^{s-1}} + s \int_1^n \frac{\floor{x}}{x^{s+1}}\dif x

```2. If $s=1$
```{math}
:label: eq:39
\sum_{k=1}^n \frac{1}{k}
= \ln n - \int_1^n \frac{\{x\}}{x^{2}}\dif x + 1

```{eq}`eq:39` provides another way of
proving
the sequence $\left\{ \sum_{1}^n \frac{1}{k} - \ln n\right\}$ converges
(to Euler's constant $\gamma$).
And hence, we obtain an integral form of the Euler's constant:

```{math}
\gamma = 1 - \int_1^\infty\ \frac{\{x\}}{x^2}\dif x

```

````