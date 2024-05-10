# Total Variation
```{index} total variation
```

Recall that $f$ is said to be of bounded of variation
on $[a, b]$ if, equivalently to what we stated, the set

```{math}
:label: eq:2
\set{\sum_{k=1}^n \abs{\Delta f_k}}{P \in \SCRP[a, b]}
```

is bounded above.
This set is of course nonempty for $\{a, b\}$ is clearly a partition.
By the least upper bound property,
the set in {eq}`eq:2` has a supremum, which is referred to as
**total variation**  of $f$ on $[a, b]$.


````{prf:definition} 

Let $f$ be of bounded variation on $[a, b]$.
The total variation, denoted by $V_a^b (f)$,
of $f$ on $[a, b]$ is defined as

```{math}

V_a^b (f) := \sup\set{\sum_{k=1}^n \abs{\Delta f_k}}{P \in \SCRP[a, b]}
```

````

:::{note}

We adopt the notation $V_a^b(f)$,
which is inspired by the notion of
a definite integral $\int_a^b f(x) \dif x$.
And as we shall see,
these two concepts indeed share some similar properties, namely,
the linear properties.

Notations are very important for they provide intuitive expressions
of the intrinsic mathematical concepts.

:::