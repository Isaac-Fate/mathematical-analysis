# Power Series
````{prf:lemma} 
:label: lem:2
Suppose that the power series $\sum c_n z^n$ converges at some point $z = z_0$ ($z_0 \neq 0$). Then $\sum c_n z^n$ converges absolutely for all $z$ satisfying $\abs{z} < \abs{z_0}$.
````
````{prf:proof}
Because $\sum c_n z_0^n$ converges, the sequence $\left\{c_n z_0^n\right\}$ also converges (to $0$). Therefore, $\left\{c_n z_0^n\right\}$ is bounded, that is,  
```{math}
\begin{align*}
\abs{c_n z_0^n} \leq M
\quad \forall n \in \Ns
\end{align*}
```
for some $M > 0$. Then each term of the series $\sum c_n z^n$ is bounded by 
```{math}
\begin{align*}
\abs{c_n z^n}
= \abs{c_n z_0^n} \left(\frac{\abs{z}}{\abs{z_0}}\right)^n
\leq M \left(\frac{\abs{z}}{\abs{z_0}}\right)^n
\end{align*}
```
Note that $\sum M \left(\frac{\abs{z}}{\abs{z_0}}\right)^n$ converges if $\frac{\abs{z}}{\abs{z_0}} < 1$. Therefore, the series $\sum \abs{c_n z^n}$ converges by the Comparison Test, i.e., $\sum c_n z^n$ converges absolutely.
````
\
Every power series is associated with a radius of convergence $R$. We allow $R$ to take the values of $0$ and $\infty$. By writing $R = 0$ we mean that the series only converges at $z = 0$, and by $R = \infty$ we mean that the series converges on the entire complex plane $\C$.
````{prf:theorem} 
:label: thm:13
Given power series $\sum c_n z^n$, put
```{math}
\begin{align*}
\alpha &= \limsup_{n \to \infty} \sqrt[n]{\abs{c_n}} & R &= \frac{1}{\alpha}
\end{align*}
```
($R = \infty$ if $\alpha = 0$ and $R = 0$ if $\alpha = \infty$). Then the power series converges  **absolutely**  for $\abs{z} < R$, and diverges for $\abs{z} > R$. 
````
````{prf:remark}
As soon as we know the power series $\sum c_n z^n$ converges at some non-zero point, we are immediately informed that it has a positive radius of convergence, and it converges  *absolutely*  at points  *interior*  to the circle of convergence.
````
````{prf:proof}
We first prove that $\sum c_n z^n$ converges if $\abs{z} < R$. We intend to apply the Root Test. Taking the $n$-th root of each term of the series and then taking the upper limit, we obtain
```{math}
\begin{align*}
\limsup_{n \to \infty} \sqrt[n]{\abs{c_n z^n}}
= \abs{z} \limsup_{n \to \infty} \sqrt[n]{\abs{c_n}}
= \abs{z} \alpha 
= \frac{\abs{z}}{R}  
\end{align*}
```
Then the convergence of this series follows from the Root Test.
\
We now prove the absolute convergence. If $R = \infty$, then $\sum c_n r^n$ converges for any $r > 0$ ($ r \in \R$). Then {prf:ref}`lem:2` implies $\sum c_n z^n$ converges absolutely for $\abs{z} < r$. Since $r > 0$ is arbitrary chosen, $\sum c_n z^n$ converges absolutely for all $z \in \C$ (equivalently, $\abs{z} < R = \infty$). For the case $0 < R < \infty$, we have $\sum c_n (R - \varepsilon)^n$ converges for any given $0 < \varepsilon < R$. Then {prf:ref}`lem:2` implies $\sum c_n z^n$ converges absolutely for $\abs{z} < R - \varepsilon$. It then follows that $\sum c_n z^n$ converges absolutely for any $\abs{z} < R$.
````
