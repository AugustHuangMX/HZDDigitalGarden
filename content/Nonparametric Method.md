#Econ/metrics #LSE/EC484_Econometrics_Analysis 

## Motivation

In econometrics, we often want to understand the relationship between two variables, say $Y$ and $X$. While parametric methods like linear regression assume a specific functional form for this relationship, nonparametric methods allow us to estimate it without such assumptions. This is particularly useful when the true relationship is complex or unknown. The idea is that we don't assume the form of the relationship between $Y$ and $X$, but instead let the data speak for itself.

## Basic Idea

Consider an i.i.d. sample $\{X_{i}\}^n_{i=1}$ with pdf $f(\cdot)$. At point $c$, we want to estimate $f(c)$ and the value of pdf at $c$, but not using the parametric form to do so.

### A Quick Review of CDF/PDF

>  See more on [[Cumulative Distribution Function]]

The CDF $F(x)$ is defined as:

$$
F(x) = P[X \leq x]
$$

While the PDF $f(x)$ is defined as:

$$
P[a\leq X\leq b] = \int^b_a f(x) dx
$$

How to get PDF from CDF?

Consider a very small interval $[x, x+h]$ ($h$ is really small!), we have:

$$
P[c\leq X \leq c+h ] = F(c+h) - F(c)
$$

We divided by $h$ on both sides:

$$
\frac{P[c\leq X \leq c+h ]}{h} = \frac{F(c+h) - F(c)}{h}
$$

The LHS is the approximation of the density, and the RHS is the definition of derivative. Thus, we have: when $h \to 0$:

$$
f(c) = \lim_{ h \to 0 } \frac{F(c+h) - F(c)}{h} = F'(c) = \frac{dF(c)}{dc}|_{x=c}
$$

In the slides, we have:

$$
f(c) = \lim_{ h \to 0 } \frac{F(c+h/2) - F(c-h/2)}{h} \approx  \frac{P[(c+h/2) \leq X \leq F(c-h/2)]}{h}
$$

>  The intuition behind the relationship between PDF and CDF is that the higher the value of PDF, the faster the CDF increases at that point, meaning that there are a lot of observations around that point.


Also the term $P[c - \frac{h}{2} \leq X \leq c+ \frac{h}{2}]$ can be estimated by:

$$
\hat{P} \left[ c - \frac{h}{2} \leq X \leq c+ \frac{h}{2} \right] = \frac{1}{n} \sum_{i=1}^{N} \mathbb{1} \left \{ c - \frac{h}{2} \leq X_i \leq c+ \frac{h}{2} \right \}
$$


The indicator function $\mathbb{1} \left \{ c - \frac{h}{2} \leq X_i \leq c+ \frac{h}{2} \right \}$ equals to 1 if $X_i$ is in the interval $[c - \frac{h}{2}, c+ \frac{h}{2}]$, and 0 otherwise. It's just like a counter.

## Generalization

Recall that we have that $f(c)  \approx  \frac{P[(c+h/2) \leq X \leq F(c-h/2)]}{h}$, we can generalize it to:

$$
\hat{f(c)} = \frac{1}{n h} \sum_{i=1}^{N} \mathbb{1} \left \{ c - \frac{h}{2} \leq X_i \leq c+ \frac{h}{2} \right \}
$$

Where $h$ is called the **bandwidth**. It controls the width of the interval around $c$. A smaller $h$ means a narrower interval, which can capture more local details but may be noisier. A larger $h$ smooths out the estimate but may miss important features.

A graph to help understand:

![[截屏2025-12-03 12.17.21.png|400]]


### Rewrite 

$$
\begin{align}
\hat{f(c)} & = \frac{1}{n h} \sum_{i=1}^{N} \mathbb{I} \left \{ c - \frac{h}{2} \leq X_i \leq c+ \frac{h}{2} \right \}  \\
 & =  \frac{1}{n h} \sum_{i=1}^{N} \mathbb{I} \{- \frac{1}{2} \leq \frac{X_{i} -c}{h} \leq \frac{1}{2}\} \\
 & = \frac{1}{n h} \sum_{i=1}^{N} \mathbb{I} \{- \frac{1}{2} \leq U_{i} \leq \frac{1}{2}\} 
\end{align}
$$

Where $U_{i} = \frac{X_{i} -c}{h}$. The meaning of $U_{i}$ is the relative distance between $X_{i}$ and $c$, scaled by the bandwidth $h$. Since we scale by $h$, no matter how we choose $h$, the interval $[c - h/2, c+ h/2]$ always maps to $[-1/2, 1/2]$ in the $U_{i}$ space.

#### Kernel Density Estimator

The above estimator is called the **Histogram Density Estimator**. It is simple but has some drawbacks, such as being discontinuous and sensitive to the choice of bandwidth. We replace the indicator function with a smooth function called a **kernel function** $K(\cdot)$, which satisfies:

$$
\hat{f}(c) = \frac{1}{n h} \sum_{i=1}^{N} K \left( \frac{X_{i} -c}{h} \right )
$$

Where $K(\cdot)$ is a kernel function that assigns weights to observations based on their distance from $c$. Common choices for $K(u)$ include:

1. Uniform kernel
2. Normal kernel
3. Epanechnikov kernel
4. Triangular kernel

>  It doesn't matter which kernel function you choose, the results are often quite similar. The choice of bandwidth $h$ has a much larger impact on the estimate.

### Properties: Mean, Variance, and Consistency 

#### Mean 

Note that:

$$
\mathbb{E}[\hat{f}(c)] = \frac{1}{h} [K(\frac{X-c}{h})]
$$

From the definition of expectation, we have:

$$
\mathbb{E}[\hat{f}(c)] = \frac{1}{h} \int K(\frac{x-c}{h}) f(x) dx
$$

Let $u = \frac{x-c}{h}$, then $x = c + uh$ and $dx = h du$. Thus:

$$
\mathbb{E}[\hat{f}(c)] = \int K(u) f(c + uh) du
$$
Using Taylor expansion, we have:

$$
f(c + uh) = f(c) + f'(c) uh + \frac{f''(c+h u^*)}{2} (uh)^2
$$

>  Here, we have an extra term $f''(c+h u^*)$ instead of $f''(c)$ because of the Lagrange form of the remainder in Taylor expansion. It's new to me as well, and from `Claude` it suggests that it's another representation to capture the error term more accurately. i.e. $o(h^2)$.

Formally, the Largrangian form of the [[Taylor Expansion]] is:

$$
f(c + uh) = f(c) + f'(c) uh + \frac{f''(c+\theta \cdot h u)}{2} (uh)^2
$$
Where $\theta \in (0,1)$. In this form, we let $\theta h u = h u^*$.

Back to our derivation, we have:

$$
\mathbb{E}[\hat{f}(c)] = \int K(u) \{f(c) + f'(c) uh + \frac{f''(c+h u^*)}{2} (uh)^2\} du
$$

 Then we have:

$$
= f(c) \int K(u) du + f'(c) h \int u K(u) du + \int \frac{f''(c+h u^*) h^2}{2}  u^2 K(u) du
$$

Using the Condition of the Kernel Function:

1. $\int K(u) du = 1$
2. $\int u K(u) du = 0$ (The symmetric)
3. $\int u^2 K(u) du = 1$

We have:

$$
= f(c) + 0 + \frac{h^2}{2} \int f''(c+h u^*) u^2 K(u) du
$$

Focus on the last term, we have:

$$
\int f''(c+h u^*) u^2 K(u) du = \int f''(c)u^2 K(u)) du + \int [f''(c+h u^*) - f''(c)] u^2 K(u) du
$$
> Simple Construction

We let the last term to be $2 R_{1}$:

$$
\int f''(c+h u^*) u^2 K(u) du = \int f''(c)u^2 K(u)) du + \underbrace{ \int [f''(c+h u^*) - f''(c)] u^2 K(u) du }_{ 2R_{1}}
$$

Thus we have:

$$
\mathbb{E}[\hat{f}(c)] = f(c) + \frac{h^2}{2} \left[ f''(c)  + 2 R_{1} \right]
$$

The last step is to prove that $R_{1} = o(1)$ as $h \to 0$.

> Why we need to do so? Because if $R_{1} = o(1)$, then we have $\mathbb{E}[\hat{f}(c)] = f(c) + \frac{h^2}{2} f''(c) + o(h^2)$, which means our estimator is asymptotically unbiased.

Recall that:

$$
R_{1} = \frac{1}{2} \int [f''(c+h u^*) - f''(c)] u^2 K(u) du
$$

Our aim: prove that when $h \to 0$, $R_{1} \to 0$

Since from our condition, we have that $f''$ is continuous at $c$. By the definition of continuity, for any $\epsilon > 0$, there exists a $\delta > 0$ such that if $|v| < \delta$, then $|f''(c+v) - f''(c) < \epsilon$.

> In other words, as long as $v$ is closed to $0$, then $f''(c+v)$ is closed to $f''(c)$.

We know that $|u| \leq a$ because of the property of the kernel function: $K(u) = 0$ when $|u| > a$. Thus, it is easy to have:

$$
|h u^*| \leq |hu| \leq h a
$$

We pick $h \leq \delta / a$, then we have:

$$
|h u^*| \leq h a \leq \delta
$$
Since $|h u^*| < \delta$, we have:

$$
|f''(c+h u^*) - f''(c)| < \epsilon
$$
for all $|u| \leq a$.

Now we are able to estimate $|R_{1}|$:

$$
|R_{1}| = \left| \frac{1}{2} \int [f''(c+h u^*) - f''(c)] u^2 K(u) du \right| \leq \frac{1}{2} \int |f''(c+h u^*) - f''(c)| |u^2 K(u)| du
$$

$$
\leq \frac{1}{2} \int \epsilon u^2 K(u) du = \frac{\epsilon}{2} \int u^2 K(u) du = \frac{\epsilon}{2} \cdot 1 = \frac{\epsilon}{2}
$$

Since $\epsilon$ is arbitrary, we have $R_{1} \to 0$ as $h \to 0$.

Thus we have shown that $R \to 0$ as $h \to 0$

$$
\mathbb{E}[\hat{f}(c)] = f(c) + \frac{h^2}{2} f''(c) + o(h^2)
$$

#### [[Variance]]

The method is similar to the derivation of mean.

We recall that $\hat{f}(c)  = \frac{1}{n h} \sum_{i=1}^{N} K \left( \frac{X_{i} -c}{h} \right )$, and recall the definition of the variance: $\text{Var}[\hat{f}(c)] = \mathbb{E}[\hat{f}(c)^2]  - \{\mathbb{E}[\hat{f}(c)]\}^2$

$$
\begin{align}
\text{Var}[\hat{f}(c)]  &= \text{Var}[ \frac{1}{nh} K(\frac{X-c}{h})] \\
 &=  \frac{1}{n h^2} \text{Var}[ K(\frac{X-c}{h})] \\
 &= \frac{1}{n h^2} \{\mathbb{E}[K(\frac{X-c}{h})^2] - \mathbb{E}[K(\frac{X-c}{h})]^2\} \\
\end{align}
$$

Then we take the integral:

$$
\mathbb{E}[K(\frac{X-c}{h})^2] = \int K(\frac{x-c}{h})^2 f(x) dx
$$

$$
\mathbb{E}[K(\frac{X-c}{h})]^2 = (\int K(\frac{x-c}{h})f(x) dx)^2
$$

Similar to what we have done in the mean part, we let $u = \frac{x-c}{h}$, then $x = c + uh$ and $dx = h du$. Thus:

$$
\mathbb{E}[K(\frac{X-c}{h})^2] = \int K(u)^2 f(c + uh) h du
$$

$$
\text{Var}[\hat{f}(c)] = \frac{1}{n h} \int K(u)^2 f(c + hu) du - \frac{1}{n} \left( \int K(u) f(c+hu) du \right)^2
$$

For simplification, we denote:

$$
\text{Var}[\hat{f}(c)] = V_{1} - V_{2}
$$

where $V_{1} = \frac{1}{n h} \int K(u)^2 f(c + hu) du$ and $V_{2} = \frac{1}{n} \left( \int K(u) f(c+hu) du \right)^2$.

For $V_{1}$, using Taylor expansion, we have:

$$
f(c+hu) = f(c) + f'(c) hu + O(h^2)
$$

Thus we have:

$$
V_{1} = \frac{1}{n h} \int K(u)^2 [f(c) + f'(c) hu + O(h^2)] du
$$

$$
= \frac{1}{n h} \left[ f(c) \int K(u)^2 du + f'(c) h \int u K(u)^2 du + O(h^2) \right]
$$

Since $\int u K(u)^2 du = 0$ (The symmetric), we have:

$$
V_{1} = \frac{1}{n h} \left[ f(c) \int K(u)^2 du + O(h^2) \right] = \frac{f(c)}{n h} \int K(u)^2 du + O(\frac{1}{n})
$$

We could also follow the lecture slides where we let:

$$
V_{1} = \frac{1}{nh} f(c) \int K(u)^2 du + \frac{1}{nh} R_{2}
$$

where $R_2 =  \int K(u)^2 [f(c+hu) - f(c)] du$.

And we could also show that $R_{2} = o(1)$ as $h \to 0$ using the similar method in the mean part.

We skip the part of $V_{2}$ because the method is very similar. Finally we could have $O(n^{-1}) = o(\frac{1}{nh})$

#### [[Consistency]]

We finally could have:

$$
\begin{align}
\mathbb{E}[\hat{f}(c)] \to f(c)  \\ \\
\text{Var}[\hat{f}(c)] \to 0
\end{align}
$$

Since convergence in mean square implies convergence in probability, we have:

$$
\hat{f}(c) \to^p f(c)
$$

