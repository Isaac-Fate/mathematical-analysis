# Additive and Linearity Properties of Upper and Lower Integrals

````{prf:proposition} 

Let $c\in (a, b)$.
We have the following identities for upper and lower integrals:

```{math}
\overline{\int_a^b} f \dif\alpha
= \overline{\int_a^c} f \dif\alpha + \overline{\int_c^b} f \dif\alpha
```

and

```{math}
\underline{\int_a^b} f \dif\alpha
= \underline{\int_a^c} f \dif\alpha + \underline{\int_c^b} f \dif\alpha
```

````

````{prf:proof}

We only prove the identity for upper integrals.
We will prove this identity by showing both
LHS $\geq$ RHS and LHS $\leq$ RHS.

\noindent **Proof of LHS $\geq$ RHS:** 
Let $P_1$ and $P_2$ be partitions of $[a, c]$ and $[c, b]$, respectively.
Let $P = P_1 \cup P_2$.
We have

```{math}

U(P, f, \alpha) = U(P_1, f, \alpha) + U(P_2, f, \alpha)
\geq\overline{\int_a^c} f \dif\alpha + \overline{\int_c^b} f \dif\alpha
```

Taking the infimum over $P$ yields

```{math}
\overline{\int_a^b} f \dif\alpha
= \inf_{P \in \CALP[a, b]} U(P, f, \alpha)
\geq\overline{\int_a^c} f \dif\alpha + \overline{\int_c^b} f \dif\alpha
```
\noindent **Proof of LHS $\leq$ RHS:** 
Let $\varepsilon > 0$ be arbitrary.
There exist a partition $P_1$ of $[a, c]$ and a partition $P_2$ of $[c, b]$
such that

```{math}

U(P_1, f, \alpha) - \varepsilon / 2 & < \overline{\int_a^c} f \dif\alpha\\
U(P_2, f, \alpha) - \varepsilon / 2 & < \overline{\int_c^b} f \dif\alpha
```

Let $P = P_1 \cup P_2$.
Adding the above two inequalities yields

```{math}

U(P, f, \alpha) - \varepsilon
= U(P_1, f, \alpha) - \varepsilon/2
+ U(P_2, f, \alpha) - \varepsilon/2
< \overline{\int_a^c} f \dif\alpha
+ \overline{\int_c^b} f \dif\alpha
```

Taking the infimum over $P$ on both sides yields

```{math}
\overline{\int_a^b} f \dif\alpha - \varepsilon
= \inf_{P \in \CALP[a, b]}(U(P, f, \alpha) - \varepsilon)
\leq\overline{\int_a^c} f \dif\alpha
+ \overline{\int_c^b} f \dif\alpha
```

Since

```{math}
\overline{\int_a^b} f \dif\alpha - \varepsilon\leq\overline{\int_a^c} f \dif\alpha
+ \overline{\int_c^b} f \dif\alpha
```

holds for every $\varepsilon > 0$,

```{math}
\overline{\int_a^b} f \dif\alpha\leq\overline{\int_a^c} f \dif\alpha
+ \overline{\int_c^b} f \dif\alpha
```

````

````{prf:proposition} 
:label: eq:41

We have the following inequalities
about upper and lower integrals of sums of two functions:

```{math}
:label: eq:41
\overline{\int_a^b} f+g \dif\alpha\leq\overline{\int_a^b} f \dif\alpha
+ \overline{\int_a^b} g \dif\alpha
```

and

```{math}
\underline{\int_a^b} f+g \dif\alpha\geq\underline{\int_a^b} f \dif\alpha
+ \underline{\int_a^b} g \dif\alpha
```

````

````{prf:proof}

We only prove {eq}`eq:41`.
Let $P$ be any partition of $[a, b]$.
On each interval $[x_{k-1}, x_k]$, we have

```{math}

f(x) + g(x)
\leq\sup_{x \in [x_{k-1}, x_k]} f(x)
+ \sup_{x \in [x_{k-1}, x_k]} g(x)
\quad\forall x \in[x_{k-1}, x_k]
```

Taking the supremum on both sides over $x$ yields

```{math}
\sup_{x \in [x_{k-1}, x_k]} f(x) + g(x)
\leq\sup_{x \in [x_{k-1}, x_k]} f(x)
+ \sup_{x \in [x_{k-1}, x_k]} g(x)

```

Then summing over $k$:

```{math}

U(P, f+g, \alpha)
& = \sum_{k}\sup_{x \in [x_{k-1}, x_k]} f(x) + g(x) \\& \leq\sum_{k}\sup_{x \in [x_{k-1}, x_k]} f(x)
+ \sum_{k}\sup_{x \in [x_{k-1}, x_k]} g(x) \\& = U(P, f, \alpha) + U(P, g, \alpha)

```

Finally, the inequality is proved by
taking the infimum on both sides over $P$.

````

````{prf:example}

The inequality {eq}`eq:41` may be strict.
Consider $f(x) = \ind_{\Q} (x)$ and $g(x) = -\ind_{\Q}(x)$
restricted on $[a, b]$.
We have

```{math}
\overline{\int_a^b} f+g \dif\alpha
= \overline{\int_a^b} 0 \dif\alpha
= 0

```

and

```{math}
\overline{\int_a^b} f \dif\alpha = b-a
\quad\text{and}\quad\overline{\int_a^b} g \dif\alpha = 0

```

````