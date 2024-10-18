# Reduction Riemann-Stieltjes Integrals to Finite Sums

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

Let $\alpha$ be a step function on $[a, b]$.
Let $x_1, \ldots, x_n$ be the same as in {prf:ref}`def:2`
and $\alpha_k$ be the jump at $x_k$.

Let $f$ be a function defined on $[a, b]$ such that
1. at least one of $f$ and $\alpha$ is continuous from the left at $x_k$, and
2. at least one of $f$ and $\alpha$ is continuous from the right at $x_k$.

for $k=2, \ldots, n-1$.
And for $k=1$ and $k=n$, at least one of $f$ and $\alpha$
is continuous from one side at the endpoint.

Then, $f \in \mathfrak{R}(\alpha)$ on $[a, b]$, and we have

```{math}
\int_a^b f \dif\alpha =
\sum_{k=1}^n f(x_k) \alpha_k

```

````