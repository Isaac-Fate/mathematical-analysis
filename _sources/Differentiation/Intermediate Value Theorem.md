# Intermediate Value Theorem
In {ref}`Exercise 5.4<ex:3>`, we have shown that the derivative of function $f(x) = x^2 \sin(1/x^2) \ind\{x \neq 0\}$ is given by

```{math}
\begin{align*}
f^\prime(x) = \begin{cases}
2x \sin \frac{1}{x^2}
- \frac{2}{x} \cos \frac{1}{x^2}
& x \neq 0 \\
0 & x = 0
\end{cases}\end{align*}
```

We plot the original function $f$ along with its derivative $f^\prime$ side by side in {numref}`fig:4`.

```{figure} /figures/graph-004.png
---
name: fig:4
---
Left: original function. Right: derivative.

```

```{index} intermediate value theorem for derivatives
```

```{index} Darboux's theorem
```

Note that the derivative $f^\prime$ is not continuous at $x = 0$ since the limit of $f^\prime(x)$ does not exist as $x \to 0$. This example shows that the derivative of a function may not be continuous, and hence theorems for continuous functions do not apply to derivatives in general. However, the **intermediate value theorem** is an exception. The intermediate value theorem for derivatives is also known as the **Darboux's theorem**.


````{prf:theorem} Darboux
:label: thm:12

Suppose $f$ is defined on $[a, b]$, and it has a derivative (finite or infinite) at each point in $(a, b)$. Assume also that the one-sided derivatives $f^\prime_{+}(a)$ and $f^\prime_{-}(b)$ both exist as finite numbers, and $f^\prime_{+}(a) \neq f^\prime_{-}(b)$. If $k$ is a number in between $f^\prime_{+}(a)$ and $f^\prime_{-}(b)$, then there exists an interior point $c \in (a, b)$ such that

```{math}
\begin{align*}
f^\prime(c) = k
\end{align*}
```

````

````{prf:proof}

Note that $f$ is continuous on the entire closed interval $[a, b]$.

We first consider the case where $k = [f(b) - f(a)] / (b-a)$. Then by applying the mean value theorem ({prf:ref}`thm:8`), there exists $c \in (a, b)$ such that $f^\prime(c) = [f(b) - f(a)] / (b-a) = k$.

Now, we suppose $k \neq[f(b) - f(a)] / (b-a)$. We note that either $f^\prime_{+}(a) \neq[f(b) - f(a)] / (b-a)$ or $f^\prime_{-}(b) \neq[f(b) - f(a)] / (b-a)$ since $f^\prime_{+}(a) \neq f^\prime_{-}(b)$. In other words, $k$ is either in between $f^\prime_{+}(a)$ and $[f(b) - f(a)] / (b-a)$ to it is in between $f^\prime_{-}(b)$ and $[f(b) - f(a)] / (b-a)$.

Without loss of generality, we may assume $k$ is in between $f^\prime_{+}(a)$ and $[f(b) - f(a)] / (b-a)$. Define a function $\phi$ on $[a, b]$ by

```{math}
\begin{align*}\phi(x) = \begin{cases}
\frac{f(x) - f(a)}{x - a}
&x \neq a \\
f^\prime_{+}(a)
&x = a
\end{cases}\end{align*}
```

Note that $\phi$ is continuous on $[a, b]$, and $k$ is in between $\phi(a)$ and $\phi(b)$. Hence, we may apply the intermediate values theorem for continuous functions ({prf:ref}`thm:11`) to $\phi$, there is a number $d \in (a, b)$ such that

```{math}
\begin{align*}
k = \phi(d) = \frac{f(d) - f(a)}{d - a}\end{align*}
```

Then applying the mean value theorem ({prf:ref}`thm:8`) to the fraction on the right-hand side of the above equation, we have

```{math}
\begin{align*}
k = \frac{f(d) - f(a)}{d - a}
= f^\prime(c)
\end{align*}
```

for some $c$ in between $a$ and $d$.

For the case where $k$ lying in between $f^\prime_{-}(b)$ and $[f(b) - f(a)] / (b-a)$, it can be proved with a similar argument, started by defining

```{math}
\begin{align*}\phi(x) = \begin{cases}
\frac{f(x) - f(b)}{x - b}
&x \neq b \\
f^\prime_{-}(b)
&x = b
\end{cases}\end{align*}
```

````
Essentially, Darboux's theorem tells us that though the derivative may not be continuous, it cannot have any *jump discontinuities*. The following is another classical example in addition to the one in {ref}`Exercise 5.2<ex:1>`.


````{prf:example}

Consider the function

```{math}
\begin{align*}
f(x) = x^2 \sin\frac{1}{x}\ind\{x \neq 0\}
= \begin{cases}
x^2 \sin\frac{1}{x}
&x \neq 0 \\
0 & x = 0
\end{cases}\end{align*}
```

Its derivative is given by

```{math}
\begin{align*}
f^\prime(x)
= \begin{cases}
2x \sin\frac{1}{x} - \cos\frac{1}{x}
&x \neq 0 \\
0 & x = 0
\end{cases}\end{align*}
```

Note that the derivative $f^\prime$ is not continuous at $x = 0$. The graphs of $f$ and $f^\prime$ are shown in {numref}`fig:6`.

```{figure} /figures/graph-007.png
---
name: fig:6
---
Left: original function. Right: derivative.

```

````
Actually, there is no need to require that $f^\prime_{+}(a)$ and $f^\prime_{-}(b)$ to be finite numbers in {prf:ref}`thm:12`. The following theorem is an extension, and its proof is somewhat neater and more interesting than that of {prf:ref}`thm:12`.


````{prf:theorem}
:label: thm:13

Suppose $f$ is defined on $[a, b]$, and it has a derivative (finite or infinite) at each point in $(a, b)$. Assume also that the one-sided derivatives $f^\prime_{+}(a)$ and $f^\prime_{-}(b)$ both exist (each of the two can either be finite or infinite), and $f^\prime_{+}(a) \neq f^\prime_{-}(b)$. If $k$ is a number in between $f^\prime_{+}(a)$ and $f^\prime_{-}(b)$, then there exists an interior point $c \in (a, b)$ such that

```{math}
\begin{align*}
f^\prime(c) = k
\end{align*}
```

````

````{prf:proof}

Without loss of generality, we may assume $f^\prime_{+}(a) < k <  f^\prime_{-}(b)$. Define a function $g$ on $[a, b]$ by the equation

```{math}
\begin{align*}
g(x) = f(x) - kx
\end{align*}
```

Note that $g$ is continuous on $[a, b]$, and the derivative of $g$ exists at each point in $(a, b)$. Furthermore, the one-sided derivatives of $g$, $g^\prime_{+}(a)$ and $g^\prime_{-}(b)$, both exist, which are given by

```{math}
:label: eq:17
\begin{align}
g^\prime_{+}(a) = f^\prime_{+}(a) - k
\quad\text{and}\quad
g^\prime_{-}(b) = f^\prime_{-}(b) - k
\end{align}
```

It should be emphasized that {eq}`eq:17` also holds for infinite values.

Because we assume $f^\prime_{+}(a) < k <  f^\prime_{-}(b)$, {eq}`eq:17` yields

```{math}
\begin{align*}
g^\prime_{+}(a) < 0
\quad\text{and}\quad
g^\prime_{-}(b) > 0
\end{align*}
```

It then follows from {prf:ref}`thm:14` that there exist points $t_1$ and $t_2$ at which

```{math}
\begin{align*}
g(t_1) < g(a)
\quad\text{and}\quad
g(t_2) < g(b)
\end{align*}
```

This implies that $g$ must attain its minimum at some interior point $c \in (a, b)$ rather than at the endpoints. Then by applying {prf:ref}`thm:5`, we have

```{math}
\begin{align*}
g^\prime(c) = 0
\end{align*}
```

Because $g^\prime(x) = f^\prime(x) - k \; \forall x \in (a, b)$, it follows that

```{math}
\begin{align*}
f^\prime(c) = k
\end{align*}
```

This completes the proof.

````

````{prf:example}

Consider a function defined on $[0, 1]$ given by

```{math}
\begin{align*}
f(x) = \sqrt[3]{x(x-1)},
\quad x \in[0, 1]\end{align*}
```

Note that the derivative exists as a finite number in $(0, 1)$. And it can be shown that $f^\prime_{+}(0) = -\infty$ and $f^\prime_{-}(1) = \infty$. Then {prf:ref}`thm:13` tells us $f^\prime$ takes all the real numbers in $(0, 1)$. See {numref}`fig:5`.

```{figure} /figures/graph-006.png
---
name: fig:5
---
Left: original function. Right: derivative.

```

:::{note}

Theoretically, the graph of $f^\prime$ in {numref}`fig:5` will tend to $-\infty$ and $\infty$ as $x$ approaches $0$ and $1$, respectively. The reason why the absolute values of the derivatives near the endpoints shown in the graph are only about $3000$ is because of the limited computational precision of the computer.

:::

````
By {prf:ref}`thm:10`, we know a function is strictly increasing if its derivative is always positive, and it is strictly decreasing if its derivative is always negative. Suppose now we only know that $f^\prime$ is nonzero in some open interval, what can we conclude? Thanks to the intermediate value theorem, or Darboux's theorem, $f^\prime$ is either always positive or always negative. Hence, we can conclude that $f$ must be strictly monotonic.


````{prf:theorem}

Suppose $f$ has a derivative (finite or infinite) in $(a, b)$, and is continuous at endpoints $a$ and $b$. If $f^\prime(x) \neq 0 \; \forall x \in (a, b)$, then $f$ is strictly monotonic on $[a, b]$.

````

````{prf:proof}

Pick a point $x_1 \in (a, b)$. Suppose $f^\prime(x_0) > 0$. Let $x_0$ be fixed, and choose an arbitrary point $x \in (a, b)$ other than $x_0$. We claim that $f^\prime(x) > 0$. Otherwise, if $f^\prime(x) < 0$, then by {prf:ref}`thm:13`, there exists some point $c$ in between $x_0$ and $x$ such that $f^\prime(c) = 0$, which contradicts the given condition that $f^\prime$ is nonzero in $(a, b)$. In this case, we have $f^\prime(x) > 0 \; \forall x \in (a, b)$. It then follows from {prf:ref}`thm:10` that $f$ is strictly increasing on $[a, b]$.

If $f^\prime(x_0) < 0$, then a similar argument will show that $f$ is strictly decreasing on $[a, b]$.

````
It is because the derivatives cannot have jump discontinuities that monotonic derivatives are necessarily continuous.


````{prf:theorem}

Suppose $f^\prime$ exists, and is monotonic in $(a, b)$. Then $f^\prime$ is continuous in $(a, b)$.

````

````{prf:proof}

Without loss of generality, suppose that $f^\prime$ is increasing. We shall prove by contradiction. Assume that $f^\prime$ is discontinuous at $x = c \in (a, b)$. By {prf:ref}`thm:15`, we have $f^\prime(c-)$ and $f^\prime(c+)$ both exist, and

```{math}
\begin{align*}
f^\prime(c-) \leq f(c) \leq f^\prime(c+)
\end{align*}
```

But because we assume $f^\prime$ is not continuous at $x = c$, it holds that

```{math}
\begin{align*}
f^\prime(c-) < f^\prime(c+)
\end{align*}
```

Let $[c-\delta, c+\delta]$($\delta > 0$) be a closed interval contained in $(a, b)$. We have

```{math}
\begin{align*}
f^\prime(c-\delta) \leq f^\prime(c-) < f^\prime(c+) \leq f^\prime(c+\delta)
\end{align*}
```

Let $k$ be a number in between $f^\prime(c-)$ and $ f^\prime(c+)$ other than $f^\prime(c)$. That is,

```{math}
\begin{align*}
f^\prime(c-) < k < f^\prime(c+)
\quad\text{and}\quad
k \neq f^\prime(c)
\end{align*}
```
Applying {prf:ref}`thm:13` to $f^\prime$ on $[c-\delta, c+\delta]$, we conclude that there exists $x_0 \in (c-\delta, c+\delta)$ such that $f^\prime(x_0) = k$. But since $f^\prime$ is increasing, $f^\prime(c-) < k = f^\prime(x_0)$ and $k \neq f^\prime(c)$, we have $x_0 > c$. On the other hand, because $ f^\prime(x_0) = k < f^\prime(c+) $ and $k \neq f^\prime(c)$, we have $x_0 < c$. This leads to a contradiction.

````
