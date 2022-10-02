# Change of Variables

````{prf:theorem}

Suppose $\phi$ is continuously differentiable on $[c, d]$, and $f$ is continuous on $\phi([c, d])$. Define function $F$ by 

```{math}
\begin{align*}
F(x) = \int_{\phi(c)}^x f(t) \;\mathrm{d}t
\quad x \in\phi([c, d])
\end{align*}
```

Then, 

```{math}
:label: eq:112
\begin{align}
F(\phi(x)) 
= \int_{\phi(c)}^{\phi(x)} f(t) \;\mathrm{d}t
= \int_c^{x} f(\phi(t)) \phi^\prime(t) \;\mathrm{d}t
\end{align}
```

In particular, putting $x = d$ in {eq}`eq:112`, we obtain

```{math}
:label: eq:114
\begin{align}\int_{\phi(c)}^{\phi(d)} f(t) \;\mathrm{d}t 
= \int_c^d f(\phi(t)) \phi^\prime(t) \;\mathrm{d}t
\end{align}
```

````

````{prf:proof}

By the First Fundamental Theorem of Calculus ({prf:ref}`thm:48`), $F$ is continuous on $\phi([c, d])$. Even better, $F$ is differentiable in the interior of $\phi([c, d])$ since $f$ is continuous, and in this case,

```{math}
\begin{align*}
F^\prime(x) = f(x)
\end{align*}
```


It then follows from the Chain Rule that 

```{math}
:label: eq:113
\begin{align}\frac{\mathrm{d}}{\mathrm{d}t} F(\phi(t))
= F^\prime(\phi(t)) \phi^\prime(t)
= f(\phi(t)) \phi^\prime(t)
\end{align}
```

Since functions $f(\phi(t))$ and $\phi^\prime(t)$ are both continuous, they are clearly integrable, i.e., $f(\phi(t)), \phi^\prime(t) \in\mathfrak{R}$ on $[c, d]$. Hence, their product is also integrable, i.e., $f(\phi(t)) \phi^\prime(t) \in\mathfrak{R}$ on $[c, d]$. 



Integrating the right-hand side of {eq}`eq:113` using {prf:ref}`thm:45`, we obtain

```{math}
\begin{align*}\int_c^x f(\phi(t)) \phi^\prime(t) \;\mathrm{d}t
= F(\phi(x)) - F(\phi(c))
= F(\phi(x))
= \int_{\phi(c)}^{\phi(x)} f(t) \;\mathrm{d}t
\end{align*}
```

This proves {eq}`eq:112`. Putting $x = d$ in {eq}`eq:112`, we will obtain {eq}`eq:114`.

````
