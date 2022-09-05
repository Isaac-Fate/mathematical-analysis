# Discussion of Main Problem
````{prf:definition} 
:label: def:1
Let $\{f_n\}$ be a sequence of functions on $E$. If for any $x \in E$, the limit of the numerical sequence $\{f_n(x)\}$ exists, then the function defined by
```{math}
\begin{align*}
f(x) = \lim_{n \to \infty} f_n(x)
\end{align*}
```
is called the  **limit**  of $\{f_n\}$.
````
\
We say $f_n$ converges  *pointwise*  to $f$ if $f_n$ only satisfies the above definition. There is a stronger version of convergence called uniform convergence, which will be introduced later.
\
If we regard $\{\sum_{m=0}^{n} f_m\}_n$ as a sequence of partial sums, we can define the  *sum*  of series of functions $\sum f_n$ as the  *limit*  of the sequence of partial sums.
````{prf:definition} 
:label: def:2
If $\sum f_n(x)$ converges (i.e., the limit of the partial sum exists) for each $x \in E$, and if we define 
```{math}
\begin{align*}
f(x) = \sum_{n=0}^{\infty} f_n(x)
\end{align*}
```
then $f$ is called the  **sum**  of series $\sum f_n$.
````
