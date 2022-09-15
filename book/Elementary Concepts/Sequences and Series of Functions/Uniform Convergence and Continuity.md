# Uniform Convergence and Continuity


The uniform convergence of functions allows us to interchange change limits.


````{prf:theorem}
:label: thm:7

Suppose $f_n \to f$ uniformly on $E \subset X$ where $X$ is a metric space. Let $x$ be a limit point of $E$. If the limit $A_n := \lim_{t \to x} f_n(t)$ exists, then $\left\{A_n\right\}$ converges and

```{math}
\begin{align*}\lim_{t \to x} f(t) = \lim_{n \to \infty} A_n
\end{align*}
```

In other words, 

```{math}
:label: eq:11
\begin{align}\lim_{t \to x}\lim_{n \to \infty} f_n(t)
= \lim_{n \to \infty}\lim_{t \to x} f_n(t)
\end{align}
```

````

````{prf:remark}

One way to remember this theorem is that if the *inner* limits on both sides of {eq}`eq:11` exist, then the *outer* limits also exist and are equal to each other.

````

````{prf:proof}

We first prove that $\left\{A_n\right\}$ converges. Given $\varepsilon > 0$, since $\left\{f_n\right\}$ converges uniformly, there exists $N \in\Ns$ such that $n, m \geq N$ implies that 

```{math}
:label: eq:7
\begin{align}\abs{f_n(t) - f_m(t)} < \varepsilon\quad\forall t \in E
\end{align}
```

due to {prf:ref}`thm:6`. Because the limits $\lim_{t \to x} f_n(t)$ and $\lim_{t \to x} f_m(t)$ both exist, the limit of the left-hand side of {eq}`eq:7` also exists as $t \to x$. Letting $t \to x$, we have

```{math}
\begin{align*}\abs{A_n - A_m}
= \abs{\lim_{t \to x} f_n(t) - \lim_{t \to x} f_m(t)}
= \lim_{t \to x}\abs{f_n(t) - f_m(t)}\leq\varepsilon\end{align*}
```

Therefore, $\left\{A_n\right\}$ indeed converges due to the Cauchy criterion for convergence of sequences.



We now show that the limit of $f(t)$ exists as $t \to x$, and it equals $A := \lim_{n \to \infty} A_n$. Let $\varepsilon > 0$ be arbitrary. Since $f_n \to f$ uniformly on $E$, there exists $N_1 \in\Ns$ such that 

```{math}
:label: eq:8
\begin{align}\abs{f(t) - f_n(t)} < \frac{\varepsilon}{3}\quad\forall n \geq N_1, \\forall t \in E
\end{align}
```

And since $f_n(t) \to A_n$ as $t \to x$, there exists a neighborhood $V$ of $x$ such that 

```{math}
:label: eq:9
\begin{align}\abs{f_n(t) - A_n} < \frac{\varepsilon}{3}\quad\forall t \in V \cap E
\end{align}
```

Moreover, because we have proved $\lim_{n \to \infty} A_n = A$, there exists $N_2 \in Ns$ such that

```{math}
:label: eq:10
\begin{align}\abs{A_n - A} < \frac{\varepsilon}{3}\quad\forall n \geq N_2
\end{align}
```

Let $N = \max\{N_1, N_2\}$. Suppose $t \in V \cap E$ and $n \geq N$, by {eq}`eq:8`, {eq}`eq:9` and {eq}`eq:10`, we have

```{math}
\begin{align*}\abs{f(t) - A}\leq\abs{f(t) - f_n(t)}
+ \abs{f_n(t) - A_n}
+ \abs{A_n - A} 
< \frac{\varepsilon}{3} + \frac{\varepsilon}{3} + \frac{\varepsilon}{3}
= \varepsilon\end{align*}
```

Therefore, $\lim_{t \to x} f(t) = A$.

````


An immediate corollary to {prf:ref}`thm:7` is that if a sequence of continuous functions converges uniformly to some function, then that limit function is also continuous.


````{prf:theorem}
:label: thm:11

Let $\left\{f_n\right\}$ be a sequence of continuous functions on $E$. If $f_n \to f$ uniformly on $E$, then $f$ is also continuous.

````

````{prf:remark}

However, the converse of this theorem is not true in general. That is, if $f$ is continuous it is not necessary that $f_n \to f$ uniformly. Or in other words, it is possible in some cases that $f_n \to f$ only pointwise, and $f$ is still continuous. The following example is one such case.

````

````{prf:example}
:label: eg:1

Let

```{math}
\begin{align*}
f_n(x) = n^2 x (1 - x^2)^n
\end{align*}
```

where $0 \leq x \leq 1$ and $n \in\Ns$. Note that 

```{math}
\begin{align*}
f(x) = \lim_{n \to \infty} f_n(x) = 0
\end{align*}
```

All $f_n$'s are continuous and $f$ is of course continuous since it is a constant function. But $\left\{f_n\right\}$ does not converge to $f$ uniformly on $[0,1]$ due to {prf:ref}`thm:8`. To see this, one can obtain

```{math}
\begin{align*}
M_n = \sup_{x \in[0,1]} f_n(x)
= \frac{n^2}{\sqrt{1 + 2n}}\left(1 - \frac{1}{1+2n}\right)^n 
\end{align*}
```

by computing the critical points of $f_n(x)$. Note that 

```{math}
\begin{align*}\lim_{n \to \infty}\left(1 - \frac{1}{1+2n}\right)^n
= \lim_{n \to \infty}\sqrt{\frac{1}{\left (1 + \frac{1}{2n}\right )^{2n}}}
= \frac{1}{\sqrt{e}}\end{align*}
```

But $\frac{n^2}{\sqrt{1 + 2n}}\to\infty$ as $n \to\infty$. Therefore, $\lim_{n \to \infty} M_n = \infty$. Since $M_n$ does not converge to $0$, {prf:ref}`thm:8` implies that $\left\{f_n\right\}$ does not converge to $f$ uniformly.

````

````{prf:proof}

Let a sequence $\left\{x_n\right\}_{n \in \N}$ be given by 

```{math}
\begin{align*}
x_0 &= 0 \\ 
x_n &= \frac{1}{n}\quad n \geq 1
\end{align*}
```

Let $E$ be the set consisting of terms of this sequence, i.e, 

```{math}
\begin{align*}
E = \set{x \in \R}{\exists n \in \N, \x_n = x} = \left\{0\right\}\cup\set{\frac{1}{n}}{n \in \Ns}\end{align*}
```

It is clear that $\lim_{n \infty} x_n = x_0$, and $x_n \to x_0$ if and only if $n \to\infty$. We now define a sequence of functions $\left\{f_i\right\}_{i \in \Ns}$ on $E$ by specifying the function value at each point:

```{math}
\begin{align*}
f_i(x_0) &:= \sum_{j=1}^\infty a_{ij}\\ 
f_i(x_n) &:= \sum_{j=1}^n a_{ij}\quad n \geq 1
\end{align*}
```

And then let function $g$ be defined by 

```{math}
\begin{align*}
g(x) := \sum_{i=1}^\infty f_i(x)
\end{align*}
```


We need to verify that functions $f_i$'s and $g$ are all well-defined. 
$f_i(x_n)$ is well-defined since it is just a finite sum of complex numbers. In the conditions of this theorem, we require that $\sum_{j=1}^\infty a_{ij}$ converges absolutely, hence the well-definedness of $f(x_0)$.
For function $g$, we note that 

```{math}
:label: eq:17
\begin{align}
f_i(x) 
\leq\abs{f_i(x)}\leq\sum_{j=1}^\infty\abs{a_{ij}}
= b_i < \infty\end{align}
```

Since $\sum b_i$ converges, we know $\sum\abs{f_i(x)}$ also converges by the Comparison Test. Therefore, $\sum f_i(x)$ converges (absolutely), and hence $g(x)$ is well-defined. Moreover, {eq}`eq:17` implies that $\sum f_i(x)$ converges *uniformly* to $g(x)$ by Weierstrass's M-Test ({prf:ref}`thm:14`).



In the following, we show that $f_i$ is *continuous* at $x_0$. Given $\varepsilon > 0$, there exists $N \in\Ns$ such that $n \geq N$ implies 

```{math}
\begin{align*}\abs{f_i(x_n) - f_i(x_0)}= \abs{\sum_{j=1}^n a_{ij} - \sum_{j=1}^\infty a_{ij}} < \varepsilon\end{align*}
```

Choose a positive number $\delta < \frac{1}{N}$, and then let $\abs{x-x_0} < \delta$($x \in E$). Since $x \in E$, $x = x_n$ for some $n \in\N$. Then, by the definition of $x_n$, it is clear $n > N$. It follows that if $\abs{x - x_0} < \delta$, we have 

```{math}
\begin{align*}\abs{f_i(x_n) - f_i(x_0)} < \varepsilon\end{align*}
```

since $n > N$. Therefore, $f_i$ is indeed continuous at $x_0$.



Recall $\sum f_i(x)$ converges uniformly to $g(x)$. It follows that $g$ is also continuous at $x_0$ due to {prf:ref}`thm:7`. Then, we have

```{math}
\begin{align*}
g(x_0) = \lim_{x \to x_0} g(x)
= \lim_{n \to \infty} g(x_n)
\end{align*}
```

The last equation (converting limit of function limit to limit of sequence) holds because $\left\{x_n\right\}$ is indeed a sequence that converges to $x_0$. It then follows that 

```{math}
\begin{align*}
g(x_0) = g(x)
= \lim_{n \to \infty} g(x_n)
&= \lim_{n \to \infty}\sum_{i=1}^\infty f_i(x_n) \\&= \lim_{n \to \infty}\sum_{i=1}^\infty\sum_{j=1}^n a_{ij}\\&= \lim_{n \to \infty}\sum_{j=1}^n \sum_{i=1}^\infty a_{ij}\\&= \sum_{j=1}^\infty\sum_{i=1}^\infty a_{ij}\end{align*}
```

Note that the reason why we have 

```{math}
\begin{align*}\sum_{i=1}^\infty\sum_{j=1}^n a_{ij}
= \sum_{j=1}^n \sum_{i=1}^\infty a_{ij}\end{align*}
```

is that $\sum_{i=1}^\infty a_{ij}$ converges.
In summary, on the one hand, we have shown 

```{math}
:label: eq:18
\begin{align}
g(x_0) = \sum_{j=1}^\infty\sum_{i=1}^\infty a_{ij}\end{align}
```

On the other hand, by definition, 

```{math}
:label: eq:19
\begin{align}
g(x_0) = \sum_{i=1}^\infty f_i(x_0)
= \sum_{i=1}^\infty\sum_{j=1}^\infty a_{ij}\end{align}
```

We complete the proof by equating the right-hand sides of {eq}`eq:18` and {eq}`eq:19`.

````

````{prf:theorem}

Suppose $K$ is a compact set, and 
1. $\left\{f_n\right\}$ is a sequence of continuous functions on $K$
2. $f_n \to f$ pointwise where $f$ is also continuous

3. $f_n(x) \geq f_{n+1}(x)$ for all $x \in K$, $n \in\Ns$


Then $f_n \to f$ uniformly on $K$.

````

````{prf:proof}

Let $g_n(x) := f_n(x) - f(x)$. It is clear that $g_n(x) \geq g_{n+1}(x) \geq 0$ and $g_n \to g \equiv 0$ pointwise. Given $\varepsilon > 0$. Define set

```{math}
\begin{align*}
K_n := g_n^{-1}[\varepsilon, \infty)
\end{align*}
```

Since, $g_n$ is continuous and $[\varepsilon, \infty)$ is closed in $\R$, it follows that $K_n$ is a compact subset. Consider the intersection $\bigcap_{n \in \Ns} K_n$. Because $g_n \geq g_{n+1}$, we have

```{math}
\begin{align*}
K_{n}\supset K_{n+1}\end{align*}
```

We now claim that $\bigcap_{n \in \Ns} K_n = \emptyset$. To see this, we assume $x \in\bigcap_{n \in \Ns} K_n$, which then implies $g_n(x) \geq\varepsilon\\forall n \in\Ns$. This leads to a contradiction since $g_n \to g \equiv 0$. Having that $\bigcap_{n \in \Ns} K_n = \emptyset$, by {prf:ref}`thm:10`, it follows that there exists some finite subset $J \subset\Ns$ such that $\bigcap_{n \in J} K_n = \emptyset$. Suppose the largest number in $J$ is $N$, then we have

```{math}
\begin{align*}
K_N = \bigcap_{n \in J} K_n = \emptyset\end{align*}
```

since $K_n \supset K_{n+1}$. This further implies that

```{math}
:label: eq:12
\begin{align}
K_N = \emptyset\quad\forall n \geq N
\end{align}
```

It then follows from {eq}`eq:12` and the definition of $K_n$ that 

```{math}
\begin{align*}
0 \leq g_n(x) < \varepsilon\quad\forall n \geq N, \\forall x \in K
\end{align*}
```

Therefore, $g_n \to 0$ uniformly, i.e., $f_n \to f$ uniformly.

````


The compactness is necessary. Consider the following example.


````{prf:example}

Let $f_n(x) = \frac{1}{nx}$ where $x \in(0,1)$, which is not a compact set in $\R$. Note that $f_n \to 0$ pointwise, all functions are continuous and $f_n(x) > f_{n+1}(x)$. But clearly $\left\{f_n\right\}$ does not converge to $0$ uniformly on $(0,1)$.

````


The condition that $f_n(x) \geq f_{n+1}(x)$ is also crucial to this theorem. To illustrate this, we reconsider {prf:ref}`eg:1`.


````{prf:example}

Let $f_n$ be the same function in {prf:ref}`eg:1`. The domain $[0,1]$ is compact and $f_n$ is continuous. We have already seen that $\left\{f_n\right\}$ does not converge to $0$ uniformly on $[0,1]$. What goes wrong is that $\left\{f_n\right\}$ fails to satisfy $f_n(x) \geq f_{n+1}(x)$(for *infinitely* many $n$). To see this, we evaluate $f_n$ and $f_{n+1}$ at the point $x = \frac{1}{\sqrt{2n+3}}$(the maximum point of $f_{n+1}$). We have 

```{math}
\begin{align*}\frac{f_{n}(1/\sqrt{2n+3})}{f_{n+1}(1/\sqrt{2n+3})}
= \frac{n^2(2n+3)}{2(n+1)^3}
= \frac{2n^3 + 3n^2}{2n^3 + 6n^2 + 6n + 2}
< 1
\end{align*}
```

Therefore,

```{math}
\begin{align*}
f_{n}(1/\sqrt{2n+3}) < f_{n+1}(1/\sqrt{2n+3}) 
\quad\forall n \in\Ns\end{align*}
```

````


If we collect a certain kind of functions in a set, we can then interpret uniform convergence of functions simply as sequential convergence. In this case, each term of the sequence is not some number but a *function*.


````{prf:definition}

Let $X$ be a metric space. $\mathscr{C}(X)$ will denote the set consisting of all complex-valued, bounded and continuous functions with domain $X$.

````


Next, to make $\mathscr{C}(X)$ a metric space, we need to define a distance function. We do so by first defining norms.


````{prf:definition}
:label: def:5

The norm on $\mathscr{C}(X)$ is given by the supremum norm of each function $f \in\mathscr{C}(X)$, i.e.,  

```{math}
\begin{align*}\norm{f} := \sup_{x \in X}\abs{f(x)}\end{align*}
```

````

````{prf:remark}

We need to verify that {prf:ref}`def:5` indeed defines a norm. It is clearly positive definite, and 

```{math}
\begin{align*}\norm{\alpha f} 
= \sup_{x \in X}\abs{\alpha f(x)}
= \abs{\alpha}\sup_{x \in X}\abs{f(x)}
= \abs{\alpha}\norm{f}\end{align*}
```

where $\alpha\in\C$. Moreover, 

```{math}
\begin{align*}\norm{f+g}
= \sup_{x \in X}\abs{f(x) + g(x)}\leq\sup_{x \in X}(\abs{f(x)} + \abs{g(x)})
\leq\sup_{x \in X}\abs{f(x)} + \sup_{x \in X}\abs{g(x)}
= \norm{f} + \norm{g}\end{align*}
```

````


The distance function on $\mathscr{C}(X)$ is defined as the norm of the difference between two functions.


````{prf:definition}

The distance function on $\mathscr{C}(X)$ is given by 

```{math}
\begin{align*}
d(f, g) := \norm{f - g}\end{align*}
```

where $f, g \in\mathscr{C}(X)$ and $\norm{\cdot}$ is the norm on $\mathscr{C}(X)$.

````

````{prf:remark}

With the properties of norms, it is easy to verify that the distance function is well-defined.

````


Associate with a distance function, we are now able to call $\mathscr{C}(X)$ a metric space. Even better, $\mathscr{C}(X)$ is a *complete* metric space, which we shall prove below.


````{prf:theorem}
$\mathscr{C}(X)$ is a **complete** metric space.

````

````{prf:remark}

Let $\left\{f_n\right\}$ be a sequence in $\mathscr{C}(X)$. Then $f_n \to f$ uniformly on $X$ is equivalent to that $\left\{f_n\right\}$ converges to $f$. Moreover, $f \in\mathscr{C}(X)$.

````

````{prf:proof}

Let $\left\{f_n\right\}$ be a Cauchy sequence in $\mathscr{C}(X)$. Then for given $\varepsilon > 0$, there exists $N \in\Ns$ such that $n, m \geq N$ implies 

```{math}
\begin{align*}\sup_{x \in X}\abs{f_n(x) - f_m(x)}= d(f_n, f_m) < \varepsilon\end{align*}
```

By {prf:ref}`thm:6`, there exists some function $f$ such that $f_n \to f$ uniformly on $f$. (Note that $f$ is not necessary in $\mathscr{C}(X)$ for now. That is exactly what we need to prove.) We intend to show that $f \in\mathscr{C}(X)$. By {prf:ref}`thm:11`, $f$ is continuous since all $f_n$'s are continuous. We also need to show that $f$ is bounded. By {prf:ref}`thm:8`, we have 

```{math}
\begin{align*}\sup_{x \in X}\abs{f(x) - f_N(x)} < 1
\end{align*}
```

for some $N \in\Ns$. And $\sup_{x \in X}\abs{f_N(x)} < M$ for some $M > 0$ since $f_N$ is bounded. It then follows that 

```{math}
\begin{align*}\sup_{x \in X}\abs{f(x)}\leq\sup_{x \in X}\abs{f(x) - f_N(x)} + \sup_{x \in X}\abs{f_N(x)}
< 1 + M
\end{align*}
```

Therefore, $f$ is indeed bounded. Hence, $f \in\mathscr{C}(X)$ since we have proved $f$ is bounded and continuous (of course, $f$ is also complex-valued). As {prf:ref}`thm:8` states,

```{math}
\begin{align*}\lim_{n \to \infty} d(f_n, f) = 0
\end{align*}
```

with $f \in\mathscr{C}(X)$, we may conclude that $\mathscr{C}(X)$ is a complete metric space.

````
