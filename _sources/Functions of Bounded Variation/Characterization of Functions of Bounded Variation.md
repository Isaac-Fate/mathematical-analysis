# Characterization of Functions of Bounded Variation

In fact, all functions of bounded variation can be written as a difference between two increasing functions.



````{prf:lemma}
:label: lem:2

Let $f$ be of bounded variation on $[a, b]$. Define $V(x) := V_a^x(f)$($a \leq x \leq b$). Then
- ➀ $V$ is increasing on $[a, b]$
- ➁ $V-f$ is increasing on $[a, b]$

````

````{prf:proof}
(Proof of 1) By {prf:ref}`thm:34` and {prf:ref}`def:3`, we know $V(x)$ is well-defined, and

```{math}
\begin{align*}
V(x+h) - V(x) = V_x^{x+h}(f) \geq 0
\end{align*}
```

where $h > 0$. Therefore, $V$ is indeed increasing on $[a, b]$.

(Proof of 2) Fix $x \in[a, b]$. Let $h$ be such that $0 \leq x < x+h \leq b$. Let a partition $P$ on $[x, x+h]$ be given by

```{math}
\begin{align*}
P = \{ x, x+h \}\end{align*}
```

We have

```{math}
:label: eq:84
\begin{align}
V_x^{x+h}(P, f) = \abs{f(x+h) - f(x)}\leq V_x^{x+h}(f)
\end{align}
```

It then follows from {eq}`eq:84` that

```{math}
\begin{align*}(V-f)(x+h) - (V-f)(x)
&= V_x^{x+h}(f) - (f(x+h) - f(x)) \\&\geq V_x^{x+h}(f) - \abs{f(x+h) - f(x)}\\&\geq 0
\end{align*}
```

Hence, $V-f$ is also an increasing function on $[a, b]$.

````

````{prf:theorem} Characterization of Functions of Bounded Variation
:label: thm:22

Let $f$ be a real-valued function on $[a, b]$. Then, the following statements are equivalent.
- ➀ $f$ is of bounded variation on $[a, b]$.
- ➁ There exist two increasing functions $g$ and $h$ on $[a, b]$ such that $f = g - h$.
- ➂ There exist two **strictly** increasing functions $g$ and $h$ on $[a, b]$ such that $f = g - h$.

````
