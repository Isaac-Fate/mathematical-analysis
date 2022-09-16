# Differentiation

````{prf:theorem}Chain Rule
:label: thm:20

Suppose that $\mathbf{f}: E \subset\R^n \to\R^m$ be differentiable at point $\mathbf{x}_0 \in E$ where $E$ is open, and $\mathbf{g}: V \supset\mathbf{f}(E) \to\R^k$ be differentiable at $\mathbf{f}(\mathbf{x}_0)$ where $V$ is also open. Then the mapping $\mathbf{F}: E \to\R^k$ defined by 

```{math}
\begin{align*}\mathbf{F}(\mathbf{x}) = \mathbf{g}(\mathbf{f}(\mathbf{x}))
\end{align*}
```

is differentiable at $\mathbf{x}_0$, and 

```{math}
\begin{align*}\mathbf{F}^\prime(\mathbf{x}_0)
= \mathbf{g}^\prime(\mathbf{f}(\mathbf{x}_0)) \mathbf{f}^\prime(\mathbf{x}_0)
\end{align*}
```

````

````{prf:proof}
TODO
````


There is a very important concept associated with real-valued functions called gradient. If $f$ is a real-valued differentiable function, we know from the previous definition its derivative $f^\prime$ is a row vector. The gradient of $f$, denoted by $\nabla f$, is nothing but the transpose of $f^\prime$ so that it becomes a column vector.


````{prf:definition}Gradient

Let $f: E \subset\R^n \to\R$ be a real-valued function where $E$ is open. If $f$ is differentiable at point $\mathbf{x}_0 \in E$, then the gradient of $f$ at $\mathbf{x}_0$ is defined by 

```{math}
\begin{align*}\nabla f (\mathbf{x}_0) = \left(f^\prime(\mathbf{x}_0)\right)^\top\end{align*}
```

````

````{prf:definition}Directional Derivative

Let $f: E \subset\R^n \to\R$ be a real-valued function where $E$ is open, and $\mathbf{u}\in\R^n$ a unit vector, i.e., $\abs{\mathbf{u}} = 1$. The directional derivative of $f$ at point $\mathbf{x}$ is defined by 

```{math}
\begin{align*}
D_{\mathbf{u}}f (\mathbf{x})
= \lim_{t \to 0}\frac{f(\mathbf{x} + t \mathbf{u}) - f(\mathbf{x})}{t}\end{align*}
```

provided that the limit exists.

````


A function is not necessarily differentiable at some point even if all the directional derivatives at this point exist and are all equal to each other. (In this case, all directional derivatives must be zeros.)


````{prf:example}

Let

```{math}
\begin{align*}
f(x, y) = \begin{cases}
1 &y = x^2, \; x \neq 0 \\ 
0 &\text{elsewhere}
\end{cases}\end{align*}
```

We consider the partial derivatives as well as the directional derivatives at the origin $(0,0)$. The partial derivatives are 

```{math}
\begin{align*}\frac{\partial f}{\partial x}(0,0)
&= 0 & 
\frac{\partial f}{\partial y}(0,0)
&= 0
\end{align*}
```


We then compute the directional derivatives. Let $\theta\in\left[0, 2\pi\right)$ and consider the direction $\mathbf{u} = (\cos\theta, \sin\theta)$($\theta\notin\left\{0, \pi/2, \pi, 3\pi/2\right\}$, i.e., $0 < \tan\theta < \infty$). If we choose a number $t$ satisfying $0 < \abs{t} < \tan\theta / \cos\theta$, then 

```{math}
\begin{align*}
f(t\cos\theta, t\sin\theta) = 0
\end{align*}
```

since under the constraints of $\theta$ and $t$, $t\sin\theta = (t\cos\theta)^2$ if and only if $t = \tan\theta / \cos\theta$. Note that 

```{math}
\begin{align*}
D_{\mathbf{u}}f (0,0)
= \lim_{t \to 0}\frac{f(t\cos\theta, t\sin\theta) - f(0,0)}{t}
= 0
\end{align*}
```


Thus, all the directional derivatives exist at $(0,0)$ and are equal to $0$. However, $f$ is clearly not differentiable at $(0,0)$ since it is not even continuous there.

````


The next proposition is a simple application of the Chain Rule which establishes a connection between gradients and directional derivatives for real-valued functions. 


````{prf:proposition}

Let $f: E \subset\R^n \to\R$ be a real-valued function where $E$ is open.
If $f$ is differentiable at point $\mathbf{x}_0 \in E$, then all the directional derivatives at $\mathbf{x}_0$ exist. In this case, suppose $\mathbf{u}\in\R^n$ is a unit vector, then 

```{math}
:label: eq:47
\begin{align}
D_{\mathbf{u}}f (\mathbf{x}_0)
= \nabla f (\mathbf{x}_0) \cdot\mathbf{u}\end{align}
```

````

````{prf:proof}

Let $\mathbf{u}\in\R^n$ be a unit vector. Define

```{math}
\begin{align*}\boldsymbol{\gamma}(t)
= \mathbf{x}_0 + t \mathbf{u}\end{align*}
```

Since $E$ is open and $\mathbf{x}_0 \in E$, it is possible to chose $\delta > 0$ such that $\boldsymbol{\gamma}(t) \in E \;\forall t \in(-\delta,\delta)$. Hence, $\boldsymbol{\gamma}: (-\delta,\delta) \to E$ is a well-defined function. Moreover, $\boldsymbol{\gamma}$ is differentiable in $(-\delta, \delta)$, and 

```{math}
:label: eq:44
\begin{align}\boldsymbol{\gamma}^\prime(t) = \mathbf{u}\quad\forall t \in(-\delta, \delta)
\end{align}
```


Define a function $g: (-\delta, \delta) \to\R$ by 

```{math}
\begin{align*}
g(t) = f(\boldsymbol{\gamma}(t))
\end{align*}
```

Because $\boldsymbol{\gamma}$ is differentiable at $t = 0$ and $f$ is differentiable at $x = \boldsymbol{\gamma}(0) = \mathbf{x}_0$, it follows from the Chain Rule ({prf:ref}`thm:20`) that $g$ is differentiable at $t = 0$ with 

```{math}
:label: eq:45
\begin{align}
g^\prime(0) = f^\prime(\boldsymbol{\gamma}(0)) \boldsymbol{\gamma}^\prime(0)
= f^\prime(\mathbf{x}_0) \mathbf{u}
= \nabla f (\mathbf{x}_0) \cdot\mathbf{u}\end{align}
```

The second last equality above follows from {eq}`eq:44`.



On the other hand, by the definition of derivatives, we have 

```{math}
:label: eq:46
\begin{align}
g^\prime(0) 
= \lim_{t \to 0}\frac{g(t) - g(0)}{t}
= \lim_{t \to 0}\frac{f(\boldsymbol{\gamma}(t)) - f(\boldsymbol{\gamma}(0))}{t}
= \lim_{t \to 0}\frac{f(\mathbf{x}_0 + t \mathbf{u}) - f(\mathbf{x}_0)}{t}
= D_{\mathbf{u}}f (\mathbf{x_0})
\end{align}
```

Then {eq}`eq:47` follows from {eq}`eq:45` and {eq}`eq:46`.

````


If $f$ is not differentiable at $\mathbf{x}_0$, then {eq}`eq:47` will not hold in general. Consider the following example.


````{prf:example}

Let 

```{math}
\begin{align*}
f(x,y) = \begin{cases}
\frac{y^3}{x^2 + y^2} &(x,y) \neq (0,0) \\ 
0 &(x,y) = (0,0)
\end{cases}\end{align*}
```


We first show that $f$ is not differentiable at the origin. The partial derivatives are 

```{math}
\begin{align*}\frac{\partial f}{\partial x}(0,0)&= 0 &
\frac{\partial f}{\partial y}(0,0) &= 1
\end{align*}
```

Let $\mathbf{h} = (h,k)$. Consider the expression

```{math}
:label: eq:48
\begin{align}\frac{\abs{
f(h,k) - f(0,0) - \begin{bmatrix}{\partial f}/{\partial x} (0,0) & {\partial f}/{\partial y} (0,0)
\end{bmatrix} \mathbf{h}
}}{\abs{\mathbf{h}}}
= \frac{\abs{h}^2 \abs{k}}{(h^2 + k^2)^{3/2}}\end{align}
```

Put $k = h$ and let $h \to 0$ in {eq}`eq:48`, we obtain

```{math}
\begin{align*}\lim_{h \to 0}\frac{\abs{h}^2 \abs{k}}{(h^2 + k^2)^{3/2}}
= \lim_{h \to 0}\frac{\abs{h}^3}{2^{3/2} \abs{h}^3}
= \frac{1}{2^{3/2}}\neq 0
\end{align*}
```

Therefore, the left-hand side of {eq}`eq:48` will not tend to $0$ as $\mathbf{h}\to\mathbf{0}$, which implies $f$ is not differentiable at $(0,0)$.



The directional derivative along the direction $\mathbf{u} = (\cos\theta, \sin\theta)$($\theta\in\left[0, 2\pi\right)$) at the origin is 

```{math}
\begin{align*}
D_{\mathbf{u}}f (0,0) = \sin^3 \theta\end{align*}
```
(In particular, put $\theta = 0$ and $\theta = \pi / 2$, we can also obtain the partial derivatives, which are the same as what we have calculated.)
Note that this is also an example that shows $f$ is not necessarily differentiable even if all its directional derivatives exist.
The inner product of the gradient $\nabla f$ at $(0,0)$ and $\mathbf{u}$ is 

```{math}
\begin{align*}\nabla f (0,0) \cdot\mathbf{u}
= \begin{bmatrix}
0 & 1
\end{bmatrix}\begin{bmatrix}
\cos\theta \\ \sin\theta
\end{bmatrix}
= \sin\theta\end{align*}
```

We see that $D_{\mathbf{u}}f (0,0)$ and $\nabla f (0,0) \cdot\mathbf{u}$ are not equal to each other in general. Specifically, they are not equal for $\theta\notin\left\{0,\pi/2,\pi,3\pi/2\right\}$. 



{eq}`eq:47` fails because $f$ is not differentiable at $(0,0)$. From another point of view, the failure of {eq}`eq:47` can also be applied to prove that $f$ is not differentiable.

````
