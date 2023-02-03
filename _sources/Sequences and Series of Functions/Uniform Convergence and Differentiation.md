# Uniform Convergence and Differentiation

In this section, we study the conditions that allow us to swap the limit and derivative symbols:

```{math}
:label: eq:104
\begin{align}\odvs{\lim_{n \to \infty} f_n(x)}{x}
= \lim_{n \to \infty}\odvs{f_n(x)}{x}\end{align}
```

However, assuming $f_n \to f$ uniformly on $S$ is not sufficient to guarantee that {eq}`eq:104` holds. The following is an example.


````{prf:example}

Let

```{math}
\begin{align*}
f_n(x) = \frac{\sin nx}{\sqrt{n}},
\quad x \in\R\end{align*}
```

Because $\abs{\sin nx}$ is bounded by $1$ and $1 / \sqrt{n} \to 0$ as $n \to \infty$, the limit of $f_n$ is $f(x) = 0$. Note that

```{math}
\begin{align*}
M_n = \sup_{x \in \R}\abs{f_n(x) - f(x)}
= \sup_{x \in \R}\frac{\abs{\sin nx}}{\sqrt{n}}
= \frac{1}{\sqrt{n}}\end{align*}
```

Since $\lim_{n \to \infty} M_n = 0$, $f_n \to f$ uniformly on $\R$.

It is clear $f^\prime(x) = 0$. We now show that the limiting derivative of $f_n$ is not $f^\prime$ in general. We have

```{math}
\begin{align*}
f^\prime_n(x) = \sqrt{n}\cos nx
\end{align*}
```

We note that the limit of $f^\prime_n(x)$ will not exist as a finite number for most of $x$s as $n \to \infty$. In particular, $f^\prime_n(0) = \sqrt{n}$ and hence $\lim_{n \to \infty} f^\prime_n(0) = \infty$. A plot of $f_n$ and $f^\prime_n$ is shown in {numref}`fig:11`.


```{figure} /figures/graph-010.png
---
name: fig:11
---
Left: $f_n(x) = (\sin nx) / \sqrt{n}$. Right: $f^\prime_n(x)$.

```

````

````{prf:theorem}
:label: thm:44

Let $\{f_n\}$ be a sequence of real-valued functions each of which has a finite derivative at every point in $(a, b)$. Suppose there exists a point $x_0 \in (a, b)$ such that the numerical sequence $\{f_n(x_0)\}$ converges. Suppose further that there exists a function $g$ such that $f^\prime_n \to g$ uniformly on $(a, b)$. Then
- ➀ there exists a function $f$ such that $f_n \to f$ uniformly on $(a, b)$, and
- ➁ $f^\prime(x)$ exists everywhere in $(a, b)$ with $f^\prime(x) = g(x)$.


In this case, we can write

```{math}
\begin{align*}\odvs{\lim_{n \to \infty} f_n(x)}{x}
= \lim_{n \to \infty}\odvs{f_n(x)}{x}\end{align*}
```

````

````{prf:proof}

We first show that $\{f_n\}$ converges uniformly on $(a, b)$. Given $\varepsilon > 0$, since $\{f_n(x_0)\}$ converges, by Cauchy's criterion for sequences,

```{math}
:label: eq:101
\begin{align}\abs{f_m(x_0) - f_n(x_0)} < \varepsilon / 2
\quad\forall m,n \geq N_1
\end{align}
```

for some integer $N_1 \in \N^\ast$. Meanwhile, since $f^\prime_n \to g$ uniformly on $(a, b)$, it follows from Cauchy's criterion for uniform convergence ({prf:ref}`thm:42`) that there exists $N_2 \in \N^\ast$ such that

```{math}
:label: eq:102
\begin{align}\abs{f^\prime_m(x) - f^\prime_n(x)} < \frac{\varepsilon / 2}{\abs{x - x_0} + 1}\quad\forall m, n \geq N_2 \;\forall x \in(a, b)
\end{align}
```

Let $N = \max\{N_1, N_2\}$ and let $m, n \geq N$. Define function $h$ by

```{math}
\begin{align*}
h(x) = f_m(x) - f_n(x)
\end{align*}
```

Applying the mean value theorem ({prf:ref}`thm:8`) to $h$, we obtain

```{math}
\begin{align*}[f_m(x) - f_n(x)] - [f_m(x_0) - f_n(x_0)]
= [f^\prime_m(\xi) - f^\prime_n(\xi)](x - x_0)
\end{align*}
```

where $x \neq x_0$ and $\xi$ is some number in between $x$ and $x_0$. We can then use {eq}`eq:101` and {eq}`eq:102` to bound the value of $\abs{f_m(x) - f_n(x)}$($x \neq x_0$) as follows:

```{math}
\begin{align*}\abs{f_m(x) - f_n(x)}&\leq\abs{f_m(x_0) - f_n(x_0)}
+ \abs{f^\prime_m(\xi) - f^\prime_n(\xi)}\abs{x - x_0}\\&\leq\varepsilon / 2 + \frac{\varepsilon / 2}{\abs{x - x_0} + 1}\cdot\abs{x - x_0}\\&< \varepsilon\quad\forall m,n \geq N \;\forall x \in(a, b) \setminus\{x_0\}\end{align*}
```

But since $m,n \geq N \geq N_1$, the inequality

```{math}
\begin{align*}\abs{f_m(x_0) - f_n(x_0)} < \varepsilon / 2 < \varepsilon\end{align*}
```

also holds by {eq}`eq:101`. Therefore, we have

```{math}
\begin{align*}\abs{f_m(x) - f_n(x)}
< \varepsilon\quad\forall m,n \geq N \;\forall x \in(a, b)
\end{align*}
```

which implies that $\{f_n\}$ converges uniformly on $(a, b)$. Suppose that the limit function is $f$.

Let $c \in (a, b)$. By {prf:ref}`thm:1`, there exists a continuous function $\phi$ defined on $(a, b)$ such that

```{math}
\begin{align*}
f_n(x) - f_n(c) = (x - c) \phi_n(x)
\end{align*}
```

with $\phi_n(c) = f^\prime_n(c)$, i.e.,

```{math}
\begin{align*}\lim_{x \to c}\phi_n(x)=  f^\prime_n(c)
\end{align*}
```

:::{note}

We want to show

```{math}
\begin{align*}\lim_{x \to c}\lim_{n \to \infty}\phi_n(x)
= \lim_{n \to \infty}\lim_{x \to c}\phi_n(x)
\end{align*}
```

using {prf:ref}`thm:43`.

:::

Note that $\lim_{n \to \infty}\phi_n(x)$ exists, and

```{math}
\begin{align*}\lim_{n \to \infty}\phi_n(x) = \frac{f(x) - f(c)}{x - c} =: \phi(x)
\end{align*}
```

We claim that $\phi_n \to \phi$ uniformly on $(a, b)$. The proof of this assertion is left as an exercise. (See {ref}`Exercise 7.1<ex:4>`.) Since both the limits $\lim_{x \to c} \phi_n(x)$ and $\lim_{n \to \infty} \phi_n(x)$ exist, and $\phi_n(x)$ converges uniformly on $(a, b)$, by {prf:ref}`thm:43`, the limits $\lim_{n \to \infty} f^\prime_n(c)$ and $\lim_{x \to c} [f(x) - f(c)] / (x - c)$ both exist and are equal to each other, that is,

```{math}
\begin{align*}\lim_{x \to c}\frac{f(x) - f(c)}{x - c}
= \lim_{n \to \infty} f^\prime_n(c)
\end{align*}
```

Therefore, $f$ has a derivative at $c$, and

```{math}
\begin{align*}
f^\prime(c) = \lim_{n \to \infty} f^\prime_n(c) = g(c)
\end{align*}
```

This completes the proof.

````

````{admonition} Exercise 7.1
:name: ex:4

Complete the above proof by showing $\phi_n \to \phi$ uniformly on $(a, b)$.

````

````{admonition} Solution
:class: tip, dropdown

Given $\varepsilon > 0$, since $f_n \to f$ uniformly on $(a, b)$, there exist an integer $N \in \N^\ast$ such that

```{math}
\begin{align*}\abs{f_n(x) - f(x)} < (b - a) \varepsilon / 2
\quad\forall n \geq N \;\forall x \in(a, b)
\end{align*}
```

Let $n \geq N$. We then have

```{math}
\begin{align*}\abs{\phi_n(x) - \phi(x)}&\leq\frac{\abs{ [f_n(x) - f(x)] - [f_n(c) - f(c)] }}{\abs{x - c}}\\&\leq\frac{\abs{f_n(x) - f(x)} + \abs{f_n(c) - f(c)}}{b - a}\\&< \frac{(b - a) \varepsilon / 2 + (b - a) \varepsilon / 2}{b - a}\\&= \varepsilon\end{align*}
```

Because

```{math}
\begin{align*}\abs{\phi_n(x) - \phi(x)} < \varepsilon\end{align*}
```

holds for all $n \geq N$ and for all $x \in (a, b)$, we conclude that $\phi_n \to \phi$ uniformly on $(a, b)$.

````

The following theorem is another version of {prf:ref}`thm:44` in terms of a series of functions $\sum f_n$.


````{prf:theorem}
:label: thm:45

Let $\sum f_n$ be a series of real-valued functions each of which has a finite derivative at every point in $(a, b)$. Suppose there exists a point $x_0 \in (a, b)$ such that the numerical series $\sum f_n(x_0)$ converges. Suppose further that there exists a function $g$ such that $\sum f^\prime_n \to g$ uniformly on $(a, b)$. Then
- ➀ there exists a function $f$ such that $\sum f_n \to f$ uniformly on $(a, b)$, and
- ➁ $f^\prime(x)$ exists everywhere in $(a, b)$ with $f^\prime(x) = g(x)$.


In this case, we can write

```{math}
:label: eq:103
\begin{align}\odvs{\sum f_n(x)}{x}
= \sum\odvs{f_n(x)}{x}\end{align}
```

````

:::{note}

```{index} term-by-term differentiation
```

Equation {eq}`eq:103` is also known as **term-by-term differentiation**.

:::
