# Definition of Pi
$\pi$ is a mathematical constant
that represents the ratio of the circumference, $C$,
of a circle to its diameter, $d$.

```{math}
:label: eq:152
\begin{align}\pi = \frac{C}{d}\end{align}
```

It is approximately equal to $3.14159$
and is a non-repeating,
non-terminating decimal {cite}`weissteinPi`.
The value of pi has been known for thousands of years and has been studied extensively by mathematicians throughout history.

The earliest known written approximations of $\pi$
date back to ancient Egypt and Babylon,
around 1900-1600 BCE {cite}`gouldHistoryPi1974`.
The Greek mathematician Archimedes is credited
with determining an accurate approximation of $\pi$
using inscribed and circumscribed polygons
around a circle in the 3rd century BCE.
Over time, many mathematicians have contributed to
our understanding of $\pi$,
including John Wallis, Leonhard Euler, and Carl Friedrich Gauss.

$\pi$ has many interesting properties and is used in many areas of mathematics, science, and engineering.
It is an irrational number, meaning it cannot be expressed
as a ratio of two integers {cite}`arndtPiunleashed2001`.
$\pi$ is also a transcendental number,
meaning it is not the solution to any algebraic equation
with rational coefficients.
These properties of $\pi$ have been proven mathematically
and have important implications in many areas of mathematics.

The symbol for $\pi$ was first used by Welsh mathematician
William Jones in 1706
and was popularized by the Swiss mathematician Leonhard Euler
in the 18th century.
Today, $\pi$ is widely used
in mathematics, physics, engineering,
and many other fields, and its value has been
calculated to trillions of digits
using computer algorithms {cite}`weissteinPi`.

The way of defining $\pi$ by {eq}`eq:152`
is perhaps the most widely known and accepted method.
But this leads to a few problems:
- ➀ What is a circle?
- ➁ How is the circumference of a circle calculated
or even defined?
- ➂ Why is the ratio $C / d$ a constant?


Of course, we can answer these questions rigorously
by building up the theory of geometry.
But this requires a lot of work.
Hence, we shall define $\pi$ from another approach
with a Riemann integral.

Note that the function $f(x) = \sqrt{1 - x^2}$
is bounded on $[0, 1]$ and it is Riemann-integrable
for it is continuous.
Therefore, its integral on $[0, 1]$ is well-defined.


````{prf:definition}
:label: def:9

```{index} $\pi$
```

The number $\pi$ is defined as the
value of the integral

```{math}
\begin{align*}\pi = 4 \int_0^1 \sqrt{1 - x^2}\;\mathrm{d} x
\end{align*}
```

````

The geometric interpretation of the
function value $y = f(x) = \sqrt{1 - x^2}$
is the $y$-coordinate of the unit circle
in the first quadrant given its $x$-coordinate.
Hence, the meaning of the
integral $\int_0^1 \sqrt{1-x^2} \; \mathrm{d} x$
is the area of a quarter of the unit circle.
See {numref}`fig:19`.


```{figure} /figures/ma-019.png
---
name: fig:19
---
Geometric interpretation of $\pi$.

```
