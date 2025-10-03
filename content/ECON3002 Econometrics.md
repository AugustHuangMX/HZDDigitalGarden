[[What is Econometrics]]

[[Lecture Notes for ECON3002]]

[[Multiple Linear Regression]]

[[ECON3002 Question List]]

---


# Self Textbook notes

## 2.3 Two Random Variables

### Joint and Marginal Distributions

The [[Joint Probability Density Distribution]] and the [[Marginal Probability Distribution]]

### Conditional Distributions

The distribution of a random variable $Y$ conditional on another random variable $X$ taking on a specific value is called the conditional  distribution of $Y$ given $X$, it is written as $Pr(Y=y|X=x)$

![[截屏2023-08-23 14.42.19.png]]

In the table 2.2, the $Pr(Y=y|X=x)$ could be expressed that what is the prob of a long commute if I *already know* it is raining?

That is  asking  $Pr(Y=0|X=0)$ , and it is equals to $0.15/0.30=50\%$ 

$$
Pr(Y=y|X=x)=\frac{Pr(X=x,Y=y)}{Pr(X=x)}
$$

> Remember the second part is the event that you already know.

##   Expected value and variance of a linear function

The basic knowledge: [[Variance]]

Prove: if $Y=a+bX$ then $Var(Y)=b^2Var(X)$ , why?

Since $Var(X)= E[(x-E(X))^2]$  so that $Var(Y)=E(a+bx-E(a+bx))^2$

$Var(Y)=E[(b(x-\overline x))^2]$ (the right part is the $Var(X)$)

So $Var(Y)=b^2Var(X)$


--- 

Prove: $Var(X)=E(X^2)-[E(X)^2]$:

$Var(X)=E[(X-E(X))^2]=E[X^2-2XE(X)+E(X)^2]$

$=E[X^2]-2E(XE(X))+E(X)^2]$

==Remember, $E(E(X))=E(X)$, so:==

$=E[X^2]-2E(X)^2+E(X)^2$

$=E[X^2]-E(X)^2$

---

## Moments

Both [[Mean]] and [[Variance]] belong to a class of measures, called [[Moments]]

It is divided by the *Raw Moments* and the *Central Moments* 

Calculate the skewness: 

$Skewness:=\frac{\sigma^{(3)}}{\sigma^3}$ 

$Kurtosis:=\frac{\sigma^{(4)}}{\sigma^4}$  (measure the *thickness of the tails*)

$Excess\ Kurtosis := Kurtosis - 3$

![[Pasted image 20230828153412.png]]





---

## [[Standard Deviation]]

The [[Standard Deviation]] of $X$ is denoted as $\sigma _X$, also the $\sqrt {Var(X)}$ 

## Joint and Marginal Distributions

The [[Joint Probability Density Distribution]] is the probability that two [[Discrete Random Variable]] $X$ and $Y$ simultaneously take on particular values. (say $x$ and $y$)

### The law of iterated expectations

[[Law of Iterated Expectations]]  is the mean of Y is the weighted average of the conditional expectation of $Y$ given X, weighted by the prob distribution of $X$ 
$$
E(Y)=\sum^l _{i=1}E(Y|X=x_i)Pr (X=x_i)
$$
So that the expectation of $Y$ is the expectation of the conditional expectation of $Y$ given $X$,

$$
E(Y)=E[E(Y|X)]
$$

And this is the core of  [[Law of Iterated Expectations]]

### The Independence

#### The Discrete Case

[[Independence]] Two random  variables $X$ and $Y$ are said to be *independently distributed* if 

$$
Pr(Y=y|X=x)= Pr(Y=y)
$$

Since the conditional distribution implies that 

$$
Pr(Y=y|X=x)=\frac{Pr(X=x,Y=y)}{Pr(X=x)}
$$

That is 

$$
Pr(X=x,Y=y)=Pr(X=x)Pr(Y=y)
$$

Then the $X$ and $Y$ are independent.


#### The Continuous Case

$Y$ is independent of $X$:

$f_{y|x}(y|x)=f_y(y)$

$f_{yx}(y,x)=f_y(y)f_x(x)$


---

We use [[Correlation Coefficient]] to estimate the strength of the 2 variables. 

It is rescaled to be between $-1$ to $1$ , and it is also unit free.

$$
\rho=\frac{cov(X,Y)}{\sigma_X \sigma_Y}
$$

> How to compute $cov(X,Y)$? See [[Covariance]] 

If $\rho = 1$, it is perfect positive linear relation

If $\rho = -1$, it is perfect negative linear relation

(Most of the time the [[Correlation Coefficient]] would be between when estimate econometrics problem.)

That is, we use *absolute value* $|\rho|$ to reflects the strength of **linear** association between the 2 variables.

--- 

### Independence vs. Uncorrelation

It is claimed that Independence => $\rho = 0$ , but not vice versa. (Think of the question $Y=X^2$)

This is why we have to highlight the "linear" in 

> That is, we use *absolute value* $|\rho|$ to reflects the strength of **linear** association between the 2 variables.

The independence only hold if $X$ has no relationship (neither linear nor nonlinear) of $Y$!

[[ECON3002 Lecture2]]


## ECON 3002 Question List

1. What is lagged value/ forward value?
2. What is $\Delta ^k Y_t = \Delta ^{k-1} Y_t -  \Delta ^{k-1} Y_{t-1}$





# Reference 

