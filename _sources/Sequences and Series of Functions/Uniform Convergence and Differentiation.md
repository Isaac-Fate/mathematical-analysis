# Uniform Convergence and Differentiation

````{prf:theorem}
Let  $\{f_n\}$  be a sequence of real-valued functions each of which has a finite derivative at every point in  $(a, b)$ . Suppose there exists a point  $x_0 \in (a, b)$  such that the numerical sequence  $\{f_n(x_0)\}$  converges. Suppose further that there exists a function  $g$  such that  $f^\prime_n \to g$  uniformly on  $(a, b)$ . Then

- (1) there exists a function  $f$  such that  $f_n \to f$  uniformly on  $(a, b)$ , and
- (2) $f^\prime(x)$  exists everywhere in  $(a, b)$  with  $f^\prime(x) = g(x)$ .
````

````{prf:proof}
We first show that  $\{f_n\}$  converges uniformly on  $(a, b)$ . Given  $\varepsilon > 0$ , since  $\{f_n(x_0)\}$  converges, by Cauchy's criterion for sequences,

```{math}
:label: eq:101
\begin{align}
\abs{f_m(x_0) - f_n(x_0)}  <  \varepsilon  / 2
\quad \forall  m,n  \geq  N_1
\end{align}
```

for some integer  $N_1 \in \N^\ast$ . Meanwhile, since  $f^\prime_n \to g$  uniformly on  $(a, b)$ , it follows from Cauchy's criterion for uniform convergence ( {prf:ref}`thm:42` ) that there exists  $N_2 \in \N^\ast$  such that

```{math}
:label: eq:102
\begin{align}
\abs{f^\prime_m(x) - f^\prime_n(x)}  <  \frac{\varepsilon / 2}{\abs{x - x_0} + 1} \quad \forall  m, n  \geq  N_2  \; \forall  x  \in (a, b)
\end{align}
```

Let  $N = \max\{N_1, N_2\}$  and let  $m, n \geq N$ . Define function  $h$  by

```{math}
\begin{align*}
h(x) = f_m(x) - f_n(x)
\end{align*}
```

Applying the mean value theorem ( {prf:ref}`thm:8` ) to  $h$ , we obtain

```{math}
\begin{align*}
[ f_m(x) - f_n(x) ]  -  [ f_m(x_0) - f_n(x_0) ]
=  [ f^ \prime _m( \xi ) - f^ \prime _n( \xi ) ] (x - x_0)
\end{align*}
```

where  $x \neq x_0$  and  $\xi$  is some number in between  $x$  and  $x_0$ . We can then use  {eq}`eq:101`  and  {eq}`eq:102`  to bound the value of  $\abs{f_m(x) - f_n(x)}$ ( $x \neq x_0$ ) as follows:

```{math}
\begin{align*}
\abs{f_m(x) - f_n(x)} & \leq \abs{f_m(x_0) - f_n(x_0)}
+  \abs{f^\prime_m(\xi) - f^\prime_n(\xi)} \abs{x - x_0} \\ & \leq \varepsilon  / 2 +  \frac{\varepsilon / 2}{\abs{x - x_0} + 1} \cdot \abs{x - x_0} \\ &<  \varepsilon \quad \forall  m,n  \geq  N  \; \forall  x  \in (a, b)  \setminus \{ x_0 \}
\end{align*}
```

But since  $m,n \geq N \geq N_1$ , the inequality

```{math}
\begin{align*}
\abs{f_m(x_0) - f_n(x_0)}  <  \varepsilon  / 2 <  \varepsilon
\end{align*}
```

also holds by  {eq}`eq:101` . Therefore, we have

```{math}
\begin{align*}
\abs{f_m(x) - f_n(x)}
<  \varepsilon \quad \forall  m,n  \geq  N  \; \forall  x  \in (a, b)
\end{align*}
```

which implies that  $\{f_n\}$  converges uniformly on  $(a, b)$ . Suppose that the limit function is  $f$ .

Let  $c \in (a, b)$ . Define

```{math}
\begin{align*}
\phi _n(x) =  \frac{f_n(x) - f_n(c)}{x-c}
\end{align*}
```

:::{note}
We want to show

```{math}
\begin{align*}
\lim _ {x \to c} \lim _ {n \to \infty} \phi _n(x)
=  \lim _ {n \to \infty} \lim _ {x \to c} \phi _n(x)
\end{align*}
```

using  {prf:ref}`thm:43` .
:::

Note that  $\lim_{x \to c}\phi_n(x)$  exists since  $f^\prime(c)$  exists, and

```{math}
\begin{align*}
\lim _ {x \to c} \phi _n(x) = f^ \prime _n(c)
\end{align*}
```

On the other hand, the limit  $\lim_{n \to \infty}\phi_n(x)$  also exists since we have proved  $f_n(x)$  exists for each  $x$  as  $n \to \infty$ . We have

```{math}
\begin{align*}
\lim _ {n \to \infty} \phi _n(x) =  \frac{f(x) - f(c)}{x - c}
\end{align*}
```

Then by  {prf:ref}`thm:43` , the limits  $\lim_{n \to \infty} f^\prime_n(c)$  and  $\lim_{x \to c} [f(x) - f(c)] / (x - c)$  both exist and are equal to each other that is,

```{math}
\begin{align*}
\lim _ {x \to c} \frac{f(x) - f(c)}{x - c}
=  \lim _ {n \to \infty}  f^ \prime _n(c)
\end{align*}
```

Therefore,  $f$  has a derivative at  $c$ , and

```{math}
\begin{align*}
f^ \prime (c) =  \lim _ {n \to \infty}  f^ \prime _n(c) = g(c)
\end{align*}
```

This completes the proof.
````
\printindex