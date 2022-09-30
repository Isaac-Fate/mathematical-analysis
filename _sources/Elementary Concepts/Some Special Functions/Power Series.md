# Power Series


In this section, we study the properties of power series, i.e., the function of the form 

```{math}
\begin{align*}
f(x) = \sum c_n x^n
\end{align*}
```

where $c_n, x \in\R$. The reason why we confine ourselves to real values is that we have only defined differentiation and integration in the real field.


````{prf:theorem}
:label: thm:18

Suppose that the power series 

```{math}
\begin{align*}\sum_{n=0}^{\infty} c_n x^n
\end{align*}
```

converges for $\abs{x} < R$ where $c_n, x \in\R$ and $R > 0$. Define 

```{math}
\begin{align*}
f(x) = \sum_{n=0}^{\infty} c_n x^n
\end{align*}
```

Then $f$ converges uniformly on $[-R + \varepsilon, R - \varepsilon]$ for any $\varepsilon\in(0, R)$. Moreover, $f$ is differentiable in the interval $(-R, R)$, and 

```{math}
\begin{align*}
f^\prime(x) = \sum_{n=1}^{\infty} n c_n x^{n-1}\end{align*}
```

````

````{prf:proof}
TODO
````

````{prf:corollary}
:label: cor:2

The power series $f(x) = \sum_{n=0}^\infty c_n x^n$(which converges for $x \in(-R, R)$, $R > 0$) has derivatives of all orders in $(-R, R)$, which are given by 

```{math}
:label: eq:33
\begin{align}
f^{(k)}(x)
= \sum_{n=k}^\infty\left( \prod_{i=0}^{k-1}(n-i)\right) c_n x^{n-k}
= \sum_{n=k}^\infty n(n-1) \cdots(n-k+1) c_n x^{n-k}\end{align}
```

where $k \in\N$($f^{(0)}$ means $f$). Furthermore, putting $x = 0$ in {eq}`eq:33`, we obtain the equality

```{math}
:label: eq:34
\begin{align}
c_n = \frac{f^{(n)}(0)}{n!}\end{align}
```

````
## Negative Binomial Theorem


It is well known that 

```{math}
\begin{align*}\frac{1}{1-x} = \sum_{k=0}^\infty x^k
\quad -1 < x < 1
\end{align*}
```

The right-hand side is a geometric series, and we can easily compute its explicit value, which equals the left-hand side. The Negative Binomial Theorem is a generalization for it states the power series representation of the function $\frac{1}{(1-x)^n}$.


````{prf:theorem} Negative Binomial Theorem
:label: thm:16

We have the following identity:

```{math}
:label: eq:30
\begin{align}\frac{1}{(1-x)^n}
= \sum_{k=0}^\infty\binom{n+k-1}{k} x^k
\end{align}
```

where $x \in\R$, $\abs{x} < 1$ and $n \in\Ns$. Moreover, the power series on right-hand side of {eq}`eq:30` converges only when $\abs{x} < 1$.

````

````{prf:proof}

Let

```{math}
\begin{align*}
f(x) = \frac{1}{1-x}\quad -1 < x < 1
\end{align*}
```

The $(n-1)$-th order of derivative of $f$ is 

```{math}
:label: eq:40
\begin{align}
f^{(n-1)}(x) = \frac{(n-1)!}{(1-x)^{n}}\end{align}
```

On the other hand, applying {eq}`eq:33` in {prf:ref}`cor:2`, we obtain 

```{math}
:label: eq:41
\begin{align}
f^{(n-1)}(x) = \sum_{k=n-1}^\infty k(k-1) \cdots(k-n+1) x^{k-n}
= \sum_{k=0}^\infty(k+n-1)(k+n-2) \cdots(k+1) x^{k}\end{align}
```

Comparing {eq}`eq:40` and {eq}`eq:41`, we have 

```{math}
\begin{align*}\frac{(n-1)!}{(1-x)^{n}}
= \sum_{k=0}^\infty(k+n-1)(k+n-2) \cdots(k+1) x^{k}\end{align*}
```

Therefore,

```{math}
\begin{align*}\frac{1}{(1-x)^{n}}
= \sum_{k=0}^\infty\frac{(k+n-1)(k+n-2) \cdots (k+1)}{(n-1)!} x^{k}
= \sum_{k=0}^\infty\binom{n+k-1}{k} x^{k}\end{align*}
```


So far, we have shown {eq}`eq:30` indeed converges in $\abs{x} < 1$. We also need to show that it cannot converge for $\abs{x}\geq 1$. In fact, we only need to show it does not converge for $\abs{x} = 1$ due to {prf:ref}`thm:13`. Suppose $\abs{x} = 1$. We consider the absolute value of each term of the series.

```{math}
:label: eq:42
\begin{align}\abs{\binom{n+k-1}{k} x^k}
= \binom{n+k-1}{k}
= \binom{n+k-1}{n-1}\end{align}
```

Note that the combinatorial number {eq}`eq:42` will tend to $\infty$ as $k \to\infty$. Thus, series {eq}`eq:30` will of course diverge for $\abs{x} = 1$.

````


We note that $\frac{1}{(1-x)^n}$ is obtained by multiplying $\frac{1}{1-x}$ by itself $n-1$ times. It is tempting to multiply the power series $\sum x^k$. Hence, another strategy for proving this theorem is to compute the *Cauchy Product* of these $n$ series $\sum x^k$.



In the alternative proof, we will need an identity from combinatorial mathematics, which is known as the Hockey-Stick Identity.


````{prf:theorem} Hockey-Stick Identity

We have the identity:

```{math}
\begin{align*}\sum_{i=r}^n \binom{i}{r} = \binom{n+1}{r+1}\end{align*}
```

````


Observe the bold numbers in Pascal's Triangle below. 


```{math}
\begin{align*}\begin{array}{c}
1 \\ 
1 \quad 1 \\ 
1 \quad 2 \quad\mathbf{1}\\ 
1 \quad 3 \quad\mathbf{3}\quad 1 \\ 
1 \quad 4 \quad\mathbf{6}\quad 4 \quad 1 \\ 
1 \quad 5 \quad\mathbf{10}\quad 10 \quad 5 \quad 1 \\ 
1 \quad 6 \quad 15 \quad\mathbf{20}\quad 15 \quad 6 \quad 1 \\ 
1 \quad 7 \quad 21 \quad 35 \quad 35 \quad 21 \quad 7 \quad 1
\end{array}
\end{align*}
```


We note that the sum of the numbers on the *slope*($1+3+6+10$) is equal to the number at the bottom ($20$).



The shape of these numbers is like a hockey stick, hence the name of this identity. A quick way to memorize this identity is by associating it with the terminology of the hockey stick. The identity can be then rephrased as the numbers on the *shaft* sum up to the number on the *blade*.


````{prf:proof}
TODO
````


We now provide an alternative proof of the Negative Binomial Theorem as follows.


````{prf:proof}
(**Proof of {prf:ref}`thm:16` using Cauchy Product**) 
We shall prove by induction on $n$.



(Base Case) If $n = 1$, then {eq}`eq:30` is 

```{math}
\begin{align*}\frac{1}{1-x}
= \sum_{k=0}^\infty x^k
\end{align*}
```

which is already known.



(Inductive Step) Assume {eq}`eq:30` holds for $n = m$, we shall prove it also holds for $n = m+1$.
We have 

```{math}
\begin{align*}\frac{1}{1-x}&= \sum_{k=0}^\infty x^k \\\frac{1}{(1-x)^m}&= \sum_{k=0}^\infty\binom{m+k-1}{k} x^k
\end{align*}
```

Note that $\sum x^k$ converges absolutely for $\abs{x} < 1$. Then by {prf:ref}`thm:17`, the Cauchy Product of two series on the right-hand sides converges, and 

```{math}
:label: eq:31
\begin{align}\sum_{k=0}^\infty\sum_{j=0}^k x^{k-j}\binom{m+j-1}{j} x^j
= \sum_{k=0}^\infty x^k \sum_{k=0}^\infty\binom{m+k-1}{k} x^k 
= \frac{1}{1-x}\frac{1}{(1-x)^m}
= \frac{1}{(1-x)^{m+1}}\end{align}
```


We now compute the Cauchy product on the left-hand side of {eq}`eq:31`. 

```{math}
\begin{align*}\sum_{k=0}^\infty\sum_{j=0}^k x^{k-j}\binom{m+j-1}{j} x^j
&= \sum_{k=0}^\infty\sum_{j=0}^k \binom{m+j-1}{j} x^k \\&= \sum_{k=0}^\infty\sum_{j=0}^k \binom{m+j-1}{m-1} x^k \\&= \sum_{k=0}^\infty\sum_{i=m-1}^{m+k-1}\binom{i}{m-1} x^k \\&= \sum_{k=0}^\infty\binom{m+k}{m} x^k 
\quad\text{by \ref{thm:16}}\\&= \sum_{k=0}^\infty\binom{m+k}{k} x^k 
\end{align*}
```

Hence, the Cauchy product equals

```{math}
:label: eq:32
\begin{align}\sum_{k=0}^\infty\sum_{j=0}^k x^{k-j}\binom{m+j-1}{j} x^j
= \sum_{k=0}^\infty\binom{m+k}{k} x^k 
\end{align}
```

It then follows from {eq}`eq:31` and {eq}`eq:32` that 

```{math}
\begin{align*}\frac{1}{(1-x)^{m+1}}
= \sum_{k=0}^\infty\binom{m+k}{k} x^k
\end{align*}
```

which is exactly {eq}`eq:30` with $n=m+1$.

````
## Taylor's Theorem


The Taylor's Theorem states that we can expand a power series as a Taylor series about some point in the interval of convergence.


````{prf:theorem} Taylor's Theorem
:label: thm:19

Suppose power series

```{math}
\begin{align*}
f(x) = \sum_{n=0}^\infty c_n x^n
\end{align*}
```

converges in $\abs{x} < R$($R > 0$). Let $a \in(-R, R)$, then $f(x)$ can be expanded in a power series about point $a$:

```{math}
:label: eq:35
\begin{align}
f(x) = \sum_{n=0}^\infty\frac{f^{(n)}(a)}{n!}(x-a)^n
\end{align}
```

which converges in $\abs{x-a} < R - \abs{a}$.

````

````{prf:remark}

Note that the radius of convergence of the power series {eq}`eq:35` is *at least*$R - \abs{a}$(provided that $R$ is the radius of convergence of $\sum c_n x^n$). It may converge in a larger interval about point $a$. Having said that, there also exists a case that $R - \abs{a}$ is precisely the radius of convergence of {eq}`eq:35`. We will illustrate this in {prf:ref}`eg:3`.

````

````{prf:proof}

To obtain the term $(x-a)$, we apply the Binomial Theorem:

```{math}
:label: eq:36
\begin{align}
f(x) = \sum_{n=0}^\infty c_n x^n
= \sum_{n=0}^\infty c_n \left(a + (x-a)\right)^n
= \sum_{n=0}^\infty\sum_{k=0}^n c_n \binom{n}{k} a^{n-k}(x-a)^k
\end{align}
```

Define 

```{math}
\begin{align*}
p_{nk} := \begin{cases}
c_n \binom{n}{k} a^{n-k} (x-a)^k &k \leq n \\ 
0 &k > n
\end{cases}\end{align*}
```

Then, we can rewrite {eq}`eq:36` as 

```{math}
:label: eq:37
\begin{align}
f(x) = \sum_{n=0}^\infty\sum_{k=0}^\infty p_{nk}\end{align}
```

We intend to apply {prf:ref}`thm:15` to interchange the order of summations in {eq}`eq:37`. To do so, we need to verify 
1. $\sum_{k=0}^\infty\abs{p_{nk}} =: b_n < \infty$
2. $\sum_{n=0}^\infty b_n < \infty$



(Checking $\sum_{k=0}^\infty\abs{p_{nk}} =: b_n < \infty$) We have 

```{math}
\begin{align*}
b_n = \sum_{k=0}^\infty\abs{p_{nk}}&= \sum_{k=0}^n \abs{p_{nk}}\\&= \sum_{k=0}^n \abs{c_n}\binom{n}{k}\abs{a}^{n-k}\abs{x-a}^k \\&= \abs{c_n}\left(\abs{a} + \abs{x-a}\right)^n
\end{align*}
```

Therefore, 

```{math}
:label: eq:38
\begin{align}
b_n = \abs{c_n}\left(\abs{a} + \abs{x-a}\right)^n
\end{align}
```

is indeed a finite number.



(Checking $\sum_{n=0}^\infty b_n < \infty$) Suppose that $\abs{x-a} < R - \abs{a}$. Then there exists some $\varepsilon > 0$ such that 

```{math}
\begin{align*}\abs{a} + \abs{x-a} = R - \varepsilon\end{align*}
```

Applying {eq}`eq:38`, $b_n$ is bounded above by 

```{math}
\begin{align*}
b_n = \abs{c_n}\left(\abs{a} + \abs{x-a}\right)^n
< \abs{c_n}\left(R - \varepsilon\right)^n
\end{align*}
```

Note that {prf:ref}`thm:18` implies that $\sum c_n (R-\varepsilon)^n$ converges absolutely, i.e., $\sum\abs{c_n}\left(R - \varepsilon\right)^n$ converges. It follows that $\sum b_n$ also converges by the Comparison Test. 



Indeed, we are allowed to change the order of summations in {eq}`eq:37`. It then follows that 

```{math}
\begin{align*}
f(x) &= \sum_{n=0}^\infty\sum_{k=0}^\infty p_{nk}\\&= \sum_{k=0}^\infty\sum_{n=0}^\infty p_{nk}\\&= \sum_{k=0}^\infty\sum_{n=k}^\infty c_n \binom{n}{k} a^{n-k}(x-a)^k 
\quad\text{recall definition of $p_{nk}$}\\&= \sum_{k=0}^\infty\frac{f^{(k)}(a)}{k!}(x-a)^k 
\quad\text{putting $x=a$ in \eqref{eq:33}}\end{align*}
```

````

````{prf:example}
:label: eg:3

Let

```{math}
\begin{align*}
f(x) = \frac{1}{1-x} 
= \sum_{n=0}^\infty x^n
\quad -1 < x < 1
\end{align*}
```

The derivatives of $f$ are 

```{math}
\begin{align*}
f^{(n)}(x) = \frac{n!}{(1-x)^{n+1}}\end{align*}
```

We now expand $f(x)$ about some point $a \in(-1, 1)$ using {prf:ref}`thm:19`
```{math}
:label: eq:39
\begin{align}
f(x) = \frac{1}{1-x}
= \sum_{n=0}^\infty\frac{(x-a)^n}{(1-a)^{n+1}}\end{align}
```


The radius of convergence of power series {eq}`eq:39` can be computed in two ways. The first way is by the Root Test.

```{math}
\begin{align*}\limsup_{n \to \infty}\frac{1}{\sqrt[n]{\abs{1-a}^{n+1}}}
= \frac{1}{\abs{1-a}}\end{align*}
```

Hence, the radius of convergence is 

```{math}
\begin{align*}
R = \frac{1}{\limsup_{n \to \infty} \frac{1}{\sqrt[n]{\abs{1-a}^{n+1}}}}
= \abs{1-a}\end{align*}
```

On the other hand, observe that {eq}`eq:39` is a geometric series. Therefore, it converges if and only if 

```{math}
\begin{align*}\abs{\frac{x-a}{1-a}} < 1
\end{align*}
```

That is, $\abs{x-a} < \abs{1-a}$, which implies that the radius of convergence is $\abs{1-a}$.



If $a \geq 0$, then

```{math}
\begin{align*}
R = \abs{1-a} = 1 - \abs{a}\end{align*}
```

which means {eq}`eq:39` only converges in the range that is stated in {prf:ref}`thm:19`.



However, if $a < 0$, then

```{math}
\begin{align*}
R = \abs{1-a} = 1 + \abs{a} > 1 - \abs{a}\end{align*}
```

Therefore, {eq}`eq:39` may converge in a larger range.

````
