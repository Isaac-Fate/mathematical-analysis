# Exponential Function


In this section, we study the exponential function $e^z$ and provide a rigorous formulation.


````{prf:proposition}
:label: pro:3

The series $\sum_{n=0}^\infty\frac{z^n}{n!}$ converges **absolutely** for all $z \in\C$.

````

````{prf:proof}

If $z = 0$, then the conclusion is trivial since the series is equal to $1$. For $z \neq 0$, we apply the Ratio Test ({prf:ref}`thm:24`) to the series $\sum\frac{\abs{z}^n}{n!}$, we have 

```{math}
\begin{align*}\limsup_{n \to \infty}\frac{\abs{z}^{n+1} / (n+1)!}{\abs{z}^n / n!}
= \limsup_{n \to \infty}\frac{\abs{z}}{n+1}
= 0 < 1
\end{align*}
```

````

````{prf:definition}
:label: def:6

Define 

```{math}
:label: eq:50
\begin{align}
E(z) = \sum_{n=0}^\infty\frac{z^n}{n!}\end{align}
```

where $z \in\C$.

````

````{prf:remark}
$E(z)$ is well-defined by {prf:ref}`pro:3`.

````


Since the series in {eq}`eq:50` converges absolutely, we may compute the product of two such series.


````{prf:proposition}
:label: pro:4

Let $E(z)$ be as in {prf:ref}`def:6`. We have 

```{math}
\begin{align*}
E(z)E(w) = E(z + w)
\end{align*}
```

````

````{prf:proof}

By {prf:ref}`thm:17`, the Cauchy product $E(z)E(w)$ converges, and it equals

```{math}
\begin{align*}
E(z)E(w)
&= \sum_{n=0}^\infty\sum_{k=0}^n \frac{z^{n-k}}{(n-k)!}\frac{w^k}{k!}\\&= \sum_{n=0}^\infty\frac{1}{n!}\sum_{k=0}^n \binom{n}{k} z^{n-k} w^k \\&= \sum_{n=0}^\infty\frac{1}{n!}(z+w)^n \\&= E(z+w)
\end{align*}
```

The second last equality follows from the Binomial Theorem, and the last equality follows from {prf:ref}`def:6`.

````

````{prf:proposition}
:label: pro:5

Let $E(z)$ be as in {prf:ref}`def:6`. We have 

```{math}
\begin{align*}
E(z) E(-z) = 1
\end{align*}
```

If we confine ourselves to real variables, we have 
1. $\lim_{x\to\infty} E(x) = \infty$, i.e, $E(\infty) = \infty$
2. $\lim_{x\to -\infty} E(x) = 0$, i.e., $E(-\infty) = 0$


where $x \in\R$.

````
## Complex Exponents


We are going to define

```{math}
\begin{align*}
e^z := E(z)
\end{align*}
```

where $z \in\C$. But keep in mind that we have already defined *rational* exponents. (*Irrational* exponents are not defined.) Therefore, we have to verify the consistency of the definition of complex exponents by checking 

```{math}
\begin{align*}
e^r = E(r)
\end{align*}
```

where $r \in Q$.


````{prf:proposition}

Let $E(z)$ be as in {prf:ref}`def:6`, and $r \in\Q$ a rational number. Then, 

```{math}
\begin{align*}(E(z))^r = E(r z)
\end{align*}
```

In particular, 

```{math}
\begin{align*}
e^r = (E(1))^r = E(r)
\end{align*}
```

````

````{prf:proof}

We first prove this proposition for **integer** exponents, that is,

```{math}
:label: eq:51
\begin{align}(E(z))^p = E(p z)
\end{align}
```

where $p \in\Z$. If $p > 0$, then {eq}`eq:51` follows from {prf:ref}`pro:4` and mathematical induction. If $p = 0$, then {eq}`eq:51` also holds since $E(0) = 1$. Finally, if $p < 0$, then by {prf:ref}`pro:5` we have 

```{math}
\begin{align*}
E(p z) E(-p z) = 1
\end{align*}
```

It follows that 

```{math}
\begin{align*}
E(p z) (E(z))^{-p} = 1
\end{align*}
```

since $-p > 0$. Then, multiplying both sides by $E(z)^p$, we have 

```{math}
\begin{align*}
E(p z) = (E(z))^p
\end{align*}
```

Therefore, we have proved {eq}`eq:51` for $p \in\Z$.



Let $r \in\Q$. $r$ can be written as 

```{math}
\begin{align*}
r = \frac{p}{q}\end{align*}
```

where $p \in\Z$ and $q \in\Ns$. By applying {eq}`eq:51` two times, we obtain

```{math}
\begin{align*}(E(r z))^q = (E(\frac{p}{q} z))^q
= E(p z)
= (E(z))^p
\end{align*}
```

Therefore,

```{math}
\begin{align*}
E(r z) = (E(z))^{p/q} = (E(z))^r
\end{align*}
```

````


We are now safe to define $e^z$ as follows.


````{prf:definition}

Define 

```{math}
\begin{align*}
e^z = E(z)
\end{align*}
```

where $E(z)$ is as in {prf:ref}`def:6`.

````
