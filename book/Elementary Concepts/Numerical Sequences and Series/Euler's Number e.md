# Euler's Number e

````{prf:definition}

The Euler's number $e$ is defined by

```{math}
\begin{align*}
e = \sum_{n=0}^{\infty}\frac{1}{n!}\end{align*}
```

````

````{prf:remark}

We can easily verify that $e$ is well-defined, i.e., the series on the right-hand side converges by using the ratio test.

````


Note that $e$ can be regard as the value of the exponential function $e^z$ with $z = 0$. The definition of the exponential function will be introduced in a later section.



The major goal of this section is to prove a very important limit 


```{math}
\begin{align*}\lim_{n \to \infty}\left( 1 + \frac{1}{n}\right)^n = e
\end{align*}
```

````{prf:lemma}

The sequence $\left\{\left( 1 + \frac{a}{n}\right)^n \right\}$ is increasing where $a > 0$.

````

````{prf:proof}

Sorry.

````

````{prf:theorem}

The sequence $\left\{\left( 1 + \frac{1}{n}\right)^n \right\}$ is increasing.

````

````{prf:lemma}
:label: lem:1

The sequence $\left\{\left(1+\frac{1}{n}\right)^n\right\}$ is bounded above by the sequence of partial sums of $\sum\frac{1}{n!}$, i.e., 

```{math}
\begin{align*}\left(1+\frac{1}{n}\right)^n \leq\sum_{k=0}^{n}\frac{1}{k!}\end{align*}
```

where $n \geq 1$. The inequality is strict when $n \geq 2$.

````

````{prf:proof}

If $n = 1$, then the equality holds. Now, suppose that $n \geq 2$.
Apply the binomial expansion to $\left(1+\frac{1}{n}\right)^n$, and we will obtain

```{math}
\begin{align*}\left(1+\frac{1}{n}\right)^n 
&= \sum_{k=0}^{n}\binom{n}{k}\frac{1}{n^k}\\&= 2 + \sum_{k=2}^{n}\frac{1}{k!}\frac{n(n-1) \cdots (n-k+1)}{n^k}\\&= 2 + \sum_{k=2}^{n}\frac{1}{k!}\left(1 - \frac{1}{n}\right) \cdots\left(1 - \frac{k-1}{n}\right) \\&< 2 + \sum_{k=2}^{n}\frac{1}{k!}
= \sum_{k=0}^{n}\frac{1}{k!}\end{align*}
```

````

````{prf:theorem}

The sequence $\left\{\left(1+\frac{1}{n}\right)^n\right\}$ converges to $e$, i.e., 

```{math}
\begin{align*}\lim_{n \to \infty}\left( 1 + \frac{1}{n}\right)^n = e
\end{align*}
```

````

````{prf:proof}

Let $e_n = \left(1+\frac{1}{n}\right)^n $. We first apply the upper limits on both sides of the inequality proved in {prf:ref}`lem:1`. We have

```{math}
:label: eq:1
\begin{align}\limsup_{n \to \infty} e_n
\leq\limsup_{n \to \infty}\sum_{k=0}^n \frac{1}{k!} 
= \sum_{k=0}^\infty\frac{1}{k!}
= e
\end{align}
```

On the other hand, we apply the binomial expansion to $e_n$($n \geq 2$) in the same manner as in the proof of {prf:ref}`lem:1`, 
we obtain

```{math}
:label: eq:2
\begin{align}
e_n
= 2 + \sum_{k=2}^{n}\frac{1}{k!}\left(1 - \frac{1}{n}\right) \cdots\left(1 - \frac{k-1}{n}\right)
\geq 2 + \sum_{k=2}^{m}\frac{1}{k!}\left(1 - \frac{1}{n}\right) \cdots\left(1 - \frac{k-1}{n}\right)
\end{align}
```

where $m$($m \geq 2$) is some integer less than or equal to $n$. Let $m$ be fixed for now, and then take the lower limit concerning $n$ on both sides of {eq}`eq:2`. It follows that 

```{math}
:label: eq:3
\begin{align}\liminf_{n \to \infty} e_n 
\geq 2 + \sum_{k=2}^{m}\frac{1}{k!} 
= \sum_{k=0}^{m}\frac{1}{k!}\end{align}
```

Then by letting $m \to\infty$ on both sides of {eq}`eq:3`, we have

```{math}
:label: eq:4
\begin{align}\liminf_{n \to \infty} e_n 
\geq\sum_{k=0}^{\infty}\frac{1}{k!}
= e
\end{align}
```

Inequalities {eq}`eq:1` and {eq}`eq:4` yield

```{math}
\begin{align*}
e \leq\liminf_{n \to \infty} e_n \leq\limsup_{n \to \infty} e_n \leq e
\end{align*}
```

Therefore, $\left\{e_n\right\}$ indeed converges to $e$.

````


The next theorem shows how rapidly that the series $\sum_{n=0}^\infty\frac{1}{n!}$ converges to $e$. As we can imagine, the tailing terms of this series decrease dramatically. Therefore, we can obtain a fair approximation of $e$ by summing up only the first few terms of the series. 


````{prf:theorem}
:label: thm:5

The difference between the number $e$ and the sum of the first $n$ terms of $\sum\frac{1}{k!}$ is bounded above by $\frac{1}{n! n}$, i.e., 

```{math}
\begin{align*}
0 < e - \sum_{k=0}^{n}\frac{1}{k!} < \frac{1}{n! n}\end{align*}
```

````

````{prf:remark}

When we approximate $e$ with the $11$th ($n = 10$) partial sum of this series, the error is less than $2.76 \times 10^{-8}$, which makes a rather accurate approximation. 

````

````{prf:proof}

The error $e - \sum_{k=0}^{n}\frac{1}{k!}$ can be estimated as follows.

```{math}
\begin{align*}
e - \sum_{k=0}^{n}\frac{1}{k!}&= \sum_{k=n+1}^{\infty}\frac{1}{k!}\\&= \frac{1}{n!}\left(\frac{1}{n+1} + \frac{1}{(n+2)(n+1)} + \cdots\right) \\&\leq\frac{1}{n!}\left(\frac{1}{n+1} + \frac{1}{(n+1)^2} + \cdots\right) \\&= \frac{1}{n!}\sum_{k=1}^\infty\frac{1}{(n+1)^k}\\&= \frac{1}{n! n}\end{align*}
```

````


It is widely known that $e$ is an irrational number. {prf:ref}`thm:5` provides a very neat proof of this result.


````{prf:theorem}
$e$ is an irrational number.

````

````{prf:proof}

We shall prove by contradiction. Assume $e$ is rational, then $e$ can be written as $e = \frac{p}{q}$ where $p, q \in\Ns$. Since $2 < e < 3$, $e$ is clearly not an integer. Hence, $q \geq 2$. It follows from {prf:ref}`thm:5` that

```{math}
\begin{align*}
0 < \frac{p}{q} - \sum_{k=0}^{n}\frac{1}{k!} 
= e - \sum_{k=0}^{n}\frac{1}{k!} 
< \frac{1}{n! n}\end{align*}
```

Put $n = q$. We have

```{math}
:label: eq:5
\begin{align}
0 < \frac{p}{q} - \sum_{k=0}^{q}\frac{1}{k!}
< \frac{1}{q! q}\end{align}
```

Multiply both sides of {eq}`eq:5` by $q!$, 

```{math}
:label: eq:6
\begin{align}
0 < p(q-1)! - \sum_{k=0}^{q}\frac{q!}{k!}
< \frac{1}{q}\leq\frac{1}{2}\end{align}
```

Note that $p(q-1)! - \sum_{k=0}^{q}\frac{q!}{k!}$ is an *integer* since $k!$ divides $q!$ for all $0 \leq k \leq q$. But {eq}`eq:6` implies that $p(q-1)! - \sum_{k=0}^{q}\frac{q!}{k!}$ should be some number between $0$ and $\frac{1}{2}$, which leads to a contradiction.

````
