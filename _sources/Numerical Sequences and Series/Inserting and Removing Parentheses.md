# Inserting and Removing Parentheses

````{prf:definition}

Given a series $\sum a_n$, we say the series  $\sum A_n$ is obtained
by inserting parentheses into  $\sum a_n$
if there is a function $p: \N^\ast \to \N^\ast$ satisfying

```{math}
\begin{align*}
n > m \implies p(n) > p(m)
\end{align*}
```

and each term $A_n$ is given by
- ➀ $A_1 = a_1 + \cdots a_{p(1)}$, and
- ➁ $A_n = a_{p(n-1)+1} + \cdots + a_{p(n)}$ if $n \geq 2$.


The function $p$ is also referred to as the locations of parentheses.

````

````{prf:theorem}

Let $\sum A_n$ be a series obtained from $\sum a_n$
by inserting parentheses.
If $\sum a_n$ converges to sum $s$,
then $\sum A_n$ also converges to sum $s$.

````

````{prf:proof}

Given $\varepsilon > 0$, since $\sum a_n$ converges to $s$,
there exists an integer $N \in \N^\ast$ such that

```{math}
\begin{align*}\abs{s_n - s} < \varepsilon\quad\forall n \geq N
\end{align*}
```

where $s_n$ is the  $n$-th partial sum of $\sum a_n$.
Suppose the locations of parentheses are given by function $p$.
We have

```{math}
\begin{align*}\abs{\sum_{k=1}^n A_k - s}
= \abs{s_{p(n)} - s}
< \varepsilon\quad\forall n \geq N
\end{align*}
```

since $p(n) \geq n \; \forall n \in \N^\ast$({ref}`Exercise 3.1<ex:8>`).
Therefore, $\sum A_n$ also converges to $s$.

````

````{admonition} Exercise 3.1
:name: ex:8

Complete the above proof by showing

```{math}
\begin{align*}
p(n) \geq n
\quad\forall n \in\N^\ast\end{align*}
```

````

````{admonition} Solution
:class: tip, dropdown

We shall prove by induction.

**Base Case:** It is clear that $p(1) \geq 1$.

**Inductive Step:** Assume  $p(k) \geq k$.
We have  $p(k+1) > p(k) \geq k$ by the definition.
Therefore, we must have  $p(k+1) \geq k+1$.

````
