# Uniform Convergence

````{prf:definition}
:label: def:3

We say a sequence of functions $\{f_n\}$ converges **uniformly** on $E$ to a function $f$ if for an arbitrary $\varepsilon > 0$, there exists $N \in\Ns$ such that $n \geq N$ implies 

```{math}
\begin{align*}\abs{f_n(x) - f(x)} < \varepsilon\end{align*}
```

for all $x \in E$.

````


An analogous definition above exists for the series of functions.


````{prf:definition}
:label: def:4

We say a series of functions $\sum f_n$ converges **uniformly** on $E$ to a function $f$ if for an arbitrary $\varepsilon > 0$, there exists $N \in\Ns$ such that $n \geq N$ implies 

```{math}
\begin{align*}\abs{\sum_{m=0}^{n} f_m(x) - f(x)} < \varepsilon\end{align*}
```

for all $x \in E$.

````


The Cauchy criterion for uniform convergence is as follows.


````{prf:theorem}
:label: thm:6

The sequence of functions $\left\{f_n\right\}$, defined on $E$, converges uniformly if and only if for any $\varepsilon > 0$, there exists $N \in\Ns$ such that $m, n \geq N$, $x \in E$ implies 

```{math}
\begin{align*}\abs{f_n(x) - f_m(x)} < \varepsilon\end{align*}
```

````

````{prf:proof}
TODO
````


The following theorem is another criterion for uniform convergence, which provides us with insight into measuring the distance between two functions.


````{prf:theorem}
:label: thm:8

Suppose the sequence of functions $\left\{f_n\right\}$ converges pointwise to $f$ on $E$. Put 

```{math}
\begin{align*}
M_n = \sup_{x \in E}\abs{f_n(x) - f(x)}\end{align*}
```

Then $f_n \to f$ uniformly if and only if $\lim_{n \to \infty} M_n = 0$.

````

````{prf:remark}
$\sup_{x \in E}\abs{f_n(x) - f(x)}$ actually defines a distance function $d(f_n, f)$, which we will discuss in more details later.

````

````{prf:proof}
TODO
````


For series, there is a very convenient test called Weierstrass's M-Test for uniform convergence.


````{prf:theorem}
:label: thm:14

Let $\left\{f_n\right\}$ be a sequence of functions defined on $E$, and suppose 

```{math}
\begin{align*}\abs{f_n(x)}\leq M_n \quad\forall x \in E
\end{align*}
```

Then $\sum f_n$ converges uniformly on $E$ if $\sum M_n$ converges.

````

````{prf:proof}
TODO
````
