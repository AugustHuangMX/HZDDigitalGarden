#math 

It is the most important tool in numerical analysis and scientific computing. It approximates a function as an infinite sum of terms calculated from the values of its derivatives at a single point. The Taylor expansion is particularly useful for approximating complex functions with polynomials, which are easier to analyze and compute.

Suppose that you are currently at point $x$, and you want to know the value $f(x+h)$. However, you only know the value of $f(x)$ and $f'(x)$. The best way to approximate $f(x+h)$ is to use the first-order Taylor expansion:

$$
f(x+h) \approx f(x) + f'(x)h
$$

If you know $f''(x)$, you can use the second-order Taylor expansion for a better approximation:

$$
f(x+h) \approx f(x) + f'(x)h + \frac{f''(x)}{2}h^2
$$

More specifically, you could have:

$$
f(x+h) \approx f(x) + f'(x)h + \frac{f''(x)}{2}h^2 + o(h^2)
$$

## What does $o(h^2)$ mean?

when $h \to 0$, $o(h^2)/h^2 \to 0$, that is to say, $o(h^2)$ goes to zero faster than $h^2$.

## A Numerical Example 

For example, suppose we have a function $f(x) = e^x$, and we expand at $x = 0$.

- $f(0) = 1$
- $f'(x) = e^x$, thus $f'(0) = 1$.
- $f''(x) = e^x$, , thus $f''(0) = 1$.

So the second-order Taylor expansion at $x = 0$ is:

$$
f(0+h) \approx 1 + 1 \cdot h + \frac{1}{2}h^2 = 1 + h + \frac{h^2}{2}
$$

For small $h$, this approximation is quite accurate. For instance, if $h = 0.1$, the accurate value is $e^{0.1} \approx 1.10517$, while the Taylor approximation gives:

$$
1 + 0.1 + \frac{(0.1)^2}{2} = 1.105
$$

