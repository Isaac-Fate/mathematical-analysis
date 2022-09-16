# Total Variation

````{prf:definition}

Let $f$ be of bounded variation on $[a, b]$. The total variation of $f$ on $[a, b]$ is defined by 

```{math}
\begin{align*}
V_a^b (f) 
:= \sup_{P \in \mathcal{P}} V(P, f) 
\end{align*}
```

where $\mathcal{P}$ is the set of partitions on $[a, b]$.

````

````{prf:remark}

We will sometimes write $V(f)$ instead of $V_a^b (f)$ to ease the notation if it does not confuse.

````

````{prf:theorem}
:label: thm:31

If $f$ and $g$ are each of bounded variation on $[a, b]$, then $f \pm g$ and $f g$ are also of bounded variation. Moreover, 

```{math}
:label: eq:59
\begin{align}
V(f \pm g) \leq V(f) + V(g) 
\end{align}
```

and 

```{math}
:label: eq:60
\begin{align}
V(f g) &\leq\sup_{x\in[a, b]}\abs{g(x)} V(f) + \sup_{x \in[a, b]}\abs{f(x)} V(g)
\end{align}
```

````

````{prf:proof}
:class: dropdown
(Proof of $f \pm g$ being of bounded variation) We have 

```{math}
\begin{align*}
V(P, f \pm g)
&= \sum_{k=1}^n \abs{(f \pm g)(x_k) - (f \pm g)(x_{k-1})}\\&= \sum_{k=1}^n \abs{\left (f(x_k) - f(x_{k-1})\right ) \pm \left (g(x_k) - g(x_{k-1})\right )}\\&\leq\sum_{k=1}^n \abs{\Delta f_k} + \abs{\Delta g_k}\\&= V(P, f) + V(P, g) \\&\leq V(f) + V(g)
\end{align*}
```

Since $f$ and $g$ are both of bounded variation, $V(f), V(g) < \infty$. Therefore, $V(P, f \pm g)$ is bounded above by a finite number for any partition $P$, which implies the function $f \pm g$ is of bounded variation. Taking supremum over all $P$'s on 

```{math}
\begin{align*}
V(P, f \pm g) \leq V(f) + V(g)
\end{align*}
```

we obtain {eq}`eq:59`.



(Proof of $f g$ being of bounded variation) For any partition $P$ on $[a, b]$, we have 

```{math}
\begin{align*}
V(P, f g)
&= \sum_{k=1}^n \abs{f(x_k) g(x_k) - f(x_{k-1}) g(x_{k-1})}\\&= \sum_{k=1}^n \abs{
f(x_k) g(x_k) 
- f(x_{k-1}) g(x_k) 
+ f(x_{k-1}) g(x_k) 
- f(x_{k-1}) g(x_{k-1})
}\\&= \sum_{k=1}^n \abs{
g(x_k) \Delta f_k
+ f(x_{k-1}) \Delta g_k
}\\&\leq\sup\abs{g} V(P, f) + \sup\abs{f} V(P, g) \\&\leq\sup\abs{g} V(f) + \sup\abs{f} V(g)
\end{align*}
```

Similarly, because $f$ and $g$ are of bounded variation, $V(f)$ and $V(g)$ are finite. Moreover, by {prf:ref}`thm:30`, $f$ and $g$ are bounded on $[a, b]$, which implies $\sup\abs{f}, \sup\abs{g} < \infty$. Hence, $V(P, f g)$ is bounded above by a finite number for any partition, which implies $fg$ is also of bounded variation, and {eq}`eq:60` holds.

````
