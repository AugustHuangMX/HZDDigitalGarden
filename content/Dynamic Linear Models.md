#Econ/metrics #LSE/EC484_Econometrics_Analysis 

Consider the model of:

$$
y_{it} = \delta y_{i,t-1} + x_{it}' \beta + z_{i}' \gamma + \epsilon_{it}
$$

$\epsilon_{it}$ follows the one factor error components model: $\epsilon_{it} = \alpha_{i} + \nu_{it}$ . $\alpha_{i}$ is the individual unobserved persistent heterogeneity，也就是说是个体层面的不可观测持久异质性（unobserved persistent heterogeneity），在 FE 框架下它被当作个体固定效应（individual fixed effect）。

But in RE, we treat it like part of the errors. Thus FE and RE are not two different DGP(Data Generating Process), but two different methods of processing the *individual fixed effect*.



