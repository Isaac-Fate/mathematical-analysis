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

If we have proved in the previous section that
for some function $g$, $g \in \mathfrak{R}(\alpha_1)$
and $g \in \mathfrak{R}(\alpha_2)$on $[a, b]$.
Then by the linearity of integrals we may conclude
that $g \in \mathfrak{R}(\alpha = \alpha_1 - \alpha_2)$ on $[a, b]$.


````{prf:lemma} 
:label: eq:48

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

Assume $\alpha$ is of bounded variation on $[a, b]$.
If $f \in \mathfrak{R}(\alpha)$ on $[a, b]$
then $f \in \mathfrak{R}(V_a^x(\alpha))$ on $[a, b]$.

````

````{prf:proof}

Sorry.

````