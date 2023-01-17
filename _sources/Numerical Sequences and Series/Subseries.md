```{index} subseries
```
# Subseries

````{prf:definition}
Let  $f: \N^\ast \to Q \subset \N^\ast$  be a  **injective** / **one-to-one**  function whose domain is  $\N^\ast$  and whose range  $f(\N^\ast) = Q$  is a subset of  $\N^\ast$ . Let  $\sum a_n$  and  $\sum b_n$  be two series such that

```{math}
\begin{align*}
b_n = a_ {f(n)} ,
\quad  n  \in \N ^ \ast
\end{align*}
```

Then we say  $\sum b_n$  is a  **subseries**   of  $\sum a_n$ .
````

To understand the definition, we note that a subseries of $\sum a_n$ can be constructed in the following way. Given a sequence

```{math}
\begin{align*}
a_1, a_2,  \ldots  a_n,  \ldots
\end{align*}
```

We first extract a subsequence $\{a_{k_n}\}$ out of it:

```{math}
\begin{align*}
a_ {k_1} , a_ {k_2} ,  \ldots  a_ {k_n} ,  \ldots
\end{align*}
```

where $k_{n} < k_{n+1} \; \forall n \in \N^\ast$. And then we rearrange this subsequence into

```{math}
\begin{align*}
a_ {g(k_1)} , a_ {g(k_2)} ,  \ldots  a_ {g(k_n)} ,  \ldots
\end{align*}
```

where $g$ is a bijection from $\set{k_n}{n \in \N^\ast}$ to itself. If we define $f(n) = g(k_n)$, then $\sum_{a_{f(n)}}$ is precisely a subseries of $\sum a_n$.


````{prf:example}
Consider the series  $\sum a_n = \sum_{n=1}^\infty i^n$ . We write down its first several terms:

```{math}
\begin{align*}
\sum _ {n=1} ^ \infty  i^n
= i + (-1) + (-i) + 1
+ i + (-1) + (-i) + 1 +  \cdots
\end{align*}
```

Let

```{math}
\begin{align*}
f(n) = 2n - 1 + 2  \times (-1)^ {n-1} ,
\quad  n  \in \N ^ \ast
\end{align*}
```

Note that  $f$  is injective. The following expression of  $f$  is more intuitive:

```{math}
\begin{align*}
f(n) =  \begin{cases}
2n + 1,
&\text{$n$ is odd} \\
2n - 3,
&\text{$n$ is even}
\end{cases}
\end{align*}
```

The first several values of  $f$  are

```{math}
\begin{align*}
f(1) = 3,
\quad
f(2) = 1,
\quad
f(3) = 7,
\quad
f(4) = 5,
\ldots
\end{align*}
```

Hence, the subseries  $\sum a_{f(n)}$  is

```{math}
\begin{align*}
\sum  a_ {f(n)}  = (-i) + i + (-i) + i +  \cdots
\end{align*}
```
````

````{prf:theorem}
If  $\sum a_n$  converges absolutely, then every subseries  $\sum b_n$  also converges absolutely. And we have

```{math}
:label: eq:105
\begin{align}
\abs{\sum_{n=1}^\infty b_n} \leq \sum _ {n=1} ^ \infty \abs{b_n} \leq \sum _ {n=1} ^ \infty \abs{a_n}
\end{align}
```
````

````{prf:proof}
Suppose  $b_k = a_{f(k)} \; k \in \N^\ast$ . Let integer  $n$  be fixed, and let  $N = \max \{ f(1), \ldots, f(n) \}$ . Then we have

```{math}
\begin{align*}
\abs{\sum_{k=1}^n b_k} \leq \sum _ {k=1} ^n  \abs{b_k} \leq \sum _ {k=1} ^N  \abs{a_k} \leq \sum _ {k=1} ^ \infty \abs{a_k}
\end{align*}
```

Since

```{math}
\begin{align*}
\abs{\sum_{k=1}^n b_k} \leq \sum _ {k=1} ^n  \abs{b_k} \leq \sum _ {k=1} ^ \infty \abs{a_k}
\end{align*}
```

holds for every  $n \in \N^\ast$ , we conclude that  $\sum b_n$  converges absolutely. Then by sending  $n \to \infty$ , we see that  {eq}`eq:105`  indeed holds.
````

````{prf:theorem}
TODO
````
