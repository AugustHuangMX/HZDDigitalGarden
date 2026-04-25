#LSE/EC484_Econometrics_Analysis 

## Basic Idea

Use [[Delta Method]].

In this lecture, the estimator $\theta$ is all scalar.

Consider the population distribution function $F$ .

Why we care about CDF? Mainly because every inference comes from the distribution of the statistics, like CI and some [[Hypothesis test]], also the calculation of p-value, quantile, etc.

If we could know exactly the $G_{n}(u,F)$ , then we could have an accurate inference. However CDF rarely has [[Closed Form]] solution, thus we need to find ways to approximate it. [[Asymptotic Approximation]] gives a way, and now [[Bootstrap]] gives another. The whole chapter mainly discusses how to better approximate $G_{n}(u,F)$ .

> The key here is to better distinguish the "real world" ( $F$ ) and the "[[Bootstrap]]" world ( $F_n$ ).

In the lecture notes, there spends some content on describing what is **empirical distribution function**, I think essentially it is just another way of describing "resampling with replacement", but in a theoretical way.

## Bootstrap test

The testing here is similar in the general case, where consider testing: $\mathbb{H}_{0} : \theta = c$ against $\mathbb{H_{1}}: \theta \neq c$ .

The t-statistic is:

$$
T = \frac{\hat{\theta} - c}{s(\hat{\theta})}
$$

But in [[Bootstrap]], it is:

$$
T^* = \frac{\hat{\theta}^* - \hat{\theta}}{s(\hat{\theta}^*)}
$$




### Percentile CI

### Percentile-t CI

Before, we have 
