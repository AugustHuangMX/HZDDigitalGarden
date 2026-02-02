# EC484 Econometric Analysis - 考前知识清单

> 本清单涵盖EC484核心考点,按知识体系分层组织,便于系统复习和快速查阅。

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

$$ \begin{align} \text{Var}(X) &= E[X^2] - (E[X])^2 \\ \text{Cov}(X,Y) &= E[XY] - E[X]E[Y] \\ \text{Var}(c + X) &= \text{Var}(X) \quad \text{(常数不影响方差)} \end{align} $$

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

| 经济约束                              | 矩条件形式                                            | 备注                 |
| --------------------------------- | ------------------------------------------------ | ------------------ |
| $E[Y_i] = c$                      | $E[Y_i - c] = 0$                                 | 均值约束               |
| $\text{Med}(Y_i) = c$             | $E[\mathbb{1}(Y_i \leq c) - 0.5] = 0$            | 中位数约束              |
| $\text{Var}(Y_i\|X_i) = \sigma^2$ | $E[Y_i^2 - m(X_i,\theta)^2 - \sigma^2\|X_i] = 0$ | 方差约束               |
| $E[Y_i \| X_i] = m(X_i,\theta)$   | $E[a(X_i)(Y_i - m(X_i,\theta))] = 0$             | 条件均值 (任意 $a(X_i)$) |
| $E[X_i e_i] = 0$                  | 已是标准形式                                           | 正交条件               |

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

## 7. 分位数回归 (Quantile Regression)

### 7.1 核心概念

**动机**：OLS仅估计条件均值 $E[Y|X]$，但完整的条件分布信息更丰富

**条件分位数定义**：对于 $\tau \in (0,1)$， $$Q_\tau(Y|X) = \inf\{y: F_{Y|X}(y) \geq \tau\}$$

**例子**：

- $\tau = 0.5$：条件中位数
- $\tau = 0.9$：条件90%分位数（关注高收入群体）
- $\tau = 0.1$：条件10%分位数（关注低收入群体）

### 7.2 Check函数

**Check function** (损失函数)： $$\boxed{\rho_\tau(e) = e(\tau - \mathbb{1}\{e < 0\}) = \begin{cases} \tau e, & e \geq 0 \\ (\tau - 1)e, & e < 0 \end{cases}}$$

**性质**：

- 非对称：对正负残差惩罚不同
- $\tau = 0.5$ 时：$\rho_{0.5}(e) = 0.5|e|$（绝对值损失）
- $\tau > 0.5$：对正残差惩罚更重（上拉）
- $\tau < 0.5$：对负残差惩罚更重（下拉）

### 7.3 分位数回归估计量

**线性分位数回归模型**： $$Q_\tau(Y_i|X_i) = X_i'\beta(\tau)$$

**估计器**： $$\boxed{\hat{\beta}(\tau) = \arg\min_{\beta} \sum_{i=1}^n \rho_\tau(Y_i - X_i'\beta)}$$

**中位数回归**（$\tau = 0.5$，LAD估计）： $$\hat{\beta}_{LAD} = \arg\min_{\beta} \sum_{i=1}^n |Y_i - X_i'\beta|$$

### 7.4 渐近分布

**假设**：

- $Y_i = X_i'\beta_0(\tau) + e_i$
- 条件密度 $f_{e|X}(0|X_i) = f_0 > 0$（在0处的密度存在且有界）

**渐近分布**： $$\boxed{\sqrt{n}(\hat{\beta}(\tau) - \beta_0(\tau)) \xrightarrow{d} N\left(0, \frac{\tau(1-\tau)}{f_0^2} (E[X_iX_i'])^{-1}\right)}$$

**关键要素**：

- 分子：$\tau(1-\tau)$（与分位数位置有关，$\tau=0.5$时最小）
- 分母：$f_0^2$（误差在0处的密度，密度越大越精确）
- 标准化矩阵：$(E[X_iX_i'])^{-1}$（类似OLS）

### 7.5 与OLS的比较

|特性|OLS|分位数回归|
|---|---|---|
|**估计对象**|条件均值 $E[Y\|X]$|条件分位数 $Q_\tau(Y\|X)$|
|**损失函数**|平方损失|Check function $\rho_\tau$|
|**对异常值**|敏感|稳健（robust）|
|**解释性**|平均效应|分布效应（不同位置）|
|**同方差**|需要假设|不需要（本质异方差）|
|**计算**|封闭解|需要优化算法|

**分位数回归的优势**：

1. **稳健性**：对极端值不敏感（中位数回归尤其稳健）
2. **完整信息**：可估计不同分位数，刻画整个条件分布
3. **异质性**：捕捉解释变量在分布不同位置的不同效应

### 7.6 考试常见题型

**题型1**：给定check function，推导估计器

- **套路**：最小化 $\sum \rho_\tau(Y_i - X_i'\beta)$

**题型2**：比较OLS和中位数回归

- **套路**：指出中位数回归对异常值稳健

**题型3**：解释不同 $\tau$ 的经济含义

- **套路**：$\tau=0.1, 0.5, 0.9$ 分别关注低、中、高位置

**题型4**：渐近分布推导

- **套路**：关键是 $f_0$（误差在0处的密度）和 $\tau(1-\tau)$

---

## 8. 非参数方法 (Nonparametric Methods)

### 8.1 核心概念

**动机**：参数方法（如OLS）假设函数形式（如线性），若设定错误则有偏。非参数方法让数据自己说话。

**非参数回归目标**：估计 $m(x) = E[Y|X=x]$ 不假设函数形式

### 8.2 核回归 (Kernel Regression / Nadaraya-Watson估计量)

**核函数** $K(\cdot)$：

- 通常对称：$K(u) = K(-u)$
- 非负：$K(u) \geq 0$
- 积分为1：$\int K(u)du = 1$
- 常用核：Gaussian核 $K(u) = \frac{1}{\sqrt{2\pi}}e^{-u^2/2}$

**Nadaraya-Watson估计量**： $$\boxed{\hat{m}(x) = \frac{\sum_{i=1}^n Y_i K\left(\frac{X_i - x}{h}\right)}{\sum_{i=1}^n K\left(\frac{X_i - x}{h}\right)}}$$

其中 $h > 0$ 是**bandwidth**（带宽/窗宽）

**直觉解释**：

- 对 $X_i$ 接近 $x$ 的观测赋予大权重
- $h$ 小：窗口窄，局部性强，方差大
- $h$ 大：窗口宽，平滑性强，偏差大

### 8.3 Bandwidth选择（关键！）

**Bias-Variance Tradeoff**：

**偏差** (Bias)：

- $h$ 大 → 偏差大（过度平滑）
- 来源：局部近似误差
- 阶：$O(h^2)$（假设 $m(\cdot)$ 二阶连续可微）

**方差** (Variance)：

- $h$ 小 → 方差大（数据太少）
- 阶：$O\left(\frac{1}{nh}\right)$

**均方误差** (MSE)： $$\text{MSE}(\hat{m}(x)) = \text{Bias}^2 + \text{Variance} = O(h^4) + O\left(\frac{1}{nh}\right)$$

**最优带宽**：最小化MSE $$h^* \propto n^{-1/5} \quad \Rightarrow \quad \text{MSE} = O(n^{-4/5})$$

**收敛速度**：$(nh)^{1/2} = n^{2/5}$（比参数方法的 $\sqrt{n}$ 慢！）

**Cross-validation (交叉验证)**： $$CV(h) = \sum_{i=1}^n (Y_i - \hat{m}_{-i}(X_i))^2$$

其中 $\hat{m}_{-i}$ 是去掉第 $i$ 个观测后的估计量。选择使 $CV(h)$ 最小的 $h$。

### 8.4 Local Linear Regression

**动机**：Kernel回归在边界处有偏差（boundary bias）

**局部线性回归**：对每个点 $x$，估计 $$\min_{\alpha, \beta} \sum_{i=1}^n [Y_i - \alpha - \beta(X_i - x)]^2 K\left(\frac{X_i - x}{h}\right)$$

**估计量**： $$\hat{m}(x) = \hat{\alpha}$$

**优势**：

1. **边界性质更好**：在边界处无偏
2. **自动估计导数**：$\hat{m}'(x) = \hat{\beta}$
3. **Design-adaptive**：自动适应 $X$ 的分布

### 8.5 导数估计

**应用**：估计边际效应 $\frac{\partial m(x)}{\partial x}$

**方法1**：Local polynomial（推荐）

- 使用local linear，直接得到 $\hat{m}'(x) = \hat{\beta}$

**方法2**：Kernel derivative estimator $$\hat{m}'(x) = \frac{1}{nh^2}\sum_{i=1}^n Y_i K'\left(\frac{X_i - x}{h}\right)$$

其中 $K'(\cdot)$ 是核函数的导数

**注意**：导数估计需要更大的带宽（收敛更慢）

### 8.6 维数灾难 (Curse of Dimensionality)

**问题**：当 $X$ 是 $d$ 维向量时

- 最优带宽：$h^* \propto n^{-1/(4+d)}$
- 收敛速度：$n^{2/(4+d)}$
- $d$ 大时收敛非常慢！

**例子**：

- $d=1$：收敛速度 $n^{2/5} = n^{0.4}$
- $d=2$：收敛速度 $n^{2/6} = n^{0.33}$
- $d=10$：收敛速度 $n^{2/14} = n^{0.14}$（几乎不收敛！）

**解决方案**：

- 半参数模型（部分线性模型）
- 加性模型
- 单指标模型

### 8.7 参数 vs 非参数权衡

|维度|参数方法|非参数方法|
|---|---|---|
|**假设**|强（需要正确函数形式）|弱（仅光滑性）|
|**收敛速度**|$\sqrt{n}$|$n^{2/(4+d)}$（慢！）|
|**效率**|高（正确设定下）|低|
|**稳健性**|差（设定错误则有偏）|强（总是一致）|
|**解释性**|强（参数有经济含义）|弱（难以解释）|
|**计算**|快|慢（需要选带宽）|

**考试高频问题**：

- Q: 何时用非参数？
- A: 不确定函数形式时；探索性分析；稳健性检验

### 8.8 考试常见题型

**题型1**：写出Nadaraya-Watson估计量

- **套路**：加权平均公式，权重是核函数

**题型2**：比较参数vs非参数

- **套路**：效率vs稳健性权衡，收敛速度对比

**题型3**：Bandwidth选择和bias-variance tradeoff

- **套路**：$h$ 大→偏差大、方差小；$h$ 小→偏差小、方差大

**题型4**：推导最优带宽和收敛速度

- **套路**：MSE = $O(h^4) + O(\frac{1}{nh})$，最小化得 $h^* \propto n^{-1/5}$

---

## 9. 其他高频考点补充

### 9.1 条件矩 vs 无条件矩

**条件矩限制**：$E[h(W_i, \theta_0)|X_i] = 0$

**转换为无条件矩**：对任意函数 $a(X_i)$， $$E[a(X_i) h(W_i, \theta_0)] = 0$$

**关键应用**：

- 选择 $a(X_i) = X_i$ → IV估计
- 选择最优 $a^*(X_i)$ → 最优IV（见4.4节）

**考试技巧**：

- 条件矩 → 灵活性更大（可以选不同的 $a(X_i)$）
- 无条件矩 → 直接用GMM框架

### 9.2 局部备择假设 (Local Alternatives)

**应用**：分析检验的势（power）

**局部备择设定**： $$H_{1n}: \theta = \theta_0 + \frac{c}{\sqrt{n}}$$

其中 $c$ 是固定常数

**关键性质**：

- 在 $H_{1n}$ 下，检验统计量服从**非中心分布**
- 非中心参数体现检验势的大小
- $c$ 越大，势越大（越容易拒绝）

**典型分析**： $$T_n = \frac{\sqrt{n}(\hat{\theta} - \theta_0)}{\hat{SE}} \xrightarrow{d} N(c/\sigma, 1) \quad \text{under } H_{1n}$$

**势函数**： $$\text{Power}(\alpha) = P(|T_n| > z_{1-\alpha/2} | H_{1n}) = P(|N(c/\sigma, 1)| > 1.96)$$

### 9.3 异方差处理总结

**检测**：

- White test
- Breusch-Pagan test
- 图形诊断（残差图）

**处理方法**：

|方法|适用|优点|缺点|
|---|---|---|---|
|**OLS + robust SE**|总是|简单|不是最有效|
|**WLS**|知道 $Var(e_i\|X_i)$|有效|需要已知方差形式|
|**FGLS**|不知道方差形式|较有效|两步估计|
|**GMM (two-step)**|IV情况|有效|计算复杂|

**考试记忆**：异方差下OLS一致但不有效，需要robust SE

### 9.4 Extremum Estimator统一框架

**定义**：极值估计量是通过优化某个目标函数得到的估计量： $$\boxed{\hat{\theta} = \arg\max_{\theta \in \Theta} Q_n(\theta)}$$

或等价地： $$\hat{\theta} = \arg\min_{\theta \in \Theta} Q_n(\theta)$$

**核心思想**：Extremum estimator提供了一个**统一的理论框架**，将多种常见估计方法纳入其中。

**常见例子**：

|估计方法|目标函数 $Q_n(\theta)$|
|---|---|
|**OLS**|$-\frac{1}{n}\sum_{i=1}^n (Y_i - X_i'\beta)^2$|
|**NLLS**|$-\frac{1}{n}\sum_{i=1}^n {Y_i - m(X_i, \theta)}^2$|
|**MLE**|$\frac{1}{n}\sum_{i=1}^n \log f(Z_i, \theta)$|
|**GMM**|$-\left[\frac{1}{n}\sum_{i=1}^n g(Z_i, \theta)\right]' W \left[\frac{1}{n}\sum_{i=1}^n g(Z_i, \theta)\right]$|
|**LAD**|$-\frac{1}{n}\sum_{i=1}^n|
|**Quantile**|$-\frac{1}{n}\sum_{i=1}^n \rho_\tau(Y_i - X_i'\beta)$|

#### 9.4.1 一致性的一般条件

**定理（一致性）**：若满足以下条件，则 $\hat{\theta} \xrightarrow{p} \theta_0$：

1. **目标函数收敛**：$\sup_{\theta \in \Theta} |Q_n(\theta) - Q(\theta)| \xrightarrow{p} 0$
    
    - 其中 $Q(\theta) = \lim_{n\to\infty} E[Q_n(\theta)]$（总体目标函数）
2. **可识别性**：$\theta_0$ 是 $Q(\theta)$ 的唯一极大值点
    
    - $Q(\theta_0) > Q(\theta)$ 对所有 $\theta \neq \theta_0$
3. **参数空间紧性**：$\Theta$ 是紧集（compact）
    

**直觉**：

- 条件1保证样本目标函数接近总体目标函数（大数定律）
- 条件2保证真值是唯一的"最好"参数
- 条件3保证估计量不会"跑到无穷远"

**标准验证套路**：

1. 用WLLN证明 $Q_n(\theta) \xrightarrow{p} Q(\theta)$ 对每个 $\theta$
2. 验证 $\theta_0$ 唯一极大化 $Q(\theta)$（通常通过代入真实模型）
3. 应用一致性定理

#### 9.4.2 渐近正态性的一般条件

**定理（渐近正态性）**：若满足以下条件，则： $$\sqrt{n}(\hat{\theta} - \theta_0) \xrightarrow{d} N(0, H^{-1}VH^{-1})$$

**关键条件**：

1. **一致性**：$\hat{\theta} \xrightarrow{p} \theta_0$
    
2. **可微性**：$Q_n(\theta)$ 关于 $\theta$ 二阶连续可微
    
3. **一阶条件**（FOC）： $$\frac{\partial Q_n(\hat{\theta})}{\partial \theta} = 0$$
    
4. **Hessian收敛**： $$H_n(\theta_0) = \frac{\partial^2 Q_n(\theta_0)}{\partial \theta \partial \theta'} \xrightarrow{p} H = E\left[\frac{\partial^2 Q(Z_i, \theta_0)}{\partial \theta \partial \theta'}\right]$$
    
    其中 $H$ 非奇异（通常 $H$ 负定对于max问题）
    
5. **Score的CLT**： $$\frac{1}{\sqrt{n}}\sum_{i=1}^n \frac{\partial Q(Z_i, \theta_0)}{\partial \theta} \xrightarrow{d} N(0, V)$$
    
    其中： $$V = \text{Var}\left[\frac{\partial Q(Z_i, \theta_0)}{\partial \theta}\right]$$
    

**渐近方差的Sandwich形式**： $$\boxed{\text{Asy.Var}(\hat{\theta}) = H^{-1}VH^{-1}}$$

这就是我们熟悉的**Sandwich form**！

#### 9.4.3 推导直觉（Taylor展开）

**核心技巧**：对一阶条件在 $\theta_0$ 处做Taylor展开

**步骤**：

1. **一阶条件**：$\frac{\partial Q_n(\hat{\theta})}{\partial \theta} = 0$
    
2. **Taylor展开**（在 $\theta_0$ 处）： $$0 = \frac{\partial Q_n(\hat{\theta})}{\partial \theta} = \frac{\partial Q_n(\theta_0)}{\partial \theta} + \frac{\partial^2 Q_n(\bar{\theta})}{\partial \theta \partial \theta'}(\hat{\theta} - \theta_0)$$
    
    其中 $\bar{\theta}$ 在 $\theta_0$ 和 $\hat{\theta}$ 之间
    
3. **重排**： $$\sqrt{n}(\hat{\theta} - \theta_0) = -\left[\frac{\partial^2 Q_n(\bar{\theta})}{\partial \theta \partial \theta'}\right]^{-1} \frac{1}{\sqrt{n}}\sum_{i=1}^n \frac{\partial Q(Z_i, \theta_0)}{\partial \theta}$$
    
4. **应用LLN和CLT**：
    
    - Hessian项：$\frac{\partial^2 Q_n(\bar{\theta})}{\partial \theta \partial \theta'} \xrightarrow{p} H$
    - Score项：$\frac{1}{\sqrt{n}}\sum \frac{\partial Q(Z_i, \theta_0)}{\partial \theta} \xrightarrow{d} N(0, V)$
5. **Slutsky定理**： $$\sqrt{n}(\hat{\theta} - \theta_0) \xrightarrow{d} N(0, H^{-1}VH^{-1})$$
    

#### 9.4.4 特殊情况简化

**情况1：MLE（信息矩阵相等）**

对于正确设定的MLE，$H = V$，因此： $$\text{Asy.Var}(\hat{\theta}_{MLE}) = H^{-1} = I(\theta_0)^{-1}$$

这是**Fisher信息矩阵的逆**（Cramér-Rao下界）

**情况2：GMM（最优权重）**

当使用最优权重 $W = \Omega^{-1}$ 时：

- $H = G'\Omega^{-1}G$
- $V = G'\Omega^{-1}G$（因为最优权重）
- 因此：$\text{Asy.Var} = (G'\Omega^{-1}G)^{-1}$

Sandwich消失了！

**情况3：NLLS（同方差）**

若 $E[e_i^2|X_i] = \sigma^2$：

- $H = E[\frac{\partial m}{\partial \theta}\frac{\partial m}{\partial \theta'}]$
- $V = \sigma^2 H$
- 因此：$\text{Asy.Var} = \sigma^2 H^{-1}$

#### 9.4.5 与M-estimation的关系

**M-estimator** 是extremum estimator的特殊形式： $$\hat{\theta} = \arg\min_{\theta} \sum_{i=1}^n \rho(Z_i, \theta)$$

即 $Q_n(\theta) = -\frac{1}{n}\sum_{i=1}^n \rho(Z_i, \theta)$

**渐近分布**： $$\sqrt{n}(\hat{\theta} - \theta_0) \xrightarrow{d} N(0, A^{-1}BA^{-1})$$

其中：

- $A = E[\frac{\partial^2 \rho(Z_i, \theta_0)}{\partial \theta \partial \theta'}]$（对应Hessian）
- $B = E[\frac{\partial \rho(Z_i, \theta_0)}{\partial \theta}\frac{\partial \rho(Z_i, \theta_0)}{\partial \theta'}]$（对应Score方差）

这与extremum estimator框架完全一致！

#### 9.4.6 数值优化

**实际计算中如何找到 $\hat{\theta}$？**

**方法1：Grid Search（网格搜索）**

- 适用：低维参数（1-2维）
- 方法：在 $\Theta$ 上建立网格，计算每个点的 $Q_n(\theta)$
- 选择：$Q_n(\theta)$ 最大的点

**方法2：Gradient Method（梯度法）**

- 适用：高维参数，$Q_n(\theta)$ 光滑
- 迭代：$\theta^{(k+1)} = \theta^{(k)} + \alpha_k \frac{\partial Q_n(\theta^{(k)})}{\partial \theta}$
- $\alpha_k$：步长（learning rate）

**方法3：Newton-Raphson Method**

- 更快收敛（二阶方法）
- 迭代：$\theta^{(k+1)} = \theta^{(k)} - \left[\frac{\partial^2 Q_n(\theta^{(k)})}{\partial \theta \partial \theta'}\right]^{-1} \frac{\partial Q_n(\theta^{(k)})}{\partial \theta}$

**方法4：Quasi-Newton Methods（如BFGS）**

- 避免计算Hessian（用近似）
- 实践中最常用

#### 9.4.7 考试应用

**题型1**：证明某个估计量是extremum estimator

- **套路**：写出目标函数，验证一阶条件

**题型2**：证明一致性

- **套路**：验证ULLN + 唯一识别性 + 紧性

**题型3**：推导渐近分布

- **套路**：Taylor展开 + CLT on Score + LLN on Hessian

**题型4**：计算渐近方差

- **套路**：识别 $H$ 和 $V$，套用 $H^{-1}VH^{-1}$

**关键记忆**：

- Extremum estimator = 统一框架
- 一致性 = ULLN + 唯一性
- 渐近正态 = Taylor + CLT + Slutsky
- Sandwich form = $H^{-1}VH^{-1}$

---

### 9.5 M-estimation连接

**M-estimator是extremum estimator的特殊情况**，详见9.4节。

**M-estimator通用形式**： $$\hat{\theta} = \arg\min_{\theta} \sum_{i=1}^n \rho(Z_i, \theta)$$

**常见特例**：

|方法|损失函数 $\rho(Z_i, \theta)$|
|---|---|
|OLS|$(Y_i - X_i'\beta)^2$|
|LAD|$\|Y_i - X_i'\beta\|$|
|Quantile|$\rho_\tau(Y_i - X_i'\beta)$|
|MLE|$-\log f(Z_i\|\theta)$|

**关键点**：所有这些估计方法都共享相同的渐近理论框架（见9.4节）。

---

## 10. 考试超高频公式速查

### 必背公式

**1. Extremum Estimator渐近方差（Sandwich form）**： $$\text{Asy.Var}(\hat{\theta}) = H^{-1}VH^{-1}$$ 其中 $H = E[\frac{\partial^2 Q}{\partial\theta\partial\theta'}]$，$V = \text{Var}[\frac{\partial Q}{\partial\theta}]$

**2. GMM渐近方差（最优权重）**： $$V^* = (G'\Omega^{-1}G)^{-1}$$

**3. OLS渐近方差（异方差）**： $$V_{OLS} = Q^{-1}\Omega Q^{-1}$$ 其中 $Q = E[X_iX_i']$，$\Omega = E[X_iX_i'e_i^2]$

**4. Delta Method**： $$\sqrt{n}(g(\hat{\theta}) - g(\theta_0)) \xrightarrow{d} N(0, [g'(\theta_0)]^2 V)$$

**5. Wald统计量**： $$W = r(\hat{\theta})' [\nabla r(\hat{\theta}) \hat{V} \nabla r(\hat{\theta})']^{-1} r(\hat{\theta}) \xrightarrow{d} \chi^2_q$$

**6. J检验**： $$J = n \bar{g}_n(\hat{\theta})' \hat{\Omega}^{-1} \bar{g}_n(\hat{\theta}) \xrightarrow{d} \chi^2_{r-k}$$

**7. 分位数回归渐近方差**： $$V_{\tau} = \frac{\tau(1-\tau)}{f_0^2} (E[X_iX_i'])^{-1}$$

**8. 核回归（Nadaraya-Watson）**： $$\hat{m}(x) = \frac{\sum Y_i K(\frac{X_i-x}{h})}{\sum K(\frac{X_i-x}{h})}$$

**9. 最优带宽**： $$h^* \propto n^{-1/(4+d)}$$

---

## 11. 最后提醒：考试做题顺序

**看到题目后的思维链**：

1. **识别题型**：
    
    - Extremum estimator？ → 识别目标函数，应用统一框架
    - GMM估计？ → 写矩条件，算G和Ω
    - 假设检验？ → 判断t/Wald/J
    - 一致性？ → LLN+极限推导
    - 渐近分布？ → CLT+Slutsky或Taylor展开
    - 非参数？ → kernel/local linear
2. **确定考点**：
    
    - 需要哪些假设？
    - 用哪个公式？
    - 维度是否匹配？
3. **机械化执行**：
    
    - 按标准流程（如6.2节的五步法）
    - 标注中间步骤
    - 检查代数错误
4. **时间分配**：
    
    - 简单题（一致性、假设检验）：5-8分钟
    - 中等题（GMM、渐近分布）：10-15分钟
    - 难题（复杂推导）：15-20分钟
    - 预留10分钟检查

**关键原则**：不求完美，但求快速和准确！