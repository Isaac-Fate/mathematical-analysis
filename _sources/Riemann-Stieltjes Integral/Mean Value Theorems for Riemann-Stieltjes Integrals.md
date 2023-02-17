
```{index} average of a function over an interval
```
# Mean Value Theorems for Riemann-Stieltjes Integrals

In the case of Riemann integrals,
the **average**
of function $f$ over an interval $[a, b]$ is defined as
the *average value* of the integral
$\int_a^b f(x) \; \mathrm{d} x$, i.e.,

```{math}
\begin{align*}\frac{1}{b - a}\int_a^b f(x) \;\mathrm{d} x
\end{align*}
```

We can extend this concept for Riemann-Stieltjes integrals.


````{prf:theorem} First Mean Value Theorem
:label: thm:77

Suppose $ \alpha $ is increasing
and $f \in \mathfrak{R}(\alpha)$ on $[a, b]$.
Denote the infimum and the supremum of $f$ on $[a, b]$
by $m$ and $M$, respectively.
Then there exits a number $A$ satisfying
$m \leq A \leq M$ such that

```{math}
:label: eq:139
\begin{align}\int_a^b f \;\mathrm{d}\alpha
= A \int_a^b \alpha
= A [\alpha(b) - \alpha(a) ]\end{align}
```

In particular, if $f$ is continuous on $[a, b]$,
then $f$ can attain this average value, that is,
there exits $c \in[a, b]$ such that $f(c) = A$.

````

````{prf:proof}

If $\alpha$ is constant, then $\int_a^b f \; \mathrm{d} \alpha = 0$.
Then the theorem can be proved by taking $A = f(a)$.

Now, we assume $\alpha$ is non-constant.
Applying {prf:ref}`thm:30`, we have

```{math}
\begin{align*}
m \int_a^b \alpha\leq\int_a^b f \;\mathrm{d}\alpha\leq M \int_a^b \alpha\end{align*}
```

Let

```{math}
\begin{align*}
A = \frac{1}{ \alpha(b) - \alpha(a) }\int_a^b f \;\mathrm{d}\alpha\end{align*}
```

Clearly, $m \leq A \leq M$ and {eq}`eq:139` holds.

If $f$ is continuous, then by the intermediate value theorem,
there exits $c \in[a, b]$ such that $f(c) = A$.

````

````{admonition} Exercise 6.6
:name: ex:9

Suppose $f$ is continuous,
and the integrator $\alpha$ is non-constant
and increasing on $[a, b]$.
If $\int_a^b f \; \mathrm{d} \alpha = 0$,
show that $f$ has at least one zero on $[a, b]$.

````

````{admonition} Solution
:class: tip, dropdown

First, note that $f \in \mathfrak{R}(\alpha)$ on $[a, b]$
by {prf:ref}`thm:75` since $f$ is continuous
and $\alpha$ is of bounded variation.
Then by applying {prf:ref}`thm:77`,
there exits $c \in[a, b]$ such that
$f(c) = 0$.

````

A discontinuous function need not assume its average value.
The following is an example.


````{prf:example}
:label: eg:9

Let

```{math}
\begin{align*}
f(x) = \begin{cases}
1,
&\text{if $x \leq 0$} \\
0,
&\text{if $x > 0$}
\end{cases},
\quad
x \in[-1, 1]\end{align*}
```

Applying {prf:ref}`thm:24` and {prf:ref}`thm:20`,
we can evaluate the integral:

```{math}
\begin{align*}\int_{-1}^1 f \;\mathrm{d} x = 1
\end{align*}
```

Hence, the average of $f$ over $[-1, 1]$ is $1 / 2$.
But clearly $f$ does not assume $1/2$.

````

Now, by replacing the integrator in the previous example
with a step function, we will have a different result.
See the following example.


````{prf:example}
:label: eg:10

Let

```{math}
\begin{align*}
f(x) = \begin{cases}
1,
&\text{if $x \leq 0$} \\
0,
&\text{if $x > 0$}
\end{cases}\quad\text{and}\quad\alpha(x) = \begin{cases}
0,
&\text{if $x < 0$} \\
1,
&\text{if $x \geq 0$}
\end{cases},
\quad
x \in[-1, 1]\end{align*}
```

We have

```{math}
\begin{align*}\int_{-1}^1 f \;\mathrm{d}\alpha
= f(0) [\alpha(1) - \alpha(-1)]
= 1
\end{align*}
```

The average of $f$, w.r.t. $\alpha$ is now

```{math}
\begin{align*}\frac{1}{ \alpha(1) - \alpha(-1) }\int_{-1}^1 f \;\mathrm{d}\alpha
= 1
\end{align*}
```

In this example, though $f$ is not continuous,
we still have $f(0) = 1$.

````

Review {prf:ref}`thm:24`.
Actually, in general, if the integrator $\alpha$
is constant except at point $c$,
and one of $f$ and $\alpha$ is continuous from the left at $c$
and one of $f$ and $\alpha$ is continuous form the right at $c$,
then we always have

```{math}
\begin{align*}\int_a^b f \;\mathrm{d}\alpha
= f(c) [\alpha(b) - \alpha(a)]\end{align*}
```

That is, $f(c)$ is exactly the average of $f$ w.r.t. $\alpha$ on $[a, b]$.





