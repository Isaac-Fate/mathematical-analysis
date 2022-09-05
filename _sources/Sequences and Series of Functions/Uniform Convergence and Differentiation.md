# Uniform Convergence and Differentiation
````{prf:theorem} 
Let $\left\{f_n\right\}$ be a sequence of differentiable functions defined on $[a,b]$. Suppose that the numerical sequence $\left\{f_n(x_0)\right\}$ converges where $x_0 \in [a,b]$, and the sequence $\left\{f_n^\prime\right\}$ converges uniformly on $[a,b]$. Then $\left\{f_n\right\}$ converges uniformly to some function $f$ on $[a, b]$. Moreover, $f$ is differentiable on $[a, b]$, the limit of $\left\{f_n^\prime(x)\right\}$ exists for each $x$, and
```{math}
:label: eq:16
\begin{align}
f^\prime(x) = \lim_{n \to \infty} f_n^\prime(x)
\end{align}
```
In other words, we can interchange differentiation and limit, i.e., 
```{math}
\begin{align*}
\frac{\mathrm{d}}{\mathrm{d} x} \lim_{n \to \infty} f_n(x)
= \lim_{n \to \infty} \frac{\mathrm{d}}{\mathrm{d} x} f_n(x)
\end{align*}
```
````
````{prf:remark}
Pay attention to the conditions of this theorem. The reason that we do not assume the uniform convergence of $\left\{f_n\right\}$ directly is that it is not sufficient to guarantee the interchange of differentiation and limit. Therefore, stronger conditions are needed. We assume the uniform convergence of the sequence of derivatives $\left\{f_n^\prime\right\}$, and we also require that $f_n$ converges at one point. And in fact, the uniform convergence of $\left\{f_n\right\}$ can be derived based on that.
````
````{prf:proof}
The first thing we need to show is that $\left\{f_n\right\}$ converges uniformly. Given $\varepsilon > 0$, there exists some $N_1 \in \Ns$ such that $n, m \geq N_1$ implies
```{math}
:label: eq:13
\begin{align}
\abs{f_n(x_0) - f_m(x_0)} < \frac{\varepsilon}{2}
\end{align}
```
since $\left\{f_n(x_0)\right\}$ converges. Furthermore, because $\left\{f_n^\prime\right\}$ converges uniformly, there exists some $N_2 \in \Ns$ such that $n, m \geq N_2$ implies
```{math}
:label: eq:14
\begin{align}
\abs{f_n^\prime(x) - f_m^\prime(x)}
< \frac{\varepsilon}{2(b-a)}
\quad \forall x \in [a, b]
\end{align}
```
Let $N = \max\{N_1, N_2\}$ and $n, m \geq N$. If we regard function $f_n(x) - f_m(x)$ as a whole, then by the Mean Value Theorem, we have 
```{math}
:label: eq:15
\begin{align}
\left(f_n(x) - f_m(x)\right)
- \left(f_n(x_0) - f_m(x_0)\right)
= (x - x_0) \left(f_n^\prime(\xi_x) - f_m^\prime(\xi_x)\right)
\end{align}
```
for some $\xi_x$ (depending on $x$) in between $x$ and $x_0$. Taking into consideration {eq}`eq:13`, {eq}`eq:14` and {eq}`eq:15`, it then follows that 
```{math}
\begin{align*}
\abs{f_n(x) - f_m(x)}
&\leq \abs{f_n(x_0) - f_m(x_0)}
+ \abs{x-x_0} \abs{f_n^\prime(\xi_x) - f_m^\prime(\xi_x)} \\ 
&< \frac{\varepsilon}{2} 
+ (b-a) \frac{\varepsilon}{2(b-a)} \\ 
&= \varepsilon \quad \forall x \in [a, b]
\end{align*}
```
Therefore, $\left\{f_n\right\}$ converges uniformly on $[a, b]$ by {prf:ref}`thm:6`. Let $f$ be the limit of this sequence of functions, i.e., $f(x) = \lim_{n \to \infty} f_n(x)$.
\
We then show that $f$ is differentiable, the limit of $\left\{f_n^\prime(x)\right\}$ exists and {eq}`eq:16` holds. Fix an $x$ in $[a, b]$. Define 
```{math}
\begin{align*}
\phi_n(t) &:= \frac{f_n(x) - f_n(t)}{x - t} \\
\phi(t) &:= \frac{f(x) - f(t)}{x - t}
\end{align*}
```
where $t \in [a, b] \setminus \{x\}$. Let $\varepsilon > 0$ be arbitrary. By applying the same argument, we will again obtain {eq}`eq:14` and {eq}`eq:15` (with $x$ replaced by $t$ and $x_0$ replaced by $x$). It then follows from {eq}`eq:15` that 
```{math}
\begin{align*}
\abs{\phi_n(t) - \phi_m(t)}
= \abs{f_n^\prime(\xi_t) - f_m^\prime(\xi_t)}
\end{align*}
```
Then by letting $n, m \geq N_2$, we have
```{math}
\begin{align*}
\abs{\phi_n(t) - \phi_m(t)}
= \abs{f_n^\prime(\xi_t) - f_m^\prime(\xi_t)}
< \frac{\varepsilon}{2(b-a)}
\quad \forall t \in [a, b] \setminus \{x\}
\end{align*}
```
due to {eq}`eq:14`. Therefore, $\phi_n$ converges uniformly on $[a, b] \setminus \{x\}$. And since we have proved $f_n \to f$ as $n \to \infty$, it is clear that the limit of $\left\{\phi_n\right\}$ is $\phi$, i.e., $\phi_n \to \phi$ uniformly on $[a, b] \setminus \{x\}$. Finally, by applying {prf:ref}`thm:7`, we have 
```{math}
\begin{align*}
\lim_{t \to x} \phi(t)
= \lim_{n \to \infty} \lim_{t \to x} \phi_n(t)
= \lim_{n \to \infty} f_n^\prime(x)
\end{align*}
```
(The existence of involved limits is implied by {prf:ref}`thm:7`.) Note that $\lim_{t \to x} \phi(t)$ is precisely the definition of $f^\prime(x)$. This completes the proof.
````
````{prf:example}
````
