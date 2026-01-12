#LSE/EC484_Econometrics_Analysis 

This page serves as a quick knowledge check list for preparing the final exams in EC484 Econometrics Analysis. It covers key concepts, formulas, and methodologies that I am not familiar with.

1. A matrix $A$ is **nonsigular** if
	1. It is invertible. (exists $A^{-1}$ such that $AA^{-1} = I$)
	2. $\det(A) \neq 0$
	3. $Ax=0$ has only the trivial solution $x=0$.
	4. The columns (or rows) of $A$ are linearly independent.
2. [[Variance]] equation: $Var(X) = E[X^2] - (E[X])^2$
3. [[Covariance]] equation: $Cov(X,Y) = E[XY] - E[X]E[Y]$
4. Positive Semi-Definite Matrix: A symmetric matrix $A$ is positive semi-definite if for any non-zero vector $x$, $x^T A x \geq 0$.
5. The optimal matrix in GMM is $W^* = \Omega^{-1}$. Where $\Omega$ is the variance-covariance matrix of the moment conditions.
	1. $\Omega = \mathbb{E}[g(Z,\theta_{0})g(Z,\theta_{0})']$
	2. Suppose $\Omega$ is $r$ dim $$\Omega = \begin{pmatrix} E[g_1^2] & E[g_1 g_2] & \cdots & E[g_1 g_r] \\ E[g_2 g_1] & E[g_2^2] & \cdots & E[g_2 g_r] \\ \vdots & \vdots & \ddots & \vdots \\ E[g_r g_1] & E[g_r g_2] & \cdots & E[g_r^2] \end{pmatrix}$$
	3. Thus in two-step GMM, we could also use similar approach to estimate $\Omega$ by using the sample analog: $$
\hat{\Omega} = \frac{1}{n} \sum_{i=1}^{n} g(Z_i, \hat{\theta}_{W}) g(Z_i, \hat{\theta}_{W})'
$$
	Where $\hat{\theta}_{W}$ is the GMM estimator from the first step with some initial weighting matrix $W$.
6. $\text{Var}(c+e_{i}) = \text{Var}(e_{i}) = \sigma^{2}$ if $c$ is a constant. The reason is that adding a constant to a random variable does not change its variance.
7. [[Delta Method]] is fundamentally [[Taylor Expansion]] and CLT.
	1. If $\sqrt{ n }(\hat{\beta}- \beta) \to^d N(0,V)$, then $\sqrt{ n }(g(\hat{\beta})- g(\beta)) \to^d N(0,GVG')$ where $G = \frac{\partial g(\beta)}{\partial \beta'}$.
8. The two step GMM:
	1. 首先选择一个任意的初始矩阵 $W_{n}^{(1)}$ 比如某个单位矩阵 $I$. 然后计算这个初始矩阵下的 GMM estimator $\hat{\theta}_{W}^{(1)}$. 
	   $$\hat{\theta}_{W}^{(1)} = \arg \min_{\theta \in \Theta} Q_{n}(\theta; W_{n}^{(1)}) = \arg \min_{\theta \in \Theta} g_{n}(\theta)' W_{n}^{(1)} g_{n}(\theta)$$（也可以写成 sum 的形式）
	2. 第二步是计算 $\hat{\theta}_{W}^{(1)}$ 下的 $\hat{\Omega}$:
	   $$\hat{\Omega} = \frac{1}{n} \sum_{i=1}^{n} g(Z_i, \hat{\theta}_{W}^{(1)}) g(Z_i, \hat{\theta}_{W}^{(1)})'$$ 也就是用第一步的估计值来计算矩阵 $\Omega$ 的样本矩阵。注意 $\hat{W} = \hat{\Omega}^{-1}$.
	3. 最终的估计器是用第二步的 $\hat{W}$ 来计算的 GMM estimator:
	   $$\hat{\theta}_{W}^{(2)} = \arg \min_{\theta \in \Theta} Q_{n}(\theta; \hat{W}) = \arg \min_{\theta \in \Theta} g_{n}(\theta)' \hat{W} g_{n}(\theta)$$
9. 渐近分布：
	1. 标准的 GMM 渐近分布：
	   $$
\sqrt{ n }(\hat{\theta} - \theta_{0}) \to^d N(0,(G'\Omega^{-1}G)^{-1})
$$
其中， $G = \mathbb{E}[\frac{\partial g(Z,\theta_{0})}{\partial \theta'}]$ 是矩阵 $g$ 对参数 $\theta$ 的导数的期望值。$\Omega =\mathbb{E}[g(W_{i},\theta_{0}),g(W_{i},\theta_{0})']$
注意维度问题：$G$ 是 $r \times k$， $\Omega$ 是 $r \times r$，所以 $G' \Omega^{-1} G$ 是 $k \times k$ 的矩阵，最后的逆也是 $k \times k$ 的矩阵。 
10. J 检验：
	1. $$
J = n \bar{g}_{n}(\hat{\theta})' \hat{W} \bar{g}_{n}(\hat{\theta})
$$
	2. 其中， $\bar{g}_{n}(\hat{\theta}) = \frac{1}{n} \sum_{i=1}^{n} g(Z_{i},\hat{\theta})$ 是样本矩阵的均值。$\hat{W}$ 是估计的权重矩阵，通常是 $\hat{\Omega}^{-1}$。
	3. 在零假设下， $J$ 服从 $\chi^{2}$ 分布，自由度为 $r-k$，其中 $r$ 是矩阵 $g$ 的维度， $k$ 是参数 $\theta$ 的维度。
	4. 决策规则：拒绝 $H_{0}$ 如果当且仅当 $J > \chi^{2}_{r-k,1-\alpha}$，其中 $\chi^{2}_{r-k,1-\alpha}$ 是 $\chi^{2}$ 分布在 $1-\alpha$ 分位点的值。
	5. 注意：只有当 $r>k$ 的时候才能做 J 检验，因为只有在过识别的情况下才有多余的矩阵来检验模型的有效性。J 检验本质上是 specification test，也就是检验模型的矩条件是否合理。
11. $\mathbb{E}[Y_{i}] = c \implies \mathbb{E}[Y_{i}-c = 0]$
12. $Med(Y_{i})=c \implies \mathbb{E}[I(Y_{i}\leq c) - 0.5] = 0$
13. $\text{Var}(Y_{i}|X_{i}) = \sigma^2 \implies \mathbb{E}[Y_{i}^2 - m(X_{i}, \theta)^2 - \sigma^2|X_{i}]= 0$ 这个条件主要适用场景是要将方差约束转化成一个矩条件。
14. $\mathbb{E}[Y_{i}|X_{i}] = m(X_{i},\theta)\implies \mathbb{E}[a(X_{i})(Y_{i}-m(X_{i},\theta))]$，在这里，对于任何函数 $a(X_{i})$ 都成立（IV）
15. Optimal IV: 这是关于条件矩限制的话题。我们已知条件矩限制是 $\mathbb{E}[h(W_{i},\theta_{0})|X_{i}] = 0$ 最优的 IV 是：


好的！我为你总结一套**GMM核心公式速查表**，按主题分类。

---

## 一、基本GMM框架

### 1. 矩条件标准形式

$$\boxed{E[g(W_i, \theta_0)] = 0}$$

**任何约束都要转化为这个形式！**

### 2. 识别判断

- **矩条件数 = $r$**
- **参数数 = $k$**
- $r = k$：恰好识别（just-identified）
- $r > k$：过度识别（over-identified）
- $r < k$：欠识别（under-identified，无法识别）

---

## 二、两步GMM估计器

### 1. 第一步：初始估计

任选权重矩阵 $W_n^{(1)}$（如单位矩阵或只用某个矩条件）： $$\hat{\theta}^{(1)} = \arg\min_{\theta} \left(\frac{1}{n}\sum_{i=1}^n g(W_i, \theta)\right)' W_n^{(1)} \left(\frac{1}{n}\sum_{i=1}^n g(W_i, \theta)\right)$$

### 2. 第二步：有效GMM

用 $\hat{\theta}^{(1)}$ 构造最优权重矩阵： $$\hat{W} = \left[\frac{1}{n}\sum_{i=1}^n g(W_i, \hat{\theta}^{(1)})g(W_i, \hat{\theta}^{(1)})'\right]^{-1}$$

最终估计器： $$\boxed{\hat{\theta} = \arg\min_{\theta} \left(\frac{1}{n}\sum_{i=1}^n g(W_i, \theta)\right)' \hat{W} \left(\frac{1}{n}\sum_{i=1}^n g(W_i, \theta)\right)}$$

---

## 三、渐近分布

### 1. 标准GMM渐近分布

$$\boxed{\sqrt{n}(\hat{\theta} - \theta_0) \xrightarrow{d} N(0, (G'\Omega^{-1}G)^{-1})}$$

其中： $$G = E\left[\frac{\partial g(W_i, \theta_0)}{\partial \theta'}\right]$$ $$\Omega = E[g(W_i, \theta_0)g(W_i, \theta_0)']$$

### 2. 计算步骤

1. 计算 $G$（$r \times k$ 矩阵）
2. 计算 $\Omega$（$r \times r$ 矩阵）
3. 计算 $(G'\Omega^{-1}G)^{-1}$（$k \times k$ 矩阵）

---

## 四、J检验（过度识别约束检验）

### 1. J统计量

$$\boxed{J = n \cdot \bar{g}_n(\hat{\theta})' \hat{W} \cdot \bar{g}_n(\hat{\theta})}$$

其中 $\bar{g}_n(\theta) = \frac{1}{n}\sum_{i=1}^n g(W_i, \theta)$

### 2. 渐近分布

$$\boxed{J \xrightarrow{d} \chi^2(r - k) \quad \text{在 } H_0 \text{ 下}}$$

### 3. 决策规则

拒绝 $H_0$ 如果 $J > \chi^2_{r-k, 1-\alpha}$

**注意：** 只有 $r > k$ 时才能做J检验！

---

## 五、常见矩条件转化

### 1. 均值约束

$$E[Y_i] = c \quad \Rightarrow \quad \boxed{E[Y_i - c] = 0}$$

### 2. 中位数约束

$$\text{Med}(Y_i) = c \quad \Rightarrow \quad \boxed{E[\mathbb{1}(Y_i \leq c) - 0.5] = 0}$$

### 3. 方差约束

$$\text{Var}(Y_i|X_i) = \sigma^2 \quad \Rightarrow \quad \boxed{E[Y_i^2 - m(X_i, \theta)^2 - \sigma^2|X_i] = 0}$$

### 4. 正交条件

$$E[X_i e_i] = 0 \quad \text{（已经是标准形式）}$$

### 5. 条件均值

$$E[Y_i|X_i] = m(X_i, \theta) \quad \Rightarrow \quad \boxed{E[a(X_i)(Y_i - m(X_i, \theta))] = 0}$$ 对任意函数 $a(X_i)$ 成立（工具变量）

---

## 六、最优工具变量（IV）

### 1. 适用条件

- 条件矩限制：$E[h(W_i, \theta_0)|X_i] = 0$
- 例如：$E[e_i|X_i] = 0$ 其中 $e_i = Y_i - m(X_i, \theta_0)$

### 2. 最优IV公式

$$\boxed{a^*(X_i) = E\left[\frac{\partial h(W_i, \theta_0)}{\partial \theta}\bigg|X_i\right] \cdot (E[h(W_i, \theta_0)^2|X_i])^{-1}}$$

### 3. 非线性回归的最优IV

对 $Y_i = m(X_i, \theta_0) + e_i$，$E[e_i|X_i] = 0$： $$\boxed{a^*(X_i) = \frac{\partial m(X_i, \theta_0)}{\partial \theta} \cdot (E[e_i^2|X_i])^{-1}}$$

### 4. 最优IV的渐近方差

$$\boxed{V^* = \left(E\left[\frac{\partial m(X_i, \theta_0)}{\partial \theta} \frac{\partial m(X_i, \theta_0)}{\partial \theta'} (E[e_i^2|X_i])^{-1}\right]\right)^{-1}}$$

**关键性质：** 使用最优IV时，$G = -\Omega$，所以 $(G'\Omega^{-1}G)^{-1} = \Omega^{-1}$

---

## 七、非线性最小二乘（NLLS）

### 1. NLLS估计器

$$\hat{\theta}_{NLLS} = \arg\min_{\theta} \sum_{i=1}^n [Y_i - m(X_i, \theta)]^2$$

### 2. 渐近分布

$$\boxed{\sqrt{n}(\hat{\theta}_{NLLS} - \theta_0) \xrightarrow{d} N(0, H^{-1}\Sigma H^{-1})}$$

其中： $$H = E\left[\frac{\partial m(X_i, \theta_0)}{\partial \theta}\frac{\partial m(X_i, \theta_0)}{\partial \theta'}\right]$$ $$\Sigma = E\left[\frac{\partial m(X_i, \theta_0)}{\partial \theta}\frac{\partial m(X_i, \theta_0)}{\partial \theta'} e_i^2\right]$$

### 3. 同方差下的简化

**如果 $E[e_i^2|X_i] = \sigma^2$（常数）：** $$\Sigma = \sigma^2 H$$ $$\boxed{V_{NLLS} = \sigma^2 H^{-1} = V^*}$$

**结论：同方差时NLLS = 最优IV！**

---

## 八、线性回归特例

### 1. OLS（线性模型）

$Y_i = X_i\beta_0 + e_i$，$E[X_i e_i] = 0$

**渐近分布：** $$\sqrt{n}(\hat{\beta}_{OLS} - \beta_0) \xrightarrow{d} N(0, V_{OLS})$$

$$\boxed{V_{OLS} = (E[X_iX_i'])^{-1} E[X_iX_i'e_i^2] (E[X_iX_i'])^{-1}}$$

**同方差简化：** $V_{OLS} = \sigma^2(E[X_iX_i'])^{-1}$

---

## 九、效率比较公式

### 1. 比较两个估计器

估计器 $\tilde{\theta}$ 和 $\hat{\theta}$，比较： $$\boxed{\text{AsyVar}(\tilde{\theta}) - \text{AsyVar}(\hat{\theta}) \geq 0}$$

如果 $\geq 0$，则 $\hat{\theta}$ 更有效。

### 2. 添加矩条件的效率提升

原矩条件 $r_1$ 个，新矩条件 $r_2$ 个（$r_2 > r_1$）： $$V_{r_1} - V_{r_2} = \text{效率提升} \geq 0$$

当且仅当新矩条件提供独立信息（$\Omega$ 非奇异）。

---

## 十、常用假设检验

### 1. 单个参数的t检验

$$\boxed{t = \frac{\sqrt{n}(\hat{\theta}_j - \theta_{j0})}{\sqrt{\hat{V}_{jj}}} \xrightarrow{d} N(0,1)}$$

拒绝 $H_0: \theta_j = \theta_{j0}$ 如果 $|t| > z_{1-\alpha/2}$

### 2. Wald检验（多个约束）

$$\boxed{W = n(R\hat{\theta} - r)'[R\hat{V}R']^{-1}(R\hat{\theta} - r) \xrightarrow{d} \chi^2(q)}$$

检验 $H_0: R\theta_0 = r$（$q$ 个线性约束）

### 3. 简单均值检验

检验 $H_0: E[Y_i] = c$： $$\boxed{t = \frac{\sqrt{n}(\bar{Y} - c)}{s} \xrightarrow{d} N(0,1)}$$

其中 $s = \sqrt{\frac{1}{n}\sum(Y_i - \bar{Y})^2}$

---

## 十一、快速决策树

### 何时用哪个公式？

```
问题类型？
├─ 条件矩 + 最优IV？
│  └─ 用最优IV公式（第六节）
│     └─ 同方差？
│        ├─ 是 → NLLS = 最优IV
│        └─ 否 → 最优IV更好
│
├─ 一般GMM（无条件矩）？
│  └─ 完整计算G和Ω（第三节）
│     └─ 过度识别？
│        └─ 是 → 做J检验
│
└─ 简单均值/比例检验？
   └─ 用t检验或z检验
```

---

## 十二、记忆口诀

### GMM三步走

1. **写矩条件**：一切转化为 $E[g] = 0$
2. **算两矩阵**：$G$（梯度）和 $\Omega$（协方差）
3. **套公式**：$(G'\Omega^{-1}G)^{-1}$

### 识别判断

> "矩多于参，过度识别；矩等于参，恰好识别"

### 最优IV记忆

> "条件矩 + 最优IV = 简化公式可用"

### 同方差特例

> "同方差救一切：OLS最优、NLLS最优"

---

## 十三、考试注意事项

### ✓ 必做

1. **明确写出矩函数** $g(W_i, \theta)$
2. **说明识别情况**（恰好/过度）
3. **计算时注明哪个是 $G$，哪个是 $\Omega$**
4. **J检验要写自由度**

### ✗ 常见错误

1. 忘记 $E[\cdot]$ 在随机变量外面（即使在真值处求导）
2. 把最优IV的简化公式用在非条件矩问题上
3. J检验用错自由度（$r - k$ 不是 $r$）
4. 对 $a^*(X_i)$ 求导（两步GMM中第二步它是固定的）

---

# Yike Problem Set 3

识别假设检验的条件，如果是线性的话，用 t test，如果不是线性的话，用 Wald 检验。
## 📋 必背：Wald检验通用公式

对于假设 $H_0: r(\beta) = 0$（$r: \mathbb{R}^k \to \mathbb{R}^q$）：

$$\boxed{W = r(\hat{\beta})' \left[\frac{\partial r(\hat{\beta})}{\partial \beta'} \hat{V}_{\hat{\beta}} \left(\frac{\partial r(\hat{\beta})}{\partial \beta'}\right)'\right]^{-1} r(\hat{\beta}) \xrightarrow{d} \chi^2_q}$$

其中 $q = \dim(r(\beta))$ = 约束个数

---

## 🔧 解题四步骤模板（机械化套用）

### Step 1: 写出约束函数 $r(\beta) = 0$

**技巧**：把原假设改写成"某个东西=0"的形式

|原假设|改写为 $r(\beta) = 0$|
|---|---|
|$\beta_1 = \beta_2$|$r(\beta) = \beta_1 - \beta_2 = 0$|
|$\beta_1\beta_2 = 1$|$r(\beta) = \beta_1\beta_2 - 1 = 0$|
|$\frac{\beta_1}{\beta_2} = \frac{\beta_3}{\beta_4}$|$r(\beta) = \frac{\beta_1}{\beta_2} - \frac{\beta_3}{\beta_4} = 0$|

### Step 2: 计算梯度 $\frac{\partial r(\beta)}{\partial \beta'}$（$1 \times k$ 行向量）

**必背求导公式**：

|函数形式|梯度|
|---|---|
|$r = \beta_i$|$\frac{\partial r}{\partial \beta'} = [0,...,1,...,0]$（第$i$位是1）|
|$r = a\beta_i + b\beta_j$|$\frac{\partial r}{\partial \beta'} = [0,...,a,...,b,...,0]$|
|$r = \beta_i\beta_j$|$\frac{\partial r}{\partial \beta'} = [0,...,\beta_j,...,\beta_i,...,0]$|
|$r = \frac{\beta_i}{\beta_j}$|$\frac{\partial r}{\partial \beta'} = [0,...,\frac{1}{\beta_j},...,-\frac{\beta_i}{\beta_j^2},...,0]$|

### Step 3: 代入Wald统计量公式

$$W = r(\hat{\beta})' \left[\text{Gradient} \times \hat{V}_{\hat{\beta}} \times \text{Gradient}'\right]^{-1} r(\hat{\beta})$$

**简化记忆**：

- 如果 $r(\beta)$ 是**标量**（1个约束），中间那坨也是标量，直接除： $$W = \frac{r(\hat{\beta})^2}{\text{Gradient} \times \hat{V}_{\hat{\beta}} \times \text{Gradient}'} \sim \chi^2_1$$
    
- 如果 $r(\beta)$ 是**向量**（多个约束），需要矩阵求逆
    

### Step 4: 判断自由度，查临界值

- **自由度** = $q$ = 约束个数 = $\dim(r(\beta))$
- **拒绝域**：$W > \chi^2_{q, \alpha}$

---

## 📝 快速检查清单（考场必用）

做Wald检验题时，按这个顺序检查：

1. ✅ $r(\beta)$ 写对了吗？（约束=0的形式）
2. ✅ 梯度维度对吗？（$1 \times k$ 或 $q \times k$）
3. ✅ 梯度在 $\hat{\beta}$ 处求值了吗？
4. ✅ 自由度 = 约束个数吗？
5. ✅ 用的是 $\chi^2$ 不是 $N(0,1)$ 吗？

---

## ⚠️ 常见陷阱

1. **自由度搞错**：标量约束是 $\chi^2_1$，不是 $N(0,1)$！
2. **梯度忘记转置**：$\frac{\partial r}{\partial \beta'}$ 是行向量
3. **梯度在错误点求值**：应该在 $\hat{\beta}$ 处，不是 $\beta_0$


**必用技巧**：

- 利用 $E(e_i|x_i)=0 \Rightarrow E(x_ie_i)=0$（iterated expectations）

#### 通用公式（核心记忆！）

对于第二步估计量，标准化后： $$\sqrt{n}(\hat{\gamma} - \gamma) = \frac{\text{分子（含CLT项）}}{\text{分母（LLN项）}}$$

**标准形式**： $$\boxed{\sqrt{n}(\hat{\gamma} - \gamma) \xrightarrow{d} N\left(0, \frac{A'\Omega A}{(A'QA)^2}\right)}$$

其中：

- $A$：第一步参数（$\beta$）
- $\Omega = E(u_i^2 x_ix_i')$：噪声协方差矩阵
- $Q = E(x_ix_i')$：解释变量协方差矩阵

#### 推导步骤模板

1️⃣ **标准化**：写出 $\sqrt{n}(\hat{\theta} - \theta)$ 的表达式

2️⃣ **分离CLT项和LLN项**： $$\sqrt{n}(\hat{\theta} - \theta) = \frac{\overbrace{\frac{1}{\sqrt{n}}\sum (\cdot)}^{\text{用CLT}}}{\underbrace{\frac{1}{n}\sum (\cdot)}_{\text{用LLN}}}$$

3️⃣ **应用CLT**： $$\frac{1}{\sqrt{n}}\sum x_iu_i \xrightarrow{d} N(0, \Omega)$$ （假设：$E(x_iu_i)=0$，$E|x_iu_i|^2 < \infty$）

4️⃣ **应用LLN**： $$\frac{1}{n}\sum x_ix_i' \xrightarrow{p} Q$$

5️⃣ **应用CMT/Slutsky**：组合得到极限分布

---

### Step 3: 假设检验（固定套路）

#### t检验标准流程

**检验**：$H_0: \gamma = 0$ vs $H_1: \gamma \neq 0$

**步骤**：

1️⃣ **估计渐近方差**（Plug-in原则）： $$\hat{V} = \frac{\hat{\beta}'\hat{\Omega}\hat{\beta}}{(\hat{\beta}'\hat{Q}\hat{\beta})^2}$$

其中：

- $\hat{Q} = \frac{1}{n}\sum x_ix_i'$
- $\hat{\Omega} = \frac{1}{n}\sum \hat{u}_i^2 x_ix_i'$
- $\hat{u}_i =$ 第二步残差

2️⃣ **构造t统计量**： $$t = \frac{\sqrt{n}\hat{\gamma}}{\sqrt{\hat{V}}} \xrightarrow{d} N(0,1) \quad \text{under } H_0$$

3️⃣ **拒绝域**： $$|t| > z_{1-\alpha/2} \quad \text{(如 1.96 for } \alpha=0.05\text{)}$$

---

## 🎯 关键技巧速记

### 技巧1: 何时第一步误差会影响渐近分布？

|情况|第一步误差影响|原因|
|---|---|---|
|$\theta_0 \neq 0$|❌ 不影响一致性|误差被LLN"吃掉"|
|$\theta_0 = 0$|✅ 影响渐近分布|估计量本身是 $O_p(1/\sqrt{n})$，误差不能忽略|

**记忆口诀**："真值为零，误差留痕"

### 技巧3: 异方差稳健方差估计

$$\boxed{\hat{\Omega} = \frac{1}{n}\sum \hat{u}_i^2 x_ix_i' \quad \text{(注意平方！)}}$$


**一致性证明标准三步**：

1. 写出估计量表达式（样本矩形式）
2. 应用LLN：$\frac{1}{n}\sum f(x_i, y_i) \xrightarrow{p} E[f(x_i, y_i)]$
3. 应用CMT + 验证极限=真值（代入真实模型，利用 $E(e_i|x_i)=0$）

**渐近分布推导标准步骤**：

1. 标准化：写出 $\sqrt{n}(\hat{\theta} - \theta)$
2. 分离CLT项（$\frac{1}{\sqrt{n}}\sum$）和LLN项（$\frac{1}{n}\sum$）
3. 对分子用CLT：$\frac{1}{\sqrt{n}}\sum x_ie_i \xrightarrow{d} N(0, E(e_i^2x_i^2))$
4. 对分母用LLN：$\frac{1}{n}\sum x_i^2 \xrightarrow{p} E(x_i^2)$
5. 应用Slutsky组合

**本题两个估计量的渐近方差**： $$\text{AVar}(\hat{\beta}) = \frac{E(e_i^2x_i^2)}{[E(x_i^2)]^2}, \quad \text{AVar}(\tilde{\beta}) = E\left(\frac{e_i^2}{x_i^2}\right)$$

**效率比较**：

- 同方差（$E(e_i^2|x_i)=\sigma^2$）：OLS最优，因为 $E\left(\frac{1}{x_i^2}\right) \geq \frac{1}{E(x_i^2)}$（Cauchy-Schwarz）
- 异方差（$E(e_i^2|x_i) \propto x_i^{-2}$）：加权估计量可能更优

**Delta Method通用公式**（标量）： $$\sqrt{n}(r(\hat{\theta}) - r(\theta)) \xrightarrow{d} N(0, [r'(\theta)]^2 V)$$ 条件：$r(\cdot)$ 连续可微，$r'(\theta) \neq 0$

**Delta Method推导步骤**：

1. Taylor展开：$r(\hat{\theta}) \approx r(\theta) + r'(\theta)(\hat{\theta} - \theta)$
2. 标准化：$\sqrt{n}(r(\hat{\theta}) - r(\theta)) \approx r'(\theta)\sqrt{n}(\hat{\theta} - \theta)$
3. 应用已知分布和Slutsky定理
4. 计算方差：$r'(\theta) \cdot N(0,V) = N(0, [r'(\theta)]^2V)$

**基于Delta Method的假设检验**（$H_0: r(\beta) = c$）： $$t = \frac{\sqrt{n}(r(\hat{\theta}) - c)}{|r'(\hat{\theta})|\sqrt{\hat{V}}} \xrightarrow{d} N(0,1)$$ 拒绝域：$|t| > z_{1-\alpha/2}$

**方差估计（Plug-in）**：

- 估计 $E\left(\frac{e_i^2}{x_i^2}\right)$：用 $\hat{V} = \frac{1}{n}\sum \frac{\hat{e}_i^2}{x_i^2}$
- 残差：$\hat{e}_i = y_i - x_i\hat{\beta}$（用估计量的fitted value）

**常用导数**： $r(\theta) = \theta^k \Rightarrow r'(\theta) = k\theta^{k-1}$；$r(\theta) = \theta^{-1} \Rightarrow r'(\theta) = -\theta^{-2}$；$r(\theta) = \log\theta \Rightarrow r'(\theta) = \theta^{-1}$；$r(\theta) = e^\theta \Rightarrow r'(\theta) = e^\theta$

**关键技巧**：

- 一致性：利用 $E(e_i|x_i)=0 \Rightarrow E(x_ie_i)=0$（iterated expectations）
- 渐近方差：注意是 $\hat{e}_i^2$ 不是 $\hat{e}_i$
- Delta Method：导数要平方，且在估计值处求值（Plug-in）
- 检验统计量：导数要取绝对值（标准差为正）

2SLS 和 GMM 最大的区别就是 2SLS 利用了同方差假设，也就是 $W_{n} = \left( \sum Z_{i}Z_{i}' \right)^{-1}$, 而 Efficient GMM 则是利用了异方差假设， $W_{n} = \left( \sum Z_{i}\hat{e}_{i}^{2}Z_{i}' \right)^{-1}$。因此在同方差假设下， 2SLS 和 Efficient GMM 是等价的。



我先查看nonparametric课件内容来为你整理核心知识点。基于课件内容，为你整理**Nonparametric核心知识点清单**：

## **一、核心框架（5大主题）**

1. 非参数密度估计
2. 非参数回归
3. 部分线性模型
4. 规范检验
5. 非参数可加模型

---

## **二、必备公式与概念**

### **1. 核密度估计（Kernel Density）**

- **定义**：$$\hat{f}(c) = \frac{1}{nh}\sum_{i=1}^n K\left(\frac{X_i - c}{h}\right)$$
- **核心要素**：核函数$K(\cdot)$和带宽$h$
- **MSE最小化**：$$\text{MSE}(c,h) = \text{Bias}^2 + \text{Variance}$$

### **2. 核回归估计（Kernel Regression）**

- **定义**：$$\hat{m}(c) = \frac{\sum_{i=1}^n K\left(\frac{X_i-c}{h}\right)Y_i}{\sum_{i=1}^n K\left(\frac{X_i-c}{h}\right)} = \sum_{i=1}^n w_i(c)Y_i$$
- **解释**：加权平均，权重$w_i(c)$取决于$X_i$与$c$的距离

### **3. 带宽选择（Bandwidth Selection）**

- **交叉验证**：最小化样本外预测误差（MSFE）
- **Bias-Variance权衡**：
    - $h$小 → 低偏差、高方差（欠平滑）
    - $h$大 → 高偏差、低方差（过平滑）

### **4. 收敛速度（Convergence Rates）**

- **单变量**：$(nh)^{-1/2}$
- **多变量（d维）**：$(nh^d)^{-1/2}$ → **维度诅咒**
- **可加模型**：恢复到$(nh)^{-1/2}$（避免维度诅咒）

---

## **三、关键直觉**

1. **非参数 vs 参数**：不假设特定函数形式，让数据"说话"
2. **带宽$h$的作用**：控制局部平滑程度（类似"观察窗口"大小）
3. **维度诅咒**：高维情况下收敛变慢，需要指数级增加样本量
4. **可加模型优势**：分解$m(X_1,\ldots,X_d) = \sum m_j(X_j)$，保持快速收敛

---

## **四、考试重点**

✓ 写出核估计量公式并解释权重含义  
✓ 推导MSE并解释Bias-Variance权衡  
✓ 比较不同$h$对估计的影响  
✓ 解释维度诅咒并给出解决方案（可加模型）  
✓ 交叉验证选带宽的逻辑



# 考点速览

## IV

- Define the method of moment estimator 
- Derive the asymptotic distribution, and list the assumptions of the proof
- test hypothesis: delta method, t test
- suppose model is wrong, test the bias.
- optimal IV