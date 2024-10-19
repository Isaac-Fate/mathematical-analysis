# Reduction of Riemann-Stieltjes Integrals to Finite Sums

Function $\alpha$ in {prf:ref}`thm:6` is a special case of step functions.

```{index} step function
```

````{prf:definition} Step Functions
:label: def:2

A function defined on $[a, b]$ is called
a  **step function** 
if there is a partition

```{math}

a=x_1 < x_2 < \cdots < x_n = b

```

such that $\alpha$ is constant on $(x_{k-1}, x_k)$ for $k=2, \ldots, n$.

```{index} jump of a step function at a point
```

The number $\alpha(x_k+) - \alpha(x_k-)$ is defined as
the  **jump** 
at point $x_k$ for $k=2, \ldots, n-1$.

At the left endpoint $x=a$, the jump is defined as $\alpha(a+) - \alpha(a)$.
Similarly, at the right endpoint $x=b$, the jump is defined
as $\alpha(b) - \alpha(b-)$.

````

:::{note}

It is possible that $\alpha(x_k+) = \alpha(x_k -)$.
In this case, the jump at $x_k$ is zero.
But this does not mean that $\alpha$ is constant on $(x_{k-1}, x_{k+1})$
because we might have $x_k \neq x_k+$.

:::

Step functions provide the link between the Riemann-Stieltjes integrals
and the finite sums of functions.


````{prf:theorem} 
:label: eq:27

Let $\alpha$ be a step function on $[a, b]$.
Let $x_1, \ldots, x_n$ be the same as in {prf:ref}`def:2`
and $\alpha_k$ be the jump at $x_k$.

Let $f$ be a function defined on $[a, b]$ such that
1. at least one of $f$ and $\alpha$ is continuous from the left at $x_k$, and
2. at least one of $f$ and $\alpha$ is continuous from the right at $x_k$
for $k=2, \ldots, n-1$.
And for $k=1$ and $k=n$, at least one of $f$ and $\alpha$
is continuous from one side at the endpoint.

Then, $f \in \mathfrak{R}(\alpha)$ on $[a, b]$, and we have

```{math}
:label: eq:27
\int_a^b f \dif\alpha =
\sum_{k=1}^n f(x_k) \alpha_k

```

````

````{prf:proof}

Consider a partition $P = \{s_0, s_1, \ldots, s_n\}$ on $[a, b]$
where $s_k$ satisfies that

```{math}

x_k < s_k < s_{k+1}\quad\forall k = 2, \ldots, n-1

```

Then, we have $x_k \in (s_{k-1}, s_k) \; \forall k = 2, \ldots, n-1 $.
Note that the condition of {prf:ref}`thm:6` is satisfied
on each subinterval $[s_{k-1}, s_k], \; k=2, \ldots, n-1$.
Therefore, $f \in \mathfrak{R}(\alpha)$ on $[s_{k-1}, s_k]$, and

```{math}
:label: eq:26
\int_{s_{k-1}}^{s_k} f \dif\alpha
= f(x_k) [\alpha(x_k +) - \alpha(x_k -)]
= f(x_k) \alpha_k
\quad\forall k=2, \ldots, n-1

```

By {prf:ref}`prop:6`, we know that {eq}`eq:26` also holds
for $k=1$ and $k=n$.
Then by {prf:ref}`thm:5`, $f$ is integrable on the entire
interval $[a, b]$.
We may then conclude this proof by summing up {eq}`eq:26` over all $k$.

````

Substitute $\alpha(x) = \floor{x}$ in {eq}`eq:27`,
we will obtain a formula for representing any finite sum
using an integral.


````{prf:theorem} 
:label: eq:28

Given a finite sum $\sum_{k=1}^n a_k$.
We have

```{math}
:label: eq:28
\sum_{k=1}^n a_k = \int_0^n a_{\ceil{x}}\dif\floor{x}
```

where $a_0$ is an arbitrary constant.

````

````{prf:proof}

Let $\alpha(x) = \floor{x}$ on $[a, b]$.
Define a function $f$ on $[0, n]$ by

```{math}

f(x) = a_{\ceil{x}}, \quad x \in[0, n]
```

Note that $\alpha$ is continuous from the right at $x=0, 1, \ldots, n-1$,
and $f$ is continuous from the left at $x=1, 2, \ldots, n$.
Therefore, {eq}`eq:27` is applicable.
It yields that

```{math}
\int_0^n f \dif\alpha
= \sum_{k=1}^n f(k) \alpha_k
= \sum_{k=1}^n a_k \cdot 1

```

This completes the proof.

````

Of course, the construction of $f$ is not unique.
The construction is valid as long as $f(k) = a_k$ and
is continuous from the left at $x=1, \ldots, n$.
One may define $f$ by applying the linear interpolation
(or polynomial interpolation or spline interpolation, etc.)
on the data $a_1, \ldots, a_n$,
in which case $f$ is continuous on the entire interval $[0, n]$.
But I prefer the one given in the proof since this makes
both floor and ceiling functions appear in {eq}`eq:28`,
which makes the formula prettier.


