#Econ/Econometrics 

In a general notation, we suppose $\hat{\theta}$ is an **estimator** of $\theta$, so we call $\hat{\theta}$ consistent if it **converge** in probability to $\theta$, that is,

$$
plim_{ n \to \infty } \hat{\theta} = \theta
$$

To work out the probability limit of $\hat{\theta}$, we should use some tools such as the [[Law of Large Numbers]]

Some sufficient conditions for [[Consistency]]:

1. $\lim_{ n \to \infty } E(\hat{\theta})=\theta$
2. $\lim_{ n \to \infty } Var(\hat{\theta}) = 0$

If both conditions are satisfied, we could ensure that $\hat{\theta}$ is consistent.


