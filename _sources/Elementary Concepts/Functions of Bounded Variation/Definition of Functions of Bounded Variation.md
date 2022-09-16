# Definition of Functions of Bounded Variation

````{prf:definition}

Let $f: [a, b]\to\R$ be a function. For a partition $P = \left\{x_0, x_1, \ldots, x_n\right\}$ on $[a, b]$, write

```{math}
\begin{align*}
V(P, f) := \sum_{k=1}^n \abs{\Delta f_k} = \sum_{k=1}^n \abs{f(x_k) - f(x_{k-1})}\end{align*}
```

If there exists $M > 0$ such that

```{math}
\begin{align*}
V(P, f) < M
\end{align*}
```

holds for all partition $P$, then we say $f$ is of bounded variation on $[a, b]$.

````

````{prf:theorem}
:label: thm:30

If $f$ is of bounded variation on $[a, b]$, then $f$ is bounded on $[a, b]$.

````

````{prf:remark}

The converse is not true. That is, if $f$ is a bounded function, then it may not be of bounded variation (see {prf:ref}`eg:4`).

````

````{prf:proof}
:class: dropdown

Pick any $x \in[a, b]$. Consider the partition $P = \left\{a, b\right\}\cup\left\{x\right\}$. Since $f$ is of bounded variation, we have 

```{math}
\begin{align*}\abs{\abs{f(x)} - \abs{f(a)}}\leq\abs{f(x) - f(a)}\leq V(P, f)
< M
\end{align*}
```

where $M$ is a constant which is independent of $x$. It follows that 

```{math}
\begin{align*}\abs{f(x)}\leq\abs{f(a)} + M
\quad\forall x \in[a, b]\end{align*}
```

Therefore, $f$ is bounded on $[a, b]$.

````

````{prf:example}
:label: eg:4

Let $f: [0, 1]\to\R$ be given by 

```{math}
\begin{align*}
f(x) = \begin{cases}
x\cos \frac{\pi}{x} &0 < x \leq 1 \\
0 &x = 0
\end{cases}\end{align*}
```

Note that $f$ is a bounded continuous function on $[0, 1]$. We now show that $f$ is however not of bounded variation. Consider a sequence of partitions 

```{math}
\begin{align*}
P_1 &= \left\{
0, \frac{1}{3}, \frac{1}{2}, 1
\right\}\\ 
P_2 &= \left\{
0, 
\frac{1}{5}, \frac{1}{4},
\frac{1}{3}, \frac{1}{2}, 
1
\right\}\\ 
P_3 &= \left\{
0, 
\frac{1}{7}, \frac{1}{6},
\frac{1}{5}, \frac{1}{4},
\frac{1}{3}, \frac{1}{2}, 
1
\right\}\\&\vdots\\ 
P_n &= \left\{
0, 1
\right\}\cup\bigcup_{k=1}^n \left\{\frac{1}{2k+1}, \frac{1}{2k}\right\}\\&\vdots\end{align*}
```

For partition $P_n$, the sum 

```{math}
\begin{align*}
V(P, f)
&> \sum_{k=1}^n \abs{
f\left (\frac{1}{2k}\right ) 
- f\left (\frac{1}{2k+1}\right )
}\\&= \sum_{k=1}^n \abs{
\frac{1}{2k}\cos(2k\pi) 
- \frac{1}{2k+1}\cos((2k+1)\pi)
}\\&= \sum_{k=1}^n (
\frac{1}{2k}
+ \frac{1}{2k+1}) \\&= \sum_{k=2}^{2n+1}\frac{1}{k}\end{align*}
```

Since the series $\sum\frac{1}{k} = \infty$, we can always find a partition such that the sum $\sum\abs{\Delta f_k}$ exceeds any given positive number. Therefore, $f$ is not of bounded variation on $[0, 1]$ though it is bounded.

````


Recall the definition of uniform continuity. The condition of uniform continuity, to some extent, eliminates the functions that tend to infinity at some points while the condition of bounded variation eliminates the functions that *oscillate*. 


````{prf:theorem}
:label: thm:29

If $f$ is a monotonic function on $[a, b]$, then $f$ is of bounded variation on $[a, b]$.

````

````{prf:proof}
:class: dropdown

Without loss of generality, we assume $f$ is increasing. For any partition $P = \left\{x_0, \ldots, x_n\right\}$ on $[a, b]$, we have 

```{math}
\begin{align*}\sum_{k=1}^n \abs{\Delta f_k}
= \sum_{k=1}^n \abs{f(x_k) - f(x_{k-1})}
= \sum_{k=1}^n f(x_k) - f(x_{k-1})
= f(b) - f(a)
\end{align*}
```

This completes the proof since $f(b) - f(a)$ is independent of $P$.

````
