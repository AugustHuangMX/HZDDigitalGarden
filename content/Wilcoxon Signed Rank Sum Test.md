#input #fleeting #Statistics 
3 requirements:
1. 2 populations
2. No need to be normality requirement but are either ordinal or interval.
3. Matched pairs ( not 相互独立)

Core: We ignore the the exact difference of numbers, but to only record the sign, for example:
==65 45 32 23== they could be record as *4 3 2 1* 
And that's called the sign test.
## The Method
The method is same as the [[Sign Test]] , We eliminate all differences that are equal to 0. And we need to calculate the sum of ranks. ($T^+$ and $T^-$)
### Classification
$n\leq30$ : small samples
$n>30$ : big samples
Mean:  $E(T)=\frac{n(n+1)}{4}$
Standard deviation: $\sigma_T=\sqrt{\frac{n(n+1)(2n+1)}{24}}$
The standardized test statistic is $z=\frac{T-E(T)}{\sigma_T}$

==Related to: [[Wilcoxon Rank Sum Test]]
