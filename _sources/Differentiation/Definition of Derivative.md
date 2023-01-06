# Definition of Derivative

Observe the slopes of secant lines (displayed as dashed lines) of the curve shown in {numref}`fig:1`
```{figure} ../figures/secant-lines-and-a-tangent-line.png
---
name: fig:1
---
Secant lines and a tangent line of curve $y=e^x$.
```


All secant lines have a common point of intersection, $(0, 1)$. And as the other intersection point gets closer and closer to $(0, 1)$, the slope of the secant line tends to converge to some number. This number, the limiting slope, is precisely the **derivative** of this curve/function at $x=0$, which we shall soon define. We can draw a straight line passing through the point $(0,1)$ with the limiting slope. This line is then called the tangent of the curve at point $(0,1)$, as illustrated in {numref}`fig:1`.


````{prf:definition}
Let  $f$  be defined on an open interval  $(a, b)$ , and let  $c \in (a, b)$  an interior point. Then  $f$  is said to be  **differentiable**   at  $c$  if the limit

```{math}
\begin{align*}
\lim _ {x \to c} \frac{f(x) - f(c)}{x - c}
\end{align*}
```

exists. This limit, denoted by  $f^\prime(c)$ , is called the  **derivative**   of  $f$  at point  $c$ .
````

If $f^\prime(c)$ exists $\forall c \in I$ for some interval $I$, then we can define a function $f^\prime$ on $I$, which is called the derivative of $f$. Here the word *derivative* means a function instead of just a number.


The definition of derivatives we present here involves the limit obtained by letting one point approach the other one, $x \to c$. For computational convenience, we can treat the derivative of $f$ at $c$ as the limit of the fraction $[ f(c+h) - f(c) ] / h$ as $h \to 0$. That is, the limit is reached when the distance between points $x$ and $c$, $h = \abs{x-c}$, is small. The following proposition states this idea formally.


````{prf:proposition}
:label: pro:1
Let  $f$  be defined on  $(a, b)$ . Then  $f$  is differentiable at  $c \in (a, b)$  if and only if

```{math}
:label: eq:3
\begin{align}
\lim _ {h \to 0} \frac{f(c+h) - f(c)}{h}
\end{align}
```

exists. In that case,  $f^\prime(c) = \lim_{h \to 0} [ f(c+h) - f(c) ] / h$ .
````

````{prf:proof}
Suppose  $f$  is differentiable at  $c$ . For an arbitrary  $\varepsilon > 0$ , there exists  $\delta > 0$  such that

```{math}
\begin{align*}
\abs{x - c}  <  \delta \implies \abs{\frac{f(x) - f(c)}{x - c} - f^\prime(c)}  <  \varepsilon
\end{align*}
```

Let number  $h$  be such that  $\abs{h} < \delta$ . Then since  $\abs{(c+h) - c} = \abs{h} < \delta$ , we have

```{math}
\begin{align*}
\abs{\frac{f(c+h) - f(h)}{h} - f^\prime(c)}
=  \abs{\frac{f(c+h) - f(h)}{(c+h) - c} - f^\prime(c)}  <  \varepsilon
\end{align*}
```

This implies the limit  {eq}`eq:3`  exists, and it equals  $f^\prime(c)$ .

Conversely, suppose the limit  {eq}`eq:3`  exists, say it equals  $L$ . Then for  $\varepsilon > 0$  there exists  $\delta > 0$  such that

```{math}
\begin{align*}
\abs{h}  <  \delta \implies \abs{\frac{f(c+h) - f(c)}{h} - L}  <  \varepsilon
\end{align*}
```

Choose  $x$  such that  $\abs{x - c} < \delta$ , we have

```{math}
\begin{align*}
\abs{
\frac{f(x) - f(c)}{x - c} - L
}  =  \abs{
\frac{f(c + (x - c)) - f(c)}{x - c} - L
}  <  \varepsilon
\end{align*}
```

Therefore, the limit  $[f(x) - f(c)]/(x - c)$  exists, which is equal to  $L$ . By the definition of derivatives,  $f$  is differentiable at  $c$ , and  $f^\prime(c) = L$ .
````

````{admonition} Exercise 1
Calculate the derivative of  $e^x$  at  $x = 0$ .
````

````{admonition} Exercise 2
:name: ex:1
Calculate the derivative of

```{math}
\begin{align*}
f(x)
= x^2  \sin \frac{1}{x^2} \ind \{ x  \neq  0 \}
=  \begin{cases}
x^2 \sin \frac{1}{x^2} &x \neq 0 \\
0 &x=0
\end{cases}
\end{align*}
```

at  $x = 0$ .
````

````{admonition} Solution
:class: tip, dropdown
We have

```{math}
\begin{align*}
\frac{f(0+h) - f(0)}{h}
= h  \sin \frac{1}{h^2}
\end{align*}
```

Note the limit of the above expression is zero as  $h \to 0$  by  {prf:ref}`pro:2`  since  $\lim_{h\to 0} h = 0$  and  $\sin (1/h^2)$  is bounded by  $1$ . Hence,  $f^\prime(0) = 0$  by  {prf:ref}`pro:1` .

The graph of  $f(x)$  is shown in  {numref}`fig:2` . As we can see,  $f(x)$  is clamped between curves  $y=x^2$  and  $y=-x^2$  with the same tangents  $y=0$  at  $x=0$ . And we have shown  $f^\prime(0)=0$ , which means that the tangent of  $f(x)$  is also  $y=0$  at  $x=0$ . What conjecture can you make?


```{figure} ../figures/graph-001.png
---
name: fig:2
---
Graph of $f(x) = x^2 \sin \frac{1}{x^2} \ind\{x \neq 0\}$.
```

Moreover, we observe that  $f(x)$  crosses its tangent line at  $x=0$  infinitely many times. This example shows that the tangent line does not have to touch the curve only at one point.
````
## One-Sided Derivatives and Infinite Derivatives

So far, the point at which the derivative is defined has to be an *interior* point. Sometimes, we are required to consider the derivatives at the endpoints of the interval. For example, as we shall see in more detail in \ref{chap:1}, we need to take the derivative of function $F(x) = \int_a^x f(t) \mathrm{d}t$ at $x=a$. Hence, we are motivated to define the **one-sided derivatives**.

If we consider the derivative of $f$, $f^\prime$ as a function, then $f^\prime(x)$ may tend to infinity as $x$ approaches an endpoint. In addition, sometimes we need to interpret the meaning of vertical tangent lines. This leads to the definition of **infinite derivatives**.


````{prf:definition}
Let  $f$  be defined on a closed interval  $I$ . Suppose  $f$  is continuous at point  $c \in I$ . Then  $f$  is said to have a  **right-hand derivative**   at  $c$  if the right-hand limit

```{math}
\begin{align*}
\lim _ {x \to c^{+}} \frac{f(x) - f(c)}{x - c}
\end{align*}
```

exists as a finite number, or the limit is  $\infty$  or  $-\infty$ . This right-hand derivative shall be denoted by  $f^\prime_{+}(c)$ . The  **left-hand derivative**  , denoted by  $f^\prime_{-}(c)$ , is defined similarly. In addition, if  $c$  is an interior point, and  $f^\prime_{+}(c) = f^\prime_{-}(c) = \infty$ , then we write  $f^\prime(c) = \infty$ .  $f^\prime(c) = -\infty$  is similarly defined.
````

````{prf:remark}
Note that though we write  $f^\prime(c) = \infty$  or  $f^\prime(c) = -\infty$ , we do not say  $f$  is differentiable there.
````

It is not very intuitive to imagine, at first thought, a continuous function having infinite derivatives. But there are quite a lot of such examples.


````{prf:example}
:label: eg:1
The first example is constructed by cutting a circle in the middle. If we cut a circle in half and stick the lower half to the right of the upper one, then we have a function with a vertical tangent line in the middle. The explicit expression of this function is

```{math}
\begin{align*}
f(x) =  \begin{cases}
\sqrt{1 - (x-1)^2} &0 \leq x \leq 2 \\
- \sqrt{1 - (x-3)^2} &2 < x \leq 4
\end{cases}
\end{align*}
```

```{figure} ../figures/graph-002.png
Graph of $f(x) = \sqrt{1-(x-1)^2}\ind\{0 \leq x \leq 2\} - \sqrt{1-(x-3)^2}\ind\{2 < x \leq 4\}$.
```


The function is continuous and one can show that  $f^\prime(2) = -\infty$ .
````

````{prf:example}
:label: eg:2
The following next example includes both positive and negative intuitive derivatives, and a point at which the right and left-hand side derivatives are  $\infty$  and  $-\infty$ , respectively. Consider the function

```{math}
\begin{align*}
f(x) =  \sqrt[3]{x^2 (x-1) (x-2)}
\end{align*}
```

Its graph is shown in  {numref}`fig:3` .


```{figure} ../figures/graph-003.png
---
name: fig:3
---
Graph of $f(x) = \sqrt[3]{x^2 (x-1) (x-2)}$.
```

It is an exercise to show  $f^\prime(1) = -\infty$  and  $f^\prime(2) = \infty$ . We now consider the one-sided derivatives at  $x = 0$ . We have

```{math}
\begin{align*}
\frac{f(x) - f(0)}{x - 0}
=  \sqrt[3]{\frac{(x-1)(x-2)}{x}}
\end{align*}
```

Letting  $x \to 0^{+}$  leads to  $f^\prime_{+}(0) = \infty$ , while  $x \to 0^{-}$  yields  $f^\prime_{-}(0) = -\infty$ . Hence, we say the derivative of  $f$  does not exist at  $x = 0$ .
````
