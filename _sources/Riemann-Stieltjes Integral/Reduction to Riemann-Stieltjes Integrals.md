# Reduction to Riemann-Stieltjes Integrals


In the definition of Riemann-Stieltjes integral, $\mathrm{d} \alpha$ is merely a symbol which emphasizes that the integrator is $\alpha$. However, it is tempting to associate this symbol with the concept of differentials, and then replace it with $\alpha^\prime(x) \; \mathrm{d} x$. As stated in the following theorem, we can indeed do this under some conditions.


````{prf:theorem}
:label: thm:23
Suppose  $f \in \mathfrak{R}(\alpha)$  on  $[a, b]$ , and  $\alpha$  has a continuous derivative  $\alpha^\prime$  on  $[a, b]$ . Then the Riemann integral  $f \alpha^\prime$  exits, i.e.,  $f \alpha^\prime \in \mathfrak{R}$  on  $[a, b]$ , and we have

```{math}
:label: eq:38
\begin{align}
\int _ {a} ^ {b}  f(x)  \; \mathrm{d} \alpha (x)
=  \int _ {a} ^ {b}  f(x)  \alpha ^ \prime (x)  \; \mathrm{d} x
\end{align}
```
````

````{prf:proof}
We first do some preliminary work. Suppose  $f$  is bounded by a positive number  $M > 0$ , i.e.,  $\abs{f(x)} \leq M \; \forall x \in[a, b]$ , and let  $\varepsilon > 0$  be chosen arbitrarily.



Then, we make use of the continuity of  $\alpha^\prime$ . Note that  $\alpha^\prime$  is uniformly continuity on  $[a, b]$  since the closed interval is compact. Then there exists  $\delta > 0$  such that

```{math}
:label: eq:34
\begin{align}
\abs{s-t}  <  \delta \implies \abs{\alpha^\prime(s) - \alpha^\prime(t)}  <  \frac{\varepsilon / 2}{M(b-a)}
\end{align}
```

Let  $P_\varepsilon^\prime$  be a partition on  $[a, b]$  with mesh less than  $\delta$ , i.e.,  $\norm{P} < \delta$ .



Because  $f \in \mathfrak{\alpha}$ , there exists a partition, say  $P_\varepsilon^{\prime\prime}$ , such that

```{math}
:label: eq:35
\begin{align}
\abs{S(P,f,\alpha) - \int_{a}^{b} f \; \mathrm{d}\alpha}  <  \varepsilon  / 2
\quad \forall  P  \supset  P_ \varepsilon ^ {\prime\prime}
\end{align}
```

holds for any refinement  $P$ .

Let partition  $P_\varepsilon$  be the refinement of both partitions  $P_\varepsilon^\prime$  and  $P_\varepsilon^{\prime\prime}$ , i.e.,  $P = P_\varepsilon^\prime \cup P_\varepsilon^{\prime\prime}$ . Then for any refinement  $P$  of  $P_\varepsilon$ , we have

```{math}
:label: eq:36
\begin{multline}
\abs{S(P, f\alpha^\prime) - \int_{a}^{b}f \; \mathrm{d}\alpha} \leq \abs{S(P, f\alpha^\prime) - S(P, f, \alpha)}
+  \abs{S(P, f, \alpha) - \int_{a}^{b}f \; \mathrm{d}\alpha} \\
<  \abs{S(P, f\alpha^\prime) - S(P, f, \alpha)}  +  \varepsilon  / 2
\end{multline}
```

where the last inequality follows from  {eq}`eq:35` .



We now work on  $\abs{S(P, f\alpha^\prime) - S(P, f, \alpha)}$ . We have

```{math}
\begin{align*}
\abs{S(P, f\alpha^\prime) - S(P, f, \alpha)}
=  \abs{
\sum_{k} f(t_k) \alpha^\prime(t_k) (x_k - x_{k-1})
- \sum_{k} f(t_k) [\alpha(x_{k}) - \alpha(x_{k-1})]
}
\end{align*}
```

Applying the mean value theorem ( {prf:ref}`thm:8` ) to  $\alpha$  on each sub-interval  $[x_{k-1}, x_k]$  leads to

```{math}
\begin{align*}
\sum _ {k}  f(t_k)  \alpha ^ \prime (t_k) (x_k - x_ {k-1} )
-  \sum _ {k}  f(t_k)  [ \alpha (x_ {k} ) -  \alpha (x_ {k-1} ) ]
=  \sum _ {k}  f(t_k)  [ \alpha ^ \prime (t_k) -  \alpha ^ \prime ( \xi _k) ] (x_k - x_ {k-1} )
\end{align*}
```

where  $\xi_k \in (x_{k-1}, x_k)$ . It then follows that

```{math}
\begin{alignat*}
2 \abs{S(P, f\alpha^\prime) - S(P, f, \alpha)} &=&  \; &  \abs{\sum_{k} f(t_k) [\alpha^\prime(t_k) - \alpha^\prime(\xi_k)] (x_k - x_{k-1})} \\ & \leq &&  \sum _ {k} \abs{f(t_k)} \abs{\alpha^\prime(t_k) - \alpha^\prime(\xi_k)} \Delta  x_k  \\ &&& \text{recall $\abs{f} \leq M$} \\ & \leq && M  \sum _ {k} \abs{\alpha^\prime(t_k) - \alpha^\prime(\xi_k)} \Delta  x_k
\end{alignat*}
```

Note that  $\abs{t_k - \xi_k} \leq \norm{P} \leq \norm{P_\varepsilon^\prime} < \delta$ . Hence, by  {eq}`eq:34` , we have

```{math}
\begin{align*}
\abs{\alpha^\prime(t_k) - \alpha^\prime(\xi_k)}
<  \frac{\varepsilon / 2}{M(b-a)}
\end{align*}
```

Then,  $\abs{S(P, f\alpha^\prime) - S(P, f, \alpha)}$  is finally bounded by

```{math}
:label: eq:37
\begin{align}
\abs{S(P, f\alpha^\prime) - S(P, f, \alpha)}
< M  \frac{\varepsilon / 2}{M(b-a)} \sum _k  \Delta  x_k
=  M  \frac{\varepsilon / 2}{M(b-a)} (b-a)
=  \varepsilon  / 2
\end{align}
```


Combining  {eq}`eq:36`  and  {eq}`eq:37` , we obtain

```{math}
\begin{align*}
\abs{S(P, f\alpha^\prime) - \int_{a}^{b}f \; \mathrm{d}\alpha}  <  \varepsilon
\end{align*}
```

where  $P$  is an arbitrary refinement of the chosen  $P_\varepsilon$ . This implies  $f \alpha^\prime$  is Riemann integrable, and  {eq}`eq:38`  indeed holds.
````
