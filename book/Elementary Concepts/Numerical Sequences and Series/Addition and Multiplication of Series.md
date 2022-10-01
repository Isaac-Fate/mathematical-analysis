# Addition and Multiplication of Series
## Double Series


In general, we may interchange the order of a finite summation and an infinite one provided that all involved limits exist.


````{prf:proposition}
:label: pro:1

Let $\left\{a_{ij}\right\}$ be a double sequence of complex numbers. If $\sum_{j=1}^\infty a_{ij}$ converges, then the series $\sum_{j=1}^\infty\sum_{i=1}^m a_{ij}$ converges, and

```{math}
\begin{align*}\sum_{i=1}^m \sum_{j=1}^\infty a_{ij}
= \sum_{j=1}^\infty\sum_{i=1}^m a_{ij}\end{align*}
```

````

````{prf:theorem} Interchanging the Order of Summations
:label: thm:15

Let $\left\{a_{ij}\right\}$($a_{ij}\in\C$) be a double series where $i, j \in\Ns$. If 
1. $\sum_{j=1}^\infty\abs{a_{ij}}
= b_i < \infty$
2. $\sum b_i$ converges


(The two conditions above are equivalent to that $\sum_{i=1}^\infty\sum_{j=1}^\infty\abs{a_{ij}} < \infty$.)
Then we have 

```{math}
\begin{align*}\sum_{i=1}^\infty\sum_{j=1}^\infty a_{ij}
= \sum_{j=1}^\infty\sum_{i=1}^\infty a_{ij}\end{align*}
```

````

````{prf:remark}

We will provide another more interesting proof later using the continuity of the sequence of functions.

````

````{prf:proof}

We first verify the following:

```{math}
\begin{align*}&\sum_{j=1}^\infty a_{ij}\;\text{converges absolutely}\;\forall i \in\Ns\\&\sum_{i=1}^\infty a_{ij}\;\text{converges absolutely}\;\forall j \in\Ns\\&\sum_{i=1}^\infty\sum_{j=1}^\infty a_{ij}\;\text{converges (as a series consisting of terms $\left \{\sum_{j=1}^\infty a_{ij}\right \}_{i \in \Ns}$)}\end{align*}
```

By the given condition $\sum_{j=1}^\infty\abs{a_{ij}} = b_i < \infty$, $\sum_{j=1}^\infty a_{ij}$ converges absolutely for all $i \in\Ns$. 
For each $j \in\Ns$, we have

```{math}
\begin{align*}
a_{ij}\leq\abs{a_{ij}}\leq\sum_{j=1}^\infty\abs{a_{ij}} 
= b_i
\end{align*}
```

Because $\sum b_i$ converges, $\sum_{i=1}^\infty\abs{a_{ij}}$ also converges by the Comparison Test. It follows that $\sum_{i=1}^\infty a_{ij}$ converges absolutely for each $j \in\Ns$.
Finally, we note that 

```{math}
\begin{align*}\abs{\sum_{j=1}^\infty a_{ij}}\leq\sum_{j=1}^\infty\abs{a_{ij}}
= b_i
\end{align*}
```

And $\sum b_i$ converges. Applying the Comparison Test, we conclude $\sum_{i=1}^\infty\sum_{j=1}^\infty a_{ij}$ converges as a series consisting of terms $\left\{\sum_{j=1}^\infty a_{ij}\right\}_{i \in \Ns}$.



Given $\varepsilon > 0$, there exists $N_i \in\Ns$ such that 

```{math}
:label: eq:20
\begin{align}\sum_{j=N_i}^\infty\abs{a_{ij}} < \frac{\varepsilon}{2^{i+2}}\quad\forall i \in\Ns\end{align}
```

since $\sum_{j=1}^\infty a_{ij}$ converges absolutely.
There also exists $M \in\Ns$ such that

```{math}
:label: eq:21
\begin{align}\sum_{i=M}^\infty b_i < \frac{\varepsilon}{4}\end{align}
```

since $\sum b_i$ converges.
Let $N \in\Ns$ be given by 

```{math}
:label: eq:22
\begin{align}
N = \max\left\{M, N_1, \ldots, N_M\right\}\end{align}
```


We now estimate the difference between $\sum_{i=1}^m \sum_{j=1}^\infty a_{ij}$ and $\sum_{i=1}^N \sum_{j=1}^N a_{ij}$ where $m > N$. We have 

```{math}
\begin{align*}\abs{
\sum_{i=1}^m \sum_{j=1}^\infty a_{ij}
- \sum_{i=1}^N \sum_{j=1}^N a_{ij}
}&= \abs{
\sum_{i=1}^N \sum_{j=N+1}^\infty a_{ij}
+ \sum_{i=N+1}^m \sum_{j=1}^\infty a_{ij}
}\\&\leq\sum_{i=1}^N \sum_{j=N+1}^\infty\abs{a_{ij}}
+ \sum_{i=N+1}^m \sum_{j=1}^\infty\abs{a_{ij}}\\&< \sum_{i=1}^N \frac{\varepsilon}{2^{i+2}}
+ \sum_{i=N+1}^m b_i
\quad\text{by \eqref{eq:20} and \eqref{eq:22}}\\&\leq\sum_{i=1}^\infty\frac{\varepsilon}{2^{i+2}}
+ \sum_{i=N+1}^m b_i \\&= \frac{\varepsilon}{4} + \sum_{i=N+1}^m b_i \\&< \frac{\varepsilon}{4} + \frac{\varepsilon}{4}\quad\text{by \eqref{eq:21} and \eqref{eq:22}}\\&= \frac{\varepsilon}{2}\end{align*}
```

In summary, we have 

```{math}
:label: eq:23
\begin{align}\abs{
\sum_{i=1}^m \sum_{j=1}^\infty a_{ij}
- \sum_{i=1}^N \sum_{j=1}^N a_{ij}
} < \frac{\varepsilon}{2}\end{align}
```


We then estimate the difference between $\sum_{j=1}^n \sum_{i=1}^\infty a_{ij}$ and $\sum_{j=1}^N \sum_{i=1}^N a_{ij}$ where $n > N$ in the similar manner.
Likewise, we have 

```{math}
\begin{align*}\abs{
\sum_{j=1}^n \sum_{i=1}^\infty a_{ij}
- \sum_{j=1}^N \sum_{i=1}^N a_{ij}
}&= \abs{
\sum_{j=1}^N \sum_{i=N+1}^\infty a_{ij}
+ \sum_{j=N+1}^m \sum_{i=1}^\infty a_{ij}
}\\&\leq\sum_{j=1}^N \sum_{i=N+1}^\infty\abs{a_{ij}}
+ \sum_{j=N+1}^m \sum_{i=1}^\infty\abs{a_{ij}}\\&= \sum_{i=N+1}^\infty\sum_{j=1}^N \abs{a_{ij}}
+ \sum_{i=1}^\infty\sum_{j=N+1}^m \abs{a_{ij}}\quad\text{by \ref{pro:1}}\\&\leq\sum_{i=N+1}^\infty\sum_{j=1}^\infty\abs{a_{ij}}
+ \sum_{i=1}^\infty\sum_{j=N+1}^m \abs{a_{ij}}\\&= \sum_{i=N+1}^\infty b_i
+ \sum_{i=1}^\infty\sum_{j=N+1}^m \abs{a_{ij}}\\&< \frac{\varepsilon}{4}
+ \sum_{i=1}^\infty\sum_{j=N+1}^m \abs{a_{ij}}\quad\text{by \eqref{eq:21} and \eqref{eq:22}}\\&< \frac{\varepsilon}{4}
+ \sum_{i=1}^\infty\frac{\varepsilon}{2^{i+2}}\quad\text{by \eqref{eq:20} and \eqref{eq:22}}\\&= \frac{\varepsilon}{4} + \frac{\varepsilon}{4}\\&= \frac{\varepsilon}{2}\end{align*}
```

Therefore, 

```{math}
:label: eq:24
\begin{align}\abs{
\sum_{j=1}^n \sum_{i=1}^\infty a_{ij}
- \sum_{j=1}^N \sum_{i=1}^N a_{ij}
}&= \abs{
\sum_{j=1}^N \sum_{i=N+1}^\infty a_{ij}
+ \sum_{j=N+1}^m \sum_{i=1}^\infty a_{ij}
} < \frac{\varepsilon}{2}\end{align}
```


We are now ready to estimate the difference between $\sum_{i=1}^m \sum_{j=1}^\infty a_{ij}$ and $\sum_{j=1}^n \sum_{i=1}^\infty a_{ij}$($m, n > N$), which is the central goal of this proof. Indeed, we have 

```{math}
\begin{align*}\abs{
\sum_{i=1}^m \sum_{j=1}^\infty a_{ij}
- \sum_{j=1}^n \sum_{i=1}^\infty a_{ij}
}&\leq\abs{
\sum_{i=1}^m \sum_{j=1}^\infty a_{ij}
- \sum_{i=1}^N \sum_{j=1}^N a_{ij}
} + \abs{
\sum_{j=1}^n \sum_{i=1}^\infty a_{ij}
- \sum_{j=1}^N \sum_{i=1}^N a_{ij}
}\\&< \frac{\varepsilon}{2} + \frac{\varepsilon}{2}\quad\text{by \eqref{eq:23} and \eqref{eq:24}}\\&= \varepsilon\end{align*}
```

In summary,

```{math}
:label: eq:25
\begin{align}\abs{
\sum_{i=1}^m \sum_{j=1}^\infty a_{ij}
- \sum_{j=1}^n \sum_{i=1}^\infty a_{ij}
} < \varepsilon\quad\forall m, n > N
\end{align}
```

Letting $m \to\infty$ in {eq}`eq:25`,

```{math}
:label: eq:26
\begin{align}\abs{
\sum_{i=1}^\infty \sum_{j=1}^\infty a_{ij}
- \sum_{j=1}^n \sum_{i=1}^\infty a_{ij}
} < \varepsilon\quad\forall n > N
\end{align}
```

Note that we are allowed to do so (letting $m \to\infty$) because $\sum_{i=1}^\infty\sum_{j=1}^\infty a_{ij}$ converges.
Then {eq}`eq:26` implies that the limit of $\sum_{j=1}^n \sum_{i=1}^\infty a_{ij}$ exists as $n \to\infty$, and 

```{math}
\begin{align*}\sum_{i=1}^\infty\sum_{j=1}^\infty a_{ij}
= \sum_{j=1}^\infty\sum_{i=1}^\infty a_{ij}\end{align*}
```

````


The following example shows that we may not change the order of infinite summations at will in general.


````{prf:example}

Let $\left\{a_{ij}\right\}_{i,j \in \Ns}$ be given by 

```{math}
\begin{align*}
a_{ij} = \begin{cases}
0 &i < j \\ 
-1 &i = j \\ 
2^{j-i} &i > j 
\end{cases}\end{align*}
```

We list a few terms to get a better intuition:

```{math}
\begin{align*}\begin{array}{rrrrrr}
-1 & 0 & 0 & 0 & 0 & \cdots\\\frac{1}{2}& -1 & 0 & 0 & 0 & \cdots\\\frac{1}{4}& \frac{1}{2}& -1 & 0 & 0 & \cdots\\\frac{1}{8}& \frac{1}{4}& \frac{1}{2}& -1 & 0 & \cdots\\\vdots& \vdots& \vdots& \vdots& \vdots&
\end{array}
\end{align*}
```

Summing up each row, we have 

```{math}
\begin{align*}\sum_{j=1}^\infty a_{ij}
= \begin{cases}
-1 &i=1 \\ 
-1 + \sum_{j=1}^{i-1} 2^{j-i} &i>1
\end{cases}
= -2^{1-i}\end{align*}
```

It then follows that 

```{math}
:label: eq:27
\begin{align}\sum_{i=1}^\infty\sum_{j=1}^\infty a_{ij}
= \sum_{i=1}^\infty -2^{1-i}
= -2
\end{align}
```

On the other hand, if we first sum up each column, then we have 

```{math}
\begin{align*}\sum_{i=1}^\infty a_{ij}
= -1 + \sum_{i=j+1}^\infty 2^{j-i}
= 0
\end{align*}
```

Therefore,

```{math}
:label: eq:28
\begin{align}\sum_{j=1}^\infty\sum_{i=1}^\infty a_{ij}
= \sum_{i=1}^\infty 0
= 0
\end{align}
```

Clearly, the right-hand sides of {eq}`eq:27` and {eq}`eq:28` are not equal to each other.



We can further check which condition of {prf:ref}`thm:15` that $\left\{a_{ij}\right\}$ fails to satisfy. We have

```{math}
\begin{align*}\sum_{j=1}^\infty\abs{a_{ij}}
= \begin{cases}
1 &i=1 \\ 
1 + \sum_{j=1}^{i-1} 2^{j-i} &i>1
\end{cases}
= 2 - 2^{1-i} =: b_i
\end{align*}
```

Therefore, the first condition of {prf:ref}`thm:15` is satisfied. But 

```{math}
\begin{align*}\sum_{i=1}^\infty b_i
= \sum_{i=1}^\infty(2 - 2^{1-i})
= \infty\end{align*}
```

which means $\sum b_i$ does not converge.

````


We can always interchange the order of summations for non-negative terms.


````{prf:corollary}

Let $\left\{a_{ij}\right\}$ be a sequence of non-negative terms, i.e., $a_{i,j}\geq 0$. Then 

```{math}
\begin{align*}\sum_{i}\sum_{j} a_{ij} 
= \sum_{j}\sum_{i} a_{ij}\end{align*}
```

The case $\infty = \infty$ may occur.

````

````{prf:remark}

Note that we do not rule out $\infty$ in this corollary. And actually, we only need to prove the case where $\infty$ occurs.

````

````{prf:proof}

We shall consider three cases.



(Case 1) Suppose that $\sum_{j} a_{ij} = \infty$ for some $i$. Then, on the one hand, it is clear that 

```{math}
\begin{align*}\sum_{i}\sum_{j} a_{ij} = \infty\end{align*}
```

On the other hand, since $\sum_{i} a_{ij}\geq a_{ij}$, we have 

```{math}
\begin{align*}\sum_{j}\sum_{i} a_{ij}\geq\sum_{j} a_{ij} = \infty\end{align*}
```

Therefore, $\sum_{j}\sum_{i} a_{ij} = \infty$, and hence 

```{math}
\begin{align*}\sum_{i}\sum_{j} a_{ij} 
= \sum_{j}\sum_{i} a_{ij}
= \infty\end{align*}
```


(Case 2) Suppose that $\sum_{j} a_{ij} = b_i < \infty$ for all $i$, and $\sum b_i = \infty$(i.e., $\sum_i \sum_j a_{ij} = \infty$). We need to show that $\sum_j \sum_i a_{ij} = \infty$. Choose some $m \in\Ns$, we have 

```{math}
\begin{align*}\sum_{j=1}^\infty\sum_{i=1}^\infty a_{ij}&\geq\sum_{j=1}^\infty\sum_{i=1}^m a_{ij}\\&= \sum_{i=1}^m \sum_{j=1}^\infty a_{ij}\quad\text{by \ref{pro:1}}\\&= \sum_{i=1}^m b_i
\end{align*}
```

Therefore,

```{math}
:label: eq:29
\begin{align}\sum_{j=1}^\infty\sum_{i=1}^\infty a_{ij}\geq\sum_{i=1}^m b_i 
\quad\forall m \in\Ns\end{align}
```

Letting $m \to\infty$ on both sides of {eq}`eq:29`, we obtain 

```{math}
\begin{align*}\sum_{j=1}^\infty\sum_{i=1}^\infty a_{ij}\geq\sum_{i=1}^\infty b_i
= \infty\end{align*}
```

which further implies $\sum_{j=1}^\infty\sum_{i=1}^\infty a_{ij} = \infty$.
Hence, 

```{math}
\begin{align*}\sum_{i}\sum_{j} a_{ij} 
= \sum_{j}\sum_{i} a_{ij}
= \infty\end{align*}
```


(Case 3) The only case left is that $\sum_{j} a_{ij} = b_i < \infty$ for all $i$, and $\sum b_i$ converges. Then the conclusion follows directly from {prf:ref}`thm:15`.

````
## Cauchy Product

````{prf:theorem} Mertens's Theorem on Cauchy Product
:label: thm:17

Suppose that $\sum a_n$ and $\sum b_n$ are both convergent series, and **at least one** of them converges **absolutely**. Then their Cauchy product $\sum c_n$ converges and 

```{math}
\begin{align*}\sum c_n = \sum a_n \sum b_n
\end{align*}
```

````

````{prf:remark}

Note that the requirement of at least one series being absolutely convergent is only a sufficient condition. We will see in {prf:ref}`eg:2` that it is possible the Cauchy product of two conditionally convergent series also converges.

````

````{prf:proof}
TODO

````

````{prf:example}
:label: eg:2

Let $\sum a_n$ and $\sum b_n$ both be the series $\sum\frac{(-1)^n}{n}$(the term index starts from $1$), which is a classical conditionally convergent series. But their Cauchy product $\sum c_n$ is actually convergent. By the definition, the formula of each term $c_n$ is 

```{math}
\begin{align*}
c_n &= \sum_{k=1}^n \frac{(-1)^k}{k}\cdot\frac{(-1)^{n-k+1}}{n-k+1}\\&= \sum_{k=1}^n \frac{(-1)^{n+1}}{k(n-k+1)}\\&= \frac{(-1)^{n+1}}{n+1}\sum_{k=1}^n \left( \frac{1}{k} + \frac{1}{n-k+1}\right) \\&= \frac{(-1)^{n+1} \cdot 2}{n+1}\sum_{k=1}^n \frac{1}{k}\end{align*}
```

After simplification, the expression for $c_n$ turns to 

```{math}
\begin{align*}
c_n = \frac{(-1)^{n+1} \cdot 2}{n+1}\sum_{k=1}^n \frac{1}{k}\end{align*}
```


Hence, $\sum c_n$ is clearly an alternating series. We shall then prove $\sum c_n$ converges by the Alternating Series Test. We need to show two things:
1. $\left\{\abs{c_n}\right\}$ decrease monotonically, i.e., $\abs{c_n}\geq\abs{c_{n+1}}$
2. $\lim_{n \to \infty}\abs{c_n} = 0$



Note that 

```{math}
\begin{align*}\frac{\abs{c_{n+1}}}{\abs{c_n}}&= \frac{n+1}{n+2}\cdot\frac{1 + \cdots + \frac{1}{n} + \frac{1}{n+1}}{1 + \cdots + \frac{1}{n}}\\&= \frac{n+1}{n+2}\cdot\left( 1 + \frac{\frac{1}{n+1}}{1 + \cdots + \frac{1}{n}}\right) \\&= \frac{n+1}{n+2} + \frac{1}{(n+2) (1 + \cdots + \frac{1}{n})}\\&\leq\frac{n+1}{n+2} + \frac{1}{n+2}\\&= 1
\end{align*}
```

Therefore, 

```{math}
\begin{align*}\abs{c_n}\geq\abs{c_{n+1}}\quad\forall n \in\Ns\end{align*}
```

Moreover, the inequality becomes strict when $n \geq 2$, i.e., $\abs{c_n} > \abs{c_{n+1}}\;\forall n \geq 2$.



Furthermore, we also need to show that $\left\{\abs{c_n}\right\}$ converges to $0$. Since $\left\{c_n\right\}$ decreases monotonically, and it is bounded below by $0$, we know that there exists a limit. Now, we show that this limit is precisely $0$. Consider the subsequence $\left\{\abs{c_{2^{n-1}}}\right\}$:

```{math}
\begin{align*}\abs{c_{2^{n-1}}}&= \frac{2}{2^{n-1} + 1}\left( 1 + \frac{1}{2} + \frac{1}{3} + \frac{1}{4} + \frac{1}{5} + \frac{1}{6} + \frac{1}{7} + \cdots + \frac{1}{2^{n-1}}\right) \\&< \frac{2}{2^{n-1} + 1}\left( 1 
+ \frac{1}{2} + \frac{1}{2} 
+ \frac{1}{4} + \frac{1}{4} + \frac{1}{4} + \frac{1}{4} + \cdots 
+ \frac{1}{2^{n-1}} + \cdots + \frac{1}{2^{n-1}}\right) \\&= \frac{2}{2^{n-1} + 1}\left( 1 
+ 2 \cdot\frac{1}{2}
+ 4 \cdot\frac{1}{4} 
+ \cdots 
+ 2^{n-1}\cdot\frac{1}{2^{n-1}}\right) \\&= \frac{2n}{2^{n-1} + 1}\end{align*}
```

Since $\frac{2n}{2^{n-1} + 1}\to 0$ as $n \to\infty$, it is clear that $\lim_{n \to \infty}\abs{c_{2^{n-1}}} = 0$. Therefore, the limit of $\left\{\abs{c_n}\right\}$ is also $0$ because it converges and the limit of its subsequence is $0$.



In summary, we have shown $\left\{\abs{c_n}\right\}$ decreases monotonically and converges to $0$. Then by applying the Alternating Series Test, we conclude that $\sum c_n$ indeed converges.

````
