#Econ/metrics #LSE/EC484_Econometrics_Analysis 

One of the most important objects to describe the relationship between $y$ and $x$ is conditional expectation.

The [[Conditional Expectation Function]] is written as:

$$
\mathbb{E}[y|x]
$$
which is read as "the expected value of $y$ given $x$".

$$
\mathbb{E}[y|x] = \int u f_{y|x}(u|x) du
$$
where $f_{y|x}(u|x)$ is the conditional probability density function of $y$ given $x$.

## What is probability density function?

[[Probability Density Function]]

Note that $\int \dots du$ means we integrate over **all** possible values of $u$.

Knowing this, we could then define the [[Law of Iterated Expectations]] (LIE)

