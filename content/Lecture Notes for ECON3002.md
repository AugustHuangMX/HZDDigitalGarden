## Probability

The probability of an outcome is the proportion of the time it occurs in the long run

*Notation:* For an event $A$ , the number $Pr(A)$ indicates the probability that A will occur.

The $\Omega$ stands for all possible outcomes.


A *discrete* random variable i.e the coin (0 or 1 no others)

A *continuous* random variable i.e the time spent on phone (some times the $f(x)$ could be above 1)



### Discrete Random Variable

$p(x)=Pr(X=x)$

Probability density function

Cumulative distribution function

Uniform distribution have no modes

##   Expected value and variance of a linear function

The basic knowledge: [[Variance]]

Prove: if $Y=a+bX$ then $Var(Y)=b^2Var(X)$ , why?

Since $Var(X)= E[(x-E(X))^2]$  so that $Var(Y)=E(a+bx-E(a+bx))^2$

$Var(Y)=E[(b(x-\overline x))^2]$ (the right part is the $Var(X)$)

So $Var(Y)=b^2Var(X)$


Prove: $Var(X)=E(X^2)-[E(X)^2]$:

$Var(X)=E[(X-E(X))^2]=E[X^2-2XE(X)+E(X)^2]$

$=E[X^2]-2E(XE(X))+E(X)^2]$

==Remember, $E(E(X))=E(X)$, so:

$=E[X^2]-2E(X)^2+E(X)^2$

$=E[X^2]-E(X)^2$





## [[Standard Deviation]]

The [[Standard Deviation]] of $X$ is denoted as $\sigma _X$, also the $\sqrt {Var(X)}$ 

## Joint and Marginal Distributions

The [[Joint Probability Density Distribution]] is the probability that two [[Discrete Random Variable]] $X$ and $Y$ simultaneously take on particular values. (say $x$ and $y$)

