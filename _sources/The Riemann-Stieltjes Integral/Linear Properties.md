# Linear Properties

The following theorem shows the linearity of integrals in the fashion of
the integrands.


````{prf:theorem} 
:label: eq:16

If $f, g \in \mathfrak{R}(\alpha)$ on $[a, b]$,
then $c_1 f + c_2 g \in \mathfrak{R}(\alpha)$ on $[a, b]$.
And

```{math}
:label: eq:16
\int_a^b c_1 f + c_2 g \dif\alpha
= c_1 \int_a^b f \dif\alpha + c_2 \int_a^b g \dif\alpha
```

````

````{prf:proof}

Let $\varepsilon > 0$ be arbitrary.
Because $f$ and $g$ are both Riemann integrable on $[a, b]$,
there exists a partition $P_\varepsilon$ of $[a, b]$
such that for any $P \supseteq P_\varepsilon$ and
set of representatives $T$ of $P$ satisfying

```{math}
:label: eq:15
\abs{S(P,T,f,\alpha) - \int_a^b f \dif \alpha} < \frac{\varepsilon}{\abs{c_1} + \abs{c_2} + 1}\quad\text{and}\quad\abs{S(P,T,g,\alpha) - \int_a^b g \dif \alpha} < \frac{\varepsilon}{\abs{c_1} + \abs{c_2} + 1}
```

:::{note}

The reason of the choice of
the small number $\frac{\varepsilon}{\abs{c_1} + \abs{c_2} + 1}$
will be clear later.
And the $+1$ in the denominator is designed for the case that
both $c_1$ and $c_2$ are zeros.

:::

Consider the Riemann-Stieltjes sum $S(P,T,c_1 f + c_2 g, \alpha)$.
We have
\begin{alignat*}{2}
& \quad &  & \abs{S(P,T,c_1 f + c_2 g, \alpha)
- c_1 \int_a^b f \dif \alpha
- c_2 \int_a^b g \dif \alpha}                   \\
& =     &  & \abs{
\sum_k (c_1 \Delta f_k + c_2 \Delta g_k)
- c_1 \int_a^b f \dif \alpha
- c_2 \int_a^b g \dif \alpha}                   \\
& =     &  & \abs{
c_1 \sum_k \Delta f_k + c_2  \sum_k \Delta g_k
- c_1 \int_a^b f \dif \alpha
- c_2 \int_a^b g \dif \alpha}                   \\
& =     &  & \abs{
c_1 S(P,T,f,\alpha) + c_2 S(P,T,g,\alpha)
- c_1 \int_a^b f \dif \alpha
- c_2 \int_a^b g \dif \alpha}                   \\
& \leq  &  & \abs{c_1} \abs{
S(P,T,f,\alpha) - \int_a^b f \dif \alpha
} + \abs{c_2} \abs{
S(P,T,g,\alpha) - \int_a^b g \dif \alpha
}
\end{alignat*}
Applying {eq}`eq:15`, we obtain

```{math}
\abs{S(P,T,c_1 f + c_2 g, \alpha)
- c_1 \int_a^b f \dif \alpha
-  c_2 \int_a^b g \dif \alpha}& < \abs{c_1}\frac{\varepsilon}{\abs{c_1} + \abs{c_2} + 1}
+ \abs{c_2}\frac{\varepsilon}{\abs{c_1} + \abs{c_2} + 1}\\& = \frac{\varepsilon (\abs{c_1} + \abs{c_2})}{\abs{c_1} + \abs{c_2} + 1}\\& < \varepsilon
```

This shows that $c_1 f + c_2 g$
is also Riemann integrable on $[a, b]$, and {eq}`eq:16` is satisfied.

````