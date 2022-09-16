# The Root and Ratio Tests

````{prf:theorem}Root Test
:label: thm:12

Given series $\sum a_n$($a_n \in\C$), put $\alpha = \limsup_{n \to \infty}\sqrt[n]{\abs{a_n}}$.
1.  If $\alpha < 1$ then $\sum a_n$ converges

2.  If $\alpha > 1$ then $\sum a_n$ diverges 

3.  If $\alpha = 1$ then the test is inconclusive



````

````{prf:theorem}Ratio Test
:label: thm:24

The series $\sum a_n$($a_n \in\C$) 
1.  converges if $\limsup_{n \to \infty}\abs{\frac{a_{n+1}}{a_n}} < 1$
2.  diverges if $\abs{\frac{a_{n+1}}{a_n}}\geq 1$ for all $n \geq N$ where $N \in\Ns$ is fixed



````
