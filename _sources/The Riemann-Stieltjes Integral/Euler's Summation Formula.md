# Euler's Summation Formula

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
\sum_{n=a}^b f(n)
= \int_a^b f(x) \dif x
+ \int_a^b f^\prime(x) \left(\{x\} - \frac{1}{2}\right)\dif x
+ \frac{f(a) + f(b)}{2}
```

````

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

Since $f$ as a continuous derivative,
by {prf:ref}`thm:8`,
we can replace $\dif f(x)$
with $f^\prime{x} \dif x$.
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