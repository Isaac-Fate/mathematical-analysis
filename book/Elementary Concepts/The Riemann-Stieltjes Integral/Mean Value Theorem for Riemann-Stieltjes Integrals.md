# Mean Value Theorem for Riemann-Stieltjes Integrals

````{prf:theorem} First Mean Value Theorem for Riemann-Stieltjes Integrals
:label: thm:27

Suppose that $\alpha$ is increasing on $[a, b]$. If $f \in\mathfrak{R}(\alpha)$ on $[a, b]$, then there exists a number $c$ satisfying

```{math}
\begin{align*}\inf_{x \in[a, b]} f(x) \leq c \leq\sup_{x \in[a, b]} f (x)
\end{align*}
```

such that 

```{math}
:label: eq:58
\begin{align}\int_a^b f \;\mathrm{d}\alpha
= c \int_{a}^{b}\mathrm{d}\alpha
= c( \alpha(b) - \alpha(a) )
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

````{prf:theorem} Second Mean Value Theorem for Riemann-Stieltjes Integrals
:label: thm:28

Suppose that $\alpha$ is continuous and $f$ is monotonic on $[a, b]$. Then, there exists a point $x_0 \in[a, b]$ such that 

```{math}
:label: eq:69
\begin{align}\int_a^b f \;\mathrm{d}\alpha
= f(a) \int_a^{x_0}\mathrm{d}\alpha
+ f(b) \int_{x_0}^b \mathrm{d}\alpha\end{align}
```

Of course, all the integrals involved in {eq}`eq:69` exist.

````

````{prf:proof}

Without loss of generality, we may assume that $f$ is increasing in the rest of this proof. If $f$ is decreasing, then we apply this theorem to $-f$, which is increasing. And {eq}`eq:69` still holds after multiplying $-1$ on the both sides.



(Existence of Integrals) Firstly, by {prf:ref}`thm:34`, we know that $\alpha\in\mathfrak{R}(f)$. And by the reciprocity law ({prf:ref}`thm:36`), it also holds that $f \in\mathfrak{R}(\alpha)$. 



(Integration by Parts) Then, applying the integration by parts ({prf:ref}`thm:36`) to $\int_a^b f \;\mathrm{d}\alpha$, we obtain

```{math}
:label: eq:70
\begin{align}\int_a^b f \;\mathrm{d}\alpha
= f(b)\alpha(b) - f(a)\alpha(a)
- \int_a^b \alpha\;\mathrm{d}f
\end{align}
```


(First Mean Value Theorem) Since $f$ is increasing and $\alpha$ is continuous, by the First Mean Value Theorem ({prf:ref}`thm:27`), we have 

```{math}
:label: eq:71
\begin{align}\int_a^b \alpha\;\mathrm{d}f
= \alpha(x_0) \int_a^b \mathrm{d} f
= \alpha(x_0) ( f(b) - f(a) )
\end{align}
```

for some $x_0 \in[a, b]$.
Combine {eq}`eq:70` and {eq}`eq:71`, 

```{math}
\begin{align*}\int_a^b f \;\mathrm{d}\alpha
= f(a) (\alpha(x_0) - \alpha(a))
+ f(b) (\alpha(b) - \alpha(x_0))
= f(a) \int_a^{x_0}\mathrm{d}\alpha
+ f(b) \int_{x_0}^b \mathrm{d}\alpha\end{align*}
```

````
