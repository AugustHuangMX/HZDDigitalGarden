#metrics

## 1. 老师的重要性信号提取

### 🔴 重点强调

**Weak IV 与 S-statistic（p.64–p.81）** 老师原话（大意）："It's a super good example to conclude my part... very nice topic to see how economics theorem is useful... Beautiful, isn't it?" 老师花了大量时间讲解这一部分，从 simulation 动机到 local asymptotics 到 S-statistic 的构造，并多次用"beautiful"来形容整个逻辑链条。特别强调了考试中需要写出假设："If it's exam, right, tell me your assumptions, then you have to say something like that, right? 2 marks."

**DID 的回归表述与识别假设（p.40–p.47）** 老师详细讲解了 two-way within transform 的代数原理，以及如何用 OLS unbiasedness 的逻辑来理解 DID 的识别条件（conditional independence between $D$ and $\varepsilon$ given $X$）。明确说这是"recycle OLS idea to talk about assumption"。

**RDD：Sharp 和 Fuzzy 的识别与估计（p.48–p.55）** 老师对 Sharp RDD 的直觉用图形仔细讲解（"the whole idea"），Fuzzy RDD 的比率表达式也做了完整推导。

### ⚪ 明确降权

**Many IV（p.82–p.93）** 老师原话："I definitely skip many IV... not examinable. Maybe I delete from slides... not nothing, not examinable."

**Synthetic Control（p.56–p.63）** 老师原话："Synthetic control... not examinable, I will delete." 仅花约5分钟非常简略地提及了基本思想。

### ❓ 未明确表态的内容

|Slides 部分|老师花费时间|
|---|---|
|Two-way error components model（p.40–p.41）|详细讲解，作为 DID 的准备知识|
|DID regression formulation（p.42–p.43）|详细讲解，强调与 two-way within transform 等价|
|DID 识别条件（p.45–p.47）|详细讲解，是本课 DID 部分的核心|
|Sharp RDD 识别（p.50–p.51）|详细讲解，附带图形直觉|
|Sharp RDD 估计（p.52）|提到 local linear estimation，与非参回归联系|
|Fuzzy RDD（p.53–p.55）|中等详细，完整推导了比率表达式|
|Weak IV simulation（p.65–p.69）|详细讲解，用数值展示问题|
|Local asymptotics 概念（p.70–p.71）|详细讲解，给出其他例子说明这是通用方法|
|$\hat{\beta}$ 的极限分布（p.72–p.73）|详细推导|
|Weak identification 一般化（p.74–p.75）|中等详细，联系 GMM Jacobian|
|S-statistic（p.77–p.80）|非常详细，老师称之为"beautiful"，给出考试提示|
|S-statistic 缺陷（p.81）|简要提及|

---

## 3. 核心内容摘要

本课完成了因果推断方法的系统讲解。DID 可用 two-way fixed effect 回归理解，其因果识别依赖于处理变量 $D$ 与误差 $\varepsilon$ 在控制 $X$ 后的条件独立。RDD 利用阈值附近的局部随机化识别因果效应：Sharp 情形直接取条件均值的左右极限之差，Fuzzy 情形需除以处理概率的跳跃。Weak IV 是本课重点：当工具变量相关性弱时，标准渐近理论失效；通过 local asymptotics（$\gamma = c/\sqrt{n}$）刻画这一现象后，S-statistic 提供了不依赖 $\hat{\beta}$ 的检验方法，在弱识别下仍收敛于 $\chi^2$，从而可构造有效置信区间。

---

## 4. 重点知识结构

### I. DID：回归表述与识别（p.34–p.47）

- Two-way error components model：$Y_{it} = X'_{it}\beta + \nu_t + u_i + \varepsilon_{it}$
- Two-way within transform 消除 $\nu_t$ 和 $u_i$
- DID 回归：$Y_{it} = \beta_0 + \beta_1 \text{State}_i + \beta_2 \text{Time}_t + \theta D_{it} + \varepsilon_{it}$
    - $\theta$ 的 OLS 估计 = DID 估计量
    - 等价于 two-way within transform 后对 $\ddot{D}_{it}$ 做 OLS
- **识别假设**：
    - (i) $E[\varepsilon_{it}|X_i] = 0$（误差与整个 $X$ 历史无关）
    - (ii) $D_{it}$ 与 $\varepsilon_{is}$ 条件独立于 $X_i$，对所有 $t,s$

### II. RDD（p.48–p.55）

- **Sharp RDD**：$D = \mathbf{1}{X \geq c}$
    - $\theta(c) = \lim_{x\downarrow c} m(x) - \lim_{x\uparrow c} m(x)$
    - 估计：local linear estimation（边界估计性质好）
- **Fuzzy RDD**：$P[D=1|X=x]$ 在 $c$ 处不连续
    - $\theta(c) = \dfrac{\lim_{x\downarrow c} m(x) - \lim_{x\uparrow c} m(x)}{\lim_{x\downarrow c} p(x) - \lim_{x\uparrow c} p(x)}$
    - 需估计4个边界极限

### III. Weak IV（p.64–p.81）⭐ 核心重点

- 问题：$\gamma \approx 0$ 时标准渐近理论失效
- Local asymptotics：$\gamma_{0n} = c/\sqrt{n}$
- $\hat{\beta}$ 的极限分布：$\hat{\beta} \xrightarrow{d} \beta + \dfrac{\xi_1}{cE[Z^2] + \xi_2}$（非正态，不一致）
- GMM 视角：弱识别 = Jacobian 接近零 = 目标函数平坦
- **S-statistic**：$S(\beta) = n\bar{g}(\beta)'\hat{\Omega}(\beta)^{-1}\bar{g}(\beta)$
    - 无论识别状态如何，$S(\beta) \xrightarrow{d} \chi^2_{\dim g}$
    - 检验：$S(c) \lessgtr \chi^2_\alpha(\dim g)$
    - 置信集：${c : S(c) \leq \chi^2_\alpha(\dim g)}$

### ~~IV. Synthetic Control（p.56–p.63）~~【老师标注：不考】

### ~~V. Many IV（p.82–p.93）~~【老师标注：不考】

---

## 5. 关键概念与定义

**Two-way within transform（双向组内变换）** $$\ddot{Y}_{it} = Y_{it} - \bar{Y}_i - \tilde{Y}_t + \bar{Y}$$ 消除个体固定效应 $u_i$ 和时间固定效应 $\nu_t$。经济直觉：减去个体均值消除个体异质性，减去时间均值消除共同时间趋势，加回总均值修正过度减除。

**DID 估计量（差中差）** $$\hat{\theta} = (\bar{Y}_{T1} - \bar{Y}_{T0}) - (\bar{Y}_{C1} - \bar{Y}_{C0})$$ 经济直觉：用控制组的时间变化作为处理组反事实变化的代理，从而净化出处理效应。无偏性依赖 common trends assumption。

**Sharp RDD 识别** $$\theta(c) = \lim_{x\downarrow c} E[Y|X=x] - \lim_{x\uparrow c} E[Y|X=x]$$ 经济直觉：在阈值附近，稍高于和稍低于阈值的个体几乎相同（"almost like the same person"），因此左右极限之差反映因果效应。

**Fuzzy RDD 识别** $$\theta(c) = \frac{\lim_{x\downarrow c} m(x) - \lim_{x\uparrow c} m(x)}{\lim_{x\downarrow c} p(x) - \lim_{x\uparrow c} p(x)}$$ 经济直觉：类似 Wald/IV 估计量，分子是 reduced form 的跳跃，分母是 first stage 的跳跃。Sharp 是特例（分母 = 1）。

**Local asymptotics（局部渐近）** $$\gamma_{0n} = \frac{c}{\sqrt{n}}, \quad c \neq 0$$ 经济直觉：通过让参数随样本量"漂移"（drifting），构造更贴近有限样本现实的渐近框架。标准渐近（$\gamma$ 固定）对弱 IV 场景的近似太粗糙。

**Weak identification（弱识别）= Jacobian 问题** $$E\left[\frac{\partial g(W,\beta)}{\partial \beta'}\right] \approx 0$$ 经济直觉：GMM 目标函数在 $\beta$ 附近平坦（"flat bottom"），估计量无法锁定真值。

**S-statistic** $$S(\beta) = n\bar{g}(\beta)'\hat{\Omega}(\beta)^{-1}\bar{g}(\beta) \xrightarrow{d} \chi^2_{\dim g}$$ 关键性质：其分布推导**不需要 Jacobian 相关假设**，因此对弱识别免疫。它是 CU-GMM 的目标函数在真值处的取值。通过反转检验得到置信集。

**S-statistic 的局限**：临界值为 $\chi^2_\alpha(\dim g)$，随工具变量个数增加而增大，导致检验功效下降、置信集变宽。

---

## 6. 复习问题

**Q1（理解层）**：在 DID 回归 $Y_{it} = \beta_0 + \beta_1 \text{State}_i + \beta_2 \text{Time}_t + \theta D_{it} + \varepsilon_{it}$ 中，为什么 $\theta$ 的 OLS 估计与直接计算 $(\bar{Y}_{T1} - \bar{Y}_{T0}) - (\bar{Y}_{C1} - \bar{Y}_{C0})$ 给出完全相同的数值？请用 two-way within transform 的等价性解释。

**Q2（理解层）**：DID 因果识别条件 (ii) 要求 $D_{it}$ 与 $\varepsilon_{is}$ 对**所有** $t,s$ 无关（不仅仅是 $t=s$）。请用最低工资的例子解释为什么需要跨时间的条件独立。

**Q3（应用层）**：在 Sharp RDD 中，为什么选择 local linear estimation 而非 Nadaraya-Watson 估计来估计 $\lim_{x\downarrow c} m(x)$？（提示：边界估计性质）

**Q4（应用层）**：在 weak IV 设定 $\gamma_{0n} = c/\sqrt{n}$ 下，推导 $\hat{\beta}$ 的极限分布。具体说明为什么上下同除 $\sqrt{n}$（而非 $n$），以及最终极限为什么不是正态分布。

**Q5（综合层）**：S-statistic $S(\beta) = n\bar{g}(\beta)'\hat{\Omega}(\beta)^{-1}\bar{g}(\beta)$ 收敛到 $\chi^2_{\dim g}$ 时，**不需要**关于 Jacobian 的任何假设。请写出所需的具体假设（老师提示："If it's exam, tell me your assumptions"），并解释为什么 two-step GMM 的目标函数不能替代 S-statistic。

---

### 📌 考试信息备忘

- 下周 Reading Week **无课**，之后还有 **1 节课**
- **Sample exam** 本周末上传；结构：Q1 + Q2 共享（约40/50分是 Otsu 部分），Q3 是 Basil 部分
- Easter break 期间会有 **Zoom review**（约4月20日那周）
- Many IV 和 Synthetic Control **已确认不考**