# Comparison Theorems

It is very common in practice to compare the values of two integrals. Intuitively,

```{math}
:label: eq:69
\begin{align}
\int _ {a} ^ {b}  f  \; \mathrm{d} \alpha \leq \int _ {a} ^ {b}  g  \; \mathrm{d} \alpha
\end{align}
```

provided that $f \leq g$ and $\alpha$ is increasing. The proof of this inequality follows from the following lemma, which says the integral of $f$ w.r.t. $\alpha$ is non-negative whenever $f$ stays non-negative and $\alpha$ is increasing on $[a, b]$. Note that this is a special case of inequality {eq}`eq:69`.


````{prf:lemma}
:label: lem:1
Suppose that  $\alpha$  is increasing and  $f \in \mathfrak{R}(\alpha)$  on  $[a, b]$ . If  $f(x) \geq 0 \; \forall x \in[a, b]$ , then

```{math}
\begin{align*}
\int _ {a} ^ {b}  f  \; \mathrm{d} \alpha \geq  0
\end{align*}
```
````

````{prf:proof}
Consider the trivial partition  $P = \{a, b\}$ . We have

```{math}
\begin{align*}
L(P,f, \alpha ) =  \inf _ {x \in[a, b]}  f(x)  [ \alpha (b) -  \alpha (a) ] \geq  0
\end{align*}
```

It then follows that

```{math}
\begin{align*}
\lowint _a^b f  \; \mathrm{d} \alpha \geq  L(P,f, \alpha )
\geq  0
\end{align*}
```

Note that  $\int_{a}^{b} f \; \mathrm{d}\alpha = \lowint_a^b f \; \mathrm{d}\alpha$  since  $f \in \mathfrak{R}(\alpha)$ . The proof is then complete.
````

Inequality {eq}`eq:69` can be proved easily by applying the above lemma and {prf:ref}`thm:18`.


````{prf:theorem}
Suppose that  $\alpha$  is increasing and  $f, g \in \mathfrak{R}(\alpha)$  on  $[a, b]$ . If  $f(x) \leq g(x) \; \forall x \in[a, b]$ , then we have the inequality

```{math}
\begin{align*}
\int _ {a} ^ {b}  f  \; \mathrm{d} \alpha \leq \int _ {a} ^ {b}  g  \; \mathrm{d} \alpha
\end{align*}
```
````

````{prf:proof}
Note that the difference  $(g-f)(x) \geq 0 \; \forall x \in[a, b]$ . Furthermore,  $(g-f) \in \mathfrak{R}(\alpha)$  on  $[a, b]$  by  {prf:ref}`thm:18` . Then  {prf:ref}`lem:1`  gives

```{math}
\begin{align*}
\int _ {a} ^ {b} (g-f)  \; \mathrm{d} \alpha \geq  0
\end{align*}
```

Using  {prf:ref}`thm:18`  again to split the integrand, we have

```{math}
\begin{align*}
\int _ {a} ^ {b}  g  \; \mathrm{d} \alpha
-  \int _ {a} ^ {b}  f  \; \mathrm{d} \alpha \geq  0
\end{align*}
```
````
\printindex