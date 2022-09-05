# Limits at Infinity
````{prf:proposition} 
:label: pro:6
Let $f: E \subset \R \to \R$ be a function where $E$ is unbounded above. Then the limit
```{math}
\begin{align*}
\lim_{x \to \infty} f(x)
\end{align*}
```
exists if and only if for any positive number $\varepsilon$, there exists some number $A > 0$ such that $A_1, A_2 > A$ ($A_1, A_2 \in E$) implies 
```{math}
\begin{align*}
\abs{f(A_1) - f(A_2)} < \varepsilon
\end{align*}
```
````
````{prf:proposition} 
Let $f: E \subset \R \to \R$ be a  **monotone**  function. Suppose that $\left\{a_n\right\}$ is a sequence in $E$ with infinite limit, i.e., $\lim_{n \to \infty} a_n = \infty$. Then 
```{math}
\begin{align*}
\lim_{x \to \infty} f(x)
= \lim_{n \to \infty} f(a_n)
\end{align*}
```
Note that $\lim_{n \to \infty} f(a_n)$ may assume the value of $\infty$ or $-\infty$.
````
````{prf:proposition} 
:label: pro:2
Let $f: E \to \R$ be a monotonically increasing (resp. decreasing) function where $E$ is unbounded above (resp. below). If $f$ is bounded above (resp. below) by $M$, then $f(\infty)$ (resp. $f(-\infty)$) exists.
````
````{prf:proof}
We only prove the case of monotonically increasing functions. Since $E$ is unbounded above, there exists a  **subsequence**  $\left\{k_n\right\}$ of $\Ns$ such that $k_n \in E$. Note that the numerical sequence $\left\{f(k_n)\right\}$ increases monotonically. By {prf:ref}`thm:23`, $\left\{f(k_n)\right\}$ converges, say, to $l$. 
\
We are going to show that the limit of $f$ at infinity is exactly $l$. Given $\varepsilon > 0$, there exists $N \in \Ns$ such that $\abs{f(k_n) - l} < \varepsilon / 2 \ \forall n \geq N$. Then for all $x > k_N$, there exist $n, m \geq N$ ($n < m$) such that $k_n \leq x < k_m$. It then follows that 
```{math}
\begin{align*}
\abs{f(x) - l}
&\leq \abs{f(x) - f(k_n)} + \abs{f(k_n) - l} \\
&< \abs{f(x) - f(k_n)} + \varepsilon / 2 \\
&\leq \abs{f(k_m) - f(k_n)} + \varepsilon / 2
\end{align*}
```
The last inequality holds because $f$ is increasing. Sending $m \to \infty$, we have 
```{math}
\begin{align*}
\abs{f(x) - l}
\leq \abs{l - f(k_n)} + \varepsilon / 2
< \varepsilon / 2 + \varepsilon / 2
= \varepsilon
\end{align*}
```
In summary, we have shown
```{math}
\begin{align*}
\abs{f(x) - l} < \varepsilon
\quad \forall x > k_N
\end{align*}
```
Therefore, $f(\infty) = l$.
````
