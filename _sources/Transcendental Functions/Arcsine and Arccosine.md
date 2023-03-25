# Arcsine and Arccosine

The concept of the inverse function was introduced
by Johann Heinrich Lambert
in the 18th century {cite}`boyerHistoryCalculusIts1988`,
and the inverse sine function was defined as a function of
the angle that produces a given value of sine.
However, this definition was limited to angles
between $[-\pi/2, \pi/2]$,
and it was later extended to the entire real line
using complex analysis by
Carl Friedrich Gauss and Jean-Baptiste Fourier
in the early 19th century {cite}`edwardsHistoricalDevelopmentCalculus1994`.
In this section, we still confine ourselves to
the traditional domain of arcsine
without considering the extension.

The notation $\sin^{-1}(x)$ was first introduced by
Adrien-Marie Legendre in 1811 {cite}`smithHistoryMathematics1958`,
although it was sometimes written as $\arcsin(x)$
or $\mathrm{inverse} \sin(x)$ in earlier works.
We shall however adopt the notation $\arcsin(x)$
or simply $\arcsin x$ when the variable is abbreviated
in this book.
The modern definition of the arcsine function as a function
from $[-1, 1]$ to $[-\pi/2, \pi/2]$
was introduced by Augustin-Louis Cauchy
in the mid-19th century {cite}`boyerHistoryCalculusIts1988`.



````{prf:definition}
:label: def:11

```{index} arcsine
```

The **arcsine** function,
written as $\arcsin x$,
is defined by

```{math}
:label: eq:160
\begin{align}\arcsin x
= \int_0^x \frac{1}{\sqrt{1-t^2}}\;\mathrm{d} t,
\quad
x \in[-1, 1]\end{align}
```

````

Note that the integral in {eq}`eq:160` becomes improper
when $x$ equals $-1$ or $1$.
And, it follows immediately from {prf:ref}`thm:92`
that $\arcsin 1 = \pi / 2$.
One may also immediately conclude that $\arcsin x$ is an odd function
by {prf:ref}`thm:93`.
Though this is indeed true,
the reasoning is not quite complete for {prf:ref}`thm:93`
only applies to *proper* integrals.
Hence, we must be careful about the proof.
The following proposition states some basic observations
of the arcsine function,
which we shall prove carefully.


````{prf:proposition}
:label: pro:7

For the arcsine function, we have
the following results:
- ➀ $\arcsin x$ is an odd function.
- ➁ $\arcsin 0 = 0$, $\arcsin 1 = \pi / 2$,
and $\arcsin -1 = -\pi / 2$.
- ➂ $\arcsin x$ is continuous on $[-1, 1]$.
- ➃ $\arcsin x$ is differentiable in $(-1, 1)$
with $\arcsin^\prime x = 1 / \sqrt{1 - x^2}$.
- ➄ The one-sided derivatives of $\arcsin x$
are $\arcsin^\prime_{-} 1 = \infty$
and $\arcsin^\prime_{+} -1 = -\infty$.
- ➅ $\arcsin x$ is strictly increasing on $[-1, 1]$.
- ➆ $\arcsin x$ is bijective.


````

````{prf:proof}

TODO

````
