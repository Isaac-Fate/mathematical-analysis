# Mean Value Theorem
````{prf:theorem} Mean Value Theorem in Several Variables
:label: thm:21
Let $f: E \subset \R^n \to \R$ be a differentiable function where $E$ is open. If $\mathbf{a}, \mathbf{b} \in E$ and the line segment between $\mathbf{a}$ and $\mathbf{b}$ lies in $E$, i.e., 
```{math}
\begin{align*}
\mathbf{a} + t \mathbf{b} \in E 
\quad \forall t \in [0,1]
\end{align*}
```
Then there exists $\xi \in (0, 1)$ such that 
```{math}
:label: eq:43
\begin{align}
f(\mathbf{b}) - f(\mathbf{a})
= f^\prime(\mathbf{a} + \xi (\mathbf{b} - \mathbf{a})) (\mathbf{b} - \mathbf{a})
\end{align}
```
````
````{prf:remark}
We do not require that $\mathbf{a}$ and $\mathbf{b}$ be distinct since {eq}`eq:43` holds trivially if $\mathbf{a} = \mathbf{b}$ (both sides are zeros). If we assume $E$ is  *convex* , then {eq}`eq:43` holds for every pair of points in $E$.
````
````{prf:proof}
Let curve $\boldsymbol{\gamma}: [0,1] \to E$ be defined by 
```{math}
\begin{align*}
\boldsymbol{\gamma}(t) = \mathbf{a} + t (\mathbf{b} - \mathbf{a})
\end{align*}
```
And let function $g: [0,1] \to \R$ be defined by 
```{math}
\begin{align*}
g(t) = f(\boldsymbol{\gamma}(t))
\end{align*}
```
By the Chain Rule ({prf:ref}`thm:20`), function $g$ is differentiable on $(0,1)$ since $\boldsymbol{\gamma}$ is differentiable on $(0,1)$ and $f$ is differentiable on $E$, and 
```{math}
\begin{align*}
g^\prime(t) 
= f^\prime(\boldsymbol{\gamma}(t)) \boldsymbol{\gamma}^\prime(t)
= f^\prime(\mathbf{a} + t (\mathbf{b} - \mathbf{a})) (\mathbf{b} - \mathbf{a})
\end{align*}
```
Apply the Mean Value Theorem for single-variable functions, 
```{math}
\begin{align*}
f(\mathbf{b}) - f(\mathbf{a}) = g(1) - g(0) = g^\prime(\xi) (1 - 0)
= f^\prime(\mathbf{a} + \xi (\mathbf{b} - \mathbf{a})) (\mathbf{b} - \mathbf{a})
\end{align*}
```
````
