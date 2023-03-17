# Lebesgue Criterion for Existence of Riemann Integrals

````{prf:definition}
:label: def:6

```{index} zero-measure sets
```

A set $S$ in $\R$ is said to have measure zero,
or a **zero-measure** set
if for any given $\varepsilon > 0$,
there exists a countable covering of $S$
by open intervals the sum of whose lengths
is bounded by $\varepsilon$.
Mathematically, that is to say, there exists
a family of intervals $\{(a_k, b_k)\}_{k \in \Lambda}$
where the index set $\Lambda$ is countable such that

```{math}
:label: eq:145
\begin{align}
S \subseteq\bigcup_{k \in \Lambda}(a_k, b_k)
\quad\text{and}\quad\sum_{k \in \Lambda}(b_k - a_k) < \varepsilon\end{align}
```

````

If the index set $\Lambda$ is countably infinite,
then we often take $\Lambda = \N^\ast$.
In this way, {eq}`eq:145` is written as

```{math}
:label: eq:146
\begin{align}
S \subseteq\bigcup_{k=1}^\infty(a_k, b_k)
\quad\text{and}\quad\sum_{k=1}^\infty(b_k - a_k) < \varepsilon\end{align}
```

On the other hand,
if $\Lambda$ is finite,
then in order to write {eq}`eq:145`
as {eq}`eq:146` for consistency,
we append countably infinitely many degenerate open intervals,
i.e., the empty sets $\emptyset$ to the covering.
Since taking the union with empty sets will not change the origin set,
and the sum of lengths of empty sets is zero,
{eq}`eq:146` remains valid.


It is evident that the union of two zero-measure sets also has measure zero.
By Mathematical induction,
any finite unions of zero-measure sets also have measure zero.
In fact, this is also the case for the countable union of zero-measure sets,
as stated in the following theorem.


````{prf:theorem}
:label: thm:86

Let $\{S_k\}$ be a countable family of zero-measure sets.
Then their union also has measure zero.

````

````{prf:proof}

Without loss of generality,
we consider countably infinite family
$\{S_k\}_{k=1}^\infty$
of zero-measure sets.
Given $\varepsilon > 0$,
for each $S_k$,
there exists a family of open intervals
$\{I_{k,j} = (a_{k,j}, b_{k,j})\}_{j=1}^\infty$(including degenerate ones),
such that

```{math}
\begin{align*}
S_k \subseteq\bigcup_{j=1}^\infty I_{k,j}\quad\text{and}\quad\sum_{j=1}^\infty(b_{k,j} - a_{k,j})
< \frac{\varepsilon}{2^{k+1}}\end{align*}
```

We have

```{math}
\begin{align*}\sum_{k=1}^\infty\sum_{j=1}^\infty(b_{k,j} - a_{k,j})
\leq\sum_{k=1}^\infty\frac{\varepsilon}{2^{k+1}}
= \frac{\varepsilon}{2}
< \varepsilon\end{align*}
```

By {prf:ref}`thm:61`,
the double series $\sum_{k,j} (b_{k,j} - a_{k,j})$
also converges (absolutely) and its sum is less than $\varepsilon$.

We can rearrange the doubly-indexed sets $I_{k,j}$ into
$I_n$ by defining a bijection between $\N^\ast \times \N^\ast$
and $\N^\ast$, $n = g(k,j)$.
It is clear that

```{math}
\begin{align*}\bigcup_{k=1}^\infty S_k
\subseteq\bigcup_{n} I_{n}\end{align*}
```

Moreover,

```{math}
\begin{align*}\sum_{n=1}^\infty(b_n - a_n)
= \sum_{k,j}(b_{k,j} - a_{k,j})
< \varepsilon\end{align*}
```

since the double series converges absolutely ({prf:ref}`thm:61`).
Therefore, $\bigcup_{k=1}^\infty S_k$ indeed has measure zero.

````

Next, we introduce the concept of oscillation,
which has actually been already applied
in several proofs from previous sections.


````{prf:definition}
:label: def:7

Let $f$ be defined and bounded on an interval $I$.
($I$ can be open, closed or half-open.)
Let $S \subseteq I$ be a subset.
The number

```{index} oscillation of a function on a set
```

```{math}
\begin{align*}\Omega_f (S)
= \sup_{x,y \in S}[f(x) - f(y)]\end{align*}
```

is called the **oscillation of $f$ on $S$**.

````

The oscillation of $f$ on $S$ measures the
greatest difference between two function values.
Recall {prf:ref}`thm:27`.
Equivalently, it is the difference between
the supremum and the infimum.
We have

```{math}
\begin{align*}\Omega_f (S)
= \sup_{x \in S} f(x) - \inf_{x \in S} f(x)
\end{align*}
```

Another simple observation is that
if $S \subseteq T$, then

```{math}
\begin{align*}\Omega_f(S) \leq\Omega_f(T)
\end{align*}
```

```{index} oscillation of a function at a point
```

We can also define the **oscillation of $f$ at a point $x$**.
Consider a neighborhood $B_r(x) \cap I$ of $x$ in $I$.
Note that the oscillation of $f$ on $B_r(x) \cap I$,
$\Omega_f(B_r(x) \cap I)$,
will get smaller and smaller
as the radius $r$ decreases.
Hence, we can regard

```{math}
\begin{align*}\Omega_f (B_r(x) \cap I) =: g(r)
\end{align*}
```

as an increasing function of $r$.
Then by {prf:ref}`thm:15`,
we know $g(0+)$ exists.

:::{note}

Well, to apply {prf:ref}`thm:15`,
function $g$ needs to be defined on a closed interval.
Since the oscillation is always greater than or equal to zero,
we may define $g(0) = 0$
without violating the hypothesis that $g$ is increasing.
Then, we may apply {prf:ref}`thm:15` to $g$ on $[0, R]$
where $R$ is any fixed positive number.

:::

The oscillation of $f$ at $x$ is defined as
precisely this limit.


````{prf:definition}
:label: def:8

Let $f$ be defined and bounded on an interval $I$.
The oscillation of $f$ at point $x \in I$ is
defined by

```{math}
\begin{align*}\omega_f(x)
= \lim_{r \to 0^{+}}\Omega_f (B_r(x) \cap I)
\end{align*}
```

````

:::{note}

Beware of the difference between the symbols $\Omega_f(\{x\})$
and $\omega_f(x)$.
The former always equals zero while the latter does not.
Hence, we do not describe the oscillation of $f$ at a point $x$
with the oscillation on the singleton $\{x\}$.

:::

The following are some simple observations,
which we shall use in the proofs without quoting:
- ➀ $\Omega_f(B_r(x) \cap I)$ decreases as $r$ decreases
(which we have already noted),
and

```{math}
\begin{align*}\Omega_f(B_r(x) \cap I) > \omega_f(x)
\quad\forall r > 0
\end{align*}
```
- ➁ The oscillation of $f$ on a set is clearly no less than
the oscillation at a point in it.
Mathematically, if $S \subseteq I$ and $x \in S$, then

```{math}
\begin{align*}\Omega_f(S) \geq\omega_f(x)
\end{align*}
```


````{prf:example}
:label: eg:16

It is frequently stated that

```{math}
\begin{align*}
f(x) = \sin\frac{1}{x}\ind\{x \neq 0\}\end{align*}
```
*oscillates* at $0$.
We can now measure the degree of this oscillation.
For any $r > 0$,
we can always find a large enough integer $n \in \N^\ast$
such that

```{math}
\begin{align*}
x_n = \frac{1}{\pi / 2 + 2n\pi}\quad\text{and}\quad
y_n = \frac{1}{-\pi / 2 + 2n\pi}\end{align*}
```

are both in $B_r(0)$.
Note that $f(x_n) = 1$ and $f(y_n) = -1$
are the supremum and infimum of $f$, respectively.
Therefore,

```{math}
\begin{align*}\Omega_f(B_r(0)) = 1 - (-1) = 2
\quad\forall r > 0
\end{align*}
```

And the oscillation of $f$ at $0$ is exactly

```{math}
\begin{align*}\omega_f(0) = 2
\end{align*}
```

````
$\omega_f(x) = 0$ means $f$ has no oscillation at $x$.
Intuitively, this implies that $f$ is continuous there.


````{prf:theorem}
:label: thm:90

Let $f$ be defined and bounded on interval $I$,
and $x \in I$ a point in it.
Then $\omega_f(x) = 0$ if and only if $f$
is continuous at $x$.

````

````{prf:proof}

TODO

````

````{prf:theorem} Lebesgue's Number Lemma
:label: thm:88

TODO

````

The following theorem states that if the oscillation of $f$
at each point $x$ in some closed interval (compact) is bounded by
a small number $\varepsilon$,
then there exists $\delta > 0$ such that the oscillation of $f$
on any subinterval whose length is less than $\delta$ is also
bounded by $\varepsilon$.


````{prf:lemma}
:label: lem:8

Let $f$ be defined and bounded on an closed interval $I$.
Given $\varepsilon > 0$.
Suppose that $\omega_f(x) < \varepsilon$ for every $x$
in $I$.
Then there exists $\delta > 0$(only depending on $\varepsilon$)
such that

```{math}
\begin{align*}\Omega_f(J) < \varepsilon\end{align*}
```

where $J$ is any subinterval in $I$ whose length is less than $\delta$.

````

````{prf:proof}

TODO

````

````{admonition} Exercise 7.7
:name: ex:10

Provide a simpler proof of {prf:ref}`lem:8`
without using Lebesgue's number.

````

````{admonition} Solution
:class: tip, dropdown

For any $x \in I$,
by the definition of oscillation of $f$ at a point,
there exists $\delta_x > 0$(depending on $x$) such that

```{math}
\begin{align*}\Omega_f( B_r(x) \cap I ) < \varepsilon\quad\forall r \leq\delta_x
\end{align*}
```

Note that the family of sets $\set{B_{\delta_x / 2} (x)}{x \in I}$
forms an open cover of $I$.
Since $I$ is a closed interval, hence compact,
there exists a finite
subcover $\set{B_{\delta_i / 2}(x_i)}{i = 1, \ldots, n}$.

:::{note}

If we adopt the previous notation,
the radius of each open ball should be $\delta_{x_i} / 2$.
Here, we simply write $\delta_i / 2$ to ease the notation.

:::

Let

```{math}
\begin{align*}\delta = \min\set{\delta_i / 2}{i = 1, \ldots, n}\end{align*}
```

Suppose that $J$ is a subinterval of $I$
of length less than $\delta$.
Denote the left and right endpoints of $J$ by $c$ and $d$,
respectively. ($J$ may not include these endpoints.)
Since $\set{B_{\delta_i / 2}(x_i)}{i=1, \ldots, n}$
is an open cover of $I$,
point $c$ must fall in some member of the open over,
say $B_{\delta_i / 2}(x_i)$.
Because

```{math}
\begin{align*}\abs{d - x_i}\leq\abs{d - c} + \abs{c - x_i}
< \delta + \delta_i / 2
\leq\delta_i / 2 + \delta_i / 2
= \delta_i
\end{align*}
```

point $d$ is in $B_{\delta_i}(x_i)$.
(Of course, $c$ is also in $B_{\delta_i}(x_i)$.)
It then follows that $J \subseteq B_{\delta_i}(x_i)$.
Therefore,

```{math}
\begin{align*}\Omega_f(J) \leq\Omega_f(B_{\delta_i}(x_i) \cap I)
< \varepsilon\end{align*}
```

This completes the proof.

````

````{prf:lemma}
:label: lem:7

Let $f$ be defined and bounded on a closed interval $I$.
For each $\varepsilon > 0$, the set

```{math}
\begin{align*}
J_\varepsilon = \set{x \in I}{\omega_f(x) \geq \varepsilon}\end{align*}
```

is closed in $I$.

````

````{prf:proof}

Consider the complement of $J_\varepsilon$ in $I$,

```{math}
\begin{align*}
J_\varepsilon^\complement
= \set{x \in I}{\omega_f(x) < \varepsilon}\end{align*}
```

Let $x$ be an arbitrary point in $J_\varepsilon^\complement$.
There exists $\delta > 0$ such that

```{math}
\begin{align*}\Omega_f(B_\delta(x) \cap I) < \varepsilon\end{align*}
```

For any $y \in B_\delta(x) \cap I$,
there exists $r_y > 0$ such that

```{math}
\begin{align*}
B_{r_y}(y) \subset B_{\delta}(x)
\end{align*}
```

It then follows that

```{math}
\begin{align*}\omega_f(y) \leq\Omega_f(B_{r_y}(y) \cap I)
\leq\Omega_f(B_\delta(x) \cap I)
< \varepsilon\end{align*}
```

Note that this implies

```{math}
\begin{align*}
B_\delta(x) \cap I \subseteq J_\varepsilon^\complement\end{align*}
```

by the definition of $J_\varepsilon^\complement$.
Since $B_\delta(x) \cap I$ is open (in $I$) and contained
in $J_\varepsilon^\complement$ for each $x$,
$J_\varepsilon^\complement$ is open in $I$.
Therefore, equivalently, $J_\varepsilon$ is closed in $I$.

````

````{prf:theorem} Lebesgue's Criterion for Reimann-Integrability
:label: thm:89

Let $f$ be defined and bounded on $[a, b]$.
Let $D$ denote the set of discontinuities of $f$ on $[a, b]$.
Then $f \in \mathfrak{R}$ on $[a, b]$
if and only if
set $D$ has measure zero.

````

````{prf:proof}
(Necessity) We shall prove the necessity by proving the contrapositive.
That is, we assume $D$ does not have measure zero,
and then show that $f$ cannot be integrable.

Note that $D$ can be written as

```{math}
\begin{align*}
D = \bigcup_{r=1}^\infty D_r
\end{align*}
```

where

```{math}
\begin{align*}
D_r = \set{x \in[a, b]}{\omega_f(x) \geq \frac{1}{r}}\end{align*}
```

This is left as an exercise. (See {ref}`Exercise 7.8<ex:11>`.)
Since $D$ does not have measure zero,
by {prf:ref}`thm:86`,
one member of the above union, say $D_r$
does not have measure zero.
Then there exists a positive number $\varepsilon_0 > 0$
such that the sum of lengths of any countable open cover of $D_r$
is greater than or equal to $\varepsilon_0$.
That is,

```{math}
:label: eq:147
\begin{align}
D_r \subseteq\bigcup_{k=1}^\infty I_k
\implies\sum_{k=1}^\infty I_k \geq\varepsilon_0
\end{align}
```

Let $\varepsilon = \varepsilon_0 / r$.
Let $P = \{x_0, \ldots, x_n\}$ be any partition on $[a, b]$.
Define

```{math}
\begin{align*}\Lambda
= \set{k=1, \ldots, n}{(x_{k-1}, x_k) \cap D_r \neq \emptyset}\end{align*}
```

Note that $\{(x_{k-1}, x_k)\}_{k \in \Lambda}$ covers $D_r$
except for possibly finitely many points.
More specifically, we have

```{math}
\begin{align*}
D_r \setminus P \subseteq\bigcup_{k \in \Lambda}(x_{k-1}, x_k)
\end{align*}
```

Note that $D_r \setminus P$ still does not have measure zero
since $P$ is only a finite set.
It then follows from {eq}`eq:147` that

```{math}
\begin{align*}\sum_{k \in \Lambda}\Delta x_k
= \sum_{k \in \Lambda}(x_k - x_{k-1})
\geq\varepsilon_0
\end{align*}
```

Moreover, for $k \in \Lambda$, we have

```{math}
\begin{align*}
M_k(f) - m_k(f)
= \Omega_f([x_{k-1}, x_k])
\geq\frac{1}{r}\end{align*}
```

since $(x_{k-1}, x_k)$ contains some point in $D_r$ at which
the oscillation of $f$ is greater than or equal to $1 / r$.

Consider the difference $U(P,f) - L(P,f)$.
We have

```{math}
\begin{align*}
U(P,f) - L(P,f)
\geq\sum_{k \in \Lambda}[M_k(f) - m_k(f)]\Delta x_k
\geq\frac{1}{r}\sum_{k \in \Lambda}\Delta x_k
\geq\frac{\varepsilon_0}{r}
= \varepsilon\end{align*}
```

In summary, we have chosen an $\varepsilon > 0$ such that

```{math}
\begin{align*}
U(P,f) - L(P,f) \geq\varepsilon\end{align*}
```

for any partition $P$ on $[a, b]$.
Therefore, $f$ fails to satisfy Riemann's criterion,
and hence not integrable on $[a, b]$.

(Sufficiency)
Now, we assume $D$ has measure zero and
show that $f$ satisfies Riemann's criterion.
Recall $D$ can be written as $D = \bigcup_{r=1}^\infty D_r$.
Given $\varepsilon > 0$,
there exists $r \in \N^\ast$ such that

```{math}
:label: eq:148
\begin{align}
r > (\Omega_f([a,b]) + b - a) / \varepsilon\end{align}
```

Consider the set $D_r$.
Note that $D_r$ also has measure zero since $D$ has measure zero.
Thus, there exists a countable covering of $D_r$ by open intervals
the sum of whose lengths is less than $1 / r$.
Moreover, since $D_r$ is compact by {prf:ref}`lem:7`
and {prf:ref}`thm:90`,
there exists a *finite* subcover of $D_r$,
say $U_1, \ldots, U_N$.
Note that the union $\bigcup_{k=1}^n U_k$ can be written as
a finite union of *disjoint* open intervals,
say $I_1, \ldots, I_n$.
And the sum their lengths is of course also less than $1 / r$
since it is actually less than the sum of lengths of all $U_k$'s.
In summary, we have

```{math}
\begin{align*}
D_r \subseteq\biguplus_{k=1}^n I_k,
\quad\text{and}\quad\sum_{k=1}^n \ell(I_k) < \frac{1}{r}\end{align*}
```

Let $S$ denote the complement of $\biguplus_{k=1}^n I_k$ in $[a, b]$.
We claim that there exists $\delta > 0$
such that $S$ can be written as a finite union of
closed intervals, $J_1, \ldots, J_m$, satisfying the following:
- ➀ Each pair of different closed intervals intersect
at most one point, i.e., $J_i \cap J_j$
is either $\emptyset$ or a singleton whenever $i \neq j$,
- ➁ the length of each closed interval is less than $\delta$,
i.e., $\ell(J_k) < \delta$, and
- ➂ $\Omega_f(J_k) < 1 / r$ for each $k$.


The proof of this claim is left as an exercise.
(See {ref}`Exercise 7.9<ex:12>`.)

Note that the union of endpoints of intervals $I_k$'s and $J_k$'s
for a partition $P=\{x_0, \ldots, x_{m+n}\}$ on $[a, b]$.

:::{note}

Since there are $n$ open intervals $I_1, \ldots, I_n$
and $m$ closed intervals $J_1, \ldots, J_m$,
one can verify that the number of set of endpoints
is indeed $m+n$.

:::

We are going to show $U(P,f) - L(P,f) < \varepsilon$.
Let

```{math}
\begin{align*}\Lambda_1 = \set{k}{(x_{k-1}, x_k) = I_j \text{ for some $j$}}\quad\text{and}\quad\Lambda_2 = \set{k}{[x_{k-1}, x_k] = J_j \text{ for some $j$}}\end{align*}
```

Then the $U(P,f) - L(P,f)$ can be decomposed into
the following two sums:

```{math}
:label: eq:149
\begin{align}
U(P,f) - L(P,f)
= \sum_{k \in \Lambda_1}\Omega_f([x_{k-1}, x_k]) \Delta x_k
+ \sum_{k \in \Lambda_2}\Omega_f([x_{k-1}, x_k]) \Delta x_k
\end{align}
```

We consider each of these two sums separately.

For $k \in \Lambda_1$, we have

```{math}
:label: eq:150
\begin{align}\sum_{k \in \Lambda_1}\Omega_f([x_{k-1}, x_k]) \Delta x_k
\leq\Omega_f([a, b]) \sum_{k \in \Lambda_1}\Delta x_k
< \Omega_f([a, b]) \cdot\frac{1}{r}\end{align}
```

where the last inequality holds
because $\sum_{k \in \Lambda_1} \Delta x_k$ is the exactly
the sum of lengths of all $I_k$'s, which is less than $1 / r$.

On the other hand, for $k \in \Lambda_2$,
we have

```{math}
:label: eq:151
\begin{align}\sum_{k \in \Lambda_2}\Omega_f([x_{k-1}, x_k]) \Delta x_k
< \frac{1}{r}\sum_{k \in \Lambda_2}\Delta x_k
\leq\frac{1}{r}\cdot(b - a)
\end{align}
```

where the second last inequality holds
because $\Omega_f(J_k) < 1 / r$ for each $k=1, \ldots, m$.

Finally, by combining {eq}`eq:148`, {eq}`eq:149`, {eq}`eq:150`
and {eq}`eq:151` together,
we find that indeed $U(P,f) - L(P,f) < \varepsilon$.
Therefore, $f$ satisfies Riemann's criterion on $[a, b]$
and hence is integrable.
This completes the proof.

````

````{admonition} Exercise 7.8
:name: ex:11

Complete the above proof by
showing that $D = \bigcup_{r=1}^\infty D_r$
````

````{admonition} Exercise 7.9
:name: ex:12

Complete the above proof by showing the set $S$
can be written as a finite union of closed intervals $J_k$'s
satisfying the properties as claimed.

````
