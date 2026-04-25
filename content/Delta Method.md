#Econ/metrics 

核心思想：如果我们知道 $\hat{\theta}$ 的渐近分布，想求 $g(\hat{\theta})$ 的渐近分布，Delta Method 就是对 $g$ 做一阶 Taylor 展开。

假设我们已经有：

$$\sqrt{n}(\hat{\theta} - \theta) \xrightarrow{d} N(0, V)$$

But the key assumption here is that we need the sample is big enough, thus we could use LLN to approach.

想知道 $g(\hat{\theta})$ 的渐近分布。在 $\theta$ 处 Taylor 展开：

$$g(\hat{\theta}) \approx g(\theta) + G(\hat{\theta} - \theta)$$

其中 $G = \frac{\partial g}{\partial \theta'}\big|_{\theta}$ 是 Jacobian 矩阵。所以：

$$\sqrt{n}(g(\hat{\theta}) - g(\theta)) \xrightarrow{d} N(0, ; GVG')$$

- [[Nothing special about Jacobian Matrix]]

渐近方差就是 $GVG'$，实际估计时用 $\hat{G}\hat{V}\hat{G}'$ 代入即可。