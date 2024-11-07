# Integrators of Bounded Variation

Recall in the previous section we always assume that
the integrator $\alpha$ is increasing.
Now, we want to extend the theorems about existence of integrals
to the case when the integrator is of bounded variation.

For example, we want to generalize {prf:ref}`thm:10` to
that assuming $\alpha$ is of bounded variation on $[a, b]$,
if $f \in \mathfrak{R}(\alpha)$ on $[a, b]$,
then $f^2 \in \mathfrak{R}(\alpha)$ on $[a, b]$.

The key of achieving this is that a function $\alpha$ of bounded variation
can be written as a difference of
two increasing functions $\alpha_1$ and $\alpha_2$,
({prf:ref}`thm:4`).

```{math}
\alpha = \alpha_1 - \alpha_2

```

Then, to exploit the condition that $f \in \mathfrak{R}(\alpha)$,
we would want that $f \in \mathfrak{R}(\alpha_1)$ and $f \in \mathfrak{R}(\alpha_2)$.
But this is not true in general due to the nonuniqueness
of the decomposition of $\alpha$ into two increasing functions.
For example, consider $\alpha(x) = 0$ on $[a, b]$.
We can write $\alpha$ as a difference of two identity
functions $\alpha_1(x) = \alpha(x) = x$.
Then the Dirichlet function $\ind_{\Q}$ is not integrable
w.r.t. $\alpha_1$ nor $\alpha_2$.
But it is integrable w.r.t. $\alpha$ for the integrator is constant.

However, if we decompose $\alpha$(in the canonical way) as

```{math}
\alpha(x) = V_a^x(\alpha) - [ V_a^x(\alpha) - \alpha(x) ]
```

then we will see in {prf:ref}`thm:11` that $f$
is also integrable w.r.t. $V_a^x(\alpha)$ and $V_a^x(\alpha) - \alpha(x)$.




````{prf:lemma} 
:label: lem:1

Assume $\alpha$ is of bounded variation on $[a, b]$.
If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$,
then for any given $\varepsilon > 0$
there exists a partition $P_\varepsilon$ of $[a, b]$ such that
for all refinement $P \supseteq P_\varepsilon$, $P = \{x_0, \ldots, x_n\}$,
we have

```{math}
:label: eq:48
\sum_{k=1}^n \omega_f(I_k) \abs{\Delta \alpha_k} < \varepsilon
```

````

:::{note}

If $\alpha$ is increasing,
then what this lemma states is exactly
that $f$ satisfies the Riemann's condition.

:::

The idea of the proof is as follows.
The appearance of the oscillation $\omega_f(I_k)$ in {eq}`eq:48`
suggests us to consider the difference $f(t_k) - f(t^\prime_k)$.
We have for all $t_k, t^\prime_k \in [x_{k-1}, x_k]$ that

```{math}
\abs{\sum_{k=1}^n [ f(t_k) - f(t^\prime_k) ] \Delta \alpha_k} < c \varepsilon
```

The difficulty is that $\Delta \alpha_k$ is not nonnegative anymore as
in the previous section.
To solve this, we simply
consider the set $A$ of indices of which $\Delta \alpha_k \geq 0$
and the set $B$ of indices of which $\Delta \alpha_k < 0$ separately.
Then we have

```{math}
\sum_{k=1}^n [ f(t_k) - f(t^\prime_k) ]\Delta\alpha_k
= \sum_{k \in A}[ f(t_k) - f(t^\prime_k) ]\abs{\Delta \alpha_k}
+ \sum_{k \in B}[ f(t_k^\prime) - f(t_k) ]\abs{\Delta \alpha_k}
```

The rest of the proof is done by choosing the $t_k$ and $t^\prime_k$
and then comparing $\abs{f(t_k) - f(t^\prime_k)}$ with $\omega_f(I_k)$.


````{prf:proof}

If $V_a^b(\alpha) = 0$, then $\alpha$ is constant
and hence the conclusion is trivial.
In the following context, we assume $V_a^b(\alpha) > 0$.

Let $\varepsilon > 0$ be arbitrary.
Because $f \in \mathfrak{R}(\alpha)$ on $[a, b]$,
there exists a partition $P_\varepsilon$ of $[a, b]$
such that
for any refinement $P=\{x_0, \ldots, x_n\}$
and any list of representatives $T$ of $P$, we have

```{math}
\abs{S(P, T, f, \alpha) - \int_a^b f \dif \alpha} < \varepsilon / 4

```

It then follows that

```{math}
\abs{\sum_{k=1}^n [ f(t_k) - f(t^\prime_k) ] \Delta \alpha_k} < \varepsilon / 2
\quad\forall t_k, t^\prime_k \in[x_{k-1}, x_k]
```

Let subsets $A$ and $B$ of indices $\{1, \ldots, n\}$ be defined by

```{math}

A & = \set{\Delta \alpha_k \geq 0}{k \in \{1, \ldots, n\}}\\
B & = \set{\Delta \alpha_k < 0}{k \in \{1, \ldots, n\}}
```

Clearly, $A$ and $B$ forms a partition of $\{1, \ldots, n\}$,
i.e., $A \cup B = \{1, \ldots, n\}$ and $A \cap B = \emptyset$.
It then follows that

```{math}
\sum_{k=1}^n [ f(t_k) - f(t^\prime_k) ]\Delta\alpha_k
= \sum_{k \in A}[ f(t_k) - f(t^\prime_k) ]\abs{\Delta \alpha_k}
+ \sum_{k \in B}[ f(t_k^\prime) - f(t_k) ]\abs{\Delta \alpha_k}
```

Therefore,

```{math}
:label: eq:49
\abs{
\sum_{k \in A} [ f(t_k) - f(t^\prime_k) ] \abs{\Delta \alpha_k}
+ \sum_{k \in B} [ f(t_k^\prime) - f(t_k) ] \abs{\Delta \alpha_k}
} < \varepsilon / 2
\quad\forall t_k, t^\prime_k \in[x_{k-1}, x_k]
```

Now, we will strategically select $t_k$ and $t^\prime_k$
to accomplish our goal.
1. For $k \in A$, we may select $t_k$ and $t^\prime_k$
such that $f(t_k) - f(t^\prime_k) > \max \left\{ 0, \omega_f(I_k) - \frac{\varepsilon}{2 V_a^b(\alpha)} \right\}$, and
2. For $k \in B$, we may select $t_k$ and $t^\prime_k$
such that $f(t^\prime_k) - f(t_k) > \max \left\{ 0, \omega_f(I_k) - \frac{\varepsilon}{2 V_a^b(\alpha)} \right\}$.

Plugging the particular choices of $t_k$'s and $t^\prime_k$'s
into {eq}`eq:49`, we obtain

```{math}
\varepsilon / 2
& > 	\abs{
\sum_{k \in A} [ f(t_k) - f(t^\prime_k) ] \abs{\Delta \alpha_k}
+ \sum_{k \in B} [ f(t_k^\prime) - f(t_k) ] \abs{\Delta \alpha_k}
}\\& = 	\sum_{k \in A}[ f(t_k) - f(t^\prime_k) ]\abs{\Delta \alpha_k}
+ \sum_{k \in B}[ f(t_k^\prime) - f(t_k) ]\abs{\Delta \alpha_k}\\& > \sum_{k=1}^n \left(\omega_f(I_k) - \frac{\varepsilon}{2 V_a^b(\alpha)}\right)\abs{\Delta \alpha_k}\\& = \sum_{k=1}^n \omega_f(I_k) \abs{\Delta \alpha_k}
- \frac{\varepsilon}{2 V_a^b(\alpha)}\sum_{k=1}^n \abs{\Delta \alpha_k}\\& \geq\sum_{k=1}^n \omega_f(I_k) \abs{\Delta \alpha_k} - \varepsilon / 2

```

where the last inequality follows from the property of
total variations $\sum_{k=1}^n \abs{\Delta \alpha_k} \leq V_a^b(\alpha)$.
Moving the term $-\varepsilon / 2$ to the left in the above inequality yields

```{math}
\sum_{k=1}^n \omega_f(I_k) \abs{\Delta \alpha_k} < \varepsilon
```

````

````{prf:theorem} 
:label: thm:11

Assume $\alpha$ is of bounded variation on $[a, b]$.
If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$
then $f \in \mathfrak{R}(V_a^x(\alpha))$ on $[a, b]$.

And of course, applying the linearity,
we also have $f \in \mathfrak{R}(V_a^x(\alpha) - \alpha)$ on $[a, b]$.

````

````{prf:proof}

Suppose $f$ is bounded by $M > 0$.

Let $\varepsilon > 0$ be arbitrary.
By {prf:ref}`lem:1`, there exists a partition $P^\prime_\varepsilon$ of $[a, b]$
such that for all $P \supseteq P^\prime_\varepsilon$,
we have

```{math}
:label: eq:50
\sum_{k}\omega_f(I_k) \abs{\Delta \alpha_k} < \varepsilon / 2

```

By the definition of total variations and {prf:ref}`prop:4`,
there exists a partition $P^{\prime\prime}_\varepsilon$ such that
for all its refinement we have

```{math}
:label: eq:51

V_a^b(\alpha) < \sum_{k}\abs{\Delta \alpha_k} + \frac{\varepsilon}{4M}
```

Let $P_\varepsilon = P^\prime_\varepsilon \cup P^{\prime\prime}_\varepsilon$.
For any its refinement $P$, both {eq}`eq:50` and {eq}`eq:51` hold.
And we have

```{math}
\sum_{k}\omega_f(I_k) (V_{x_{k-1}}^{x_k}(\alpha) - \abs{\Delta \alpha_k})
& \leq 2M \sum_{k}(V_{x_{k-1}}^{x_k}(\alpha) - \abs{\Delta \alpha_k}) \\& = 2M \left( V_a^b(\alpha) - \sum_{k}\abs{\Delta \alpha_k}\right)
```

Then applying {eq}`eq:51` yields

```{math}
:label: eq:52
\sum_{k}\omega_f(I_k) (V_{x_{k-1}}^{x_k}(\alpha) - \abs{\Delta \alpha_k})
< \varepsilon / 2

```

Adding {eq}`eq:50` and {eq}`eq:52`, we obtain

```{math}
\sum_{k}\omega_f(I_k) V_{x_{k-1}}^{x_k}(\alpha)
< \varepsilon
```

This implies that $f$ satisfies the Riemann's condition w.r.t. $V_a^x(\alpha)$
on $[a, b]$ and hence the proof is complete.

````

````{prf:theorem} 
:label: thm:13

Assume $\alpha$ is of bounded variation on $[a, b]$.
If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$
then $f$ is also integrable on any subinterval.
That is, if $[c, d] \subseteq[a, b]$,
then $f \in \mathfrak{R}(\alpha)$ on $[a, d]$.

````

````{prf:proof}

Thanks to {prf:ref}`thm:11` and {prf:ref}`thm:12`,
we only need to prove this theorem for increasing integrators.
In what follows, we assume $\alpha$ is increasing.

We are going to show that $f$ satisfies the
Riemann's condition w.r.t. $\alpha$ on $[c, d]$.
Let $\varepsilon > 0$ be arbitrary.
Because $f \in \mathfrak{R}(\alpha)$ on $[a, b]$,
there exists a partition $P_\varepsilon$ of $[a, b]$
such that

```{math}

U(P_\varepsilon, f, \alpha) - L(P_\varepsilon, f, \alpha) < \varepsilon
```

Let $P^\prime = P_\varepsilon \cup \{c, d\}$.
Since $P^\prime$ is a refinement of $P_\varepsilon$.
It also holds that

```{math}

U(P^\prime, f, \alpha) - L(P^\prime, f, \alpha) < \varepsilon
```

Let $P = P^\prime \cap [c, d]$.
We note that $P$ is a partition of $[c, d]$.
And if we write

```{math}

U(P^\prime, f, \alpha) - L(P^\prime, f, \alpha)
= \sum_{k \in J}\omega_f(I_k) \Delta\alpha_k

```

then we will find that $U(P, f, \alpha) - L(P, f, \alpha)$ is
the sum of a subcollection of terms from the above sum.
That is, we can write

```{math}

U(P, f, \alpha) - L(P, f, \alpha)
= \sum_{k \in K}\omega_f(I_k) \Delta\alpha_k

```

where $K \subseteq J$.
Since each term $\omega_f(I_k) \Delta \alpha_k$ is nonnegative,
we have

```{math}

U(P, f, \alpha) - L(P, f, \alpha)
\leq U(P^\prime, f, \alpha) - L(P^\prime, f, \alpha)
< \varepsilon
```

This implies that $f$ satisfies the Riemann's condition
w.r.t. $\alpha$ on $[c, d]$.

````

````{prf:theorem} 

Assume $f, g \in \mathfrak{R}(\alpha)$ on $[a, b]$
where the integrator $\alpha$ is increasing.
Define functions $F$ and $G$ on $[a, b]$ by

```{math}

F(x) = \int_a^x f \dif\alpha
```

and

```{math}

G(x) = \int_a^x g \dif\alpha
```

Then $f \in \mathfrak{R}(G)$, $g \in \mathfrak{R}(F)$
and $fg \in \mathfrak{R}(\alpha)$ on $[a, b]$.
And we have

```{math}
\int_a^b f g \dif\alpha
= \int_a^b f \dif G
= \int_a^b g \dif F

```

````

````{prf:proof}

We first show that $F$ and $G$ are well defined.
When $x = a$, the lower and upper limits are equal,
hence the integrals are zeros by the definition.
And when $a < x \leq b$,
by {prf:ref}`thm:13`, $f$ and $g$ are integrable w.r.t. $\alpha$ on $[a, x]$.

The conclusion that $fg \in \mathfrak{R}(\alpha)$ on $[a, b]$
is exactly {prf:ref}`thm:14`.

In the following, we will only prove that $f \in \mathfrak{R}(G)$ and

```{math}
\int_a^b f g \dif\alpha
= \int_a^b f \dif G

```

Suppose $f$ is bounded by $M > 0$.
Let $\varepsilon > 0$ be arbitrary.
Because $g \in \mathfrak{R}(\alpha)$ on $[a, b]$,
equivalently, $g$ satisfies the Riemann's condition.
There exists a partition $P^\prime_\varepsilon$
such that

```{math}
:label: eq:55
\sum_{k=1}^n \omega_g(I_k) \Delta\alpha_k < \frac{\varepsilon}{2M}\quad\forall P \supseteq P^\prime_\varepsilon
```

Because the product $fg$ is integrable w.r.t. $\alpha$,
there exists a partition $P^{\prime\prime}_\varepsilon$
such that

```{math}
:label: eq:56
\abs{S(P, T, fg, \alpha) - \int_a^b f g \dif \alpha} < \varepsilon / 2
\quad\forall P \supseteq P^{\prime\prime}_\varepsilon\quad\forall T \text{ of } P

```

Let $P_\varepsilon = P^\prime_\varepsilon \cup P^{\prime\prime}_\varepsilon$.
Let $P \supseteq P_\varepsilon$ and $T$ be any list of representatives of $P$.
We will compare $S(P, T, f, G)$ and $S(P, T, fg, \alpha)$.
We have

```{math}
:label: eq:53
\abs{S(P, T, f, G) - S(P, T, fg, \alpha)}& = \abs{\sum_{k=1}^n f(t_k) [\Delta G_k - g(t_k) \Delta \alpha_k]}\nonumber\\& \leq\sum_{k=1}^n \abs{f(t_k)}\abs{\Delta G_k - g(t_k) \Delta \alpha_k}\nonumber\\& \leq M \sum_{k=1}^n \abs{\Delta G_k - g(t_k) \Delta \alpha_k}
```

where

```{math}
\Delta G_k = \int_{x_{k-1}}^{x_k} g \dif\alpha
```

:::{note}

The well-definedness of $\Delta G_k$ also follows from {prf:ref}`thm:13`.

:::

Let $m_k = \inf_{x \in [x_{k-1}, x_k]} g(x)$
and $M_k = \sup_{x \in [x_{k-1}, x_k]} g(x)$.
Because $m_k \leq g(x) \leq M_k \; \forall x \in [x_{k-1}, x_k]$,
by the comparison theorem of integrals ({prf:ref}`cor:2`),
we have

```{math}

m_k \Delta\alpha_k
= \int_a^n m_k \dif\alpha\leq\int_{x_{k-1}}^{x_k} g \dif\alpha\leq\int_a^n M_k \dif\alpha
= M_k \Delta\alpha_k

```

That is,

```{math}

m_k \Delta\alpha_k \leq\Delta G_k \leq M_k \Delta\alpha_k

```

It then follows that

```{math}
:label: eq:54
\abs{\Delta G_k - g(t_k) \Delta \alpha_k}\leq\omega_g(I_k) \Delta\alpha_k

```

Combining {eq}`eq:53`, {eq}`eq:54` and {eq}`eq:55` yields

```{math}
:label: eq:57
\abs{S(P, T, f, G) - S(P, T, fg, \alpha)}\leq M \sum_{k=1}^n \omega_g(I_k) \Delta\alpha_k
< M \frac{\varepsilon}{2M}
=\varepsilon / 2

```

Finally, compare {eq}`eq:57` and {eq}`eq:56` and we may conclude that
\begin{multline*}
\abs{S(P, T, f, G) - \int_a^b f g \dif \alpha} \\
\leq \abs{S(P, T, f, G) - S(P, T, fg, \alpha)}
+ \abs{S(P, T, fg, \alpha)-  \int_a^b f g \dif \alpha}
< \varepsilon
\end{multline*}
This implies that $f \in \mathfrak{R}(G)$ on $[a, b]$
and $\int_a^b f \dif G = \int_a^b f g \dif \alpha$.

````