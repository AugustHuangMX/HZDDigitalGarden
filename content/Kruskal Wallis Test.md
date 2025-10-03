[[Statistics MOC]]
#fleeting #Statistics 
## Application
1. The problem objective is to compare 2 or more populations
2. The data are either ordinal or interval, but nonnormal
3. The samples are independent

The application of [[Kruskal Wallis Test]] and [[Friedman Test]] are all for non-parameters test, but they differ in their application scenarios and test statistics.
*The Key difference is that the experimental design is independent samples and randomized blocks*


## Hypothesis
$H_0$: The locations of all $k$ populations are the same.
$H_1$: At least two population locations differ.
## Test Statistic
The test statistic of KW, is denoted by $H$, and the equation is
![[截屏2023-03-27 16.14.14.png]]
If the rank sum is similar, the test statistic will be small.
The smaller the H, the 
## Sampling distribution
The distribution of the test statistic can be derived in the same way in [[Wilcoxon Signed Rank Sum Test]] 
When the sample size small (smaller than 5), we could just easily list all the content. But when the sample size is larger than 5, the test statistic $H$ is approximately like the one in [[Chi-squared Distribution]]
*The rejection region*
![[截屏2023-03-27 16.21.36.png]]
## What is the difference between [[Wilcoxon Signed Rank Sum Test]]?
The KW method could produce the same result to the [[Wilcoxon Signed Rank Sum Test]] as the two-tail case, but it could only determine whether the difference exist ($H_0$), to determine whether it is at right or left, we still need to use [[Wilcoxon Signed Rank Sum Test]]
