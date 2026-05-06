---
title: Minimum Wage Effects Across State Borders Estimates Using Contiguous Counties
course: EC423 Labour Economics
---
更多的是对[[Card and Krueger (1994)]] 研究的补全，DLR 的出发点是：第二代 state panel（NW 1992）和第三代 case study（CK94）得出矛盾结论。问题出在哪？

DLR 认为核心问题是 **spatial heterogeneity**——不同地区有不同的经济增长路径。而 MW 的调整本身与这些路径相关：**高 MW 的州往往是经济发展较好的蓝州（如 California, New York），低 MW 的州往往是经济发展较慢的红州（如 Mississippi, Alabama）**。如果用传统 TWFE 把 California 和 Mississippi 放在一起比，就业差异可能来自经济增长差异而非 MW。而这个经济增长差异是无法通过 TWFE 捕捉到的（Time Invariant 不行，County FE 也不行）

---

### 第一步：复制 NW (1992) 的 State Panel

DLR 先用标准 TWFE 复制前人结果：

$$\ln y_{it} = \alpha + \eta \ln(MW_{it}) + \delta \ln(y_{it}^{TOT}) + \gamma \ln(pop_{it}) + \phi_i + \tau_t + \varepsilon_{it}$$

变量含义：

- $y_{it}$：county $i$ 在时间 $t$ 的 restaurant employment
- $MW_{it}$：适用的 minimum wage（取 federal 和 state MW 中较高者）
- $y_{it}^{TOT}$：total private sector employment（控制当地经济规模）
- $pop_{it}$：县人口
- $\phi_i$：county FE，$\tau_t$：time FE

识别假设：After controlling for county FE and common time FE, MW changes are unrelated to remaining employment shocks.

课件紧接着提出关键质疑："But why we should believe that unobserved time shocks are the same across counties?" 答案是：**我们不应该相信**。这正是问题所在。

---

### 复制结果揭示 bias

DLR 从同一张 Table 2 中展示了逐步加入 spatial controls 后系数如何变化：

**All-County Sample（传统 state panel）：**

||Earnings|Employment|
|---|---|---|
|Column (1): 基础 TWFE|0.224***|-0.211**|
|Column (2): + census division × period|0.217***|-0.176*|
|Column (3): + state trends, MSA × period|0.204***|-0.028|
|Column (4): + 更多 spatial controls|0.195***|-0.023 ~ +0.054|


关键观察：

- **Earnings elasticity**（MW 对工资的效应）在所有 specification 下都稳定在 0.149-0.232 之间，始终高度显著。这说明 first stage 很强，MW 确实提高了工资。
- **Employment elasticity** 从 Column (1) 的 **-0.211**** 逐步缩小，到加入 spatial controls 后变成 **+0.052 (0.084)** 和 **+0.032 (0.078)** [第 55 页红框]，完全不显著且接近零。

Intuition：Column (1) 的 -0.211 不是 MW 的因果效应，而是因为 **高 MW 州碰巧是就业增长较慢的州**（或者低 MW 州碰巧增长更快）。一旦控制了 regional heterogeneity，负效应就消失了。课件明确总结 [第 52 页底部]："Previous estimates were downward biased due to unobserved regional differences in employment growth."

同一张表还报告了 implied labor demand elasticity [第 54 页]：Column (2) 为 $-0.787^*$（即 $\eta^{empl}/\eta^{earn} = -0.176/0.224$），看似很大。但加入 spatial controls 后 [第 55 页]，这个值变成 0.211 (0.507)——完全不显著。

---

### 核心创新：Border County-Pairs

既然问题是 spatial heterogeneity，DLR 的解决方案非常直觉：**只比较州界两侧紧邻的县 (contiguous border county-pairs)**。

第 56 页的地图展示了 1990-2006 期间所有存在 MW differential 的 contiguous border county-pairs（黑色区域）。

**为什么这个设计好？** 州界两侧的两个县：

- 地理相邻，面临相同的 local economic shocks（天气、产业结构、消费者需求）
- 但因为在不同州，适用不同的 MW

所以 MW 差异近似"随机"——它来自政治边界的划定，而非经济基本面的差异。

**Preferred specification**

$$\ln y_{ipt} = \alpha + \eta \ln(w_{it}^M) + \delta \ln(y_{it}^{TOT}) + \gamma \ln(pop_{it}) + \phi_i + \tau_{pt} + \varepsilon_{ipt}$$

注意与之前 specification 的关键区别：

- 下标多了 $p$（pair），每个 county 属于一个或多个 border pair
- $\tau_{pt}$ 是 **pair-specific time FE**：每一对相邻县在每个时间点都有自己的 time effect

$\tau_{pt}$ 的作用极其关键：它确保比较的是**同一对边界县之间**的 MW 差异与就业差异，完全吸收了两县共同面临的任何 time-varying shocks。这比 state-level 或 region-level time FE 要严格得多。

**识别假设**：$E[\ln(w_{it}^M),\ \varepsilon_{ipt}] = 0$

即：在控制了 county FE 和 pair-specific time FE 之后，同一 pair 内的 MW 差异与残差中的就业冲击无关。这比传统 TWFE 的假设弱得多（只需要同一对县内 parallel trends，而非全国 parallel trends）。

---

### Border County-Pair 结果

**Contiguous Border County-Pair Sample：**

||Column (5)|Column (6)|
|---|---|---|
|Earnings elasticity|0.232*** (0.032) → 0.188*** (0.060)|[第 58 页]|
|Employment elasticity|-0.137* (0.072) → **0.016 (0.098)**|[第 59 页]|

Column (5) 没有 pair-specific time FE，Column (6) 加了。

核心结果 [第 59 页]：加入 $\tau_{pt}$ 后，employment elasticity = **0.016 (0.098)**——几乎精确为零，完全不显著。而 earnings elasticity 仍然高度显著（0.188***），说明 first stage 依然很强。

课件总结 [第 59 页底部]："The implied labor demand elasticities are close to 0 and insignificant at conventional levels."

---

### 6. 核心 Insight：为什么结果如此不同？

整篇论文的故事线非常清晰：

1. 用传统 TWFE → 得到 $\eta^{empl} \approx -0.2$（与 NW 1992 一致）[第 54 页]
2. 逐步加入 spatial controls → 负效应缩小并消失 [第 55 页]
3. 用 border county-pairs + pair-specific time FE → 负效应完全消失 [第 59 页]
4. 但 earnings elasticity 始终稳定且显著 [第 53, 58 页]

**结论**：之前文献中发现的 negative employment effect 不是 MW 的因果效应，而是 **regional heterogeneity 导致的 spurious correlation**。高 MW 的州碰巧是就业增长较慢的地区，传统 TWFE 错误地把这种 differential trend 归因于 MW。

---

### 7. 与 CK94 的关系

DLR 可以理解为 CK94 思路的**系统化和泛化**：

- CK94 用一对州（NJ vs PA）做一次 case study → DLR 用美国所有 border county-pairs 做系统性分析
- CK94 的 identification 依赖 NJ-PA 这一对的 parallel trends → DLR 的 pair-specific time FE 对每一对都允许不同的 time effects
- CK94 只有一个 policy event → DLR 覆盖 1990-2006 所有 state MW changes，样本量和统计功效大得多

---

### 8. 考试备考要点

DLR (2010) 最可能被考到的角度：

1. 写出两个 specification（TWFE vs border pair），逐一解释变量和 FE 结构
2. 解释为什么 $\tau_{pt}$（pair-specific time FE）比 $\tau_t$（common time FE）更好——它控制了 local economic shocks
3. 解读 Table 2 中系数从 Column (1) 到 Column (6) 的变化：加 spatial controls 后 employment 系数从 -0.2 变为 0，earnings 系数稳定不变
4. 解释 "downward bias" 的来源：regional heterogeneity in employment growth
5. 比较 DLR 与 NW (1992) / CK94 的方法论改进