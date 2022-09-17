# Integrators of Bounded Variation

````{prf:theorem}

If $f \in\mathfrak{R}(\alpha)$ on $[a, b]$, then $f \in\mathfrak{R}(V_a^x(\alpha))$ on $[a, b]$ where $V_a^x(\alpha)$ is the total variation of $\alpha$, which is regarded as a function of $x$ as in {prf:ref}`def:8`.

````


Before presenting the proof, we first introduce some notations we shall use as well as the general strategy of this proof.



For a subinterval $[x_{k-1}, x_k]$ in the partition $P = \left\{ x_0, \ldots, x_n \right\}$ on $[a, b]$, we adopt the following notation:

```{math}
\begin{align*}
M_k &= \sup_{x \in[x_{k-1}, x_k]} f(x) &
m_k &= \inf_{x \in[x_{k-1}, x_k]} f(x) & 
\Delta V_k &= V_{x_{k-1}}^{x_k}(\alpha)
\end{align*}
```

And we write $V(x)$ instead of $V_a^x(\alpha)$ to emphasize that the total variation is a function of $x$.



Observe that $V(x)$ is monotonically increasing, hence we shall prove $f$ is integrable with respect to $V(x)$ mainly relies on {prf:ref}`thm:4`. We intend to bound the difference of the upper and the lower Darboux sum, which is shown in the following, with an arbitrarily small positive number.

```{math}
\begin{align*}
U(P,f,V) - L(P,f,V)
&= \sum(M_k - m_k) \Delta V_k \\&= \sum(M_k - m_k) \left( \Delta V_k - \abs{\Delta\alpha_k}\right)
+ \sum(M_k - m_k) \abs{\Delta\alpha_k}\end{align*}
```

Therefore, we shall focus on bounding each of the two terms on the right-hand side of the above equation.



We now present the proof as follows.


````{prf:proof}


If $f$ is a constant function, then this theorem holds trivially. We assume that $f$ is non-constant in the rest of the proof. Let $A$ be given by 

```{math}
\begin{align*}
A = \sup_{x \in[a, b]} f(x) - \inf_{x \in[a, b]} f(x)
\end{align*}
```

Since $f$ is non-constant, it is clear that $A > 0$.



Let $\varepsilon > 0$ be chosen arbitrarily. Since $\alpha$ is of bounded variation on $[a, b]$, by the definition of total variations, there exists a partition $P^\prime_\varepsilon$ on $[a, b]$ such that 

```{math}
:label: eq:86
\begin{align}
V_a^b(\alpha) 
< V(P, \alpha)
+ \frac{\varepsilon}{3A}\quad\forall P \supset P^\prime_\varepsilon\end{align}
```

We shall use this inequality later.



Now, we prepare another inequality that will be in use. Because $f \in\mathfrak{R}(\alpha)$, there exists a partition $P^{\prime\prime}_\varepsilon$ such that

```{math}
:label: eq:87
\begin{align}\abs{
\sum \left (f(s_k) - f(t_k)\right ) 
\Delta \alpha_k
} < \frac{\varepsilon}{3}\quad\forall P \supset P^{\prime\prime}_\varepsilon\end{align}
```

where $s_k$ and $t_k$ are any two points in the $k$-th subinterval of $P$.



Let $P_\varepsilon = P^\prime_\varepsilon\cup P^{\prime\prime}_\varepsilon$, and let $P = \left\{x_0, \ldots, x_n\right\}\supset P_\varepsilon$ be a refinement. We have 

```{math}
\begin{align*}
U(P,f,V) - L(P,f,V)
&= \sum_{k=1}^n (M_k - m_k) \Delta V_k \\&= \sum_{k=1}^n (M_k - m_k) \left( \Delta V_k - \abs{\Delta\alpha_k}\right)
+ \sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}\end{align*}
```

Recall $A = \sup f - \inf f$. Hence, the right-hand side of the equality above can be further enlarged to

```{math}
:label: eq:88
\begin{align}
U(P,f,V) - L(P,f,V)
\leq A \sum_{k=1}^n \left( \Delta V_k - \abs{\Delta\alpha_k}\right)
+ \sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}\end{align}
```

Note that $P \supset P_\varepsilon\supset P^\prime_\varepsilon$. It then follows from {eq}`eq:86` that 

```{math}
\begin{align*}\sum_{k=1}^n \Delta V_k
\leq V_a^b(\alpha) 
< V(P, \alpha)
+ \frac{\varepsilon}{3A}
= \sum_{k=1}^n \abs{\Delta\alpha_k}
+ \frac{\varepsilon}{3A}\end{align*}
```

Rearranging the terms, we obtain 

```{math}
:label: eq:89
\begin{align}\sum_{k=1}^n \left( \Delta V_k - \abs{\Delta\alpha_k}\right)
< \frac{\varepsilon}{3A}\end{align}
```

By combining {eq}`eq:88` and {eq}`eq:89`, we have 

```{math}
:label: eq:90
\begin{align}
U(P,f,V) - L(P,f,V)
< \frac{\varepsilon}{3}
+ \sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}\end{align}
```


It requires much more work to bound the term $\sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}$ in {eq}`eq:90`. Let $h$ be a positive number given by 

```{math}
\begin{align*}
h = \frac{\varepsilon}{3(V_a^b (\alpha) + 1)}\end{align*}
```

Let $I(P), J(P) \subset\left\{0, 1, \ldots, n\right\}$ be defined as 

```{math}
\begin{align*}
I(P) &= \set{k}{\Delta\alpha_k \geq 0}& 
J(P) &= \set{k}{\Delta\alpha_k < 0}\end{align*}
```


For $k \in I(P)$, we can choose a pair of points, $s_k$ and $t_k$, in the $k$-th subinterval of $P$ such that 

```{math}
\begin{align*}
M_k - m_k < f(s_k) - f(t_k) + h
\end{align*}
```

In this case, 

```{math}
:label: eq:91
\begin{align}(M_k - m_k)\abs{\Delta\alpha_k}
< \left(f(s_k) - f(t_k) + h\right)\abs{\Delta\alpha_k}
=  \left(f(s_k) - f(t_k) + h\right) \Delta\alpha_k
\end{align}
```


On the other hand, for $k \in J(P)$, we can choose a pair of points, $s_k$ and $t_k$, in the $k$-th subinterval of $P$ such that 

```{math}
\begin{align*}
M_k - m_k < -f(s_k) + f(t_k) + h
\end{align*}
```

It then follows that

```{math}
:label: eq:92
\begin{align}(M_k - m_k)\abs{\Delta\alpha_k}
< \left(-f(s_k) + f(t_k) + h\right)\abs{\Delta\alpha_k}
=  \left(f(s_k) - f(t_k) - h\right) \Delta\alpha_k
\end{align}
```


Compare {eq}`eq:91` and {eq}`eq:92`, we conclude

```{math}
\begin{align*}(M_k - m_k)\abs{\Delta\alpha_k}
< \left(f(s_k) - f(t_k)\right) \Delta\alpha_k
+ h \abs{\Delta\alpha_k}\quad\forall k \in\left\{0, 1, \ldots, n\right\}\end{align*}
```

Therefore, 

```{math}
\begin{align*}\sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}&< \sum_{k=1}^n \left(f(s_k) - f(t_k)\right) \Delta\alpha_k + h \sum_{k=1}^n \abs{\Delta\alpha_k}\\&\leq\sum_{k=1}^n \left(f(s_k) - f(t_k)\right) \Delta\alpha_k + h V_a^b (\alpha) \\&< \frac{\varepsilon}{3} + \sum_{k=1}^n \left(f(s_k) - f(t_k)\right)\Delta\alpha_k \\&\leq\frac{\varepsilon}{3} + \abs{\sum_{k=1}^n \left (f(s_k) - f(t_k)\right )\Delta\alpha_k}\end{align*}
```

In summary,

```{math}
:label: eq:93
\begin{align}\sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}
< \frac{\varepsilon}{3} + \abs{\sum_{k=1}^n \left (f(s_k) - f(t_k)\right )\Delta\alpha_k}\end{align}
```

Since $P \supset P_\varepsilon\supset P^{\prime\prime}_\varepsilon$, we may apply {eq}`eq:87` to {eq}`eq:93` and obtain that 

```{math}
:label: eq:94
\begin{align}\sum_{k=1}^n (M_k - m_k) \abs{\Delta\alpha_k}
< \frac{\varepsilon}{3} + \frac{\varepsilon}{3}
= \frac{2\varepsilon}{3}\end{align}
```


Finally, by combining {eq}`eq:90` and {eq}`eq:94`, we have 

```{math}
\begin{align*}
U(P,f,V) - L(P,f,V)
< \frac{\varepsilon}{3} + \frac{2\varepsilon}{3}
= \varepsilon\end{align*}
```

Therefore, $f \in\mathfrak{R}(V(x))$ by {prf:ref}`thm:4` since $V(x)$ is increasing.

````
