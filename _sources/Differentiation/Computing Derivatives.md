# Computing Derivatives

It is difficult in practice to compute the derivative of any function only using the definition. In this section, we shall introduce some theorems and standard rules that are helpful with computation. If one knows the derivatives of elementary functions (e.g., $x^a$, $e^x$, $\ln x$, $\sin x$, $\cos x$, etc.), then by applying these theorems, one should be able to compute the derivatives of any functions that are built up out of elementary functions using summations, differences, products, quotients, and compositions.


:::{note}

In fact, these so-called elementary functions are not elementary at all. We shall present their definitions as well as their derivatives rigorously in later chapters.

:::
## Algebra of Derivatives

````{prf:theorem}

Suppose $f$ and $g$ are defined on $(a, b)$ and are both differentiable at $c \in (a, b)$. Then the functions $f + g$, $f - g$, $fg$ are also differentiable at $c$. If $g(c) \neq 0$, then the quotient $f / g$ is also differentiable at $c$. And the formulas of their derivatives are given by
- ➀ $(f \pm g)^\prime(c) = f^\prime(c) \pm g^\prime(c)$,
- ➁ $(f g)^\prime(c) = f^\prime(c) g(c) + f(c) g^\prime(c)$,
- ➂ $(f / g)^\prime(c) = \frac{f^\prime(c) g(c) - f(c) g^\prime(c)}{ g^2(c) }$, provided $g(c) \neq 0$.

````

````{prf:remark}

One might be worried about the possibility that the quotient $f / g$ may only be defined at point $c$ if we only require $g(c) \neq 0$. Then how can we say $f / g$ is differentiable at some point? However, the condition that $g$ is differentiable at $c$ implicitly implies that $g(x) \neq 0$ for $x$ in some interval about $c$ if we assume $g(c) \neq 0$. Take a few seconds and think about why this is true. Note that $g$ is continuous at $c$ by {prf:ref}`thm:2`. Then, if $g(c) \neq 0$, by the continuity, $g$ is also nonzero in some neighborhood of $c$. Hence, in this case, $f / g$ is actually well-defined in an interval instead of at just one point.

````

The proof we present here is done by exploiting {prf:ref}`thm:1`, and it may differ from a traditional proof that is solely based on the definition.


````{prf:proof}

Since $f$ and $g$ are differentiable at $c$. It follows from {prf:ref}`thm:1` that there exists functions $\phi_1$ and $\phi_2$ on $(a, b)$ that are continuous at $c$, and satisfy

```{math}
:label: eq:4
\begin{align}
f(x) - f(c) = (x - c) \phi_1^\prime(x) \end{align}
```

```{math}
:label: eq:5
\begin{align}
g(x) - g(c) = (x - c) \phi_2^\prime(x) \end{align}
```

with

```{math}
:label: eq:6
\begin{align}\phi_1 (c) = f^\prime(c)
\quad\text{and}\quad\phi_2 (c) = g^\prime(c)
\end{align}
```
(Proof of 1) Applying {eq}`eq:4` and {eq}`eq:5` to $(f \pm g)(x) - (f \pm g)(c)$, we have

```{math}
\begin{align*}(f \pm g)(x) - (f \pm g)(c)
= (x - c) (
\phi_1(x) \pm\phi_2(x)
)
\end{align*}
```

Since $\phi_1(x) \pm \phi_2(x)$ is continuous at $c$, $(f \pm g)$ is differentiable at $c$ by {prf:ref}`thm:1`. Then by applying {eq}`eq:6`, we obtain

```{math}
\begin{align*}(f \pm g)^\prime(c)
= \phi_1(c) \pm\phi_2(c)
= f^\prime(c) \pm g^\prime(c)
\end{align*}
```
(Proof of 2) Again by applying {eq}`eq:4` and {eq}`eq:5`, we have

```{math}
\begin{align*}(f g)(x) - (f g)(c)
= (x - c) [\phi_1(x) g(c)
+ f(c) \phi_2(x)
+ (x - c) \phi_1(x) \phi_2(x)
]\end{align*}
```

after a few steps of algebraic calculation. It then follows from {prf:ref}`thm:1` that $f g$ is differentiable at $c$ since the function

```{math}
\begin{align*}\phi_1(x) g(c)
+ f(c) \phi_2(x)
+ (x - c) \phi_1(x) \phi_2(x)
\end{align*}
```

is continuous at $c$. And

```{math}
\begin{align*}(f g)^\prime(c)
= \phi_1(c) g(c)
+ f(c) \phi_2(c)
+ (c - c) \phi_1(c) \phi_2(c)
= f^\prime(c) g(c) + f(c) g^\prime(c)
\end{align*}
```
(Proof of 3) Note that the quotient $(f / g)$ can be regarded as a product of $f$ and $1 / g$. Hence, we are going to show $1/g$ is differentiable at $c$, and then apply statement 2, which we have just proved, to conclude the proof. As explained in the remark of this theorem, $1/g$ is well-defined in a neighborhood of $c$. It follows from {eq}`eq:5` that

```{math}
\begin{align*}\frac{1}{g(x)} - \frac{1}{g(c)}
= (x - c) \frac{-\phi_2(x)}{g(x)g(c)}\end{align*}
```

Since $-\phi_2(x) / [g(x)g(c)]$ is continuous at $c$, we conclude from {prf:ref}`thm:1` that $1/g$ is differentiable at $c$, and

```{math}
\begin{align*}\left(\frac{1}{g}\right)^\prime(c)
= \frac{-\phi_2(c)}{g(c)g(c)}
= \frac{-g^\prime(c)}{g^2(c)}\end{align*}
```

Then by applying statement 2, we conclude that $f / g$ is also differentiable at $c$ with

```{math}
\begin{align*}(f / g)^\prime(c) = \frac{f^\prime(c) g(c) - f(c) g^\prime(c)}{ g^2(c) }\end{align*}
```

````

```{index} chain rule
```
## The Chain Rule

Taking compositions is a more fundamental and natural way of combining two functions apart from summations, products, etc. The next result, the **chain rule**, provides a method of computing the derivative of a composite function.


````{prf:theorem}
:label: thm:4

Let $f$ be a function defined on an open interval $I$, and $g$ a function defined on $f(I)$. We consider the composite function $g \circ f$. If $f$ is differentiable at $c \in I$, $f(c)$ is an interior of $f(I)$, and $g$ is differentiable at $f(c)$, then $g \circ f$ is differentiable at $c$ with

```{math}
:label: eq:9
\begin{align}(g \circ f)^\prime(c)
= g^\prime(f(c)) f^\prime(c)
\end{align}
```

````

With the help of {prf:ref}`thm:1`, we can reduce the proof of this theorem to that of {prf:ref}`thm:3`.


````{prf:proof}

Since $f$ is differentiable at $c$, using {prf:ref}`thm:1`, we have

```{math}
:label: eq:10
\begin{align}
f(x) - f(c) = (x-c) \phi_1(x)
\quad\forall x \in I
\end{align}
```

where $\phi_1$ is some function that is continuous at $c$ with $\phi_1(c) = f^\prime(c)$. Using the same argument, since $g$ is differentiable at $f(c)$, we have

```{math}
:label: eq:11
\begin{align}
g(y) - g(f(c)) = (y-f(c)) \phi_2(y)
\quad\forall y \in f(I)
\end{align}
```

where $\phi_2$ is some function that is continuous at $f(c)$ with $\phi_2(c) = g^\prime(f(c))$. Replace $y$ with $f(x)$ in {eq}`eq:11` yields

```{math}
\begin{align*}
g(f(x)) - g(f(c)) = (f(x)-f(c)) \phi_2(f(x))
\quad\forall x \in I
\end{align*}
```

Then by replacing $f(x)-f(c)$ with the right-hand side of {eq}`eq:10`, we have

```{math}
\begin{align*}
g(f(x)) - g(f(c)) = (x-c) \phi_1(x) \phi_2(f(x))
\quad\forall x \in I
\end{align*}
```

Note that $\phi_2(f(x))$ is continuous at $c$ by {prf:ref}`thm:3`. And the product $\phi_1(x) \phi_2(f(x))$ is also continuous. This implies $f \circ f$ is differentiable at $c$ by {prf:ref}`thm:1`. And its derivative at $x = c$ equals

```{math}
\begin{align*}(g \circ f)^\prime(c)
= \phi_1(c) \phi_2(f(c))
= f^\prime(c) g^\prime(f(c))
\end{align*}
```

which is exactly {eq}`eq:9`.

````

````{admonition} Exercise 4.3
:name: ex:2

Calculate the derivative of

```{math}
\begin{align*}
g(x) = x \sin\frac{1}{x}\ind\{x \neq 0\}\end{align*}
```

for $x \neq 0$. Does the derivative exist at $x = 0$?

````

````{admonition} Exercise 4.4
:name: ex:3

Calculate the derivative of

```{math}
\begin{align*}
f(x) = x^2 \sin\frac{1}{x^2}\ind\{x \neq 0\}\end{align*}
```

for all $x \in \R$. Recall we have already calculated its derivative at $x = 0$ in {ref}`Exercise 4.2<ex:1>`, which is $f^\prime(0) = 0$.

[Hint: Make use of the result in {ref}`Exercise 4.3<ex:2>` and the chain rule ({prf:ref}`thm:4`).]
````
