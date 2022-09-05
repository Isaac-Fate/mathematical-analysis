# Characterization of Functions of Bounded Variation
````{prf:lemma} 
:label: lem:3
Let $f$ be of bounded variation on $[a, b]$. Define $V(x) := V_a^x(f)$ ($a \leq x \leq b$). Then 
1.  $V$ is increasing on $[a, b]$
2.  $V-f$ is increasing on $[a, b]$
````
````{prf:proof}
(Proof of 1) By {prf:ref}`thm:32` and {prf:ref}`def:8`, we know $V(x)$ is well-defined, and 
```{math}
\begin{align*}
V(x+h) - V(x) = V_x^{x+h}(f) \geq 0
\end{align*}
```
where $h > 0$. Therefore, $V$ is indeed increasing on $[a, b]$.
\
(Proof of 2) Fix $x \in [a, b]$. Let $h$ be such that $0 \leq x < x+h \leq b$. Let a partition $P$ on $[x, x+h]$ be given by 
```{math}
\begin{align*}
P = \left\{x, x+h\right\}
\end{align*}
```
We have 
```{math}
:label: eq:66
\begin{align}
V_x^{x+h}(P, f) = \abs{f(x+h) - f(x)} 
\leq V_x^{x+h}(f)
\end{align}
```
It then follows from {eq}`eq:66` that 
```{math}
\begin{align*}
(V-f)(x+h) - (V-f)(x)
&= V_x^{x+h}(f) - (f(x+h) - f(x)) \\ 
&\geq V_x^{x+h}(f) - \abs{f(x+h) - f(x)} \\ 
&\geq 0
\end{align*}
```
Hence, $V-f$ is also an increasing function on $[a, b]$.
````
````{prf:theorem} Characterization of Functions of Bounded Variation
:label: thm:33
Let $f$ be a real-valued function on $[a, b]$. Then, the following statements are equivalent.
1.  $f$ is of bounded variation on $[a, b]$.
2.  There exist two increasing functions $f$ and $g$ on $[a, b]$ such that $f = g - h$.
3.  There exist two  **strictly**  increasing functions $f$ and $g$ on $[a, b]$ such that $f = g - h$.
````
````{prf:proof}
(Proof of 1 $\implies$ 2) Let function $V$ be as in {prf:ref}`lem:3`. Then by {prf:ref}`lem:3`, $V$ and $V - f$ are both increasing functions on $[a, b]$. Thus, statement 2 holds since $f = V - (V - f)$.
\
(Proof of 2 $\implies$ 3) Since $f = g - h$, we have 
```{math}
\begin{align*}
f(x) = (g(x) + x) - (h(x) + x)
\end{align*}
```
Then statement 3 follows since $g(x) + x$ and $h(x) + x$ are strictly increasing functions.
\
(Proof of 3 $\implies$ 1) By {prf:ref}`thm:29`, we know that $g$ and $h$ are both of bounded variation on $[a, b]$. Then, by {prf:ref}`thm:31`, the difference of $g$ and $h$, the function $f = g - h$, is also of bounded variation.
````
