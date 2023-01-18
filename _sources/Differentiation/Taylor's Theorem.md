```{index} Taylor's theorem
```
# Taylor's Theorem


If $f$ is differentiable at $x = c$, then it can be approximated by

```{math}
:label: eq:19
\begin{align}
f(x)  \approx  f(c) + f^ \prime (c)(x-c)
\end{align}
```

when $\abs{x-c}$ is small. Geometrically, $f$ is close to its tangent line at $x=c$ near the point of tangency. Another way to look at {eq}`eq:19` is that $f$ is approximated by a polynomial of degree one whose first-order derivative at $x=c$ is exactly $f^\prime(c)$. And the value of this polynomial at $x=c$ is $f(c)$, that is, its zeroth-order derivative is $f(c)$. We can extend this idea by approximating $f$ with higher degree polynomials whose derivatives of all orders match with that of $f$ at $x = c$.


````{prf:example}
Suppose we know any order derivative of the function  $f(x) = e^x$  is itself. That is,

```{math}
\begin{align*}
f^ {(k)} (x) = f(x) = e^x  \quad \forall  k = 0, 1, 2,  \ldots
\end{align*}
```

Consider the polynomial

```{math}
\begin{align*}
p_n(x)
=  \sum _ {k=0} ^n  \frac{x^k}{k!}
= 1 + x +  \frac{x^2}{2}  +  \frac{x^3}{6}  +  \cdots  +  \frac{x^n}{n!}
\end{align*}
```

One can check that

```{math}
\begin{align*}
p^ {(k)} _n(0) = f^ {(k)} (0)
\quad \forall  k = 0, 1,  \ldots , n
\end{align*}
```

Hence, it is reasonable to approximate  $f(x)$  with  $p_n(x)$  near point  $x = 0$ .  {numref}`fig:7`  compares  $f$  with  $p_n$  with several choices of  $n$ .


```{figure} ../figures/graph-008.png
---
name: fig:7
---
Approximations of $f$ at $x=0$.
```
````

In general, a function $f$ can be approximated by the polynomial

```{math}
\begin{align*}
\sum _ {k=0} ^ {n-1} \frac{f^{(k)}(c)}{k} (x-c)^k
= f(c) + f^ \prime (c)(x-c) +  \cdots  +  \frac{f^{(n)}(c)}{n!} (x-c)^ {n}
\end{align*}
```

at point $c$ provided that $f$ has up to $(n+1)$-th order derivative. The reason why we approximate $f$ with a polynomial of $n$ degree is that we have a remainder term, which makes use of the $(n+1)$-th order derivative. The remainder tells us how accurate the approximation is. The formal statement is described in the following theorem, the **Taylor's theorem**.


````{prf:theorem} Taylor
:label: thm:16
Taylor
Let  $f$  be a function having  $(n+1)$ -th order derivative everywhere in  $(a, b)$ , and suppose  $f^{(n)}$  is continuous on  $[a, b]$ . Let  $c \in (a, b)$  be an interior point. Then for every  $x \in[a, b]$  other than  $c$ , we have

```{math}
:label: eq:20
\begin{align}
f(x) =  \sum _ {k=0} ^ {n} \frac{f^{(k)}(c)}{k!} (x-c)^k +  \frac{f^{(n+1)}(\xi)}{(n+1)!} (x-c)^ {n+1}
\end{align}
```

where  $\xi$  is some number in between  $x$  and  $c$ .
````


This theorem can be obtained as an immediate corollary of the following extension of the mean value theorem.


````{prf:theorem}
:label: thm:17
Let  $f$  and  $g$  be two functions each having  $(n+1)$ -th order derivative everywhere in  $(a, b)$ . Suppose that  $f^{(n)}$  and  $g^{(n)}$  are both continuous on  $[a, b]$ . Let  $c \in (a, b)$  be an interior point. Then for every  $x \in[a, b]$  other than  $c$ , we have

```{math}
:label: eq:21
\begin{align}
\left[ f(x) -  \sum _ {k=0} ^ {n} \frac{f^{(k)}(c)}{k!} (x-c)^k
\right] g^ {(n+1)} ( \xi )
= f^ {(n+1)} ( \xi )  \left[ g(x) -  \sum _ {k=0} ^ {n} \frac{g^{(k)}(c)}{k!} (x-c)^k
\right]
\end{align}
```

where  $\xi$  is some number in between  $x$  and  $c$ .
````

````{prf:remark}
Taking  $g(x) = (x-c)^{n+1}$ , we have

```{math}
\begin{align*}
g^ {(n+1)} ( \xi ) = (n+1)!
\quad \text{and} \quad \sum _ {k=0} ^ {n} \frac{g^{(k)}(c)}{k!} (x-c)^k = 0
\end{align*}
```

Then  {eq}`eq:21`  reduces to  {eq}`eq:20` , and hence this theorem reduces to  {prf:ref}`thm:16` .
````

````{prf:proof}
Define functions  $F(t)$  and  $G(t)$  on  $[a, b]$  by

```{math}
\begin{align*}
F(t) =  \sum _ {k=0} ^ {n} \frac{f^{(k)}(t)}{k!} (x-t)^k
\quad \text{and} \quad
G(t) =  \sum _ {k=0} ^ {n} \frac{g^{(k)}(t)}{k!} (x-t)^k
\quad \forall  t  \in[a, b]
\end{align*}
```

Note that  $F$  and  $G$  are continuous on  $[a, b]$ , and they have derivatives everywhere in  $(a, b)$ . Applying the generalized mean value theorem ( {prf:ref}`thm:7` ) to  $F(t)$  and  $G(t)$  on the closed interval joining points  $x$  and  $c$ , we have

```{math}
:label: eq:22
\begin{align}
[ F(x) - F(c) ]  G^ \prime ( \xi )
= F^ \prime ( \xi )  [ G(x) - G(c) ]
\end{align}
```

for some number  $\xi$  in between  $x$  and  $c$ .



After a few steps of computation, we obtain derivatives  $F^\prime(t)$  and  $G^\prime(t)$  as follows.

```{math}
:label: eq:23
\begin{align}
F^ \prime (t) =  \frac{f^{(n+1)}(t)}{n!} (x-t)^ {n} \quad \text{and} \quad
G^ \prime (t) =  \frac{g^{(n+1)}(t)}{n!} (x-t)^ {n} \quad \forall  t  \in (a, b)
\end{align}
```

We also note that

```{math}
:label: eq:24
\begin{align}
F(x) = f(x),
\quad
F(c) =  \sum _ {k=0} ^ {n} \frac{f^{(k)}(c)}{k!} (x-c)^k,
\quad
G(x) = g(x),
\quad \text{and} \quad
G(c) =  \sum _ {k=0} ^ {n} \frac{g^{(k)}(c)}{k!} (x-c)^k
\end{align}
```

Plugging  {eq}`eq:23`  and  {eq}`eq:24`  into  {eq}`eq:22`  leads to  {eq}`eq:21` .
````


We can rewrite {eq}`eq:20` as

```{math}
\begin{align*}
f(x) = p_n(x) + r_n(x)
\end{align*}
```

where

```{math}
\begin{align*}
p_n(x) =  \sum _ {k=0} ^ {n} \frac{f^{(k)}(c)}{k!} (x-c)^k
\end{align*}
```

is the polynomial approximation, and

```{math}
\begin{align*}
r_n(x) =  \frac{f^{(n+1)}(\xi)}{(n+1)!} (x-c)^ {n+1}
\end{align*}
```

is the remainder. The smaller the absolute value of $r_n(x)$ is, the more accurate the approximation will be.



````{admonition} Exercise 8
Use Taylor's theorem ( {prf:ref}`thm:16` ) to approximate the value of  $\ln(0.6)$  so that the absolute error is less than  $0.1$ .
````

````{admonition} Solution
:class: tip, dropdown
Putting  $f(x) = \ln(x)$  in  {eq}`eq:20` , we have

```{math}
\begin{align*}
p_n(x;c) &=  \sum _ {k=0} ^ {n} \frac{f^{(k)}(c)}{k!} (x-c)^k
=  \ln (c) +  \sum _ {k=1} ^ {n} \frac{(-1)^{k+1}}{k c^n} (x-c)^k  \\
r_n(x;c) &=  \frac{(-1)^{n+2}}{(n+1) \xi^{n+1}} (x-c)^ {n+1}
\end{align*}
```

Since the value of  $\ln(x)$  at  $x=1$  is known, i.e.,  $\ln(1) = 0$ , we can expand it about that point by putting  $c=1$ . Then we have

```{math}
\begin{align*}
p_n(x) =  \sum _ {k=1} ^ {n} \frac{(-1)^{k+1}}{k} (x-1)^k
\quad \text{and} \quad
r_n(x) =  \frac{(-1)^{n+2}}{(n+1) \xi^{n+1}} (x-1)^ {n+1}
\end{align*}
```

To approximate  $\ln(0.6)$  by  $p_n(0.6)$  within the error bounds, we need to estimate the remainder  $r_n(0.6)$ . Note that  $\xi$  is now some number in between  $0.6$  and  $1$  since  $x=0.6$  and  $c=1$ . The absolute value of  $r_n(0.6)$  is bounded above by

```{math}
:label: eq:25
\begin{align}
\abs{r_n(0.6)}  =  \frac{1}{n+1} \abs{\frac{0.6-1}{\xi}} ^ {n+1}
<  \frac{1}{n+1} \left(\ frac {0.4} {0.6} \right)^{n+1}
=  \frac{1}{n+1} \left(\ frac {2} {3} \right)^{n+1}
\end{align}
```


We then estimate  $\abs{r_n(0.6)}$  using  {eq}`eq:25`  by trying the first few values of  $n$ . We have

```{math}
\begin{align*}
r_1(0.6) =  \frac{2}{9}  > 0.1
\quad \text{and} \quad
r_2(0.6) =  \frac{8}{81}  < 0.1
\end{align*}
```

Hence, it is adequate to approximate  $\ln(0.6)$  by  $p_2(0.6)$ . The approximated value is

```{math}
\begin{align*}
\ln (0.6)  \approx  p_2(0.6) = (0.6-1) -  \frac{1}{2} \times (0.6-1)^2 = -0.48
\end{align*}
```

We can also visualize the result in  {numref}`fig:8` . As we can see, the approximated value is quite close to the true value. And the absolute error is actually much less than the required bound,  $0.1$ .

```{figure} ../figures/taylor-approx.png
---
name: fig:8
---
Approximation of $\ln(0.6)$.
```
````
