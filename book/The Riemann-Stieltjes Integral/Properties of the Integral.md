# Properties of the Integral
````{prf:theorem} Change of Variable
:label: thm:4
Suppose $\phi$ is a strictly increasing function that maps $[A, B]$ onto $[a, b]$. Suppose $\alpha$ is monotonically increasing and $f \in \mathfrak{R}(\alpha)$ on $[a, b]$. Define $\beta$ and $g$ on $[A, B]$ by
```{math}
\begin{align*}
\beta(y) &:= \alpha(\phi(y)) & g(y) &:= f(\phi(y))
\end{align*}
```
Then $g \in \mathfrak{R}(\beta)$, and
```{math}
\begin{align*}
\int_A^B g \ \mathrm{d} \beta = \int_a^b f \ \mathrm{d} \alpha
\end{align*}
```
````
````{prf:proof}
TODO
````
````{prf:corollary} 
:label: cor:1
Under the assumptions of {prf:ref}`thm:4`, if $\alpha(x) = x$ and $\phi^\prime \in \mathfrak{R}$ on $[A, B]$, then
```{math}
\begin{align*}
\int_a^b f(x) \ \mathrm{d} x = \int_A^B f(\phi(y)) \phi^\prime(y) \ \mathrm{d} y
\end{align*}
```
````
````{prf:example}
TODO
````
