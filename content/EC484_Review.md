---
date: 2026-04-28
course: EC484 Metrics
tags:
  - review
  - econometrics
  - metrics
  - spring-term
title: EC484 Review Notes
---

# Exam Information

**Exam Format:** Long-term paper (2 hours)

**Paper Structure:**
- Part 1: Taisuke Otsu (50 marks)
  - Bootstrap, Causal Inference, Limited Dependent Variables, Machine Learning
- Part 2: Vassilis Hajivassiliou (50 marks)
  - Topic 0, Time Series, Panel Data

---

# Part 1: Taisuke Otsu

## Topic 1: Bootstrap (自举法)

### Key Concepts

**Bootstrap (Bootstrap)** 一种基于重采样的统计推断方法

> [!intuition] 直觉理解：通过从原始样本中有放回抽取大量"伪样本"(pseudo-samples)，模拟统计量的抽样分布。这让我们能在不依赖强分布假设的情况下推断置信区间和标准误。
>
> [!intuition] 核心价值：当理论分布未知或样本量较小、非标准时，Bootstrap 提供了一种更可靠的方法进行推断。

### Bootstrap 算法步骤

1. **基本算法** (Pairs Bootstrap)
   - 原始样本：$\{(Y_i, X_i), i = 1, \ldots, n\}$
   - 从 $\{1, \ldots, n\}$ 中有放回地随机抽取 $n$ 个观测值，构成 Bootstrap 样本
   - 对每个 Bootstrap 样本，计算估计量 $\hat{\theta}^*_b$（例如 OLS 估计量）
   - 重复 $B$ 次，得到 $\{\hat{\theta}^*_1, \ldots, \hat{\theta}^*_B\}$
   - 计算标准误：$s_{\text{boot}}^2 = \frac{1}{B-1}\sum_{b=1}^B (\hat{\theta}^*_b - \bar{\hat{\theta}}^*)^2$

2. **置信区间 (CI) 构建**
   - 正态近似 CI：$C^{nb} = [\hat{\theta} - z_{1-\alpha/2}s_{\text{boot}}^*, \hat{\theta} + z_{1-\alpha/2}s_{\text{boot}}^*]$
   - 百分位 CI：$C^{pc} = [q^*_{\alpha/2}, q^*_{1-\alpha/2}]$ 其中 $q^*$ 是 $\{\hat{\theta}^*$ 的分位数
   - Percentile-t CI：比正态近似更精确，收敛速度 $O(n^{-3})$ vs $O(n^{-1/2})$

### Bootstrap 理论

**Bootstrap CLT**
- 条件：$E[|Z|^2] < \infty$，$\sqrt{n}(\hat{\theta}^* - \theta) \xrightarrow{d} N(0, V)$
- 结论：$\sqrt{n}(\hat{\theta}^* - \theta) \xrightarrow{d} N(0, V)$ 其中 $V = E[g(Z)\cdot Z'$（Bootstrap 估计的方差）

**Bootstrap 一致性**
- 条件：$G_n^*(u) \to G(u)$ 其中 $G_n^*$ 是样本经验分布
- 结论：$G_n^*$ 是 $G_0$ 的一致估计量

### 应用

#### 1. OLS 回归
- Bootstrap 样本：从 $(Y_i, X_i)$ 中有放回抽取
- 估计：$\hat{\beta}^*_{\text{boot}}$ 是 Bootstrap OLS 估计量
- 用途：构造参数的置信区间和标准误

#### 2. GMM
- 重中心化时刻：$\bar{g}(\hat{\theta}) = \frac{1}{n}\sum_{i=1}^n g(Z_i, \hat{\theta})$
- Bootstrap 权重矩阵：$\hat{\Omega} = \frac{1}{n}\sum_{i=1}^n g(Z_i, \hat{\theta})g(Z_i, \hat{\theta})'$
- 注意：需要使用 Recentered Bootstrap 以实现高阶精度的置信区间

### 题型模式

**典型考题：**
- 理论证明：证明 Bootstrap WLLN/CLT
- 计算题：计算 Bootstrap 标准误、置信区间
- 应用题：使用 Bootstrap 估计 ATE、LATE 或构建置信区间

> [!technique] PS1 Q3-4：理解 Bootstrap 的收敛性质，证明弱大数定律适用于 Bootstrap 样本

---

## Topic 2: Causal Inference (因果推断)

### Potential Outcomes Framework

**潜在结果模型**
- $Y_1$：如果受到处理的结果
- $Y_0$：如果没有受到处理的结果
- 观测结果：$Y = W \cdot Y_1 + (1-W) \cdot Y_0$

**核心识别问题**：$E[Y_1 - Y_0]$ 无法识别，因为我们永远无法同时观察到同一个体在处理组和对照组的结果。

### 识别策略

#### 1. Randomization (随机化)
- **假设：$(R)$ 处理分配与潜在结果独立
- **直觉**：随机分配打破了处理与潜在结果的任何相关性，使得 $E[Y_1 - Y_0 | W, X] = E[Y_1 - Y_0 | X]$ 成立
- **识别量**：ATE（平均处理效应）$= E[Y_1 - Y_0] = E[Y_1] - E[Y_0]$

#### 2. Conditional Independence (条件独立性, CI)
- **假设**：$\{(Y_0, Y_1), X\} \perp W$
- **直觉**：给定控制变量 $X$，处理变量 $W$ 与潜在结果条件独立
- **识别量**：$\theta(x) = E[Y_1 - Y_0 | X = x]$
- **估计**：$\hat{\theta}(x) = \frac{1}{n_0}\sum_{i:W_i=1} Y_i - \frac{1}{n_1}\sum_{i:W_i=0} Y_i$（匹配估计量，条件期望差）

#### 3. Inverse Propensity Score Weighting (逆概率加权)
- **倾向得分**：$p(X) = P[W=1|X=x]$
- **权重**：$w_i = \frac{p(X_i)}{1-p(X_i)}$（处理者权重 $1/p$，对照组权重 $1/(1-p)$）
- **估计量**：$\hat{\theta}_{\text{IPS}} = \sum_{i=1}^n w_i Y_i$

#### 4. Instrumental Variables (工具变量, IV)
- **设定**：$Y = D\theta + X\beta + \epsilon$，$D = Z\gamma + V$，$Z$ 为 IV
- **假设**：$E[\epsilon|Z, X, V] = 0$，$Cov(Z, \epsilon) = 0$
- **识别条件**：$Cov(Z, X) \neq 0$ 且 $\gamma \neq 0$（IV 相关性强）
- **2SLS 估计**：$\hat{\theta}_{2SLS} = \frac{E[Z'Y]}{E[Z'X]}$

### Difference-in-Differences (DID, 双差分)

#### DID 估计量
- **公式**：$\hat{\theta}_{\text{DID}} = (\bar{Y}_{T,\text{treated}}^{Post} - \bar{Y}_{T,\text{treated}}^{Pre}) - (\bar{Y}_{C,\text{treated}}^{Post} - \bar{Y}_{C,\text{treated}}^{Pre})$
- **直觉**：DID 消除了时间趋势和对照组的初始差异，分离出处理效应。前提是"平行趋势假设"(Parallel Trends Assumption)。

#### 回归设定
- $Y_{it} = \beta_0 + \beta_1 \text{Treated}_{it} \cdot \text{Post}_t + \beta_2 \text{Treated}_{it} \cdot \text{Post} + \beta_3 \text{Treated}_{it} \cdot \text{Post} + u_{it} + \lambda_t + \alpha_i$
- **DID 参数**：$\beta_1$（处理效应）

### Local Average Treatment Effect (LATE, 局部平均处理效应)

#### LATE 设定
- **四个类型**：Never-taker, Complier, Always-taker, Defier
- **潜在状态**：$(W_0, W_1)$：$Z=0$ 和 $Z=1$ 时处理状态
- **LATE 定义**：$\theta_{\text{LATE}} = E[Y_1 - Y_0 | W_1 > W_0]$（Compliers 的平均处理效应）

#### 识别条件
1. **Independence**: $(Y_0, Y_1, W_0, W_1) \perp Z$
2. **Monotonicity**: $P[W_1 \geq W_0 | Z] \geq P[W_1 \geq W_0 | Z]$（工具变量增加处理概率的单调性）
3. **Exclusion Restriction**: $P[W_1=1 | Z=1, W_0=0] = P[W_1=1 | Z, W_0=1] \geq P[W_1=1 | Z]$（工具变量只通过 $W_1$ 影响处理）

#### Wald 估计量
- **公式**：$\hat{\theta}_{\text{LATE}} = \frac{\bar{Y}_{Z=1} - \bar{Y}_{Z=1}}{\bar{W}_{Z=1} - \bar{W}_{Z=0}}{\bar{W}_{Z=1} - \bar{W}_{Z=1}}$
- **还原**：$\hat{\theta}_{\text{LATE}} = \frac{\bar{Y}_{\text{Complier}} - \bar{Y}_{\text{Non-complier}}}{\bar{W}_{\text{Complier}} - \bar{W}_{\text{Non-complier}}}$

> [!intuition] LATE 捕捉的是工具变量引起的处理效应变化，适用于那些对工具变量有反应的个体。这个估计量不一定等于 ATE，但它是最容易识别的平均处理效应。

---

## Topic 3: Limited Dependent Variables (受限因变量, LDV)

### Binary Choice Models (二值选择模型)

#### Probit 模型
- **设定**：$Y = \mathbb{I}\{X'\beta > 0\}$，$Y^* = X'\beta + \epsilon$，$\epsilon \sim N(0,1)$
- **潜变量**：$Y^* = X'\beta + \epsilon$
- **概率**：$P[Y=1|X=x] = \Phi(X'\beta)$
- **对数似然**：$\ell(\beta) = \sum_{i=1}^n [Y_i \log \Phi(X_i'\beta) + (1-Y_i)\log(1-\Phi(X_i'\beta))]$

#### Logit 模型
- **设定**：概率函数为 Logit：$P[Y=1|X=x] = \frac{\exp(X'\beta)}{1+\exp(X'\beta)}$
- **对数似然**：$\ell(\beta) = \sum_{i=1}^n [Y_i X_i'\beta - \log(1+\exp(X_i'\beta))]$
- **优势**：无 IIA 假设，且计算更简单

> [!intuition] Logit 的优势在于它不需要独立无关选项假设(IIA)，这在现实中更合理。

### Ordered Models (有序模型)

#### Ordered Probit/Logit
- **设定**：$U^* = X'\beta + \epsilon$，$Y = \begin{cases} 1 & \text{if } U^* \leq \alpha_1 \\ 2 & \text{if } \alpha_1 < U^* \leq \alpha_2 \\ \vdots & k+1 & \text{if } \alpha_k < U^* \leq \alpha_{k+1} \end{cases}$
- **识别**：$\beta, \alpha_1, \ldots, \alpha_k$ 通过 MLE 估计

### Censored Data (截尾数据)

#### Tobit 模型
- **潜变量**：$Y^* = X'\beta + \epsilon$，$\epsilon \sim N(0,\sigma^2)$
- **观测**：$Y = \max\{0, Y^*\}$
- **概率**：$P[Y=y|X=x] = \begin{cases} \Phi(-X'\beta/\sigma) & y>0 \\ \frac{1}{\sigma}\phi((y-X'\beta)/\sigma) & y=0 \end{cases}$
- **对数似然**：基于这个概率分布构建

> [!intuition] 截尾发生在 $Y^* \leq 0$ 时，OLS 会对小于零的观测值产生系统性偏差（因为 $E[Y|X=x] \neq E[Y^*|X=x] = X'\beta$），导致估计量 $\hat{\beta}$ 向零方向偏倚。

#### Censored LAD (绝对损失)
- **目标函数**：$Q_n(\beta) = \sum_{i=1}^n |Y_i - \max\{0, X_i'\beta\}|$
- **优势**：只需要中位数假设 $\text{Med}[\epsilon|X]=0$，不需要正态性假设，估计量 $\sqrt{n}$ 一致收敛

### Sample Selection Models (样本选择模型)

#### Heckman Selection Model
- **问题**：样本不是随机抽取的，而是某些个体被排除的（例如只有高收入者参与调查）
- **设定**：
  - 选择方程：$D = Z'\gamma + u$，$D = 1$ 如果 $Z'\gamma + u > 0$
  - 结果方程：$Y = X'\beta + \alpha D + \epsilon$，$Y$ 观测仅当 $D=1$ 时
- **识别条件**：$E[\epsilon|X,Z] = 0$，$\text{Cov}(\epsilon, u) = 0$
- **OLS 问题**：在 $D=1$ 的子样本中估计 $\beta$ 会产生选择偏差

> [!intuition] 样本选择机制使得样本不再是总体的代表，简单的 OLS 估计不再有效。Heckman 两步法通过建模选择过程来校正这个偏差。

---

## Topic 4: Machine Learning (机器学习)

### Bias-Variance Trade-off (偏差-方差权衡)

> [!intuition] 增加更多变量可以减少偏差（模型更接近真实），但会增加方差（模型对训练数据过拟合）。

#### 模型复杂度与预测误差
- 训练误差：$\text{Err}_{\text{train}} = E[(Y - \hat{f}_{\text{train}}(X))^2]$
- 泛化误差：$\text{Err}_{\text{test}} = E[(Y - \hat{f}_{\text{test}}(X))^2]$（$X$ 来自与训练分布不同的总体）
- 偏差-方差权衡：选择适当的模型复杂度

### Ridge Regression (岭回归)

#### 设定
- **目标**：$\min_\beta \lVert \beta \rVert_2^2 + \lambda \Vert \beta \rVert_2$ 其中 $\lambda > 0$ 是岭参数
- **解**：$\hat{\beta}_R = (X'X + \lambda I_p)^{-1}X'Y$
- **性质**：$\hat{\beta}_R$ 有偏（shrinkage toward zero），方差更小

> [!intuition] Ridge 通过惩罚大系数防止过拟合，适合 $p > n$ 的高维情况。岭参数 $\lambda$ 通常通过交叉验证选择。

[[p-norm|关于如何理解p-norm]]

### Lasso Regression (最小绝对收缩)

#### 设定
- **目标**：$\min_\beta \lVert \beta \rVert_2 + \lambda \Vert \beta \rVert_1$（注意是 $l_1$-norm）
- **解**：无显式解，使用优化算法（如坐标下降）
- **性质**：**稀疏性**（sparse）：许多 $\hat{\beta}_{L,j}$ 被压缩为零

> [!intuition] Lasso 同时进行变量选择和系数收缩，特别适合当真实 $\beta$ 本身稀疏时。$l_1$ 惩罚使得不重要的变量系数为零。

所以 Lasso 本质上是一种降维的方法，但是由于是显示解，是否代表着考试不会重点考察呢？（迷思）

### High-Dimensional Inference (高维推断)

#### Lasso IV
- **第一步**：对每个 $X_j$ 用 Lasso 估计其与工具变量 $Z$ 的关系
- **第二步**：用 Lasso 估计量 $\hat{X}_L$ 作为工具变量
- **第二步回归**：$\hat{\beta}_{\text{LIV}} = (\hat{X}_L' \hat{X}_L)^{-1}\hat{X}_L'Y$

> [!intuition] 当工具变量 $p \gg n$ 时，传统 IV 失效。Lasso 通过降维选择有效的工具变量，使得 IV 回归可行。

#### Partialling-Out Lasso
- **设定**：$Y = D\theta + X'\beta + \epsilon$，$D = Z'\gamma + u$
- **第一步**：用 Lasso 估计 $Y$ 对 $X$ 和 $Z$ 的关系（去噪）
- **第二步**：用 Lasso 估计 $D$ 对 $Z$ 的关系（去噪）
- **最终回归**：在去噪后的残差上估计 $\theta$

> [!intuition] Partialling-out Lasso 通过分离变量选择步骤和估计步骤，使得 $\theta$ 的估计量渐近正态且有效。

---

# Part 2: Vassilis Hajivassiliou

## Topic 0: Mathematical Background (数学背景)

### Key Concepts (基本假设)

1. **Weak Stationarity (弱平稳性)**
   - **定义**：$E[Y_t] = \mu$（常数），$\text{Cov}(Y_{t+h}, Y_t) = \gamma(h)$（仅依赖于间隔 $h$）
   - **数学表示**：$Y_t = \mu + \eta_t$，其中 $\eta_t$ 是平稳过程

2. **Strict Stationarity (严平稳性)**
   - **定义**：分布 $f(Y_t)$ 不随时间变化（与 $t$ 无关）
   - **更强条件**：严平稳性意味着弱平稳性且整个分布平稳（不依赖时间位置）

3. **Ergodicity (各态历经性)**
   - **定义**：样本均值收敛到总体均值：$\bar{Y} \xrightarrow{p} E[Y_t]$
   - **意义**：保证大数定律适用于时间序列样本

> [!intuition] 如果序列是非各态历经的（如带有永久初始条件 $W_0$ 的随机游走），样本均值可能不收敛到总体均值，OLS 估计量会不一致。

4. **White Noise (白噪声)**
   - **定义**：$\{\epsilon_t\}$ 满足 $E[\epsilon_t]=0$，$\text{Cov}(\epsilon_{t+h}, \epsilon_t)=0$（序列不相关）
   - **性质**：白噪声是最简单的时间序列模型，是所有模型的基础。

### Stochastic Processes (随机过程)

#### MA(q) Process (移动平均过程)
- **定义**：$Y_t = \epsilon_t + \lambda_1 \epsilon_{t-1} + \cdots + \lambda_q \epsilon_{t-q}$
- **平稳性**：总是平稳的，自相关在 $q$ 阶后消失
- **ACF 特征**：自相关函数 $\rho(h) = \frac{\lambda_1 \rho(h-1) + \cdots + \lambda_q \rho(h-q)}$

#### AR(p) Process (自回归过程)
- **定义**：$Y_t = \gamma_1 Y_{t-1} + \cdots + \gamma_p Y_{t-p} + \epsilon_t$
- **平稳条件**：特征方程根 $1 - \gamma_1z - \cdots - \gamma_p z^p$ 的所有根在单位圆内
- **AR(1) 条件**：$|\gamma_1| < 1$

> [!warning] 考点：如果 $|\gamma_1| = 1$（单位根），过程有爆炸性（exponential growth），非平稳。这是单位根检验的核心。

### Newey-West HAC (异方差-自相关一致标准误)

#### 问题
- 当误差项存在自相关时，OLS 的标准误公式 $\hat{V} = \hat{\sigma}^2 (X'X)^{-1}X'Y$ 不再有效
- **解决**：Newey-West 估计量

#### Newey-West 公式
$$\hat{V}_{NW} = \hat{\sigma}^2 \left[ \sum_{t=1}^T X_t'X_t + \sum_{h=-H+1}^H \left(1+\frac{h}{H+1}\right)X_t'X_t\right] \right]^{-1}X'X'Y$$

其中 $\hat{\sigma}^2$ 是同方差估计量，$H = 1 + \frac{2}{3}$ 是带宽参数，$K(H)$ 是核函数。

> [!exam] PS4：计算 HAC 标准误，理解 Bartlett 核的作用是给远期干扰项赋予较小的权重。

---

## Topic 1: Time Series Econometrics (时间序列计量)

### ARIMA(p,d,q) Models

#### 设定
- **差分方程**：$\Delta^p Y_t = (1 - \sum_{j=1}^p \Delta^j Y_{t-j}) + \epsilon_t$
- **平稳条件**：$\Delta^p(z) = 1 - \sum_{j=1}^p \Delta^j z^j$ 的所有根在单位圆内
- **AR 部分**：$\Phi^p(z) = 1 - \sum_{j=1}^p \Delta^j z^{-j}$

#### 单位根检验
- **ADF 统计量**：检验原假设 $H_0: \rho = 1$（存在单位根）
- **检验统计量**：$t_{\text{ADF}} = \frac{\hat{\rho}-1}{\sqrt{\text{Var}(\hat{\rho}-1)}}$
- **临界值**：取决于显著性水平和样本量

> [!exam] PS4：解释 ADF 统计量的极限分布，理解当原假设成立时统计量是标准正态分布。

### ARMA(联合模型, 自回归移动平均)

#### VAR(Vector Autoregression, 向量自回归)
- **设定**：$Y_t = \sum_{j=1}^p B_j Y_{t-j} + \epsilon_t$，$Y_t \in \mathbb{R}^k$
- **矩阵形式**：$Y_t = B Y_{t-1} + \epsilon_t$
- **含义**：每个变量都是其自身和其他变量的滞后值的函数

#### Granger Causality (格兰杰因果性)
- **定义**：如果包含 $X_{t-1}, \ldots, X_{t-k}$ 的滞后项能显著改善 $Y_t$ 的预测，则称 $X$ Granger causes $Y$。
- **因果方向**：Granger 因果性是单向的，从过去预测未来，而不是反向因果关系。

> [!warning] 考点：Granger 因果性不等价于真实的因果关系，只是预测意义上的因果性。

### Forecasting (预测)

#### 预测准确度评估
- **MSE (均方误差)**：$\text{MSE} = \frac{1}{n}\sum_{t=1}^T (Y_{t+h} - \hat{Y}_{t+h|X_t})^2$
- **MAD (平均绝对误差)**：$\text{MAD} = \frac{1}{n}\sum_{t=1}^T |Y_{t+h} - \hat{Y}_{t+h|X_t}|$

#### 样本外预测 (Out-of-sample Forecasting)
- **概念**：用历史数据预测未来值
- **滚动预测**：使用滚动窗口（如最近 10 期）预测下一期
- **模型选择**：根据信息准则（AIC, BIC）选择滞后阶数

---

## Topic 3: Panel Data Econometrics (面板数据)

### Data Structure (数据结构)

#### 双索引表示
- **堆叠格式**：$(y_1, \ldots, y_S, x_1, \ldots, x_S)^T \cdot \beta + \epsilon$
- **平衡面板**：每个个体 $i$ 的 $T_i$ 相同
- **非平衡面板**：$T_i$ 因人而异

#### 滞后格式
- **快格式**：$\{y_{it}\}_{i=1,t=1}^{N\times 1}$
- **长格式**：$\{y_{it}\}_{i=1}^{N\times T_i}$

### 静态面板模型

#### 固定效应模型
- **设定**：$y_{it} = \alpha_i + X_{it}'\beta + \epsilon_{it} + u_i$
- **含义**：$\alpha_i$ 是个体的固定效应（不随时间变化）

### 动态面板模型

#### 一阶差分动态模型
- **设定**：$y_{it} = \delta y_{i,t-1} + \rho y_{i,t-1} + X_{it}'\beta + \Delta\epsilon_{it}$
- **平稳性条件**：$|\rho| < 1$

#### GMM 估计量
- **目标**：$\bar{g}(\theta) = \frac{1}{N\sum_{i=1}^T g(y_{it}-\bar{y}_i, X_{it}, \theta)$

### 估计方法比较

| 方法 | 一致性 | 渐近正态 | 计算复杂度 | 适用场景 |
|------|----------|--------------|----------|----------|
| **Pooled OLS** | ❌ (若 $E[\alpha_i X] \neq 0$) | ❌ | 简单 | ❌ 短面板 |
| **RE (随机效应)** | ⚠️ (若 $E[\alpha_i X] \neq 0$，不一致) | ✅ | 简单 | ✅ 短面板 |
| **FE (固定效应)** | ✅ | ✅ | 较复杂 | ✅ 长面板 |
| **FE-GMM** | ✅ | ✅ | 简单 | ⚠️ (若 $\alpha$ 非正态) |

> [!intuition] RE 方法利用了不同个体之间的变异信息，效率更高但前提是 $E[\alpha_i X] = 0$（外生性）。FE 方法不需要这个假设，对短面板（$T$ 小）更适用。

---

# Part 1 题型重点 (Otsu Exam Pattern Analysis)

## Bootstrap 题型

1. **理论证明**：Bootstrap WLLN/CLT 的成立条件
   - 证明 $\sqrt{n}(\bar{\hat{\theta}}^* - \theta) \xrightarrow{d} N(0, V)$
   - 关键：需要验证 $E[g(Z)^2] < \infty$ 且 $E[g(Z)] = 0$

2. **Bootstrap vs 渐近理论**
   - 比较两者在有限样本下的表现
   - 解释为什么 Bootstrap 在某些情况下更准确（特别是非对称分布）

3. **应用题**：计算 Bootstrap CI 并与 asymptotic CI 比较

## Causal Inference 题型

1. **LATE 计算**：给定工具变量 $Z$，计算 Wald 估计量
   - 需要计算 First Stage 的回归系数 $\hat{\Gamma}$ 和 $\hat{\pi}$

2. **DID 设定**：建立回归 $Y = \beta_0 \text{Treated} \times \text{Post} + \beta_1 \text{Treated} \times \text{Post} + \dots$
   - 估计 $\beta_1$ 作为处理效应

3. **ATT vs ATE**
   - ATT：$E[Y_1 - Y_0 | \text{Treated}=1, \text{Post}=1]$（处理组的平均效应）
   - ATE：$E[Y_1 - Y_0]$（总体平均效应）
   - 考点：如果处理组和对照组不可比，ATT 可能与 ATE 不同

## LDV 题型

1. **Probit/Logit 估计**
   - 使用 MLE 估计 $\beta$ 和 $\sigma$（或仅 $\beta$）
   - 计算边际效应：$\frac{\partial P[Y=1|X=x]}{\partial x} = g(X'\beta)$

2. **Tobit 似然函数**
   - 最大化的目标函数
   - 解决方法：需要数值优化

3. **截尾 vs OLS 比较**
   - 展示 Tobit 估计量的偏差
   - 解释为什么 OLS 估计向下偏倚

## Machine Learning 题型

1. **K 折交叉验证**
   - 目的：选择最优岭参数 $\lambda$
   - 计算：每个 $\lambda$ 的 CV 误差

2. **Lasso 解路径**
   - 坐标下降的 KKT 条件
   - 稀疏解的性质：$\hat{\beta}_{L,j} = 0$ 当 $|X_{ij}|$ 较小时

## Time Series 题型

1. **ARMA 识别**
   - 根据 ACF/PACF 判断过程类型
   - 确定 $p$ 和 $q$ 的阶数

2. **单位根检验**
   - 计算检验统计量
   - 根据 MacKinnon 临界值做出决策

3. **Newey-West HAC**
   - 给定 $H$，计算 Bartlett 核权重
   - 构建 HAC 一致方差协方差矩阵

4. **VAR 的简化**
   - 在特定约束下简化 VAR 估计
   - 例如：施加系数约束

## Panel Data 题型

1. **FE vs RE**
   - Hausman 检验：比较固定效应和随机效应模型
   - 解释检验统计量的构造
   - 决策：根据 $p$-value 和模型选择

2. **动态面板**
   - Arellano-Bond 估计：加入滞后因变量作为工具
   - 估计量的一致性证明

3. **样本选择校正**
   - 处理 attrition 导致的非平衡样本
   - 逆概率加权估计

---

# Part 2 题型重点 (Hajivassiliou Exam Pattern Analysis)

## Topic 0 题型

1. **矩阵代数**
   - 向量微积分
   - 分部积分技巧

2. **OLS 理论**
   - 高斯-马尔可夫夫不等式
   - 线性估计量的性质

3. **最优化问题**
   - 拉格朗日乘子
   - 目标函数凸性检查

## Time Series 题型

1. **平稳性检验**
   - ADF, PP, KPSS 检验
   - 解释每种检验的原假设

2. **ARIMA 模型设定**
   - Box-Jenkins 方法
   - 识别和估计 ARMA 过程

3. **VAR 估计**
   - Yule-Walker 方程
   - 检验系统的稳定性

## Panel Data 题型

1. **固定效应估计**
   - 最小二乘虚拟变量法（LSDV）
   - 组内变换（Within transformation）

2. **随机效应估计**
   - GLS 方法
   - 矩阵代数求解
   - 方差分量模型

3. **动态面板**
   - GMM 估计
   - 处理初始条件和动态参数

---

# 考试策略

## Part 1 (Otsu 部分)

1. **Bootstrap 题型**
   - 证明时写清假设：iid 样本、有限方差、分布连续
   - 步骤完整：先说明 Bootstrap 构造，再证明收敛性质

2. **因果推断题型**
   - 先建立潜在结果框架
   - 明确写出识别假设
   - 推导估计量的表达式

3. **LDV 题型**
   - Probit: 写出对数似然函数
   - Tobit: 写出截断的观测机制
   - 注意两类模型的不同假设

## Part 2 (Hajivassiliou 部分)

1. **Topic 0 题型**
   - 展示完整推导过程
   - 标明每一步的数学逻辑

2. **Time Series 题型**
   - 推导 ADF 检验统计量的极限分布
   - 解释单位根检验的经济含义

3. **Panel Data 题型**
   - 推导 Within transformation
   - 证明 $Q$ 变换的性质（对称性等幂等）
   - 比较 FE 和 RE 的渐近方差

---

# 常见考点速查 (Quick Reference)

## 统计量检验
| 检验     | 原假设          | 检验统计量                     | 决策规则              |                    |             |                    |
| ------ | ------------ | ------------------------- | ----------------- | ------------------ | ----------- | ------------------ |
| ADF    | 单位根 $\rho=1$ | $t_{\text{ADF}}$          | $                 | t_{\text{ADF}}     | > 1.96$ 时拒绝 | 若 $\tau < 0$，更可能拒绝 |
| PP     | 单位根 $\rho=1$ | $t_{\text{PP}}$           | 检验 $\phi(z)$ 的零点  | 同 ADF              |             |                    |
| KPSS   | 2 个单位根       | $\phi_1(z)$ 和 $\phi_2(z)$ | 两根都等于1            | $\phi(1)\phi(2)=0$ |             |                    |
| J-Bera | 系统单根检验       | $\pi(z)$                  | $\phi(1)\pi(2)=0$ | 与 PP 等价            |             |                    |

## 估计方法
| 方法 | 公式/算法 | 适用条件 | 优缺点 |
|------|----------|----------|----------|----------|
| OLS | $(X'X)^{-1}X'Y$ | $X$ 满秩，外生性 | 简单高效 |
| 2SLS | $E[Z'\epsilon|X]=0$ | $X$ 外生 | 修正异方差 | 简单 |
| GMM | $\hat{\theta} = \arg\min \|g(\theta)\|W^2$ | 最优加权 | 渐近正态 |
| MLE | $\max_\theta \prod f(y|\theta)$ | 分布假设 | 窄面最有效 |
| Bootstrap | $\frac{1}{B}\sum (\hat{\theta}_b-\bar{\theta})^2$ | 无分布假设 | 稳健 |

## 因果推断
| 估计量 | 识别假设 | 适用条件 |
|------|----------|----------|----------|
| ATE | $E[Y_1-Y_0|W]$ | 随机分配 | 简单 |
| LATE | $E[Y_1-Y_0\mid W_1>W_0]$ | 局部效应 | 单调性 + 排他性 |
| Wald | $\frac{\bar{Y}_{Z=1}-\bar{Y}_{Z=1}}{\bar{W}_{Z=1}-\bar{W}_{Z=0}}$ | 工具变量有效性 | 2SLS/IV 替代 |
| DID | $\Delta\bar{Y}_{T,C}^{Post}-\Delta\bar{Y}_{C}^{Pre}$ | 平行趋势 | 假设验证 |
| IV | $E[Z'D] = 0, \text{Cov}(Z,D)\neq 0$ | 外生性 | 不限制样本选择 |

## 高维推断
| 问题 | 解决方案 |
|------|----------|----------|----------|
| $p \gg n$ | Lasso 降维 + 岭回归 | 当预测变量多时有效 |
| 样本选择 | 建模观测机制 + Heckman 两步法 | 处理选择性偏差 |

---

# 重要提示

## 考试时需要注意

1. **Bootstrap 题型**
   - 区分 pairs bootstrap 和 residual bootstrap
   - Percentile-t CI 需要 $B \geq 1000$ 才能精确
   - 注意偏差校正：$\hat{\theta}_{\text{bias-corrected}} = 2\hat{\theta}^* - \hat{\theta}$

2. **因果推断题型**
   - DID 需要"平行趋势假设"
   - LATE 不等于 ATE（需要解释区别）
   - Wald 估计量的正确还原

3. **时间序列题型**
   - 单位根检验要明确检验的假设
   - Newey-West 的 $K(H)$ 是截断参数

4. **面板数据题型**
   - RE 需要 $E[\alpha_i X] = 0$（外生性）
   - Within 估计量 $\sqrt{n}$ 一致收敛

## 公式速查

### 核心公式

**Otsu 部分**
- Bootstrap 方差：$\hat{V}_{\text{boot}} = \frac{1}{B-1}\sum_{b=1}^B (\hat{\theta}_b - \bar{\hat{\theta}})^2$
- Bootstrap 标准误：$s_{\text{boot}} = \sqrt{\hat{V}_{\text{boot}}}$

**Hajivassiliou 部分**
- Within 变换：$Q = I_N - X(X\otimes)D$ 是幂等矩阵
- Wald 检验：$J = N\cdot K + k_z$（$N \cdot k_z$）是自由度

---



---

# 文档说明

**文件结构：**
```
EC484_Review.md
├── Part 1: Taisuke Otsu (75 marks)
├── Bootstrap
├── Causal Inference  
├── Limited Dependent Variables
└── Machine Learning

└── Part 2: Vassilis Hajivassiliou (75 marks)
    ├── Topic 0 (Background)
    ├── Matrix Calculus
    └── OLS Theory
    ├── Time Series
    └── Panel Data
        ├── Data Structure
        ├── Fixed Effects
        ├── Dynamic Panels
        └── Estimation Methods
    └── Key Topics
```

**内容特色：**
- ✅ 中英文双语术语
- ✅ 直觉解释块
- ✅ 公式完整
- ✅ 题型分析
- ✅ 考试策略
- ✅ 速查表

**使用方法：**
1. 按主题组织，按 Part 1 和 Part 2 分开
2. 每个主题包含：核心概念、公式、直觉、应用、题型分析
3. 使用 Obsidian callout 支持链接跳转
4. 重点公式单独成块，方便快速复习

---

祝考试顺利！📚
