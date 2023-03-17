# The Mean Value Theorem
## Local Extrema
One may be familiar with the fact that if the derivative of function $f$ is positive at some point, i.e., $f^\prime(c) > 0$, then $f$ is increasing near $c$, and if $f^\prime(c) < 0$, it is decreasing. However, we can extend this result a little further for we have defined one-sided and infinite derivatives.


````{prf:theorem}
:label: thm:14

Let $f$ be defined on a subset $A \subseteq \R$ and $c \in A$. If $f^\prime_+(c) > 0$, possibly $f^\prime_+(c) = \infty$, then there exists a half-open ball $(c, c+\delta) \subseteq A$ in which

```{math}
:label: eq:12
\begin{align}
x > c \implies f(x) > f(c)
\end{align}
```

Similarly, if $f^\prime_{-}(c) > 0$, then $\exists (c-\delta, c) \subseteq A$ in which

```{math}
\begin{align*}
x < c \implies f(x) < f(c)
\end{align*}
```

Analogous results hold if we instead assume $f^\prime_{+}(c) < 0$ or $f^\prime_{-}(c) < 0$.

````

````{prf:proof}

We only prove {eq}`eq:12` since the proofs of the rest of the results are similar. First suppose $f^\prime_{+}(c) < \infty$. Because the right-hand limit exists, and it equals $f^\prime_{+}(c)$, there exists $\delta > 0$ such that

```{math}
\begin{align*}\abs{
\frac{f(x) - f(c)}{x - c}
- f^\prime_{+}(c)
} < \frac{f^\prime_{+}(c)}{2}\quad\forall x \in(c, c+\delta)
\end{align*}
```

This implies

```{math}
\begin{align*}\frac{f(x) - f(c)}{x - c} > \frac{f^\prime_{+}(c)}{2} > 0
\quad\forall x \in(c, c+\delta)
\end{align*}
```

Then $f(x) > f(c)$ provided $x > c$ since they have the same sign.

We also need to consider $f^\prime_{+}(c) = \infty$. Because the limit is infinity, there exists $\delta > 0$ such that the following fraction exceeds any predetermined number, in particular,

```{math}
\begin{align*}\frac{f(x) - f(c)}{x - c} > 0
\quad\forall x \in(c, c+\delta)
\end{align*}
```

One can instead choose any large number (non-negative of course, to prove this theorem). This completes the proof since both the numerator and denominator share the same sign.

````
The following corollary is the version that is more familiar to the reader and is more common in practice.


````{prf:corollary}
:label: cor:1

Let $f$ be defined on $(a, b)$, and $c \in (a, b)$ an interior point. If $f^\prime(c) > 0$, possibly $f^\prime(c) = \infty$, then there exists an open ball $B_\delta(c) \subseteq (a, b)$ in which

```{math}
:label: eq:14
\begin{align}
x > c \implies f(x) > f(c)
\quad\text{and}\quad
x < c \implies f(x) < f(c)
\end{align}
```

An analogous result holds if $f^\prime(c) < 0$.

````

````{admonition} Exercise 5.5

Prove {prf:ref}`cor:1` assuming $f^\prime(c) < \infty$ using {prf:ref}`thm:1`.

````

````{admonition} Solution
:class: tip, dropdown

It follows from {prf:ref}`thm:1` that

```{math}
:label: eq:13
\begin{align}
f(x) - f(c) = (x - c) \phi(x)
\quad\forall x \in(a, b)
\end{align}
```

where $\phi(x)$ is continuous at $c$ with $\phi(c) = f^\prime(c) > 0$. Since $\phi(c) > 0$ and it is continuous there, there exists some neighborhood $B_\delta(c) \subseteq (a, b)$ such that $\phi(x) > 0 \; \forall x \in B_\delta(c)$. And then {eq}`eq:14` follows from {eq}`eq:13`.

````

```{index} local extremum
```
The **local extremum** of a function is the largest or smallest value within some *open ball*.


````{prf:definition}

```{index} local maximum
```

Let $f$ be a real-valued function defined on a subset $A$ of a metric space $(X, d)$, and suppose $p \in A$. Then $f$ is said to have a **local maximum** at $p$ if

```{math}
\begin{align*}
f(x) \leq f(p)
\quad\forall x \in B_\delta(p) \cap A
\end{align*}
```

```{index} local minimum
```

for some open ball $B_\delta(p)$. An analogous definition exists for **local minimum**.

````
The reader should be very familiar with the exercise of finding a local extremum by solving the equation in which the derivative vanishes. The following Theorem is the theory behind that.


````{prf:theorem}
:label: thm:5

Let $f$ be defined on $(a, b)$, and suppose $f$ has a local extremum at an interior point $c \in (a, b)$. If $f^\prime(c)$ exists as a finite or infinite number, then $f^\prime(c) = 0$.

````

````{prf:remark}

Since the conclusion is $f^\prime(c) = 0$, we may as well just assume $f$ is differentiable at $c$. The reason why we suppose $f^\prime(c)$ exists is that it makes the assumption somewhat looser.

````

````{prf:proof}

We shall prove by contradiction. Assume $f^\prime(c) \neq 0$, then either $f^\prime(c) > 0$ or $f^\prime(c) < 0$. (We do not exclude the possibilities that $f^\prime(c) = \infty$ or $f^\prime(c) = -\infty$.) If $f^\prime(c) > 0$, then follows from {prf:ref}`cor:1` that there acts some open ball $B_\delta(c)$ in which $f(x) > f(c)$ for $x > c$ and $f(x) < f(c)$ for $x < c$. This contradicts the fact that $f(c)$ is a local extremum. Similarly, $f^\prime(c) < 0$ will also lead to a contradiction.

````
The converse of this Theorem is not true.


````{prf:example}

Consider $f(x) = x^3$. Its derivative is $f^\prime(x) = 3x^2$. We note that $f^\prime(0) = 0$. But it is clear that $f(0) = 0$ is neither a local maximum nor a local minimum. In fact, $f(x)$ does not have any local extremum.

````

````{admonition} Exercise 5.6

Recall the function

```{math}
\begin{align*}
f(x) = x^2 \sin\frac{1}{x^2}\ind\{x \neq 0\}\end{align*}
```

defined in {ref}`Exercise 5.2<ex:1>`. Show that $f(0)$ is not a local extremum. Recall we have shown that $f^\prime(0) = 0$. This is another example that the converse of {prf:ref}`thm:5` does not hold.

````
Moreover, it should be emphasized that we conclude in {prf:ref}`thm:5` that $f^\prime(c) = 0$ under the condition that $f^\prime(c)$ exists. $f(c)$ may be a local extremum without having a derivative there.


````{prf:example}

The simplest example is $f(x) = \abs{x}$. Note that $f(0) = 0$ is a local minimum. But the derivative does not exist at $x = 0$ since $f^\prime_{+}(0) = 1 \neq -1 = f^\prime_{-}(0)$.

````
## Rolle's Theorem and Mean Value Theorem
If a function starts from point $a$ and ends at point $b$ with the same level of height as its initial position, then there must be a turning point somewhere in between.


````{prf:theorem} Rolle
:label: thm:9

Let $f$ be defined on $[a, b]$. Suppose $f^\prime(x)$ exists (as finite or infinite number) for each $x \in (a, b)$, and $f$ is continuous at the endpoints $a$ and $b$. If $f(a) = f(b)$, then there exists $c \in (a, b)$ such that

```{math}
\begin{align*}
f^\prime(c) = 0
\end{align*}
```

````

````{prf:proof}

If $f$ is a constant function, i.e., $f(x) = f(a) = f(b) \; \forall x \in[a, b]$, then the conclusion is trivial since $f^\prime(x) = 0 \; \forall x \in (a, b)$.

We now suppose $f$ is non-constant. We know that $f$ is continuous on $[a, b]$ since $f^\prime$ exists throughout $(a, b)$ and $f$ is continuous at endpoints. It then follows from {prf:ref}`thm:6` that $f$ attains its maximum and minimum on $[a, b]$. Because we assume $f$ is non-constant and $f(a) = f(b)$, at least one of the maximum and the minimum of $f$ is reached at an interior point $c \in (a, b)$. Note that $f(c)$ is a global extremum, and of course also a local extremum. Then by applying {prf:ref}`thm:5`, we conclude $f^\prime(c) = 0$.

````

````{prf:example}

Review {prf:ref}`eg:1`. Note that $f(0) = f(4) = 0$. And the derivative vanishes at $x = 1$ and $x = 3$.

````

```{index} mean value theorem
```

```{index} generalized mean value theorem
```
The **mean value theorem** is a generalization of Rolle's theorem. Roughly speaking it says $f$ has a derivative value that equals the slope of the secant line joining two endpoints of the graph of $f$. The mean value theorem itself can be treated as a special case of an even more generalized version, the **generalized mean value theorem**({prf:ref}`thm:7`).


````{prf:theorem} Mean Value Theorem
:label: thm:8

Suppose $f$ has a derivative (finite or infinite) at each point of $(a, b)$, and suppose $f$ is continuous at endpoints $a$ and $b$. Then there exists $c \in (a, b)$ such that

```{math}
\begin{align*}
f(b) - f(a) = f^\prime(c) (b - a)
\end{align*}
```

````

````{prf:theorem} Generalized Mean Value Theorem
:label: thm:7

Let $f$ and $g$ be two functions, each having a derivative (finite or infinite) at each point in $(a, b)$. Suppose $f$ and $g$ are both continuous at endpoints $a$ and $b$, and $f^\prime(x)$ and $g^\prime(x)$ do not assume infinite values simultaneously. Then there exists $c \in (a, b)$ such that

```{math}
:label: eq:15
\begin{align}
f^\prime(c) [g(b) - g(a)]
= g^\prime(c) [f(b) - f(a)]\end{align}
```

````

````{prf:remark}

By taking $g(x) = x$, this theorem reduces to the standard mean value theorem, {prf:ref}`thm:8`.

````
Though it is a generalized version of the mean value theorem, and hence Rolle's theorem, it can be proved easily using Rolle's theorem by constructing a function out of $f$ and $g$.


````{prf:proof}

Define

```{math}
\begin{align*}\psi(x) = f(x)[g(b) - g(a)] - g(x) [f(b) - f(a)]\end{align*}
```

It is clear that $\psi$ is continuous on $[a, b]$. Since $f^\prime(x)$ and $g^\prime(x)$ can never both be infinity, the following equation holds:

```{math}
\begin{align*}\psi^\prime(x)
= f^\prime(x)[g(b) - g(a)] - g^\prime(x) [f(b) - f(a)]\quad\forall x \in(a, b)
\end{align*}
```

Furthermore, we note that

```{math}
\begin{align*}\psi(a) = f(a)g(b) - f(b)g(a)
= \psi(b)
\end{align*}
```

Applying Rolle's theorem ({prf:ref}`thm:9`) to $\psi$ leads to $\psi^\prime(c) = 0$ for some $c \in (a, b)$, which is exactly {eq}`eq:15`.

````
Sometimes, functions $f$ and $g$ in {prf:ref}`thm:7` may not be defined at endpoints. But all the one-sided limits exist as finite values. In this case, we still wish to apply the theorem. The following is a slight extension of {prf:ref}`thm:7`.



````{prf:theorem}
:label: thm:84

Let $f$ and $g$ be two functions, each having a derivative (finite or infinite) at each point in $(a, b)$. Suppose that $f^\prime(x)$ and $g^\prime(x)$ do not assume infinite values simultaneously, and one-sided limits $f(a+)$, $f(b-)$, $g(a+)$ and $g(b-)$ all exist as finite values. Then there exists $c \in (a, b)$ such that

```{math}
:label: eq:16
\begin{align}
f^\prime(c) [g(b-) - g(a+)]
= g^\prime(c) [f(b-) - f(a+)]\end{align}
```

````
The proof is done by simply defining the function values at the endpoints.


````{prf:proof}

Define

```{math}
\begin{align*}\tilde{f}(x) = f(x) \quad\forall x \in(a, b),
\quad\tilde{f}(a) = f(a+),
\quad\text{and}\quad\tilde{f}(b) = f(b-) \\\tilde{g}(x) = g(x) \quad\forall x \in(a, b),
\quad\tilde{g}(a) = g(a+),
\quad\text{and}\quad\tilde{g}(b) = g(b-)
\end{align*}
```

It is evident that $\tilde{f}$ and $\tilde{g}$ are both continuous on $[a, b]$. Furthermore, the derivatives $\tilde{f}^\prime(x) = f^\prime(x)$ and $\tilde{g}^\prime(x) = g^\prime(x)$ for each $x \in (a, b)$. Applying {prf:ref}`thm:7` to functions $\tilde{f}$ and $\tilde{g}$ leads to {eq}`eq:16`.

````

Of course, by letting $g(x) = x$
we will also obtain a version concerning
only one function.


````{prf:theorem}
:label: thm:85

Let $f$ be a function having
a derivative (finite or infinite)
at each point in $(a, b)$.
Suppose that one-sided limits $f(a+)$ and $f(b-)$ at the endpoints
both exist as finite values.
Then there exists $c \in (a, b)$ such that

```{math}
\begin{align*}
f(b-) - f(a+)
= f^\prime(c) (b - a)
\end{align*}
```

````
The following theorem is an immediate result of the mean value theorem, which provides a sufficient condition for determining strictly increasing and decreasing functions. It also says a function is constant if its derivative vanishes everywhere.


````{prf:theorem}
:label: thm:10

Suppose $f$ has a derivative (finite or infinite) at each point in $(a, b)$, and itself is continuous at the endpoints $a$ and $b$.
- ➀ If $f^\prime(x) > 0 \; \forall x \in (a, b)$, then $f$ is strictly increasing on $[a, b]$.
- ➁ If $f^\prime(x) < 0 \; \forall x \in (a, b)$, then $f$ is strictly decreasing on $[a, b]$.
- ➂ If $f^\prime(x) = 0 \; \forall x \in (a, b)$, then $f$ is constant on $[a, b]$.


````

````{prf:proof}
(Proof of 1) Let $x_1, x_2 \in[a, b]$ with $x_1 < x_2$. Applying {prf:ref}`thm:8` to $f$ on the interval $[x_1, x_2]$ leads to

```{math}
\begin{align*}
f(x_2) - f(x_1) = f^\prime(c) (x_2 - x_1)
\end{align*}
```

for some $c \in (x_1, x_2)$. Since $f^\prime(c) > 0$ and $x_2 - x_1 > 0$, we have $f(x_2) > f(x_1)$. Because $x_1$ and $x_2$ are arbitrarily chosen, this implies $f$ is strictly increasing on $[a, b]$.

(Proof of 2) Similarly, for any $x_1, x_2 \in[a, b]$ with $x_1 < x_2$, we have

```{math}
\begin{align*}
f(x_2) - f(x_1) = f^\prime(c) (x_2 - x_1) < 0
\end{align*}
```
(Proof of 3) For any $x_1, x_2 \in[a, b]$ with $x_1 < x_2$, by applying {prf:ref}`thm:8`, we have

```{math}
\begin{align*}
f(x_2) - f(x_1) = f^\prime(c) (x_2 - x_1) = 0
\end{align*}
```

This implies $f$ is a constant function.

````
If $f$ and $g$ have the same derivatives everywhere in $(a, b)$, then they only differ by a constant.


````{prf:corollary}

If $f$ and $g$ are continuous on $[a, b]$, and $f^\prime(x) = g^\prime(x) \; \forall x \in (a, b)$, then $f - g$ is constant on $[a, b]$.

````

````{prf:proof}

Note that the difference $f-g$ is continuous on $[a, b]$ and $(f-g)^\prime(x) = 0 \; \forall x \in (a, b)$. It then follows from {prf:ref}`thm:10` that $f-g$ is a constant.

````
