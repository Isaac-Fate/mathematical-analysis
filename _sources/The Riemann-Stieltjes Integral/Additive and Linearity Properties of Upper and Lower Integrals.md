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
\noindent **Proof of RHS $\leq$ LHS:** 
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