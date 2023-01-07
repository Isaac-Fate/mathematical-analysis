# Step Functions as Integrators


If the integrator $\alpha$ is a constant function on $[a, b]$, then the $f$ is always integrable with $\int_{a}^{b} f\; \mathrm{d}\alpha = 0$ since the Stieltjes sum $S(P,f,\alpha) = 0$ for any partition.



What if $\alpha$ is constant except for one jump or removable discontinuity at $c \in (a, b)$? For example, $\alpha$ may look like functions shown in {numref}`fig:9`.


```{figure} ../figures/step-func-integrator.png
---
name: fig:9
---
Left: $\alpha(x)$ is continuous from the right at $x=0$. Middle: $\alpha(x)$ is continuous from the left at $x=0$. Right: $\alpha(x)$ has a removable discontinuity at $x=0$.
```


In this case, $f$ may not be even integrable, and if it is, $\int_{a}^{b} f \; \mathrm{d}\alpha$ may not be zero.


````{prf:theorem}
:label: thm:24
Let  $c \in (a, b)$ . Define a function  $\alpha$  on  $[a, b]$  as follows. The values of  $\alpha(a)$ ,  $\alpha(b)$  and  $\alpha(c)$  are chosen arbitrarily, and elsewhere

```{math}
\begin{align*}
\alpha (x) =  \begin{cases}
\alpha(a) & a \leq x < c \\
\alpha(b) & c < x \leq b
\end{cases}
\end{align*}
```

Suppose  $f$  is a bounded function defined on  $[a, b]$  in such a way that

1. at least one of  $f$  and  $\alpha$  is continuous from the left at  $c$ , and
2. at least one of  $f$  and  $\alpha$  is continuous from the right at  $c$ .

Then,  $f \in \mathfrak{R}(\alpha)$  on  $[a, b]$  with

```{math}
:label: eq:40
\begin{align}
\int _ {a} ^ {b}  f  \; \mathrm{d} \alpha
= f(c)  [ \alpha (b) -  \alpha (a) ]
\end{align}
```
````

````{prf:proof}
(Possible expressions of  $S(P,f,\alpha)$ ) We first investigate the expression of the Stieltjes sum  $S(P,f,\alpha)$ . Given any partition  $P$  on  $[a, b]$ . If  $c \notin P$ , then we have

```{math}
\begin{align*}
S(P,f, \alpha ) = f(c)  [ \alpha (b) -  \alpha (a) ]
\end{align*}
```

And if  $c \in P$ , we have

```{math}
\begin{align*}
S(P,f, \alpha )
= f(c- \delta _1)  [ \alpha (c) -  \alpha (a) ]
+ f(c+ \delta _2)  [ \alpha (b) -  \alpha (c) ]
\end{align*}
```

where  $c-\delta_1$  and  $c+\delta_2$ ( $\delta_1, \delta_2 \geq 0$ ) are two points in the adjacent sub-intervals sharing the same endpoint  $c$ . Note that  $\delta_1$  and  $\delta_2$  can not be too large. In fact, they satisfy that

```{math}
\begin{align*}
0  \leq \delta _1,  \delta _2  \leq \norm{P}
\end{align*}
```

Taking into consideration both cases, we have the following inequality for any partition  $P$ :

```{math}
:label: eq:39
\begin{multline}
\abs{
S(P,f,\alpha)
- f(c) [\alpha(b) - \alpha(a)]
} \\ \leq \abs{f(c-\delta_1) - f(c)} \abs{\alpha(c) - \alpha(a)}
+  \abs{f(c+\delta_2) - f(c)} \abs{\alpha(b) - \alpha(c)}
\end{multline}
```

where of course  $0 \leq \delta_1, \delta_2 \leq \norm{P}$ .


:::{note}
In fact, the left-hand side of  {eq}`eq:39`  reduces to zero when  $c \notin P$  and the equality holds if  $c \in P$ .
:::


There are altogether four scenarios concerning the continuity of  $f$  and  $\alpha$  at point  $c$ , which are

1. $\alpha(x)$  is continuous at  $x=c$ .
2. $\alpha(x)$  is continuous from the right at  $x=c$ , and  $f(x)$  is continuous from the left at  $x=c$ .
3. $\alpha(x)$  is continuous from the left at  $x=c$ , and  $f(x)$  is continuous from the right at  $x=c$ .
4. $f(x)$  is continuous at  $x=c$ .


(Proof of 1) If  $\alpha(x)$  is continuous at  $x=c$ , then  $\alpha$  is a constant function. In this case,  $f$  is certainly integrable with respect to  $\alpha$  with  $\int_{a}^{b} f \; \mathrm{d}\alpha = 0$ . And  {eq}`eq:40`  holds since its right-hand side is also zero for  $\alpha(a) = \alpha(b)$ .



(Proof of 2) Because  $\alpha(x)$  is continuous from the right at  $x=c$ , we have  $\alpha(c) = \alpha(b)$ , and the inequality  {eq}`eq:39`  reduces to

```{math}
:label: eq:41
\begin{align}
\abs{
S(P,f,\alpha)
- f(c) [\alpha(b) - \alpha(a)]
} \leq \abs{f(c-\delta_1) - f(c)} \abs{\alpha(c) - \alpha(a)}
\end{align}
```

Given  $\varepsilon > 0$ , since  $f(x)$  is continuous from the left at  $x=c$ , there exists  $\delta > 0$  such that

```{math}
:label: eq:42
\begin{align}
- \delta  < x - c < 0
\implies \abs{f(x) - f(c)}  <  \frac{\varepsilon}{\abs{\alpha(c) - \alpha(a)} + 1}
\end{align}
```

Choose a partition  $P_\varepsilon$  on  $[a, b]$  with  $\norm{P_\varepsilon} < \delta$ . Let  $P \supset P_\varepsilon$  be an arbitrary refinement. Applying  {eq}`eq:41`  to  $P$ , we have  $\delta_1 < \norm{P} \leq \norm{P_\varepsilon}<\delta$ . We may then apply  {eq}`eq:42` , and obtain

```{math}
\begin{multline*}
\abs{
S(P,f,\alpha)
- f(c) [\alpha(b) - \alpha(a)]
} \leq \abs{f(c-\delta_1) - f(c)} \abs{\alpha(c) - \alpha(a)} \\
<  \frac{\varepsilon}{\abs{\alpha(c) - \alpha(a)} + 1} \abs{\alpha(c) - \alpha(a)}
<  \varepsilon
\end{multline*}
```

This implies  $f \in \mathfrak{R}(\alpha)$  on  $[a, b]$ , and  {eq}`eq:40`  holds.



(Proof of 3) The proof, in this case, is similar to that of 2.



(Proof of 4) Given  $\varepsilon > 0$ . Because  $f(x)$  is continuous at  $x=c$ , there exists  $\delta > 0$  such that

```{math}
:label: eq:43
\begin{align}
\abs{x - c}  <  \delta \implies \abs{f(x) - f(c)}  <  \frac{\varepsilon}{\abs{\alpha(c) - \alpha(a)} + \abs{\alpha(b) - \alpha(c)} + 1}
\end{align}
```

Choose a partition  $P_\varepsilon$  with  $\norm{P_\varepsilon} < \delta$ . Let  $P \supset P_\varepsilon$ . Applying  {eq}`eq:39`  to  $P$ , we have  $0 \leq \delta_1, \delta_2 \leq \norm{P} \leq \norm{P_\varepsilon} < \delta$ . Then  {eq}`eq:39`  and  {eq}`eq:43`  yield

```{math}
\begin{multline*}
\abs{
S(P,f,\alpha)
- f(c) [\alpha(b) - \alpha(a)]
} \\
<    \frac{\varepsilon}{\abs{\alpha(c) - \alpha(a)} + \abs{\alpha(b) - \alpha(c)} + 1} ( \abs{\alpha(c) - \alpha(a)}
+  \abs{\alpha(b) - \alpha(c)} )
<  \varepsilon
\end{multline*}
```

Hence,  $f \in \mathfrak{R}(\alpha)$ , and  {eq}`eq:40`  holds. This completes the proof.
````

````{prf:example}
:label: eg:3
Let

```{math}
\begin{align*}
f(x) =  \begin{cases}
\frac{\abs{\sin(x)}}{x} &x \neq 0 \\
-1 &x = 0
\end{cases} \quad \text{and} \quad \alpha (x) =  \begin{cases}
-1 &x < 0 \\
1 &x \geq 0
\end{cases} ,
\quad  x  \in[-3\pi, 3\pi]
\end{align*}
```
{numref}`fig:10`  exhibits the graphs of these two functions.


```{figure} ../figures/graph-009.png
---
name: fig:10
---
Left: integrand $f$ is continuous from the left at $0$. Right: integrator $\alpha$ is continuous from the right at $0$.
```

The integrator  $\alpha$  is constant except for a jump discontinuity at  $0$ . We note that  $\alpha$  is continuous from the  *right*  at  $0$ , and  $f$  is continuous from the  *left*  at  $0$ . Hence, the conditions in  {prf:ref}`thm:24`  are satisfied, and we conclude  $f \in \mathfrak{R}(\alpha)$  on  $[-3\pi, 3\pi]$  with

```{math}
\begin{align*}
\int _ {-3\pi} ^ {3\pi} f  \; \mathrm{d} \alpha
= f(0) [ \alpha (3 \pi ) -  \alpha (-3 \pi ) ]
= f(0)  \cdot  2 = -2
\end{align*}
```
````

````{prf:example}
If we alter the function  $f$  in the example above ( {prf:ref}`eg:3` ) by re-defining  $f(0) = 1$  and keep the integrator  $\alpha$  unchanged, then  $f$  is no longer integrable with respect to  $\alpha$ . Now,

```{math}
\begin{align*}
f(x) =  \begin{cases}
\frac{\abs{\sin(x)}}{x} &x \neq 0 \\
1 &x = 0
\end{cases} \quad \text{and} \quad \alpha (x) =  \begin{cases}
-1 &x < 0 \\
1 &x \geq 0
\end{cases} ,
\quad  x  \in[-3\pi, 3\pi]
\end{align*}
```

Note that we cannot apply  {prf:ref}`thm:24`  here since neither the integrand nor the integrator is continuous from the left of  $0$ .

To show that  $f$  is indeed not integrable, we consider  $f$  and  $\alpha$  on  $[-3\pi, 0]$  and  $[0, 3\pi]$  separately. It is evident that  $f \in \mathfrak{R}(\alpha)$  on  $[0, 3\pi]$  with  $\int_{0}^{3\pi}f \; \mathrm{d}\alpha = 0$ . We now consider the other half interval  $[-3\pi, 0]$ . Given any partition  $P = \{x_0, x_1, \ldots, x_n\}$  on  $[-3\pi, 0]$ , we have

```{math}
\begin{align*}
S(P,f, \alpha )
= f(t_n)  [ \alpha (x_n) -  \alpha (x_ {n-1} ) ]
= 2 f(t_n)
=  \begin{cases}
2 \abs{\sin(t_n)} / t_n < 0 &t_n < 0\\
1 &t_n = 0
\end{cases}
\end{align*}
```

Therefore,  $f$  is not integrable with respect to  $\alpha$  on  $[-3\pi, 0]$  since for any partition  $P$ , we can always choose the last point  $t_n$  such that the Stieltjes sum  $S(P,f,\alpha)$  does not fall in a neighborhood of some number. Finally, by  {prf:ref}`thm:25` ,  $f$  cannot be integrable with respect to  $\alpha$  on the whole interval  $[-3\pi, 3\pi]$ .

As a matter of fact,  $f \notin \mathfrak{R}(\alpha)$  on  $[-3\pi, 3\pi]$  if we re-define  $f(0)$  other than  $1$  while keep  $\alpha$  unchanged.
````
