#LSE/EC484_Econometrics_Analysis 

# Problem Set 复盘
## Pset 4 
### Question 3
- 如何理解 Covariate?
	- Covariate 就是回归模型中用来**解释或控制**因变量变化的变量，本质上就是自变量/控制变量的统称。
	- 核心理解：在 $Y_i = \beta_0 + \beta_1 X_i + \beta_2 Z_i + u_i$ 中，$X_i$ 和 $Z_i$ 都是 covariates。之所以叫 "co-variate"，是因为它们与 $Y$ **共同变化 (co-vary)**——我们关心的正是这种共变关系。
	- 在不同语境下侧重点不同：在因果推断中，covariates 通常特指需要**控制住**的那些变量（比如 DID/RDD 中加入的额外控制变量），以确保处理效应的识别不受混杂因素干扰。
- 如何理解 ATE? 
	- Average Treatment Effect，即平均处理效应。想象一个人在两个平行时空，一个世界接受 treat，而另一个世界没有，那么他就会有两个 $Y$ (outcome)，即：$$
	\tau = \mathbb{E}[Y_1 - Y_{0}]
	$$
	但是理想很美好，现实很骨感，在现实中我们无法同时观测到这两个值，因此我们必须依赖于其他的识别假设。
- 如何证明 OLS 的一致性？
	- 永远去想回归量和误差项正交，也就是 $\mathbb{E}[X_{i} \epsilon _{i}] = 0$ .
-  Probit 选择模型的核心直觉：
	- $$W_i = \mathbf{1}\{\theta_0 + X_i'\theta_1 + Z_i'\theta_2 + \epsilon_i \geq 0\}$$
	- 可以理解为：每个人内心有一个"参加处理的净收益"，由三部分组成：
	- $X_i'\theta_1$：可观测特征带来的倾向（如教育、年龄）
		- $Z_i'\theta_2$：外部激励（如是否被随机邀请参加）
		-  $\epsilon_i$：不可观测的个人偏好或动机
	- 当净收益 $\geq 0$ 时选择参加，否则不参加。这就是 self-selection 的数学表达。
	- 而 c 问的关键在于：$\epsilon_i$ 与 $e_{0i}, v_i$ 联合正态且可能相关——意味着**驱动选择的未观测因素和影响结果的未观测因素是关联的**。这正是选择偏误的根源，也是为什么需要 IMR 来修正。

### Question 4
本质上就是 TWFE 的运用。