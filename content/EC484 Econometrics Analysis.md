#LSE/EC484_Econometrics_Analysis 

Tai's Notes:

Since 70 is the distinction grade,

2 steps to answers questions during the exam:

1. At first, answer 65% of the question, go over all the questions, answer all the easy parts first.
>  Leave more space for each question, then come back later.
2. Then go back to the hard parts, try to push it to 70%.

About the sample exam, the structure is similar, 3 questions, Q1 is basically about Prof Wang's part. Q2 is combination (half Prof Wang and Prof Otsu), Q3 is basically Prof Otsu's part.

 For Otsu, the focus in on the GMM,

- [[Nonparametric Method]], [[Quantile Regression]] could both be shown in Q2.
- Q3 is more likely about the GMM.

How to prepare?

Generally stable.

1. Past Exam, sample exam (Check both Jan and Summer Exams)
2. PS
3. Hansen Exercise
4. Q2 a-d is Tai's part, and Q2 e is Vas's part 

[[EC484 Knowledge Check]]


---

在 Metrics 的复习当中，我需要向你明确整体的结构：

这门课程总共分为两个部分，第一部分是由教授 Taisuke Otsu 讲解的，第二部分是由 Vassilis Hajivassiliou 讲解的。

Tai 的讲解内容如下：

1. [[Bootstrap]]
2. Limited Dependent Variable
3. Causal Inference 
4. Machine Learning

Vassilis 讲解内容是：

1. topic0（你可以在资料库里找到，基本上是一些 General 的讲解）
2. Panel Data
3. Time Series 

资料库里有一些上学期的内容，但是总体来说不是我们关注的重点，重点是如何学好本学期已有的材料。我依然非常不擅长学习 Econometrics，因此大部分情况需要回顾一些非常基础的内容，我问的问题也会相对基础。在回答问题的时候，注意“说人话”，从建立直觉的角度出发。在回答 problem sets 问题的时候，需要建立起和课件的联系，保证有精确到课件对应页码的引用。



## 复习计划（暂定）
| 天数    | 复习主题                                          | GTD 下一步行动                                                                                                                                           | 知识点定位                                                                                                                                                                                    | 完成情况                                              |                                                     |
| ----- | --------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------------------------------------------- | --------------------------------------------------- |
| Day 1 | **MLE 理论 + Binary Choice 入门**                 | 1. 完成 Otsu PS2 Q1(a-b)（信息矩阵等式推导）— 40min                                                                                                             | MLE 定义、一阶条件、Score function；需回顾 `General.pdf` §8 (Consistency & Asymptotic Normality)                                                                                                     |                                                   |                                                     |
|       |                                               | 2. 完成 Otsu PS2 Q2(a-d)（Pareto 分布 MLE 全链条）— 40min                                                                                                    | Log-likelihood → MLE → Fisher Information → 一致性证明（WLLN + CMT）                                                                                                                            |                                                   |                                                     |
|       |                                               | 3. 完成 Otsu PS3 Q1(a-b)（异方差 Probit 的 Log-likelihood + 渐近分布）— 50min                                                                                   | Latent variable model、scale normalization (σ 不可识别)、Probit MLE 渐近正态性；需回顾 `Limdep.pdf` Binary Choice 部分                                                                                    |                                                   |                                                     |
|       |                                               | 4. 完成 2026 Sample Q1(a)(i-ii)（Probit MLE 定义 + 边际效应 95% CI）— 50min                                                                                   | MLE 渐近分布、Delta Method（将 $\phi(\hat\beta x)\hat\beta$ 的方差用 $\nabla g' \cdot I(\hat\beta)^{-1} \cdot \nabla g$ 表达）                                                                         |                                                   |                                                     |
|       | **Day 1 产出**                                  | 在 MN4 脑图中总结：① MLE 三步模板（定义→FOC→渐近分布）；② Probit 完整推导链条                                                                                                 |                                                                                                                                                                                          |                                                   |                                                     |
|       |                                               | **额外任务**（如有剩余时间）：默写 Wald / LR / Score 三大检验统计量的定义和渐近分布                                                                                               | Wald: $(\hat\theta - \theta_0)' [V(\hat\theta)]^{-1} (\hat\theta - \theta_0)$；LR: $2[\ell(\hat\theta) - \ell(\theta_0)]$；Score: $S(\theta_0)' I(\theta_0)^{-1} S(\theta_0)$              |                                                   |                                                     |
| Day 2 | **LDV 深化：Tobit + Poisson + Misspecification** | 1. 完成 Otsu PS3 Q2(a-c)（Tobit 三种变体的 Log-likelihood 函数书写）— 50min                                                                                      | Censored regression、top-coding、double-censoring；关键：拆分 likelihood 为 $P(y=c)$ 和 $f(y                                                                                                       | y<c)$ 两部分；需回顾 `Limdep.pdf` Censored Regression 部分 |                                                     |
|       |                                               | 2. 完成 2026 Sample Q1(a)(iii-iv)（NLS 渐近分布 + Logit misspecification 下的收敛目标）— 50min                                                                    | NLS 一般渐近理论（$\sqrt{n}(\tilde\beta - \beta^*) \to N(0, H^{-1}VH^{-1})$）；KLIC / pseudo-true value；Probit vs Logit 关系                                                                        |                                                   |                                                     |
|       |                                               | 3. 完成 2026 Sample Q1(b)(i-ii)（Censored wage + Bootstrap 检验）— 50min                                                                                  | Tobit MLE for $(\beta, \sigma^2)$；Bootstrap hypothesis test 步骤（重采样→重算统计量→p-value）                                                                                                        |                                                   |                                                     |
|       |                                               | 4. 完成 Otsu PS3 Q3(a-c)（Poisson regression：条件矩 + MLE 渐近分布）— 30min                                                                                    | Poisson 分布性质 $E[Y                                                                                                                                                                        | X] = Var[Y                                        | X] = X'\beta$；Poisson log-likelihood；equidispersion |
|       | **Day 2 产出**                                  | 在 MN4 中总结：LDV 五大模型对照表（Probit / Logit / Tobit / Ordered Probit / Poisson），每个写清：① 观测机制；② Likelihood 结构；③ 关键识别条件                                       |                                                                                                                                                                                          |                                                   |                                                     |
|       |                                               | **额外任务**：默写 Probit MLE 的 Score function $S(\beta) = \sum_{i} \frac{(Y_i - \Phi(X_i'\beta))\phi(X_i'\beta)}{\Phi(X_i'\beta)(1-\Phi(X_i'\beta))} X_i$ |                                                                                                                                                                                          |                                                   |                                                     |
| Day 3 | **Bootstrap + Causal Inference Part 1**       | 1. 完成 Otsu PS1 Q1（Bootstrap hypothesis test 的经典错误）— 30min                                                                                           | Bootstrap 检验的核心：必须在 $H_0$ 下重采样！原始 bootstrap 分布不等于 null 分布；需回顾 `Bootstrap.pdf`                                                                                                            |                                                   |                                                     |
|       |                                               | 2. 完成 Otsu PS1 Q2（对 $\theta=\beta_1\beta_2$ 构建三种 CI）— 50min                                                                                         | Percentile CI: $[\hat\theta^*_{\alpha/2}, \hat\theta^*_{1-\alpha/2}]$；Percentile-t CI: $[\hat\theta - q^*_{1-\alpha/2}\cdot se, \hat\theta - q^*_{\alpha/2}\cdot se]$；Delta Method CI    |                                                   |                                                     |
|       |                                               | 3. 完成 Otsu PS1 Q3(a-d)（Uniform MLE 的 bootstrap failure）— 50min                                                                                      | EDF、bootstrap 一致性条件、non-regular cases（MLE 非 $\sqrt{n}$ 收敛时 bootstrap 失效）                                                                                                                 |                                                   |                                                     |
|       |                                               | 4. 完成 Otsu PS4 Q2(a-c)（ATT/ATE 偏差分析）+ 2026 Sample Q2(a)（ATT 识别证明）— 50min                                                                            | Potential outcomes 框架、$\tau_{ATE}$ / $\tau_{ATT}$ 定义、Selection bias = $E[Y_0\|W = 1] - E[Y_0\|W=0]$ CIA 条件、IPW estimator $E[WY/p(X)]$；需回顾 `Causal.pdf`                                   |                                                   |                                                     |
|       | **Day 3 产出**                                  | ① Bootstrap 方法选择决策树（什么时候用 percentile / percentile-t / normal approx）；② Causal Inference 识别条件速查表（CIA + Overlap）                                      |                                                                                                                                                                                          |                                                   |                                                     |
| Day 4 | **Causal Part 2 + Weak IV + ML**              | 1. 完成 Otsu PS4 Q3(c-d)（Control Function / Selection Model）— 40min                                                                                   | Heckman 两步法思路：$E[Y\|W,X,Z] = \tau W + X'\beta + \rho_1 W\frac{\phi}{\Phi} + \rho_2(1-W)\frac{\phi}{1-\Phi}$；endogenous treatment                                                         | 已完成，用时 1 个小时，主要是也花时间去看了 ab 两个小问                   |                                                     |
|       |                                               | 2. 完成 Otsu PS4 Q4 + PS5 Q1（DID 估计 + DID with IV）— 40min                                                                                             | Two-way FE：$Y_{it} = \theta D_{it} + u_i + \delta_t + \varepsilon_{it}$；parallel trends 假设                                                                                               |                                                   |                                                     |
|       |                                               | 3. 完成 Otsu PS5 Q2（RDD 识别）+ PS5 Q3(a-c)（Weak IV 渐近分布）+ 2026 Sample Q2(b-c) — 60min                                                                   | Sharp/Fuzzy RDD；Weak IV: $\pi_{0n} = C/\sqrt{n}$ 导致 IV estimator 不再 $\sqrt{n}$-consistent；S-statistic / Anderson-Rubin CI；需回顾 `Causal.pdf` Weak IV 部分                                    |                                                   |                                                     |
|       |                                               | 4. 完成 Otsu PS6 Q1(a-b)（Ridge vs OLS 的 MSE 比较）+ PS6 Q2(a-f)（Post-selection inference / Partialling-out）+ 2026 Sample Q2(d) — 60min                   | Bias-variance tradeoff: $MSE = Var + Bias^2$；Ridge shrinkage $\hat\beta_R = (X'X + \lambda I)^{-1}X'Y$；LASSO variable selection；Partialling-out 解决 post-selection bias；需回顾 `Machine.pdf` |                                                   |                                                     |
|       | **Day 4 产出**                                  | ① Causal 方法选择：随机实验 → CIA/IPW → IV/LATE → DID → RDD 的适用条件链；② ML 核心公式卡（Ridge/LASSO 目标函数 + bias-variance 分解）                                           |                                                                                                                                                                                          |                                                   |                                                     |
| Day 5 | **Vassilis 精选 + 综合模拟**                        | 1. 快速回顾 Panel Data 核心框架，完成 Vassilis ps1 Q1(a-c)（FE estimator 推导）— 50min                                                                             | FE = within estimator (组内去均值)；$\hat\beta_{FE} = (\sum \ddot{X}_i'\ddot{X}_i)^{-1}\sum \ddot{X}_i'\ddot{y}_i$；需回顾 `ec484paneldata.pdf`                                                    |                                                   |                                                     |
|       |                                               | 2. 快速回顾 Time Series basics，完成 Vassilis ps3 Q2-Q3（AR 过程一致性 + AR(2) 平稳性条件）— 50min                                                                     | 弱平稳定义、AR characteristic roots 在单位圆外、自协方差函数；需回顾 `ec484timeseries.pdf`                                                                                                                     |                                                   |                                                     |
|       |                                               | 3. **限时模拟**：完成 2026 Sample Exam Q1 全题（闭卷，60分钟严格计时）— 60min                                                                                           | 综合检测 Day 1-2 所有 LDV + MLE + Bootstrap 知识                                                                                                                                                 |                                                   |                                                     |
|       |                                               | 4. 对照答案自评 + 标记薄弱环节 → 生成 Phase 2 重点攻克清单 — 20min                                                                                                      |                                                                                                                                                                                          |                                                   |                                                     |
|       | **Day 5 产出**                                  | ① Vassilis 10 分应急笔记（FE/RE 核心区别 + 平稳性条件）；② Phase 2 薄弱环节清单                                                                                            |                                                                                                                                                                                          |                                                   |                                                     |


## 复习记录

### 4.24
Done List:

- 已完成 Otsu PS2 Q1,Q2
	- 关于 Q2，题目的独到之处是给定了 $f$ 的形态（Pareto），因此在做的时候比较有具体一些。
	- 




- [[EC484 Final Review WT 白皮书]]
- [[EC484 Final Review WT 杂记]]
- 
