
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

```{index} second mean value theorem for Riemann-Stieltjes integrals
```

That is, $f(c)$ is exactly the average of $f$ w.r.t. $\alpha$ on $[a, b]$.


By applying the first mean value theorem
as well as integration by parts,
we immediately obtains the following theorem,
which is known as
the \text{second mean value theorem for Riemann-Stieltjes integrals}
````{prf:theorem} Second Mean Value Theorem
:label: thm:78

Suppose $f$ is monotonic and $\alpha$ is continuous on $[a, b]$.
If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$,
then there exists $c \in[a, b]$ such that

```{math}
:label: eq:142
\begin{align}\int_a^b f \;\mathrm{d}\alpha
= f(a) \int_a^c \mathrm{d}\alpha
+ f(b) \int_c^b \mathrm{d}\alpha\end{align}
```

````

Recall the geometric interpretation of the
Riemann-Stieltjes integral.
Then this theorem mainly says that
we can find two rectangles
with maximum and minimum heights of the $(x,\alpha,f)$-fence,
respectively,
such that the sum of their areas
equals the area of the shadow of the fence, i.e.,
$\int_a^b f \; \mathrm{d} \alpha$.
See {numref}`fig:14`.


````{prf:proof}

It suffices to prove this theorem when $f$ is increasing.
By {prf:ref}`thm:20`, we know $\alpha \in \mathfrak{R}(f)$
on $[a, b]$, and

```{math}
:label: eq:140
\begin{align}\int_a^b f \;\mathrm{d}\alpha
= -\int_a^b \alpha\;\mathrm{d} f
+ f(b) \alpha(b) - f(a) \alpha(a)
\end{align}
```

Since $\alpha$ is continuous and $f$ is increasing,
it then follows from {prf:ref}`thm:77` that

```{math}
:label: eq:141
\begin{align}\int_a^b \alpha\;\mathrm{d} f
= \alpha(c) [f(b) - f(a)]\end{align}
```

Equation {eq}`eq:142` then follows immediately from {eq}`eq:140`
and {eq}`eq:141`.

````

````{prf:example}
:label: eg:11

Let

```{math}
\begin{align*}
f(x) = \frac{1}{1 + e^x}\quad\text{and}\quad\alpha(x) = e^x,
\quad
x \in[-1, 1]\end{align*}
```

It is known that

```{math}
\begin{align*}\int_{-1}^1 f \;\mathrm{d}\alpha = 1
\end{align*}
```

Since $f$ is decreasing and $\alpha$ is continuous,
the second mean value theorem ({prf:ref}`thm:78`)
is then applicable.
And in this example, we can find the value of $c$
in {eq}`eq:142` explicitly.

Note that the values of $f$ and $\alpha$ at the endpoints are

```{math}
\begin{align*}
f(-1) = \frac{e}{e + 1},
\quad
f(1) = \frac{1}{e + 1},
\quad\alpha(-1) = \frac{1}{e},
\quad\text{and}\quad\alpha(1) = e
\end{align*}
```

By solving {eq}`eq:142`, we find

```{math}
\begin{align*}
c = \ln\frac{2}{e-1}\end{align*}
```
{numref}`fig:14` depicts the $(x,\alpha,f)$-fence of this example.


```{figure} /figures/ma-014.png
---
name: fig:14
---

Geometric interpretation of
the second mean value theorem
for Riemann-Stieltjes integral.
The blue area
equals the sum of the areas
of the orange and green rectangles.


```

````
