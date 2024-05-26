# Continuous Functions of Bounded Variation

Previously, we have shown that a function $f$ of bounded variation can be
written as the difference of two increasing functions, $f = g - h$.
Now, suppose $f$ is continuous.
We will show in this section that the two increasing functions $g$ and $h$
can also be made continuous as well.


````{prf:theorem} 

Suppose $f$ is of bounded variation on $[a, b]$.
Then $f$ is continuous at $x_0 \in [a, b]$
if and only if $V_a^x(f)$ is continuous at $x_0$.
In other words, every point of continuity of $f$ is also
a point of continuity of $V_a^x(f)$ and vice versa.

````

````{prf:proof}

We first suppose that $V_a^x(f)$ is continuous at $x_0$
and show that $f$ is also continuous at $x_0$,
which is the easier direction to prove.

We will only show that $f$ is continuous from the right at $x_0$($x_0 \neq b$),
and the continuity from the left is similarly proved (including $x_0 = b$).
Let $\varepsilon > 0$ be arbitrary.
Because $V_a^x(f)$ is continuous at $x_0$,
there exists $\delta  > 0$ such that

```{math}
\abs{x - x_0} < \delta\implies\abs{V_a^x(f) - V_a^x(f)} < \varepsilon
```

For all $h$ satisfying $0 < h < \delta$, we have

```{math}
\abs{f(x_0 + h) - f(x_0)}& = v(P, f) \quad\text{where $P = \{x_0, x_0+h\}$ is a partition of $[x_0, x_0+h]$}\\& \leq V_{x_0}^{x_0+h}(f) \\& = V_a^{x_0+h}(f) - V_a^{x_0}(f) \\& < \varepsilon
```

This shows that $f$ is continuous at $x_0$ from the right.
Applying a similar argument,
one may show that it is also continuous at $x_0$ from the left
by considering the interval $[x_0-h, x_0]$.

We now prove the reverse direction.
Suppose $f$ is continuous at $x_0$.
Again, we will only prove that $V_a^x(f)$
is continuous at $x_0$($x_0 \neq b$) from the right.
Let $\varepsilon > 0$ be arbitrary.
Since $f$ is continuous at $x_0$, there exists $\delta > 0$
such that

```{math}
\abs{x-x_0} < \delta\implies\abs{f(x) - f(x_0)} < \varepsilon/2

```

Consider the total variation $V_{x_0}^b(f)$.
For any $h$ satisfying $0 < h < \delta$,
There exists a partition $P$ such that

```{math}

x_1 - x_0 \leq\delta
```

where $x_1 = x_0 + h$
and

```{math}
:label: eq:14

v(P, f) > V_{x_0}^b(f) - \varepsilon/2

```

:::{note}

If one is confusing about how finding such $P$ is possible,
we can think of finding it with the following process.
First, find a partition $P$ of $[x_0, b]$ such that

```{math}

v(P, f) > V_{x_0}^b(f) - \varepsilon/2

```

and then refine $P$ to $P^\prime$ by adding a point $c$ in between $x_0$ and $x_1$
such that $c - x_0 < \delta$.
Note that $v(P^\prime, f) \geq v(P, f)$({prf:ref}`prop:4`).
Therefore,

```{math}

v(P^\prime, f) > V_{x_0}^b(f) - \varepsilon/2

```

is satisfied.
Finally, rename $P^\prime$ to $P$.

:::

We can express $v(P, f)$ as

```{math}
:label: eq:13

v(P, f)
& = \abs{\Delta f_1} + \underbrace{ \abs{\Delta f_2} + \cdots + \abs{\Delta f_n} }_{ \text{$= v(P^\prime, f)$ where $P^\prime$ is a partition of $[x_1, b]$}}\nonumber\\& = \abs{f(x_1) - f(x_0)} + v(P^\prime, f) \nonumber\\& \leq\abs{f(x_1) - f(x_0)} + V_{x_1}^b(f) \nonumber\\& \text{Recall that $x_1 - x_0 < \delta$ and $f$ is continuous at $x_0$}\nonumber\\& < \varepsilon/2 + V_{x_1}^b(f)

```

Combining {eq}`eq:14` and {eq}`eq:13`, we obtain

```{math}
\varepsilon/2 + V_{x_1}^b(f) > v(P, f) > V_{x_0}^b(f) - \varepsilon/2

```

Rearranging the terms yields

```{math}
\abs{V_a^{x_0+h}(f) - V_a^{x_0}(f)}
= V_{x_0}^{x_0 + h}(f)
= V_{x_0}^{x_1}(f)
= V_{x_0}^b(f) - V_{x_1}^b(f)
< \varepsilon
```
(Specially, it also holds for $x_0 = 1$.)
This shows $V_a^x(f)$ is continuous at $x_0$ from the right.
And considering $V_a^{x_0}(f)$ and $V_a^{x_0-h}(f)$ and applying a similar argument,
one can also show that $V_a^{x}(f)$ is continuous at $x_0$ from the left.

````