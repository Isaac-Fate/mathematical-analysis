# Derivatives and Continuity

The next theorem helps to reduce some theorems on derivatives to theorems on continuity.


````{prf:theorem}
:label: thm:1
Let  $f$  be a function defined on  $(a, b)$ , and  $c \in (a, b)$  a fixed point in that interval. We have the following statements:

- (1) If  $f$  is differentiable at  $c$ , then there exists a function  $\phi$  on  $(a, b)$  which is continuous at  $c$ , and satisfies

```{math}
:label: eq:1
\begin{align}
f(x) - f(c) = (x - c)  \phi (x)
\quad \forall  x  \in (a, b)
\end{align}
```

And  $f^\prime(c) = \phi(c)$ .
- (2) Conversely, if there exists a function  $\phi$  on  $(a, b)$  which is continuous at  $c$ , and satisfies  {eq}`eq:1` , then  $f$  is differentiable at  $c$  with  $f^\prime(c) = \phi(c)$ .
````

The function $\phi$ is precisely the slope of function $f$'s secant line.


````{prf:proof}
(Proof of 1) Suppose  $f$  is differentiable at  $c$ . Define

```{math}
\begin{align*}
\phi (x) =  \frac{f(x) - f(c)}{x - c} ,
\quad  x  \neq  c
\quad \text{and} \quad \phi (c) =  \lim _ {x \to c} \frac{f(x) - f(c)}{x - c}
\end{align*}
```

Note that  $\phi(c)$  is well-defined since the limit (which equals  $f^\prime(c)$ ) indeed exists by the definition of the derivative of  $f$  at  $c$ . Notice also that by defining function  $\phi$  in this way, it is automatically continuous at  $c$ . And of course, the equation  {eq}`eq:1`  holds.

(Proof of 2) It follows from  {eq}`eq:1`  that

```{math}
\begin{align*}
\phi (x) =  \frac{f(x) - f(c)}{x - c} \quad \forall  x  \neq  c
\end{align*}
```

Since  $\phi$  is continuous at  $c$ , by sending  $x \to c$ , we have

```{math}
\begin{align*}
\phi (c) =  \lim _ {x \to c} \phi (x)
=  \lim _ {x \to c} \frac{f(x) - f(c)}{x - c}
\end{align*}
```

This implies  $f$  is differentiable at  $c$ , and  $f^\prime(c) = \phi(c)$ .
````

With the help of {prf:ref}`thm:1`, we can easily show that $f$ must be continuous at $c$ if it is differentiable there.


````{prf:theorem}
:label: thm:2
Let  $f$  be defined on  $(a, b)$ . If  $f$  is differentiable at  $c \in (a, b)$ , then it is continuous at  $c$ .
````

````{prf:proof}
By  {prf:ref}`thm:1` , there exists a function  $\phi$  on  $(a, b)$  such that  $\phi$  is continuous at  $c$ , and

```{math}
:label: eq:2
\begin{align}
f(x) - f(c) = (x - c)  \phi (x)
\quad \forall  x  \in (a, b)
\end{align}
```

Since the limit of the right-hand side in  {eq}`eq:2`  exists as  $x \to c$ , the limit of the left-hand side also exists, and

```{math}
\begin{align*}
\lim _ {x \to c}  f(x) - f(c)
=  \lim _ {x \to c} (x - c)  \phi (x)
= 0
\end{align*}
```

This implies

```{math}
\begin{align*}
\lim _ {x \to c}  f(x) = f(c)
\end{align*}
```

Hence,  $f$  is continuous at  $c$ .
````
