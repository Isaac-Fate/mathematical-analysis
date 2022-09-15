# Mean Value Theorem for Riemann-Stieltjes Integrals

````{prf:theorem}
:label: thm:27

Suppose that $\alpha\uparrow$ on $[a, b]$. If $f \in\mathfrak{R}(\alpha)$ on $[a, b]$, then there exists a number $c$ satisfying

```{math}
\begin{align*}\inf_{x \in[a, b]} f(x) \leq c \leq\sup_{x \in[a, b]} f (x)
\end{align*}
```

such that 

```{math}
:label: eq:58
\begin{align}\int_a^b f \;\mathrm{d}\alpha
= c \int_{a}^{b}\mathrm{d}\alpha
= \alpha(b) - \alpha(a)
\end{align}
```

Furthermore, if $f$ is continuous on $[a, b]$, then there exists $x_0 \in[a, b]$ such that $f(x_0) = c$.

````

````{prf:proof}

If $\alpha$ is a constant function, then the conclusion is trivial since all values in {eq}`eq:58` are zeros. In the rest of the proof, we assume $\alpha$ is non-constant. In that case, $\alpha(b) > \alpha(a)$. To simplify the notation, we let $m = \inf_{x \in[a, b]} f(x)$ and $M = \sup_{x \in[a, b]} f(x)$. Since constant functions are clearly integrable, by {prf:ref}`thm:26`, we have 

```{math}
\begin{align*}\int_{a}^{b} m \;\mathrm{d}\alpha\leq\int_{a}^{b} f \;\mathrm{d}\alpha\leq\int_{a}^{b} M \;\mathrm{d}\alpha\end{align*}
```

It then follows that 

```{math}
\begin{align*}
m \leq\frac{1}{\alpha(b) - \alpha(a)}\int_{a}^{b} f \;\mathrm{d}\alpha\leq M
\end{align*}
```

Let $c$ be given by 

```{math}
\begin{align*}
c = \frac{1}{\alpha(b) - \alpha(a)}\int_{a}^{b} f \;\mathrm{d}\alpha\end{align*}
```

Hence, {eq}`eq:58` is proved.



If we assume further that $f$ is continuous, then by the Intermediate Value Theorem, $\exists x_0 \in[a, b]$ such that

```{math}
\begin{align*}
f(x_0) = c
\end{align*}
```

````

````{prf:theorem}
:label: thm:28
TODO
````
