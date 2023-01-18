```{index} subseries
```
# Subseries

Think about summing up countably many (real or complex) numbers:

```{math}
\begin{align*}
a_1, a_2,  \ldots , a_n,  \ldots
\end{align*}
```

If you do not have to sum them up in order one by one, how many ways can you think of? For example, one way is to first sum up all the terms with odd indices:

```{math}
\begin{align*}
s_1 = a_1 + a_3 +  \cdots  + a_ {2k-1}  +  \cdots
\end{align*}
```

and then all the terms with even indices:

```{math}
\begin{align*}
s_2 = a_2 + a_4 +  \cdots  + a_ {2k}  +  \cdots
\end{align*}
```

Finally, the total sum is $s_1 + s_2$. As a matter of fact, there are more ways of summing these numbers than one can imagine at first thought, some of which may be difficult to describe. The need for a precise description of summing countably many numbers in the way we want gives rise to the concept of **subseries**.

Suppose $s$ is the sum we will obtain by summing up the numbers in the way we like. A natural question to ask is whether $\sum a_n$ converges to $s$. The answer is yes by {prf:ref}`thm:50`, which we will soon show provided that $\sum a_n$ converges absolutely.



````{prf:definition}
Let  $f: \N^\ast \N^\ast$  be an  **injective** / **one-to-one**  function whose domain is  $\N^\ast$  and whose range  $f(\N^\ast)$  is a subset of  $\N^\ast$ . Let  $\sum a_n$  and  $\sum b_n$  be two series such that

```{math}
\begin{align*}
b_n = a_ {f(n)} ,
\quad  n  \in \N ^ \ast
\end{align*}
```

Then we say  $\sum b_n$  is a  **subseries**  of  $\sum a_n$ .
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
:label: thm:49
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

To sum up

```{math}
\begin{align*}
a_1, a_2,  \ldots , a_n,  \ldots
\end{align*}
```

we first *partition* them into several (possibly countably infinitely many) subseries

```{math}
\begin{align*}
\sum _ {n=1} ^ \infty  a_ {f_1(n)} ,  \sum _ {n=1} ^ \infty  a_ {f_2(n)} ,  \ldots ,
\sum _ {n=1} ^ \infty  a_ {f_k(n)} ,  \ldots
\end{align*}
```

After that, we sum up all the subseries. Suppose the final sum is $s$, the next theorem says if $\sum a_n$ converges absolutely, then it must also converge to $s$. In other words, we can sum up an absolutely convergent series in whatever way we want without changing its sum!


````{prf:theorem}
:label: thm:50
Let  $\{f_1, f_2, \ldots\}$  be a countable collection of functions defined on  $\N^\ast$ , each having the following properties:

- (1) $f_k$  is injective,
- (2) the range  $f_k(\N^\ast)$  is a subset of  $\N^\ast$ , and
- (3) the collection of all function ranges form a partition of  $\N^\ast$ , that is,  $\biguplus_{k=1}^\infty f_k(\N^\ast) = \N^\ast$ .

Suppose that  $\sum a_n$  is an absolutely convergent series. Let  $b_k(n)$  be defined by

```{math}
\begin{align*}
b_k(n) = a_ {f_k(n)} ,
\quad
n  \in \N ^ \ast ,  \;
k  \in \N ^ \ast
\end{align*}
```

Then

- (1) each  $\sum_n b_k(n)$  is an absolutely convergent subseries of  $\sum a_n$ , and
- (2) if we let  $s_k = \sum_{n=1}^\infty b_k(n)$ , then  $\sum s_k$  converges absolutely to the same sum as  $\sum a_n$ , that is,  $\sum_{k=1}^\infty s_k = \sum_{n=1}^\infty a_n$ .
````

:::{note}
Pay attention to how the properties of  $f_k$  being injective and  $\biguplus_{k=1}^\infty f_k(\N^\ast)= \N^\ast$  are used in the proof below.
:::

````{prf:proof}
The first statement that  $\sum_n b_k(n)$  is an absolutely convergent subseries of  $\sum a_n$  immediately follows from  {prf:ref}`thm:49` . We now prove 2.

We first show that  $\sum s_k$  converges absolutely. The  $p$ -th partial sum of  $\sum \abs{s_k}$  satisfies

```{math}
\begin{align*}
\sum _ {k=1} ^p  \abs{s_k} &=  \abs{s_1}  +  \cdots  +  \abs{s_p} \\ &=  \abs{ \sum_{n=1}^\infty b_1(n) }  +  \cdots
+  \abs{ \sum_{n=1}^\infty b_p(n) } \\ & \leq \sum _ {n=1} ^ \infty \abs{b_1(n)}  +  \cdots
+  \sum _ {n=1} ^ \infty \abs{b_p(n)} \\ &=  \sum _ {n=1} ^ \infty (  \abs{b_1(n)}  +  \cdots
+  \abs{b_p(n)} )
\end{align*}
```

where the last equality follows from  {prf:ref}`thm:48`  since every series  $\sum_{k} \abs{b_k(n)}$  converges. For any given  $q \in \N^\ast$ , we always have

```{math}
\begin{align*}
\sum _ {n=1} ^q (  \abs{b_1(n)}  +  \cdots
+  \abs{b_p(n)} )
\leq \sum _ {n=1} ^ \infty \abs{a_n}
\end{align*}
```

because  $\sum_{n=1}^q ( \abs{b_1(n)} + \cdots
+ \abs{b_p(n)} )$  is just a sum of finitely many terms of the series  $\sum \abs{a_n}$ . Letting  $q \to \infty$ , we obtain

```{math}
\begin{align*}
\sum _ {k=1} ^p  \abs{s_k} \leq \sum _ {n=1} ^ \infty (  \abs{b_1(n)}  +  \cdots
+  \abs{b_p(n)} )
\leq \sum _ {n=1} ^ \infty \abs{a_n}
\end{align*}
```

Hence, all partial sums of  $\sum \abs{s_k}$  are bounded above by  $\sum_{n=1}^\infty \abs{a_n}$ . Therefore, the series  $\sum \abs{s_k}$  converges, i.e.,  $\sum s_k$  converges absolutely.

Suppose  $\sum a_n$  converges to sum  $a$ . Given  $\varepsilon > 0$ , there exists  $N \in \N^\ast$  such that

```{math}
:label: eq:107
\begin{align}
\abs{\sum_{n=1}^q a_n - s}  <  \varepsilon  / 2
\quad \forall  q  \geq  N
\end{align}
```

For any integer  $j \in \N^\ast$ , there exists a  *unique*  integer  $k \in \N^\ast$  such that

```{math}
\begin{align*}
j  \in  f_k( \N ^ \ast )
\end{align*}
```

since  $\biguplus_{k=1}^\infty f_k(\N^\ast) = \N^\ast$ . (Existence of  $k$  is due to  $\bigcup_{k=1}^\infty f_k(\N^\ast) = \N^\ast$ , and the uniqueness follows from the fact that these function ranges are mutually disjoint.) Furthermore, there exists a  *unique*  integer  $n \in \N^\ast$  such that

```{math}
\begin{align*}
f_k(n) = j
\end{align*}
```

since  $f_k$  is injective. Therefore, any integer  $j$  can uniquely determine a pair  $(k, n)$  and hence we can define a function  $g: \N^\ast \to \N^\ast \times \N^\ast$  by

```{math}
\begin{align*}
g(j) = (k, n)
\end{align*}
```

satisfying

```{math}
\begin{align*}
f_k(n) = j
\end{align*}
```

Recall how we chose the integer  $N$ . Write

```{math}
\begin{align*}
g(1) = (k_1, n_1),  \ldots , g(N) = (k_N, n_N)
\end{align*}
```

Let

```{math}
\begin{align*}
K =  \max \{  k_1,  \ldots , k_N  \} \quad \text{and} \quad
M =  \max \{  n_1,  \ldots , n_N  \}
\end{align*}
```

We claim that

```{math}
:label: eq:106
\begin{align}
\abs{\sum_{k=1}^p \sum_{n=1}^q b_k(n) - s}  <  \varepsilon  / 2
\quad \forall  p  \geq  K  \; \forall  q  \geq  M
\end{align}
```

The proof of  {eq}`eq:106`  is left as an exercise. See  {ref}`Exercise 1<ex:5>` . Letting  $q \to \infty$  in  {eq}`eq:106`  yields

```{math}
\begin{align*}
\abs{\sum_{k=1}^p \sum_{n=1}^\infty b_k(n) - s} \leq \varepsilon  / 2 <  \varepsilon \quad \forall  p  \geq  K
\end{align*}
```

Recall each subseries  $\sum_n b_k(n)$  converges absolutely, and  $s_k = \sum_{n=1}^\infty b_k(n)$ . Hence, we have

```{math}
\begin{align*}
\abs{\sum_{k=1}^p s_k - s}
<  \varepsilon \quad \forall  p  \geq  K
\end{align*}
```

Note that the choice of  $K$  only depends on  $\varepsilon$ (through  $N$ ). Therefore, the series  $\sum s_k$  indeed converges to sum  $a$ .
````

````{admonition} Exercise 1
:name: ex:5
Complete the above proof by proving the inequality  {eq}`eq:106` .
````

````{admonition} Solution
:class: tip, dropdown
For each  $j \in \{1, \ldots, N\}$ , we have  $g(j) = (k, n)$  where  $k$  and  $n$  satisfy

```{math}
\begin{align*}
f_k(n) = j,
\quad  k  \leq  K
\quad \text{and} \quad
n  \leq  M
\end{align*}
```

This implies

```{math}
\begin{align*}
\set{f_k(n)}{1 \leq k \leq p, 1 \leq n \leq q} \supset \{ 1,  \ldots , N \}
\end{align*}
```

provided that  $p \geq K$  and  $q \geq M$ . Inequality  {eq}`eq:106`  then immediately follows from  {eq}`eq:107`  since

```{math}
\begin{align*}
\sum _ {k=1} ^p  \sum _ {n=1} ^q b_k(n)
=  \sum _ {k=1} ^p  \sum _ {n=1} ^q a_ {f_k(n)}
\end{align*}
```

is a sum of terms including the first  $N$  terms of  $\sum a_n$ .
````
