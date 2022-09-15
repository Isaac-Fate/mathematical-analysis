# Existence of Riemann-Stieltjes Integrals

````{prf:theorem}

If $f$ is continuous on $[a, b]$ and $\alpha$ is of bounded variation on $[a, b]$, then $f \in\mathfrak{R}(\alpha)$ on $[a, b]$.

````

````{prf:remark}

By the reciprocity law of Riemann-Stieltjes integrals (or the theorem of integration by parts, {prf:ref}`thm:36`), we immediately know it is also true that $\alpha$ is integrable with respect to $f$, i.e., $\alpha\in\mathfrak{R}(f)$.

````

````{prf:proof}

By {prf:ref}`thm:33`, $\alpha$ can be written as a difference of two increasing functions, i.e., 

```{math}
\begin{align*}\alpha = \alpha_1 - \alpha_2
\end{align*}
```

where $\alpha_1$ and $\alpha_2$ are both monotonically increasing. 



Then, we know from {prf:ref}`thm:34` that $f \in\mathfrak{R}(\alpha_1)$ and $f \in\mathfrak{R}(\alpha_2)$.



Finally, we use the linear property of integrators {prf:ref}`thm:35` to conclude that indeed $f \in\mathfrak{R}(\alpha_1 - \alpha_2)$.

````
