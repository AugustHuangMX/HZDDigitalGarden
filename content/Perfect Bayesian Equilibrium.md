#fleeting #LSE/EC487_Advanced_Microeconomics 

[[Perfect Bayesian Equilibrium]], is mainly mentioned as "PBE" in a lot of context. In PBE, we will then mainly focus on the **weak** PBE. The weak PBE is defined as:

For the **sender**, given $\mu(\cdot|a_{1})$:

$$
\forall \theta \in \Theta, \sigma^*_{1}(\cdot|\theta) \in \arg\max_{\sigma_{1}} \sum_{a^1} \sum_{a^2} \sigma_{1}(a_{1}|\theta) \sigma_{2}^* (a_{2}|a_{1}) u_{1}(a_{1},a_{2},\theta) 
$$

For the **receiver**, 

$$
\forall a_{1} \in A_{1}, \sigma_{2}^*(\cdot|a_{1}) \in \arg\max_{\sigma_{2}} \sum_{\theta}  \sum_{a_{2}} \mu(\theta|a_{1}) \sigma(a_{2}|a_{1}) u_{2}(a_{1},a_{2},\theta)
$$

- $\mu$ is consistent with Bayesian Updating where possible:

$$
\mu(\theta|a_{1})  = \frac{p(\theta) \sigma_{1}^* (a_{1}|\theta)}{\sum_{\theta' \in \Theta} p(\theta') \sigma_{1}^* (a_{1}|\theta')}
$$

It totally follows the [[Bayesian Inference]].