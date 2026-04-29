---
tags:
  - Econometrics
---
总结过去几年考试卷覆盖 Tai 的考试内容，生成模型为 `Claude Opus 4.6` .


---

## 一、LimDep（限制因变量模型）— 出现频率最高，优先级 ⭐⭐⭐⭐⭐

几乎每年必考一整道大题或多个小题。

|年份|题号|考点|
|---|---|---|
|2018 ST|Q3(a)(i)|MLE 定义 + 梯度法求解|
|2018 ST|Q3(a)(ii)|假设检验：Wald & LR/LM（两种方法）|
|2018 ST|Q3(c)|Ordered Probit（三类有序选择模型的 MLE）|
|2019 ST|Q3(a)-(e)|内生性 Probit：控制函数法（control function），含 $\theta$ 推导、两步估计、假设检验|
|2020 ST|Q1(e)|Probit 第一步 + 两步估计量的渐近分布（stacking moment conditions）|
|2020 ST|Q3(a)|Tobit 模型（top-coded censored regression）正态同方差 MLE|
|2020 ST|Q3(b)|Tobit 异方差 MLE（$\text{Var} = \alpha x_i^2$）|
|2020 ST|Q3(c)|半参数 Tobit：不需正态/同方差假设如何估计 $\beta$ |
|2020 ST|Q3(d)|Tobit NLS（非线性最小二乘目标函数）|
|2020 ST|Q3(e)|内生性 Tobit：联合正态下的控制函数法|
|2021 ST|Q3(a)|Ordered Probit MLE 定义 + 渐近分布|
|2021 ST|Q3(b)|Ordered Probit 的 $E[y_i|
|2021 ST|Q3(c)|半参数 Ordered Probit（对称分布，不需正态假设）|
|2021 ST|Q3(d)|内生性 Ordered Probit（控制函数法）|
|2022 ST|Q3(a)|Probit MLE + 渐近分布|
|2022 ST|Q3(b)|Probit 的 Bootstrap 置信区间|
|2022 ST|Q3(c)(i)(ii)|模型误设（true: logit，fitted: probit）下的 plim 和渐近分布|
|2022 ST|Q3(d)|半参数二值选择模型：$P(y=1|
|2023 ST|Q3(a)(i)-(iii)|Probit + 二次项：边际效应估计、渐近分布、90% CI|
|2023 ST|Q3(b)(i)|截断+删失混合变量的 CDF|
|2023 ST|Q3(b)(ii)|截断+删失+top-coded 模型的对数似然函数|
|2024 ST|Q3(a)(i)(ii)|Pareto 分布 MLE + 一致性证明|

**核心高频考点**：Probit MLE 定义与渐近分布、Ordered Probit、Tobit/Censored regression、控制函数法处理内生性、模型误设下的 plim、边际效应 + Delta Method CI。

---

## 二、Bootstrap — 出现频率高，优先级 ⭐⭐⭐⭐

每年至少有一个小题（10 分左右），通常嵌入到其他大题中。

|年份|题号|考点|
|---|---|---|
|2018 ST|Q1(b)(iii)|LAD 估计量的 Bootstrap 偏差估计 + 偏差校正|
|2019 ST|Q2(d)|Bootstrap 估计 GMM 的 MSE|
|2020 ST|Q2(d)|Bootstrap 估计核 CDF 估计量的偏差|
|2021 ST|Q2(c)|Bootstrap 估计联合核密度的 MSE|
|2022 ST|Q3(b)|Bootstrap 置信区间（Probit 的 $\beta$）|
|2023 ST|Q1(c)|Bootstrap 假设检验：$H_0: \beta_1 = \beta_2$ |
|2024 ST|Q1(a)(iv)|Bootstrap 检验：$H_0: \beta = 0$ |

**核心高频考点**：Bootstrap 偏差估计/偏差校正、Bootstrap CI（percentile 法）、Bootstrap 假设检验（如何在 $H_0$ 下构造 bootstrap 世界）、Bootstrap MSE 估计。

---

## 三、Causal Inference（因果推断）— 优先级 ⭐⭐⭐

出现频率较低但每次考都是完整证明题，分值不小。

|年份|题号|考点|
|---|---|---|
|2018 ST|Q3(b)|IPW 证明：$E[y_1] = E\left[\frac{wy}{p(x)}\right]$（17 分）|
|2024 ST|Q3(b)(i)|证明 $E[y_1] = E[m_1(x)]$（outcome regression 识别）|
|2024 ST|Q3(b)(ii)|参数化 $m_1(x) = \beta x$ 的估计量 + 渐近分布|
|2024 ST|Q3(b)(iii)|IPW 证明 + Probit propensity score 下的 IPW 估计量|
|2024 ST|Q3(b)(iv)|**Doubly Robust 估计量**：证明只需一个模型正确即一致|

**核心高频考点**：IPW 识别公式的证明（条件独立 + 重叠）、Outcome regression vs IPW、Doubly Robust 性质。2024 年的 Q3(b) 非常全面，是复习因果推断的最佳真题。

---

## 四、Machine Learning — 优先级 ⭐⭐

在过去考试中**未直接以 Ridge/Lasso 形式出现**。但以下题目与 ML 模块高度相关：

|年份|题号|相关性|
|---|---|---|
|2023 ST|Q1(b)(i)|非参数 vs 参数估计量的比较（bias-variance tradeoff 思想）|
|2023 ST|Q1(b)(ii)|模型误设下非参数估计量的表现|
|2023 ST|Q1(b)(iii)|遗漏变量下非参数的性质（omitted variable bias）|
|2024 ST|Q1(b)|非参数回归导数估计|

Machine Learning（Ridge, Lasso, Partialling-out Lasso）是较新加入的内容，过去考题中尚无直接考查。但鉴于今年课程已覆盖，**需要作为新增考点重点准备**。

---

## 优先级总结

1. **LimDep** ⭐⭐⭐⭐⭐ — 每年必考大题，覆盖 Probit/Tobit/Ordered Probit/控制函数法/MLE 全链条
2. **Bootstrap** ⭐⭐⭐⭐ — 每年必考小题，重点掌握三大应用（偏差校正、CI、检验）
3. **Causal** ⭐⭐⭐ — 隔年出现，但分值大且证明链条完整，IPW + DR 是核心
4. **Machine Learning** ⭐⭐ — 历史未直接出题，但今年新增内容，需防首次考查（Ridge/Lasso 的 bias-variance、Partialling-out Lasso）

建议复习顺序：LimDep → Bootstrap → Causal → ML，并以 2024 ST 和 2023 ST 作为最核心的模拟练习卷。