# Uniform Convergence and Continuity

If we assume $f_n$ converges to $f$ uniformly, then we can interchange the two limiting processes, that is,

```{math}
\begin{align*}
\lim _ {x \to p} \lim _ {n \to \infty}  f_n(x)
=  \lim _ {n \to \infty} \lim _ {x \to p}  f_n(x)
\end{align*}
```

````{prf:theorem}
Suppose  $f_n \to f$  uniformly on  $S$ , and let  $p$  be an accumulation point  $S$ . If the limit

```{math}
\begin{align*}
A_n =  \lim _ {x \to p}  f(x)
\end{align*}
```

exist for all  $n \in \N^\ast$ , then the sequence  $\{A_n\}$  converges, say to  $A$ . Furthermore, the limit  $\lim_{x \to p}f(x)$  also exists, and we have

```{math}
\begin{align*}
\lim _ {x \to p} f(x) = A
\end{align*}
```

In other words, we can write

```{math}
:label: eq:97
\begin{align}
\lim _ {x \to p} \lim _ {n \to \infty}  f_n(x)
=  \lim _ {n \to \infty} \lim _ {x \to p}  f_n(x)
\end{align}
```
````

:::{note}
One way to remember this theorem is that if the inner limits on both sides of  {eq}`eq:97`  exist, then the outer limits also exist and are equal to each other.
:::

````{prf:proof}
We first show that the sequence of limits  $\{A_n\}$  converges. Given  $\varepsilon > 0$ , by Cauchy's criterion ( {prf:ref}`thm:42` ), there exists an integer  $N \in \N^\ast$  such that

```{math}
\begin{align*}
\abs{f_m(x) - f_n(x)}  <  \varepsilon \quad \forall  m,n  \geq  N  \; \forall  x  \in  S
\end{align*}
```

Note that the absolute value function is continuous and both  $f_m(x)$  and  $f_n(x)$  have limits at point  $p$ . Using the rules of computing limits, we obtain

```{math}
\begin{align*}
\varepsilon \geq \lim _ {x \to p} \abs{f_m(x) - f_n(x)}
=  \abs{ \lim_{x \to p} f_m(x) - \lim_{x \to p} f_n(x) }
=  \abs{A_m - A_n}
\end{align*}
```

Therefore  $\{A_n\}$  indeed converges by Cauchy's criterion for sequences. Let  $A$  denote the limit of  $\{A_n\}$ .

Next, we shall prove  $f(x)$  has a limit as  $ x \to p$ . We choose (another) arbitrary positive number  $\varepsilon > 0$ . Since  $f_n \to f$  uniformly on  $S$ , there exist  $N_1 \in \N^\ast$  such that

```{math}
:label: eq:98
\begin{align}
\abs{f(x) - f_n(x)}  <  \varepsilon \quad \forall  n  \geq  N_1
\end{align}
```

Meanwhile, since we have proved  $\{A_n\}$  converges to  $A$ , there exist  $N_2 \in \N^\ast$  such that

```{math}
:label: eq:99
\begin{align}
\abs{A_n - A}
<  \varepsilon  / 3
\quad \forall  n  \geq  N_2
\end{align}
```

Let  $N = \max\{N_1, N_2\}$ . Because the limit of  $\lim_{x \to p} f_N(x) = A_N$ , there exist a neighborhood  $V$  of  $p$  in which

```{math}
:label: eq:100
\begin{align}
\abs{f_N(x) - A_n}  <  \varepsilon  / 3
\quad \forall  x  \in  V  \cap  S
\end{align}
```

We have

```{math}
\begin{align*}
\abs{f(x) - A} \leq \abs{f(x) - f_N(x)}
+  \abs{f_N(x) - A_N}
+  \abs{A_N - A}
<  \varepsilon \quad \forall  x  \in  V  \cap  S
\end{align*}
```

where the last inequality follows from  {eq}`eq:98` ,  {eq}`eq:99`  and  {eq}`eq:100` . This completes the proof.
````
\printindex