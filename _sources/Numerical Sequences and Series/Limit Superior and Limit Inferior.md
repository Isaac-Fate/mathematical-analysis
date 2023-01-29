
```{index} tail of a sequence
```
# Limit Superior and Limit Inferior

Given a real-valued sequence $\{a_n\}$, sometimes the information about the upper and lower bounds of the *entire* sequence, if they exist, may not be useful for we are often interested in the **tail** of the sequence, which is simply the portion of $\{a_n\}$ after a few indices. To be  specific, the $n$-th tail of $\{a_n\}$ is defined by $\{a_{m+n-1}\}_{m \in \N^\ast}$, and is written as $\{a_m\}_{m \geq n}$ in shorthand.

If $\{a_n\}$ is bounded, we can define two sequences of upper and lower bounds, $\{u_n\}$ and $\{l_n\}$, of the tail $\{a_m\}_{m \geq n}$ by

```{math}
\begin{align*}
u_n = \sup_{m \geq n} a_m
\quad\text{and}\quad
l_n = \inf_{m \geq n} a_m,
\quad n \in\N^\ast\end{align*}
```

To study the limiting behavior of $\{a_n\}$, it is helpful to know how the $n$-th tail $\{a_m\}_{m \geq n}$ is bounded when $n$ is relatively large.

At a first glance, we observe that $\{u_n\}$ is decreasing and $\{l_n\}$ is increasing, which we shall prove in the next lemma.


````{prf:lemma}
:label: lem:5

Let $\{a_n\}$ be a sequence of real numbers.
- ➀ If $\{a_n\}$ is bounded above, for each integer $n \in \N^\ast$ we can define

```{math}
\begin{align*}
u_n = \sup_{m \geq n} a_m,
\quad n \in\N^\ast\end{align*}
```

The sequence $\{u_n\}$ is decreasing.
- ➁ If $\{a_n\}$ is bounded below, for each integer $n \in \N^\ast$ we can define

```{math}
\begin{align*}
l_n = \inf_{m \geq n} a_m,
\quad n \in\N^\ast\end{align*}
```

The sequence $\{l_n\}$ is increasing.

````

````{prf:proof}

We only prove 1. For every $m \in \N^\ast$ with $m \geq n+1$, it is clear

```{math}
\begin{align*}
a_{m}\in\set{a_m}{m \geq n, n \in \N^\ast}\end{align*}
```

Note that $u_n$ is an upper bound of the set on the right-hand side. Hence,

```{math}
\begin{align*}
a_m \leq u_n
\quad\forall m \geq n+1
\end{align*}
```

This implies $u_n$ is also an upper bound of

```{math}
\begin{align*}\set{a_m}{m \geq n+1, n \in \N^\ast}\end{align*}
```

It then follows that $u_{n+1} \leq u_n$ since $u_{n+1}$ is the least upper bound of the set above. Therefore, we have shown

```{math}
\begin{align*}
u_{n}\geq u_{n+1}\quad\forall n \in\N^\ast\end{align*}
```

Hence, $\{u_n\}$ is decreasing.

````
## Definition

By {prf:ref}`thm:57`, we know that the limits of $\{u_n\}$ and $\{l_n\}$ always exist (as finite or infinite numbers). This gives rise to the definitions of limit superior as well as limit inferior. We also take into consideration the cases where $\{a_n\}$ is not bounded.


````{prf:definition}

```{index} limit superior
```

Let $\{a_n\}$ be a sequence of real numbers. The **limit superior** of $\{a_n\}$, denoted by $\limsup_{n \to \infty} a_n$, is defined as follows:
- ➀ $\limsup_{n \to \infty} a_n := \infty$ if $\{a_n\}$ is not bounded above, and
- ➁ $\limsup_{n \to \infty} a_n := \lim_{n \to \infty} u_n$ if $\{a_n\}$ is bounded above where $u_n = \sup_{m \geq n} a_m$.

```{index} limit inferior
```

The **limit inferior** of $\{a_n\}$ is denoted by $\liminf_{n \to \infty} a_n$ and is defined similarly.

````

:::{note}

The notation $\limsup$ consists of two parts, the limit symbol and the supremum symbol. Indeed, as we can see from the definition, this notation arises naturally for we can write

```{math}
\begin{align*}\limsup_{n \to \infty} a_n
= \lim_{n \to \infty}\sup_{m \geq n} a_m
\end{align*}
```

if $\{a_n\}$ is bounded above.

:::

````{prf:example}

Let

```{math}
\begin{align*}
a_n = \brk{1 + \frac{10}{n}}\sin\frac{n \pi}{32}\end{align*}
```

We claim that the limit superior and limit inferior of $\{a_n\}$ are $1$ and $-1$, respectively. See {numref}`fig:12`.


```{figure} /figures/limsup-liminf.png
---
name: fig:12
---
Limit superior and limit inferior of $\{a_n\}$ where $a_n = \brk{1 + \frac{10}{n}} \sin \frac{n \pi}{32}$.

```

Now, we show that the values of limit superior and limit inferior are indeed as claimed. Note that for any given integer $n \in \N^\ast$, we can choose an integer $k$ such that $16 + 64k \geq n$. Let $m = 16 + 64k$. We have

```{math}
\begin{align*}
a_m = \brk{1 + \frac{10}{m}}\sin\frac{(16 + 64k) \pi}{32}
= \brk{1 + \frac{10}{m}}\sin\brk{
\frac{\pi}{2} + 2k\pi
}
= 1 + \frac{10}{m}
> 1
\end{align*}
```

This implies that

```{math}
\begin{align}
u_n = \sup_{m \geq n} a_m > 1
\quad\forall n \in\N^\ast\end{align}
```

which means the sequence $\{u_n\}$ is bounded below by $1$. We know by {prf:ref}`lem:5` that $\{u_n\}$ is decreasing. Thus, by {prf:ref}`thm:57`, $\{u_n\}$ converges to the infimum of its range, $\inf_{n \in \N^\ast} u_n$. We need to show that $\inf_{n \in \N^\ast} u_n = 1$. Given $\varepsilon > 0$, there exists $n \in \N^\ast$ such that $10 / n < \varepsilon/2$. Then, for every $m \geq n$, we have

```{math}
\begin{align*}
1 + \frac{10}{m} < 1 + \varepsilon/2
\end{align*}
```

Because the absolute value of the sine function is bounded by $1$, it follows that

```{math}
\begin{align*}
a_m = \brk{1 + \frac{10}{m}}\sin\frac{m \pi}{32} < 1 + \varepsilon/2
\quad\forall m \geq n
\end{align*}
```

Taking the supremum, we obtain

```{math}
\begin{align*}
u_n = \sup_{m \geq n} a_m
\leq 1 + \varepsilon/2
< 1 + \varepsilon\end{align*}
```

Therefore,

```{math}
\begin{align*}\limsup_{n \to \infty} a_n
= \lim_{n \to \infty} u_n
= \inf_{n \in \N^\ast} u_n = 1
\end{align*}
```

The proof of $\liminf a_n = -1$ is similar and is left as an exercise.

````

When the limit superior/inferior of $\{a_n\}$ is finite, then we have the following equivalent conditions, which may be helpful in proofs.


````{prf:theorem}
:label: thm:58

Let $\{a_n\}$ be a sequence of real numbers. Suppose there exists a (finite) number $u$ satisfying the following two conditions:
- ➀ For every $\varepsilon > 0$, there exists an integer $N$ such that

```{math}
\begin{align*}
a_n < u + \varepsilon\quad\forall n \geq N
\end{align*}
```
- ➁ Given $\varepsilon > 0$ and given an integer $m$, there exists an integer $N \geq m$ such that

```{math}
\begin{align*}
a_N > u - \varepsilon\end{align*}
```

Then $u$ is the limit superior of $\{a_n\}$, i.e., $u = \limsup a_n$. Conversely, if $u = \limsup a_n$ is a finite number, then it satisfies the above conditions. An analogous result exists concerning the limit inferior of $\{a_n\}$.

````

Given $\varepsilon > 0$, the first condition says $u+\varepsilon$ is an upper bound for some $N$-th tail of $\{a_n\}$. In other words, all the terms of $\{a_n\}$ will eventually fall below the number $u + \varepsilon$. While the second condition says there are *infinitely* many terms of $\{a_n\}$ that exceed $u - \varepsilon$.


:::{note}

These two conditions are used to define the limit superior in Apostol's book{cite}`apostolMathematicalAnalysisModern1974`. The problem is that we cannot assume the existence of such a number $u$ if we adopt this definition, although the existence can be proved later. But this would increase the difficulty in understanding the concept of limit superior/inferior.

:::

````{prf:proof}
(Sufficiency) We first assume $u$ satisfies the above two conditions and show that it is indeed the limit superior of $\{a_n\}$. Note that the first condition implies that $\{a_n\}$ is bounded above. Hence, it is feasible to define

```{math}
\begin{align*}
u_n = \sup_{m \geq n} a_m,
\quad n \in\N^\ast\end{align*}
```

By {prf:ref}`lem:5`, we know $\{u_n\}$ is decreasing. Let $m \in \N^\ast$ be fixed for now, by exploiting the second condition, for any $\varepsilon > 0$, there exists an integer $N \geq m$ such that

```{math}
\begin{align*}
a_N > u - \varepsilon\end{align*}
```

It then follows that

```{math}
\begin{align*}
u_m = \sup_{n \geq m} a_n
\geq a_N
> u - \varepsilon\end{align*}
```

Since

```{math}
\begin{align*}
u_m > u - \varepsilon\end{align*}
```

holds for any $\varepsilon > 0$. We have

```{math}
:label: eq:118
\begin{align}
u_m \geq u
\end{align}
```

But $m \in \N^\ast$ is also chosen arbitrarily. Therefore, the above inequality implies that the sequence $\{u_n\}$ is bounded below by $u$.

Next, we show that $u$ is the infimum of the range of $\{u_n\}$. Given $\varepsilon > 0$, by condition 1, there exists $N \in \N^\ast$ such that

```{math}
\begin{align*}
a_n < u + \varepsilon/2
\quad\forall n \geq N
\end{align*}
```

Taking the supremum over $n$, we obtain

```{math}
\begin{align*}
u_N = \sup_{n \geq N} a_n
\leq u + \varepsilon/2
< u + \varepsilon\end{align*}
```

That is,

```{math}
:label: eq:119
\begin{align}
u_N < u + \varepsilon\end{align}
```

It then follows from {eq}`eq:118` and {eq}`eq:119` that

```{math}
\begin{align*}
u = \inf_{n \in \N^\ast} u_n
\end{align*}
```

Recall $\{u_n\}$ is decreasing. Then by {prf:ref}`thm:57`, $\lim u_n$ is precisely the infimum of its range since it is bounded below. Finally, since the limit superior of $\{a_n\}$ is defined by $\lim u_n$, we conclude that $u = \limsup a_n$.

(Necessity) Assume that the limit superior of $\{a_n\}$, $u$, is a finite number. By definition, $\{a_n\}$ is bounded above. Hence, we can again define

```{math}
\begin{align*}
u_n = \sup_{m \geq n} a_m,
\quad n \in\N^\ast\end{align*}
```

And by definition along with the fact that $\{u_n\}$ is decreasing, we have

```{math}
\begin{align*}
u = \lim_{n \to \infty} u_n
= \inf_{n \in \N^\ast} u_n
\end{align*}
```

We need to show $u$ indeed satisfies the two conditions stated in this theorem.

Given $\varepsilon > 0$, since $u = \inf u_n$, there exists $N \in \N^\ast$ such that

```{math}
\begin{align*}
u_N < u + \varepsilon\end{align*}
```

But $u_N = \sup_{n \geq N} a_n$. Therefore,

```{math}
\begin{align*}\sup_{n \geq N} a_n < u + \varepsilon\end{align*}
```

And because $a_n \leq \sup_{n \geq N} a_n \; \forall \geq N$, we have

```{math}
\begin{align*}
a_n < u + \varepsilon\quad\forall n \geq N
\end{align*}
```

This shows that $u$ satisfies condition 1.

Given $\varepsilon > 0$ and $m \in \N^\ast$. Because $u$ is a lower bound of $\{u_n\}$, we have

```{math}
:label: eq:120
\begin{align}\sup_{n \geq m} a_n = u_m \geq u
\end{align}
```

By the property of supremum, there exists an integer $N \geq m$ such that

```{math}
:label: eq:121
\begin{align}
a_N > \sup_{n \geq m} a_n - \varepsilon\end{align}
```

Combining {eq}`eq:120` with {eq}`eq:121`, we find

```{math}
\begin{align*}
a_N > u - \varepsilon\end{align*}
```

which implies that $u$ also satisfies condition 2. This completes the proof.

````
## Properties

````{prf:proposition}

Let $\{a_n\}$ be a sequence of real numbers. Then
- ➀ $\limsup a_n = -\infty \implies \liminf a_n = -\infty$, and
- ➁ $\{a_n\}$ diverges to $-\infty$ if and only if $\limsup a_n = \liminf a_n = -\infty$.

````

````{prf:proof}
(Proof of 1) Note that the fact that the limit superior is not positive infinity implicitly implies that $\{a_n\}$ is bounded above. Define

```{math}
:label: eq:122
\begin{align}
u_n = \sup_{m \geq n} a_m,
\quad n \in\N^\ast\end{align}
```

We have $\lim u_n = -\infty$. Hence, for every $M > 0$, there exists $N \in \N^\ast$ such that

```{math}
\begin{align*}
u_n \leq -M
\quad\forall n \geq N
\end{align*}
```

But $a_n \leq \sup_{m \geq n} a_m = u_n$. It follows that

```{math}
\begin{align*}
a_n \leq -M
\quad\forall n \geq N
\end{align*}
```

This implies $\{a_n\}$ diverges to $-\infty$, that is, $\lim a_n = -\infty$. As a consequence, $\{a_n\}$ is not bounded below. Therefore, $\liminf a_n = -\infty$ by definition.

(Proof of 2) Note that in proving the first statement, we have already shown that $\limsup a_n = \liminf a_n = -\infty$ implies $\lim a_n = -\infty$. We only need to prove the other direction. Suppose $\lim a_n = -\infty$. For every $M > 0$, there exists $N \in \N^\ast$ such that

```{math}
\begin{align*}
a_n \leq -M
\quad\forall n \geq N
\end{align*}
```

:::{note}

Note that the above inequality implies that $\{a_n\}$ is bounded above. Hence, we can again define $\{u_n\}$ as in {eq}`eq:122`.

:::

Taking the supremum over $n$, we obtain

```{math}
\begin{align*}
u_N = \sup_{n \geq N} a_n \leq -M
\end{align*}
```

Note that $\{u_n\}$ is decreasing by {prf:ref}`lem:5`. Hence,

```{math}
\begin{align*}
u_n \leq u_N \leq -M
\quad\forall n \geq N
\end{align*}
```

This implies that $\lim u_n = -\infty$. Therefore, by the definition of limit superior, $\limsup a_n = -\infty$. Then by statement 1, which we have proved earlier, $\liminf a_n = -\infty$.

````

As an analogous result, we also have the following proposition, the proof of which is similar and is left as an exercise.


````{prf:proposition}
:label: pro:4

Let $\{a_n\}$ be a sequence of real numbers. Then
- ➀ $\liminf a_n = \infty \implies \limsup a_n = \infty$, and
- ➁ $\{a_n\}$ diverges to $\infty$ if and only if $\limsup a_n = \liminf a_n = \infty$.

````

````{prf:proposition}
:label: pro:5

Let $\{a_n\}$ be a sequence of real numbers. Then $\{a_n\}$ converges if and only if both limit superior and limit inferior are equal to a finite number. That is,

```{math}
\begin{align*}\lim a_n = a
\iff\limsup a_n = \liminf a_n = a
\end{align*}
```

where $a$ is finite.

````

````{prf:proof}
(Sufficiency) Suppose that the limit superior and limit inferior are equal to a finite number, i.e.,  $\limsup a_n = \liminf a_n = a$. Let $\varepsilon > 0$ be chosen arbitrarily. Because $a$ is the limit superior, by the first condition in {prf:ref}`thm:58`, there exists $N_1 \in \N^\ast$ such that

```{math}
\begin{align*}
a_n < a + \varepsilon\quad\forall n \geq N_1
\end{align*}
```

Similarly, if we treat $a$ as the limit superior, then there exists $N_2 \in \N^\ast$ such that

```{math}
\begin{align}
a_n > a - \varepsilon\quad\forall n \geq N_2
\end{align}
```

Let $N = \max\{N_1, N_2\}$. We have

```{math}
\begin{align*}\abs{a_n - a} < \varepsilon\quad\forall n \geq N
\end{align*}
```

Therefore, $\{a_n\}$ converges to $a$.

(Necessity) Suppose $\{a_n\}$ converges to $a$. Given $\varepsilon > 0$, there exists $N \in \N^\ast$ such that

```{math}
\begin{align*}\abs{a_n - a} < \varepsilon\quad\forall n \geq N
\end{align*}
```

We have
- ➀ $a_n < a + \varepsilon$ for all $n \geq N$, and
- ➁ for any given $m \in \N^\ast$, there exists $M \geq \max\{m, N\}$ such that $a_M > a - \varepsilon$.

By {prf:ref}`thm:58`, $a = \limsup a_n$. Similarly, we can also show $a = \liminf a_n$.

````

The next theorem can be treated as the reciprocal rule of limit superior, which establishes the relation between $\limsup 1 / a_n$ and $\liminf a_n$.


````{prf:theorem}

Let $\{a_n\}$ be a sequence of positive numbers, then
- ➀ $\limsup \frac{1}{a_n} = 1 / \liminf a_n$, and
- ➁ $\liminf \frac{1}{a_n} = 1 / \limsup a_n$.

Note that, in the first equation, if $\liminf a_n = 0$ then $\limsup 1 / a_n = \infty$, and $\limsup 1 / a_n = 0$ if $\liminf a_n = \infty$. A similar treatment also applies to the second equation.

````

````{prf:proof}

We only prove 1 since the second equation can be obtained by replacing $a_n$ with $1 / a_n$ in the first one.

(Case 1: $\liminf a_n = 0$.) For every positive number $M > 0$. By {prf:ref}`thm:58`(the second condition for limit inferior), there exists $N \in \N^\ast$ such that

```{math}
\begin{align*}
a_N < 0 + \frac{1}{M} = \frac{1}{M}\end{align*}
```

Taking the reciprocal, we find

```{math}
\begin{align*}\frac{1}{a_N} > M
\end{align*}
```

This implies that the sequence $\{1 / a_n\}$ is not bounded above. Hence, $\limsup 1 / a_n = \infty$ by definition.

(Case 2: $\liminf a_n = \infty$.) We know $\lim a_n = \infty$ by {prf:ref}`pro:4`. This implies $\{1 / a_n\}$ will converge to zero, i.e., $\lim 1 / a_n = 0$. By {prf:ref}`pro:5`, $\limsup a_n = 0$.

(Case 3: $\liminf a_n$ is a finite positive number.) Write $l = \liminf a_n$. Let $\varepsilon > 0$ be chosen arbitrarily. Put

```{math}
\begin{align*}\varepsilon_1 = \frac{\varepsilon l^2}{1 + \varepsilon l}\end{align*}
```

By {prf:ref}`thm:58`, there exists $N \in \N^\ast$ such that

```{math}
\begin{align*}
a_n > l - \varepsilon_1
\quad\forall n \geq N
\end{align*}
```

We note that $l - \varepsilon_1 > 0$. Taking the reciprocal of both sides and then plugging in the value of $\varepsilon_1$, we find

```{math}
:label: eq:123
\begin{align}\frac{1}{a_n} < \frac{1}{l - \varepsilon_1}
= \frac{1}{l} + \varepsilon\quad\forall n \geq N
\end{align}
```

Now, choose another $\varepsilon > 0$ so small that $1 - \varepsilon l  > 0$. Let

```{math}
\begin{align*}\varepsilon_2 = \frac{\varepsilon l^2}{1 - \varepsilon l}\end{align*}
```

:::{note}

The reason why we choose $\varepsilon$ such that $1 - \varepsilon l  > 0$ is that we want $\varepsilon_2 > 0$. Notice also that the choice of sufficient small $\varepsilon$ in this way will not affect the generality of the proof.

:::

Given any integer $m \in \N^\ast$, by {prf:ref}`thm:58`, there exists an integer $N \geq m$ such that

```{math}
\begin{align*}
a_N < l + \varepsilon_2
\end{align*}
```

Taking the reciprocal and then plugging in the value of $\varepsilon_2$, we obtain

```{math}
:label: eq:124
\begin{align}\frac{1}{a_N} > \frac{1}{l + \varepsilon_2}
= \frac{1}{l} - \varepsilon\end{align}
```

Therefore, by {prf:ref}`thm:58`, we may conclude $\limsup a_n = 1 / l = 1 / \liminf a_n$ from {eq}`eq:123` and {eq}`eq:124`.

````
