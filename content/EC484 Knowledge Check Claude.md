# EC484 Econometric Analysis - 考前知识清单

> 本清单涵盖EC484核心考点,按知识体系分层组织,便于系统复习和快速查阅。

---

## 📚 目录

1. [基础数学工具](https://claude.ai/chat/9ddf0235-0c04-4f70-9198-0c2c50f5e63b#1-%E5%9F%BA%E7%A1%80%E6%95%B0%E5%AD%A6%E5%B7%A5%E5%85%B7)
2. [渐近理论基础](https://claude.ai/chat/9ddf0235-0c04-4f70-9198-0c2c50f5e63b#2-%E6%B8%90%E8%BF%91%E7%90%86%E8%AE%BA%E5%9F%BA%E7%A1%80)
3. [GMM理论框架](https://claude.ai/chat/9ddf0235-0c04-4f70-9198-0c2c50f5e63b#3-gmm%E7%90%86%E8%AE%BA%E6%A1%86%E6%9E%B6)
4. [GMM特例：OLS、IV、NLLS](https://claude.ai/chat/9ddf0235-0c04-4f70-9198-0c2c50f5e63b#4-gmm%E7%89%B9%E4%BE%8Bolsivnlls)
5. [假设检验](https://claude.ai/chat/9ddf0235-0c04-4f70-9198-0c2c50f5e63b#5-%E5%81%87%E8%AE%BE%E6%A3%80%E9%AA%8C)
6. [解题标准流程](https://claude.ai/chat/9ddf0235-0c04-4f70-9198-0c2c50f5e63b#6-%E8%A7%A3%E9%A2%98%E6%A0%87%E5%87%86%E6%B5%81%E7%A8%8B)

---

## 1. 基础数学工具

### 1.1 矩阵性质

**非奇异矩阵**（Nonsingular Matrix）等价条件:

- 可逆: 存在 $A^{-1}$ 使得 $AA^{-1} = I$
- 行列式非零: $\det(A) \neq 0$
- 齐次方程仅有平凡解: $Ax=0 \Rightarrow x=0$
- 列（行）向量线性独立

**正定/半正定矩阵**:

- 对称矩阵 $A$ 正定: 对所有 $x \neq 0$, $x'Ax > 0$
- 对称矩阵 $A$ 半正定: 对所有 $x \neq 0$, $x'Ax \geq 0$

### 1.2 方差与协方差

$$ \begin{align} \text{Var}(X) &= E[X^2] - (E[X])^2 \ \text{Cov}(X,Y) &= E[XY] - E[X]E[Y] \ \text{Var}(c + X) &= \text{Var}(X) \quad \text{(常数不影响方差)} \end{align} $$

### 1.3 条件期望性质（重要！）

$$ \boxed{E[E[Y|X]] = E[Y]} \quad \text{(迭代期望定理, Law of Iterated Expectations)} $$

**关键应用**: $$E[h(X_i,\theta)|X_i] = 0 \Rightarrow E[h(X_i,\theta)] = 0$$

这是从条件矩转换为无条件矩的基础！

---

## 2. 渐近理论基础

### 2.1 三大定理

**大数定律（LLN）**: $$\frac{1}{n}\sum_{i=1}^n X_i \xrightarrow{p} E[X_i] \quad \text{(样本均值收敛到总体均值)}$$

**中心极限定理（CLT）**: $$\frac{1}{\sqrt{n}}\sum_{i=1}^n (X_i - \mu) \xrightarrow{d} N(0, \sigma^2)$$

标准化形式: $$\sqrt{n}(\bar{X}_n - \mu) \xrightarrow{d} N(0, \sigma^2)$$

**连续映射定理（CMT）**: 若 $X_n \xrightarrow{p} X$ 且 $g(\cdot)$ 连续,则: $$g(X_n) \xrightarrow{p} g(X)$$

**Slutsky定理**: 若 $X_n \xrightarrow{d} X$ 且 $Y_n \xrightarrow{p} c$,则:

- $X_n + Y_n \xrightarrow{d} X + c$
- $X_n Y_n \xrightarrow{d} cX$
- $X_n / Y_n \xrightarrow{d} X/c$ (若 $c \neq 0$)

### 2.2 Delta Method

**标量版本**: 若 $\sqrt{n}(\hat{\theta} - \theta_0) \xrightarrow{d} N(0, V)$,且 $g(\cdot)$ 可微且 $g'(\theta_0) \neq 0$,则:

$$\boxed{\sqrt{n}(g(\hat{\theta}) - g(\theta_0)) \xrightarrow{d} N(0, [g'(\theta_0)]^2 V)}$$

**向量版本**: 若 $\sqrt{n}(\hat{\theta} - \theta_0) \xrightarrow{d} N(0, V)$,且 $g: \mathbb{R}^k \to \mathbb{R}^m$ 可微,则:

$$\boxed{\sqrt{n}(g(\hat{\theta}) - g(\theta_0)) \xrightarrow{d} N(0, G V G')}$$

其中 $G = \frac{\partial g(\theta_0)}{\partial \theta'}$ (Jacobian矩阵, $m \times k$)

**记忆口诀**: Delta Method = Taylor展开 + CLT + Slutsky

---

## 3. GMM理论框架

### 3.1 核心概念

**矩条件标准形式**: $$\boxed{E[g(W_i, \theta_0)] = 0}$$

- $g: \mathbb{R}^{d_W} \times \Theta \to \mathbb{R}^r$ 是矩函数
- $r$ = 矩条件数量
- $k$ = 参数数量

**识别条件**:

- $r = k$: **恰好识别** (just-identified)
- $r > k$: **过度识别** (over-identified) → 可以做J检验
- $r < k$: **欠识别** (under-identified) → 无法识别参数

### 3.2 GMM估计器

**目标函数**: $$Q_n(\theta; W_n) = \left[\frac{1}{n}\sum_{i=1}^n g(W_i, \theta)\right]' W_n \left[\frac{1}{n}\sum_{i=1}^n g(W_i, \theta)\right]$$

**GMM估计器**: $$\hat{\theta}_W = \arg\min_{\theta \in \Theta} Q_n(\theta; W_n)$$

**最优权重矩阵**: $$W^* = \Omega^{-1}$$

其中: $$\Omega = E[g(W_i, \theta_0)g(W_i, \theta_0)'] \quad \text{($r \times r$ 协方差矩阵)}$$

### 3.3 两步GMM估计

**第一步**: 用任意权重矩阵 $W_n^{(1)}$ (如 $I_r$) $$\hat{\theta}^{(1)} = \arg\min_{\theta} g_n(\theta)' W_n^{(1)} g_n(\theta)$$

**第二步**: 用 $\hat{\theta}^{(1)}$ 估计最优权重矩阵 $$\hat{W} = \left[\frac{1}{n}\sum_{i=1}^n g(W_i, \hat{\theta}^{(1)})g(W_i, \hat{\theta}^{(1)})'\right]^{-1}$$

**最终估计器**: $$\boxed{\hat{\theta} = \arg\min_{\theta} g_n(\theta)' \hat{W} g_n(\theta)}$$

### 3.4 渐近分布

**一般GMM渐近分布**: $$\boxed{\sqrt{n}(\hat{\theta} - \theta_0) \xrightarrow{d} N(0, (G'\Omega^{-1}G)^{-1})}$$

其中:

- $G = E\left[\frac{\partial g(W_i, \theta_0)}{\partial \theta'}\right]$ (梯度矩阵, $r \times k$)
- $\Omega = E[g(W_i, \theta_0)g(W_i, \theta_0)']$ (协方差矩阵, $r \times r$)

**维度检查**:

- $G$: $r \times k$
- $\Omega^{-1}$: $r \times r$
- $G'\Omega^{-1}G$: $k \times k$
- $(G'\Omega^{-1}G)^{-1}$: $k \times k$ ✓

**Sandwich形式记忆**: "面包-肉-面包" 结构 $G' \cdot \Omega^{-1} \cdot G$

---

## 4. GMM特例：OLS、IV、NLLS

### 4.1 OLS作为GMM

**线性模型**: $Y_i = X_i\beta_0 + e_i$

**矩条件**: $$E[X_i e_i] = E[X_i(Y_i - X_i\beta_0)] = 0$$

**GMM参数**:

- $g(W_i, \beta) = X_i(Y_i - X_i\beta)$
- $G = -E[X_iX_i']$ (注意负号!)
- $\Omega = E[X_iX_i'e_i^2]$

**OLS渐近分布**: $$\boxed{\sqrt{n}(\hat{\beta}_{OLS} - \beta_0) \xrightarrow{d} N(0, Q^{-1}\Omega Q^{-1})}$$

其中 $Q = E[X_iX_i']$

**同方差简化**: 若 $E[e_i^2|X_i] = \sigma^2$,则 $\Omega = \sigma^2 Q$ $$V_{OLS} = \sigma^2(E[X_iX_i'])^{-1} = \sigma^2 Q^{-1}$$

### 4.2 IV/2SLS作为GMM

**结构方程**: $$Y_i = X_i\beta_0 + e_i, \quad E[e_i|Z_i] = 0$$

- $X_i$: 内生解释变量
- $Z_i$: 工具变量 (必须满足相关性和外生性)

**矩条件**: $$E[Z_i e_i] = E[Z_i(Y_i - X_i\beta_0)] = 0$$

**2SLS与GMM区别**:

- **2SLS**: $W_n = (Z'Z)^{-1}$ (假设同方差)
- **Efficient GMM**: $W_n = \left(\sum Z_i \hat{e}_i^2 Z_i'\right)^{-1}$ (异方差稳健)
- **结论**: 同方差时 2SLS = Efficient GMM

### 4.3 非线性最小二乘（NLLS）

**模型**: $Y_i = m(X_i, \theta_0) + e_i$

**NLLS估计器**: $$\hat{\theta}_{NLLS} = \arg\min_{\theta} \sum_{i=1}^n [Y_i - m(X_i, \theta)]^2$$

**渐近分布**: $$\sqrt{n}(\hat{\theta}_{NLLS} - \theta_0) \xrightarrow{d} N(0, H^{-1}\Sigma H^{-1})$$

其中:

- $H = E\left[\frac{\partial m(X_i, \theta_0)}{\partial \theta}\frac{\partial m(X_i, \theta_0)}{\partial \theta'}\right]$
- $\Sigma = E\left[\frac{\partial m(X_i, \theta_0)}{\partial \theta}\frac{\partial m(X_i, \theta_0)}{\partial \theta'} e_i^2\right]$

**同方差时的神奇性质**: 若 $E[e_i^2|X_i] = \sigma^2$,则 $\Sigma = \sigma^2 H$,因此: $$V_{NLLS} = \sigma^2 H^{-1} = V^* \quad \text{(NLLS = 最优IV!)}$$

### 4.4 最优工具变量

**条件矩限制**: $E[h(W_i, \theta_0)|X_i] = 0$

**最优IV公式**: $$\boxed{a^*(X_i) = E\left[\frac{\partial h(W_i, \theta_0)}{\partial \theta}\bigg|X_i\right] \cdot (E[h(W_i, \theta_0)^2|X_i])^{-1}}$$

**非线性回归的最优IV**: 对 $Y_i = m(X_i, \theta_0) + e_i$, $E[e_i|X_i] = 0$: $$a^*(X_i) = \frac{\partial m(X_i, \theta_0)}{\partial \theta} \cdot (E[e_i^2|X_i])^{-1}$$

**关键性质**: 使用最优IV时, $G = -\Omega$,故: $$(G'\Omega^{-1}G)^{-1} = \Omega^{-1}$$

---

## 5. 假设检验

### 5.1 J检验（过度识别约束检验）

**适用条件**: 仅当 $r > k$ (过度识别)

**J统计量**: $$\boxed{J = n \cdot \bar{g}_n(\hat{\theta})' \hat{W} \cdot \bar{g}_n(\hat{\theta})}$$

其中 $\bar{g}_n(\theta) = \frac{1}{n}\sum_{i=1}^n g(W_i, \theta)$

**渐近分布**: $$J \xrightarrow{d} \chi^2(r - k) \quad \text{在 } H_0 \text{ 下}$$

**决策规则**: 拒绝 $H_0$ 当 $J > \chi^2_{r-k, 1-\alpha}$

**经济解释**: J检验是**specification test**,检验所有矩条件是否同时成立

### 5.2 t检验（单个参数）

**假设**: $H_0: \theta_j = \theta_{j0}$ vs $H_1: \theta_j \neq \theta_{j0}$

**检验统计量**: $$\boxed{t = \frac{\sqrt{n}(\hat{\theta}_j - \theta_{j0})}{\sqrt{\hat{V}_{jj}}} \xrightarrow{d} N(0,1)}$$

其中 $\hat{V}_{jj}$ 是渐近协方差矩阵 $\hat{V}$ 的第 $j$ 个对角元素

**决策规则**: 拒绝 $H_0$ 当 $|t| > z_{1-\alpha/2}$ (如 $\alpha=0.05$ 时用1.96)

### 5.3 Wald检验（多个约束）

**通用Wald检验公式**: 对假设 $H_0: r(\theta) = 0$ (其中 $r: \mathbb{R}^k \to \mathbb{R}^q$):

$$\boxed{W = r(\hat{\theta})' \left[\frac{\partial r(\hat{\theta})}{\partial \theta'} \hat{V} \left(\frac{\partial r(\hat{\theta})}{\partial \theta'}\right)'\right]^{-1} r(\hat{\theta}) \xrightarrow{d} \chi^2_q}$$

**线性约束的简化**: 若 $H_0: R\theta = r$ ($q$ 个线性约束): $$W = n(R\hat{\theta} - r)'[R\hat{V}R']^{-1}(R\hat{\theta} - r) \xrightarrow{d} \chi^2(q)$$

**决策规则**: 拒绝 $H_0$ 当 $W > \chi^2_{q, 1-\alpha}$

---

## 6. 解题标准流程

### 6.1 一致性证明模板

**标准三步法**:

1. **写出估计量的样本矩形式** $$\hat{\theta} = \arg\min_{\theta} \frac{1}{n}\sum_{i=1}^n Q(W_i, \theta)$$
    
2. **应用LLN** $$\frac{1}{n}\sum_{i=1}^n Q(W_i, \theta) \xrightarrow{p} E[Q(W_i, \theta)]$$
    
3. **验证极限等于真值**
    
    - 代入真实模型
    - 利用 $E[e_i|X_i] = 0$ 或相关正交性条件
    - 证明 $\theta_0$ 唯一最小化极限目标函数

### 6.2 渐近分布推导模板

**五步标准流程**:

1. **标准化** $$\sqrt{n}(\hat{\theta} - \theta_0) = \frac{\text{分子}}{\text{分母}}$$
    
2. **分离CLT项和LLN项** $$\sqrt{n}(\hat{\theta} - \theta_0) = \frac{\frac{1}{\sqrt{n}}\sum (\cdots)}{\frac{1}{n}\sum (\cdots)}$$
    
3. **对分子应用CLT** $$\frac{1}{\sqrt{n}}\sum_{i=1}^n X_i e_i \xrightarrow{d} N(0, \Omega)$$
    
    其中 $\Omega = E[X_iX_i'e_i^2]$ (注意 $e_i^2$!)
    
4. **对分母应用LLN** $$\frac{1}{n}\sum_{i=1}^n X_iX_i' \xrightarrow{p} Q = E[X_iX_i']$$
    
5. **应用Slutsky定理组合** $$\sqrt{n}(\hat{\theta} - \theta_0) \xrightarrow{d} N\left(0, Q^{-1}\Omega Q^{-1}\right)$$
    

### 6.3 Wald检验四步法

1. **写出约束函数** $r(\theta) = 0$
    
    - 技巧: 将原假设改写为"某个东西=0"的形式
    - 例: $\beta_1 = \beta_2$ → $r(\beta) = \beta_1 - \beta_2 = 0$
2. **计算Jacobian矩阵** $\frac{\partial r(\theta)}{\partial \theta'}$ (在 $\hat{\theta}$ 处求值!)
    
    - 维度: $q \times k$ (行向量对标量约束)
3. **代入Wald统计量公式** $$W = r(\hat{\theta})' [\text{Jacobian} \times \hat{V} \times \text{Jacobian}']^{-1} r(\hat{\theta})$$
    
4. **判断自由度并做决策**
    
    - 自由度 = $q$ = 约束个数
    - 拒绝域: $W > \chi^2_{q, \alpha}$

**标量约束简化** (当 $q=1$): $$W = \frac{r(\hat{\theta})^2}{\text{Gradient} \times \hat{V} \times \text{Gradient}'} \sim \chi^2_1$$

### 6.4 两步估计问题模板

**典型场景**: 第一步估计 $\hat{\beta}$,第二步估计 $\hat{\gamma} = g(\hat{\beta})$

**渐近分布推导**:

1. **标准化第二步估计量** $$\sqrt{n}(\hat{\gamma} - \gamma_0) = \frac{\frac{1}{\sqrt{n}}\sum u_i A}{\frac{1}{n}\sum A' Q A}$$
    
    其中 $A$ 是第一步参数的函数
    
2. **应用CLT到分子** $$\frac{1}{\sqrt{n}}\sum x_i u_i \xrightarrow{d} N(0, \Omega)$$
    
3. **应用LLN到分母** $$\frac{1}{n}\sum x_ix_i' \xrightarrow{p} Q$$
    
4. **组合得渐近方差** $$V = \frac{A'\Omega A}{(A'QA)^2}$$
    

**关键技巧**:

- 第一步误差是否影响? 看真值是否为零!
    - 若 $\theta_0 \neq 0$: 第一步误差不影响一致性 (被LLN"吃掉")
    - 若 $\theta_0 = 0$: 第一步误差会影响渐近分布

### 6.5 常见矩条件转化

|经济约束|矩条件形式|备注|
|---|---|---|
|$E[Y_i] = c$|$E[Y_i - c] = 0$|均值约束|
|$\text{Med}(Y_i) = c$|$E[\mathbb{1}(Y_i \leq c) - 0.5] = 0$|中位数约束|
|$\text{Var}(Y_i\|X_i) = \sigma^2$|$E[Y_i^2 - m(X_i,\theta)^2 - \sigma^2\|X_i] = 0$|方差约束|
|$E[Y_i\|X_i] = m(X_i,\theta)$|$E[a(X_i)(Y_i - m(X_i,\theta))] = 0$|条件均值 (任意 $a(X_i)$)|
|$E[X_i e_i] = 0$|已是标准形式|正交条件|

---

## 📌 考试速查清单

### ✓ 必做检查项

**GMM题目**:

1. 明确写出矩函数 $g(W_i, \theta)$
2. 判断识别情况 ($r$ vs $k$)
3. 计算 $G$ 和 $\Omega$ (标注维度!)
4. 应用公式 $(G'\Omega^{-1}G)^{-1}$

**假设检验题目**:

1. 写出约束的标准形式
2. 选择正确的检验 (t/Wald/J)
3. 计算正确的自由度
4. 使用正确的临界值

**渐近分布推导**:

1. 标准化 $\sqrt{n}(\hat{\theta} - \theta_0)$
2. 分离CLT项 ($\frac{1}{\sqrt{n}}\sum$) 和LLN项 ($\frac{1}{n}\sum$)
3. 应用Slutsky组合
4. 验证维度匹配

### ✗ 常见错误

1. **GMM**:
    
    - 忘记 $E[\cdot]$ 在随机变量外面 (即使在真值处求导)
    - 把最优IV简化公式用在非条件矩问题上
2. **J检验**:
    
    - 自由度用错 (应该是 $r-k$ 不是 $r$)
    - 在恰好识别时做J检验 (必须 $r > k$)
3. **Wald检验**:
    
    - 梯度忘记转置 ($\frac{\partial r}{\partial \theta'}$ 是行向量)
    - 梯度在错误点求值 (应在 $\hat{\theta}$ 处)
    - 标量约束混淆 $\chi^2_1$ 和 $N(0,1)$ ($\chi^2_1$ = $[N(0,1)]^2$)
4. **渐近方差估计**:
    
    - 用 $\hat{e}_i$ 而非 $\hat{e}_i^2$ 估计 $\Omega$
    - Delta Method中导数忘记平方
5. **两步估计**:
    
    - 第二步对第一步估计量求导 (应固定!)
    - 忽视真值为零的特殊情况

---

## 🎯 记忆口诀

**GMM三部曲**:

> 写矩条件,算两矩阵,套公式

**识别判断**:

> 矩多于参,过度识别；矩等于参,恰好识别

**最优IV**:

> 条件矩加最优IV,简化公式可直用

**同方差魔法**:

> 同方差救一切:OLS最优、NLLS最优

**两步估计**:

> 真值为零,误差留痕；真值非零,误差可忽略

**Sandwich形式**:

> 面包-肉-面包: $Q^{-1} \Omega Q^{-1}$

---

## 补充说明

### 未涵盖主题

- Nonparametric Methods (待复习)
- Bootstrap Methods (待复习)
- Quantile Regression (待复习)

### 建议复习顺序

1. 先掌握基础工具 (矩阵、方差、渐近理论)
2. 理解GMM统一框架
3. 学习特例 (OLS/IV/NLLS) 如何作为GMM的应用
4. 练习假设检验和解题模板
5. 刷题巩固,找薄弱环节

---

**最后提醒**: 考试时先看题目类型,确定用哪个框架,再按模板机械化执行。速度比完美更重要!




