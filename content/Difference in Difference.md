#Econ/metrics 

标准的 DiD 回归本身就是围绕 dummy variables 构建的。最基本的 DiD 回归形式是：

$$Y_{it} = \alpha + \beta_1 D_i + \beta_2 \text{Post}_t + \beta_3 (D_i \times \text{Post}_t) + \epsilon_{it}$$

其中 $D_i$ 是 treatment group 的 dummy，$\text{Post}_t$ 是 post-treatment period 的 dummy，$\beta_3$ 就是 DiD estimator。

