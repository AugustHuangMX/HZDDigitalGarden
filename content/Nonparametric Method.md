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

