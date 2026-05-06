---
title: "EC484 Metrics Review"
date: 2026-05-05
course: "EC484 Econometric Analysis"
tags:
  - review
  - econometrics
  - metrics
  - EC484
---
# EC484 复习笔记

## Material Scan

- 已忽略：`AT/` 文件夹，因为它是 Autumn Term 材料。
- Syllabus / Outline：未发现明确 syllabus, 因此按课件标题和你给的教师划分组织。
- Lectures：`Slides/Bootstrap.pdf`, `Slides/Causal.pdf`, `Slides/Limdep.pdf`, `Slides/Machine.pdf`, `Slides/ec484-topic0.pdf`, `Slides/ec484-timeseries.pdf`, `Slides/ec484-paneldata.pdf`。
- Problem Sets：`Problem_Set_Otsu_WT.pdf`, `Vassilis_Pset/ps1-ec484.pdf` 到 `ps4-ec484.pdf`。
- Solutions：`Solution/Tai_PS1_sol.pdf` 到 `Tai_PS6_sol.pdf`, `Vas_PS1_sol.pdf` 到 `Vas_PS3_sol.pdf`, `Sample-EC484-2026-ST-ans.pdf`。
- Seminars：`Seminars/` 中 Otsu 和 Vassilis 的 WT seminar notes, 包括 Bootstrap, LDV, Causal, ML, Panel, Time Series。
- Past Exams：`Past Exams/EC484_2018.pdf` 到 `EC484_2025.pdf`, `EC484LT_2018.pdf` 到 `EC484LT_2024.pdf`, 以及 `Sample-EC484-2026-ST.pdf`。

> [!warning] Past exam 筛选原则
> 很多 past exam 题属于旧 syllabus 或 Autumn Term 式渐近理论。本文只把能映射到本学期 topic 的题纳入题型分析；纯 uniform integrability, generic convergence order, boundary asymptotics 等只在与 Bootstrap 或 Time Series 直接相连时作为边缘背景。

## Exam Information

- Sample Exam Summer 2026: 3 questions, answer 2, equal weight, reading time 15 minutes, writing time 2 hours, no calculators, no additional materials `(Sample Exam 2026, p.1)`。
- 结构信号：Question 1 and 2 are Otsu-style, Question 3 is Vassilis' part `(Sample Exam 2026, pp.2-4)`。
- Otsu part: Bootstrap, Causal Inference, Limited Dependent Variables, Machine Learning。
- Vassilis part: Topic 0, Panel Data, Time Series。
- 你的优先级：Limdep 和 Causal 应该投入更多复习时间。

> [!exam] 高优先级预测
> Causal 和 Limdep 在 sample exam 与 recent ST past exams 中反复出现：binary choice MLE, Tobit/censoring, bootstrap test, ATT/ATE identification, weak IV, RDD, propensity score/IPW。Vassilis 部分更像概念证明和 estimator comparison, 尤其 FE/RE/dynamic panel 与 stationarity/ergodicity。

# Part 1: Taisuke Otsu

## Topic 1: Bootstrap

### Key Concepts

> [!definition] Bootstrap
> 给定 iid sample $\{Z_i\}_{i=1}^n$ 和 population distribution $F$, bootstrap 用 empirical distribution function (EDF) $F_n$ 近似 $F$, 再从 $F_n$ 有放回抽样生成 $\{Z_i^*\}_{i=1}^n$ `(Bootstrap, pp.10-13)`。

> [!intuition] 经济学直觉
> Bootstrap 的想法是让样本自己扮演总体。若样本已经把总体中的 heterogeneity 抓得足够好，那么从样本中重复抽样就能模拟“重新抽一次数据”时估计量会怎么波动。

> [!formula] Bootstrap variance and SE
> 对 bootstrap estimates $\{\hat\theta_b^*\}_{b=1}^B$:
> $$
> \hat V_{\text{boot}}(\hat\theta)
> = \frac{1}{B-1}\sum_{b=1}^B
> (\hat\theta_b^*-\bar{\hat\theta}^*)^2,\qquad
> se_{\text{boot}}=\sqrt{\hat V_{\text{boot}}}.
> $$
> `(Bootstrap, p.7)`

> [!intuition] 经济学直觉
> 标准误衡量的是 estimator 对 sampling variation 的敏感度。Bootstrap 把“抽样误差”改写成“重抽样误差”, 所以不必完整推导 estimator 的解析方差。

> [!formula] Percentile and percentile-t CI
> Percentile CI:
> $$
> C_{pc}=[q^*_{\alpha/2},q^*_{1-\alpha/2}].
> $$
> Percentile-t uses
> $$
> T^*=\frac{\hat\theta^*-\hat\theta}{s(\hat\theta^*)}
> $$
> and is higher-order accurate under regular conditions `(Bootstrap, pp.8, 26-28)`。

> [!intuition] 经济学直觉
> Percentile CI 直接使用 $\hat\theta^*$ 的分布；percentile-t 先把估计误差标准化，试图消除 scale 和 skewness 的影响。后者通常更稳，但依赖每个 bootstrap sample 都能算出可靠的 standard error。

> [!definition] Bootstrap convergence
> $W_n^* \stackrel{p^*}{\to} W$ 是 conditional-on-sample 的 probability convergence；$W_n^* \stackrel{d^*}{\to} W$ 是 bootstrap distribution convergence `(Bootstrap, pp.16, 19)`。

> [!intuition] 经济学直觉
> Bootstrap 的“概率”是在给定原样本后，由重抽样机制产生的概率。它问的不是真实世界再抽一次会怎样，而是样本内的 empirical world 再抽一次会怎样。

> [!formula] Bootstrap WLLN and CLT
> If $\{Z_i\}$ is iid and $E|Z_i|^2<\infty$:
> $$
> \bar Z^*-\bar Z\stackrel{p^*}{\to}0.
> $$
> If $E|Z_i|^4<\infty$:
> $$
> \sqrt n(\bar Z^*-\bar Z)\stackrel{d^*}{\to}N(0,\sigma^2).
> $$
> `(Bootstrap, pp.17-20)`

> [!intuition] 经济学直觉
> 有限方差保证样本均值不会被少数极端值支配；四阶矩给 conditional CLT 留出足够稳定性。直觉上，bootstrap 成功需要样本分布在尾部也足够像总体分布。

### OLS and GMM Bootstrap

> [!formula] Pairs bootstrap for OLS
> Projection model:
> $$
> Y=X'\beta+e,\qquad E[Xe]=0,\qquad
> \hat\beta=(\sum X_iX_i')^{-1}\sum X_iY_i.
> $$
> Bootstrap resamples $(Y_i,X_i)$ pairs `(Bootstrap, pp.35-36)`。

> [!intuition] 经济学直觉
> Resampling pairs preserves the empirical relationship between $Y$ and $X$。Residual bootstrap 需要更强的 conditional error assumption, pairs bootstrap 更 agnostic。

> [!formula] Recentered bootstrap for overidentified GMM
> For $E[g(Z,\theta_0)]=0$, overidentified GMM should use recentered moments:
> $$
> g(Z_i^*,\theta)-\bar g(\hat\theta)
> $$
> inside the bootstrap GMM objective `(Bootstrap, pp.37-40)`。

> [!intuition] 经济学直觉
> In finite sample, $\bar g(\hat\theta)$ is generally not exactly zero when the model is overidentified。Recentering forces the bootstrap world to satisfy the sample analogue of the null moment condition, so the simulated sampling error is centered around the right restriction.

### Problem Patterns

> [!example] PS and exam patterns
> - Bootstrap test 的常见错误：testing $H_0:\theta=0$ 时，不能用 $T^*=\hat\theta^*/s(\hat\theta^*)$ 直接取 critical value；要用 centered statistic $\hat\theta^*-\hat\theta$ `(PS1 Q1; Tai_PS1_sol)`。
> - Boundary / nonregular example: $X_i\sim U[0,\theta]$, $\hat\theta=\max_i X_i$ has nonstandard limit and naive bootstrap has mass at $T_n^*=0$, so bootstrap can fail `(PS1 Q3; Week2ps1TO; Exam 2025 Q1c)`。
> - CI construction for nonlinear parameter $\theta=\beta_1\beta_2$: delta method, percentile bootstrap, percentile-t bootstrap `(PS1 Q2)`。
> - Bootstrap test after Tobit MLE appears directly in the sample exam `(Sample Exam 2026 Q1b; Sample Ans pp.4-5)`。

> [!technique] 解题技巧
> 写 bootstrap 题时按四步：original statistic -> bootstrap resampling scheme -> centered/standardized bootstrap statistic -> quantile or p-value decision rule。若题目是 nonregular estimator, 先检查 limiting distribution 是否由 smooth CLT/delta method 产生。

> [!warning] 易错点
> Bootstrap 不是万能替代 asymptotic theory。极值估计、boundary parameter、weak identification、non-smooth objective 都可能让 EDF 无法复制真实 sampling distribution。

## Topic 2: Causal Inference

### Potential Outcomes and ATE

> [!definition] Potential outcomes
> $W\in\{0,1\}$, $Y_0$ is outcome without treatment, $Y_1$ is outcome with treatment, observed outcome is
> $$
> Y=WY_1+(1-W)Y_0.
> $$
> `(Causal, pp.4-5)`

> [!intuition] 经济学直觉
> 因果推断的根本问题是 missing counterfactual: 同一个人不能同时被处理和不被处理。所有识别策略本质上都在寻找一个可信的替代 counterfactual。

> [!definition] Average treatment effect (ATE)
> $$
> \theta_{ATE}=E[Y_1-Y_0].
> $$
> `(Causal, p.5)`

> [!intuition] 经济学直觉
> ATE 是总体平均政策效应，适合问“如果把政策扩展到整个 population, 平均会怎样”。它比 ATT/LATE 更全局，但识别要求也通常更强。

### Randomization, CI, IPW, and Matching

> [!definition] Randomization
> A sufficient condition is $(Y_0,Y_1)\perp W$, or equivalently $E[Y_w|W]=E[Y_w]$ for $w=0,1$ `(Causal, pp.6-7)`。

> [!intuition] 经济学直觉
> 随机化切断了 treatment choice 和潜在收益之间的 selection link。处理组和对照组的均值差因此可以解释为 treatment effect, 而不是 self-selection。

> [!definition] Conditional independence and overlap
> Conditional independence:
> $$
> E[Y_1|X,W]=E[Y_1|X],\qquad E[Y_0|X,W]=E[Y_0|X].
> $$
> Overlap:
> $$
> 0<P(W=1|X=x)<1.
> $$
> `(Causal, pp.8-10)`

> [!intuition] 经济学直觉
> $X$ 的作用是把 treated 和 untreated 变成“可比的人”。Overlap 要求每类 $X$ 都同时有人接受和不接受 treatment, 否则 counterfactual 没有数据支撑。
> 

对于每一个个体，它的观察值有且只有 $Y$ , 而 $Y_{1}$ , $Y_{2}$ 只是我们的理论构造，我们根据 what we observe ( $W$ ) and give tags to whether it should be $Y_{1}$ or $Y_{2}$ .

如何理解 $X=x$ ? 就是把协变量固定在某一个具体的取值上。

> [!formula] Regression / imputation identification
> Let $m_w(x)=E[Y|X=x,W=w]$. Under CI and overlap:
> $$
> \theta_{ATE}=E[m_1(X)-m_0(X)].
> $$
> `(Causal, pp.9-11)`

> [!intuition] 经济学直觉
> 先在每个 covariate cell 内比较 treated and untreated, 再对 population 的 $X$ 分布取平均。这样避免把不同背景的人直接混在一起比较。

> [!formula] Inverse propensity score weighting (IPW)
> With $p(X)=P(W=1|X)$:
> $$
> \theta_{ATE}
> =E\left[\frac{WY}{p(X)}-\frac{(1-W)Y}{1-p(X)}\right]
> =E\left[\frac{\{W-p(X)\}Y}{p(X)\{1-p(X)\}}\right].
> $$
> `(Causal, pp.12-13)`

`2018` 考了一个证明过程，需要 double check 一下

- To estimate $\theta_{ATE}$ we need to estimate $p$ , the way is to implement binary regression from $w$ on $x$ (probit, logit, nonparametric, etc.) to get a $\hat{p}_{i}$ , then $\theta_{ATE}$ is estimated by:


$$
\frac{1}{n} \sum_{i=1}^n \left[\frac{\{W_{i}-\hat{p}_{i}\}Y_{i}}{\hat{p}_{i}\{1-\hat{p}_{i}\}}\right]
$$


> [!intuition] 经济学直觉
> IPW 把罕见但重要的 observations 放大权重。例如某类人很少被 treatment, 那些被 treatment 的人就代表了很多 counterfactual-relevant individuals。

> [!definition] Propensity score theorem
> If $(Y_0,Y_1)\perp W|X$ and overlap holds, then conditioning on $p(X)$ is sufficient for identification `(Causal, pp.14-17)`。

If dimension of $X$ is too large, nonparametric estimation of $m_{w}(x)$ would be difficult. See [[curse of dimensionality]].

> [!intuition] 经济学直觉
> Propensity score 把高维 comparability problem 压缩成一个 treatment probability。它不是魔法，只是把“谁容易被处理”的信息汇总成一维 index。

> [!definition] Matching
> For each treated unit, impute missing $Y_0$ using similar untreated units based on $X$ or $p(X)$ `(Causal, p.18)`。

> [!intuition] 经济学直觉
> Matching 的识别来自 local comparability: 如果两个个体在 treatment selection variables 上很像，那么其中一个人的 untreated outcome 可以作为另一个人的 counterfactual proxy。

### IV and LATE

> [!definition] IV for ATE under homogeneous treatment deviation
> If $Y=Y_0+W(Y_1-Y_0)$ and $Y_1-E[Y_1]=Y_0-E[Y_0]$, then
> $$
> Y=\mu_0+\theta_{ATE}W+U_0.
> $$
> With instruments $Z$ satisfying $E[U_0|X,Z]=E[U_0|X]$ and relevance, IV/GMM identifies $\theta_{ATE}$ `(Causal, pp.19-21)`。

> [!intuition] 经济学直觉
> 这里 IV 识别 ATE 依赖很强的 homogeneous gain assumption。否则 IV 更自然识别的是那些 treatment status 被 instrument 改变的人。

> [!definition] LATE assumptions
> Let $W_0$ and $W_1$ be treatment status if $Z=0$ and $Z=1$.
> - Independence: $Z\perp(Y_0,Y_1,W_0,W_1)$。
> - Monotonicity: $W_1\ge W_0$, no defiers。
> - First stage: $P(W=1|Z=1)\ne P(W=1|Z=0)$。
> `(Causal, pp.22-32)`

> [!intuition] 经济学直觉
> Instrument 不需要改变所有人，只需要改变一部分人的 treatment choice。Monotonicity 保证 instrument 对 treatment 的影响方向一致，这样 numerator 和 denominator 才能解释为 compliers 的平均收益。

> [!formula] Wald / LATE estimator
> $$
> \theta_{LATE}
> =\frac{E[Y|Z=1]-E[Y|Z=0]}
> {E[W|Z=1]-E[W|Z=0]}.
> $$
> This coincides with the IV regression estimator in $Y=\mu+\theta W+V$ with instruments $(1,Z)'$ `(Causal, pp.30-33; PS4 Q1)`。

> [!intuition] 经济学直觉
> Numerator 是 instrument 改变 outcome 的 reduced-form effect；denominator 是 instrument 改变 treatment 的 first-stage effect。二者相除就是“每多诱导一个人接受 treatment, outcome 平均变多少”。

### DID and RDD

> [!formula] Difference-in-differences (DID)
> $$
> \hat\theta_{DID}
> =(\bar Y_{T1}-\bar Y_{T0})-(\bar Y_{C1}-\bar Y_{C0}).
> $$
> It is unbiased if untreated trends are common: $\delta_{T1}=\delta_{C1}$ `(Causal, pp.35-39)`。

> [!intuition] 经济学直觉
> DID 用 control group 的变化来估计 treatment group 如果没有政策时本来会经历的 trend。核心不是 treated and control 水平相同，而是 counterfactual trend 相同。

> [!formula] Regression DID and two-way FE
> $$
> Y_{it}=\beta_0+\beta_1State_i+\beta_2Time_t+\theta D_{it}+\epsilon_{it}
> $$
> or
> $$
> Y_{it}=\theta D_{it}+u_i+\nu_t+\epsilon_{it}.
> $$
> `(Causal, pp.40-47)`

> [!intuition] 经济学直觉
> Individual fixed effects remove time-invariant group differences; time fixed effects remove common shocks。Identification 剩下的是 treatment timing 的 differential change。

> [!formula] Sharp RDD
> With $D=I\{X\ge c\}$ and continuity of $E[Y_1|X=x]$, $E[Y_0|X=x]$ at $c$:
> $$
> \theta(c)=\lim_{x\downarrow c}E[Y|X=x]-\lim_{x\uparrow c}E[Y|X=x].
> $$
> `(Causal, pp.48-52)`

> [!intuition] 经济学直觉
> Threshold 附近的人非常相似，但 treatment assignment 跳变。RDD 把 cutoff 附近的 discontinuity 当作 quasi-experiment。

> [!formula] Fuzzy RDD
> If treatment probability jumps at $c$:
> $$
> \theta(c)=
> \frac{\lim_{x\downarrow c}E[Y|X=x]-\lim_{x\uparrow c}E[Y|X=x]}
> {\lim_{x\downarrow c}P[D=1|X=x]-\lim_{x\uparrow c}P[D=1|X=x]}.
> $$
> `(Causal, pp.53-55)`

> [!intuition] 经济学直觉
> Fuzzy RDD 是 local IV。Cutoff 不是强制 treatment, 而是改变 treatment probability, 所以 outcome jump 要除以 first-stage jump。

### Weak IV

> [!definition] Weak IV
> In $Y_i=X_i\beta+e_i$, $X_i=Z_i\gamma+u_i$, weak IV considers $\gamma=c/\sqrt n$ or a weak Jacobian in GMM `(Causal, pp.56-67)`。

> [!intuition] 经济学直觉
> 当 instrument 只带来极少 variation in $X$, IV estimator 就在用非常薄的 signal 除以噪声。即使样本很大，first stage 也可能不够强，导致 estimator 有 random limit。

> [!formula] Weak-IV robust S-statistic
> $$
> S(b)=n\bar g(b)'\hat\Omega(b)^{-1}\bar g(b),\qquad
> \hat\Omega(b)=\frac1n\sum_i g(W_i,b)g(W_i,b)'.
> $$
> Test $H_0:\beta=c$ by comparing $S(c)$ to $\chi^2_{\dim g}$ `(Causal, pp.68-73)`。

> [!intuition] 经济学直觉
> S-statistic tests whether a candidate value makes the moments close to zero。It avoids relying on $\hat\beta$ being asymptotically normal, which is exactly what fails under weak identification。

### Problem Patterns

> [!example] High-yield Causal questions
> - ATT identification under CI and overlap: $\theta=E[m_1(X)-m_0(X)|W=1]$ and nonparametric kernel estimation `(Sample Exam 2026 Q2a; Sample Ans pp.6-7)`。
> - LATE equals IV/Wald estimator `(PS4 Q1; Tai_PS4_sol_Q1-3)`。
> - Bias of difference-in-means for ATE and ATT, especially selection into job training `(PS4 Q2)`。
> - DID table/regression equivalence, Act 10 wage example `(PS4 Q4; Seminars/WT PS4 TO)`。
> - DID with IV and interval treatment RDD `(PS5 Q1-Q2)`。
> - Weak IV random limit and robust confidence set `(PS5 Q3; Sample Exam 2026 Q2b; Exam 2022 Q1d; Exam 2021 Q1c)`。
> - Sharp RDD grant-writing assistance at poverty cutoff `(Sample Exam 2026 Q2c; Sample Ans p.8)`。
> - IPW / double robustness style algebra for $E[Y_1]$ `(Exam 2024 Q3b)`。

> [!technique] 解题模板
> Causal 题先写 potential outcomes, 再写 identification assumptions, 再写 estimand formula, 最后写 estimator。不要先写 regression, 因为回归只是估计实现，识别来自 assumptions。

> [!warning] 易错点
> LATE 不是 ATE；DID 需要 parallel trends 不是 equal levels；RDD 识别的是 cutoff-local effect；IPW 的 denominator 接近 0 会造成 high variance；weak IV 下普通 Wald CI 不可信。

## Topic 3: Limited Dependent Variables

### Maximum Likelihood

> [!definition] Likelihood and MLE
> For iid $Z_i$ with density or pmf $f(Z_i,\theta)$:
> $$
> Q_n(\theta)=\frac1n\sum_{i=1}^n\log f(Z_i,\theta),\qquad
> \hat\theta=\arg\max_\theta Q_n(\theta).
> $$
> `(Limdep, pp.4-6)`

> [!intuition] 经济学直觉
> MLE chooses the parameter under which the observed data look most plausible。It gains efficiency by using a full distributional model, but pays for that gain with stronger assumptions。

> [!formula] MLE asymptotic normality
> Under correct specification and regularity:
> $$
> \sqrt n(\hat\theta-\theta_0)\stackrel d\to N(0,J^{-1}),\qquad
> J=E[s(Z,\theta_0)s(Z,\theta_0)'].
> $$
> If information matrix equality holds, $J=-H=-E[\partial^2\log f(Z,\theta_0)/\partial\theta\partial\theta']$ `(Limdep, pp.7-10)`。

> [!intuition] 经济学直觉
> Likelihood curvature measures information。A sharply peaked likelihood means the data strongly discriminate among parameters, so estimator variance is small。

> [!formula] Wald, LR, and Score tests
> For $H_0:r(\theta_0)=0$:
> $$
> W=nr(\hat\theta)'[R(\hat\theta)'J(\hat\theta)^{-1}R(\hat\theta)]^{-1}r(\hat\theta),
> $$
> $$
> LR=2n\{Q_n(\hat\theta)-Q_n(\tilde\theta)\},
> $$
> $$
> S=nS(\tilde\theta)'J(\tilde\theta)^{-1}S(\tilde\theta),
> $$
> and all converge to $\chi^2_{\dim r}$ under $H_0$ `(Limdep, pp.11-18)`。

> [!intuition] 经济学直觉
> Wald asks whether the unrestricted estimate violates the restriction; LR asks how much likelihood is lost by imposing it; Score asks whether the restricted estimate still wants to move away from the null。

> [!definition] Cramer-Rao bound
> Under correct specification, regularity, and unbiasedness, the asymptotic variance lower bound is $J^{-1}$, and MLE attains it `(Limdep, pp.19-22)`。

> [!intuition] 经济学直觉
> If the distributional model is true, no unbiased regular estimator can systematically extract more information from the sample than MLE。The trade-off is fragility under misspecification。

### Binary Dependent Variable

> [!definition] Binary index model
> For $Y\in\{0,1\}$:
> $$
> P(Y=1|X=x)=G(x'\beta),
> $$
> often derived from latent variable $Y^*=X'\beta+e$, $Y=I\{Y^*>0\}$, $e\sim G$ `(Limdep, pp.23-31)`。

> [!intuition] 经济学直觉
> Binary outcome has conditional mean equal to a probability, so linear probability can leave $[0,1]$。The CDF transform keeps predicted choice probabilities economically meaningful。

> [!warning] Scale identification
> If $e=\sigma\varepsilon$, only $\beta/\sigma$ is identified。Therefore probit normalizes variance to 1, and logit also has implicit scale normalization `(Limdep, p.29)`。

> [!intuition] 经济学直觉
> Binary data only reveal whether latent utility crosses a threshold, not the cardinal scale of utility。Multiplying both signal and noise by the same constant leaves choices unchanged。

> [!formula] Binary log-likelihood and marginal effect
> $$
> Q_n(\beta)=\frac1n\sum_i
> \{Y_i\log G(X_i'\beta)+(1-Y_i)\log[1-G(X_i'\beta)]\}.
> $$
> Marginal effect:
> $$
> \frac{\partial P(Y=1|X=x)}{\partial x_k}=g(x'\beta)\beta_k.
> $$
> `(Limdep, pp.30-32)`

> [!intuition] 经济学直觉
> $\beta_k$ shifts the latent index, but the probability effect also depends on where the individual is on the CDF。The same coefficient has a larger probability effect near the middle than in the tails。

> [!definition] Endogenous regressor in probit
> If $Y_1^*=X'\beta_1+Y_2\beta_2+e_1$, $Y_2=X'\gamma_1+Z'\gamma_2+e_2$, and $\operatorname{cov}(e_1,e_2)\ne0$, naive probit is inconsistent。Use a control-function decomposition of $e_1$ through $e_2$ `(Limdep, pp.35-38)`。

> [!intuition] 经济学直觉
> Endogenous $Y_2$ carries unobserved determinants of the binary choice。The first-stage residual is a proxy for that hidden component, so including it repairs the conditional independence needed by probit。

### Multinomial Models

> [!definition] Ordered probit/logit
> For ordered $Y$, latent $U^*=X'\beta+\epsilon$ and thresholds $\alpha_j$:
> $$
> P(Y=j|X)=G(\alpha_j-X'\beta)-G(\alpha_{j-1}-X'\beta).
> $$
> `(Limdep, pp.40-45)`

> [!intuition] 经济学直觉
> Ordered models treat categories as intervals of an underlying continuous preference or severity。Thresholds translate latent intensity into observed labels。

> [!definition] Multinomial logit and IIA
> For unordered choices:
> $$
> P(Y_i=j|W_i,X_i)
> =\frac{\exp(W_i'\beta_j+X_{ij}'\gamma)}
> {\sum_{\ell=1}^J\exp(W_i'\beta_\ell+X_{i\ell}'\gamma)}.
> $$
> Multinomial logit implies IIA because probability ratios do not depend on other alternatives `(Limdep, pp.46-50)`。

> [!intuition] 经济学直觉
> IIA means adding or changing a third option cannot affect the relative odds of two existing options。That is often unrealistic when choices are close substitutes, such as train versus bus versus car。

> [!definition] Mixed logit and multinomial probit
> Mixed logit integrates over individual-specific random taste $\eta_i$; multinomial probit replaces iid extreme value errors with multivariate normal errors and usually needs numerical or simulated integration `(Limdep, pp.51-58)`。

> [!intuition] 经济学直觉
> Both methods loosen IIA by allowing richer substitution patterns。The cost is computation, because likelihood now contains high-dimensional integrals。

### Censored, Truncated, and Selection Models

> [!definition] Tobit / censored model
> Latent $Y^*=X'\beta+e$, $e|X\sim N(0,\sigma^2)$, observed
> $$
> Y=\max\{0,Y^*\}.
> $$
> Conditional density:
> $$
> f(y|x)=
> \begin{cases}
> \Phi(-x'\beta/\sigma), & y=0,\\
> \sigma^{-1}\phi((y-x'\beta)/\sigma), & y>0.
> \end{cases}
> $$
> `(Limdep, pp.60-63)`

> [!intuition] 经济学直觉
> Zero observations are not ordinary zeros; they are latent negative outcomes hidden at the censoring point。OLS confuses censoring with true linear outcomes and becomes biased。

> [!formula] Tobit conditional mean
> $$
> E[Y|X=x]=x'\beta\Phi(x'\beta/\sigma)+\sigma\phi(x'\beta/\sigma).
> $$
> `(Limdep, p.62)`

> [!intuition] 经济学直觉
> The expected observed outcome combines two margins: probability of being uncensored and expected latent outcome conditional on crossing the censoring point。

> [!definition] Censored LAD
> Under $Y=\max\{0,Y^*\}$, $Y^*=X'\beta+e$, $\operatorname{Med}(e|X)=0$:
> $$
> \hat\beta=\arg\min_\beta\sum_i|Y_i-\max\{0,X_i'\beta\}|.
> $$
> `(Limdep, pp.64-67)`

> [!intuition] 经济学直觉
> Censored LAD weakens Tobit's normality assumption by using median restrictions。It trades efficiency for robustness against misspecified tails and heteroskedasticity。

> [!definition] Truncated model
> In truncation, $(Y,X)$ is observed only if $Y^*>0$。For normal latent errors:
> $$
> f(y|x,Y^*>0)=
> \frac{\sigma^{-1}\phi((y-x'\beta)/\sigma)}{\Phi(x'\beta/\sigma)},\qquad y>0.
> $$
> `(Limdep, pp.68-71)`

> [!intuition] 经济学直觉
> Censoring keeps the individual but masks the outcome; truncation removes the individual entirely。Thus truncation changes the sample composition, not just the recorded value。

> [!definition] Sample selection model
> $Y^*=X'\beta+e$, $S^*=Z'\gamma+u$, observe $Y=Y^*$ only if $S=1\{S^*>0\}$。If $E[e|u]=\theta u$, then
> $$
> E[Y|W,S=1]=X'\beta+\theta\frac{\phi(Z'\gamma)}{\Phi(Z'\gamma)}.
> $$
> `(Limdep, pp.72-82)`

> [!intuition] 经济学直觉
> Selection bias arises because observed outcomes come from people whose unobservables pushed them into the sample。The inverse Mills ratio summarizes how selected the observation is, conditional on $Z$。

### Further Topics

> [!definition] BLP, entry games, and bounds
> Further topics cover BLP demand GMM, 2 by 2 entry games with multiple equilibria, and nonparametric bound analysis for missing wages `(Limdep, pp.83-99)`。

> [!intuition] 经济学直觉
> These are examples of limited observability and structural restrictions。When point identification is too demanding, economists either impose stronger behavioral structure or report bounds under weaker assumptions。

### Problem Patterns

> [!example] High-yield Limdep questions
> - Binary probit MLE, marginal effect, delta method CI, NLS asymptotics, misspecified logit pseudo-true value `(Sample Exam 2026 Q1a; Sample Ans pp.2-4)`。
> - Minimum wage as Tobit censoring with bootstrap test `(Sample Exam 2026 Q1b; Sample Ans pp.4-5)`。
> - Information matrix equality, Pareto MLE, and Fisher information `(PS2 Q1-Q3; Tai_PS2_sol)`。
> - Heteroskedastic probit, censored likelihood, Poisson MLE, logit/probit comparisons `(PS3 Q1-Q3; Tai_PS3_sol)`。
> - Ordered response and endogenous ordered/probit setup `(Exam 2021 Q3; Exam 2019 Q3)`。
> - Censored/truncated likelihood and CLAD robustness `(Exam 2020 Q3; Exam 2023 Q3)`。
> - MLE tests and treatment IPW in older ST paper `(Exam 2018 Q3)`。

> [!technique] 解题模板
> Limited dependent variable 题必须先写 observation rule。之后分 discrete mass, continuous density, missing/truncated component, 最后把 log likelihood 按 observation type 加总。

> [!warning] 易错点
> Multinomial logit does imply IIA, not avoid IIA。Tobit 的 $E[Y|X]$ 不是 $X'\beta$。Truncation 的 likelihood 需要 conditional density denominator。Probit/logit coefficients are not marginal effects。

## Topic 4: Machine Learning

### Model Selection and Bias-Variance

> [!definition] Bias-variance trade-off
> More complex models reduce approximation bias but increase estimation variance; shrinkage and selection deliberately add bias to reduce variance `(Machine, pp.5-8)`。

> [!intuition] 经济学直觉
> With many covariates, chasing every sample correlation overfits idiosyncratic noise。A simpler or penalized model may forecast better because it ignores weak signals that are not stable across samples。

> [!definition] AIC, BIC, and cross-validation
> AIC approximates Kullback-Leibler loss; BIC penalizes model size more strongly; leave-one-out or K-fold CV estimates out-of-sample prediction error `(Machine, pp.9-14; PS6 Q3)`。

> [!intuition] 经济学直觉
> Model selection criteria impose a price on complexity。The price reflects the opportunity cost of using degrees of freedom to fit noise instead of signal。

> [!warning] Post-selection inference
> Naive confidence intervals after selecting variables can undercover, especially when omitted variables are moderately relevant and correlated with included regressors `(Machine, pp.15-16; PS6 Q2)`。

### Ridge and Lasso

> [!formula] Ridge regression
> $$
> \hat\beta_R=(X'X+\lambda I_p)^{-1}X'Y.
> $$
> It solves a constrained least squares problem and remains defined when $p>n$ or $X'X$ is nearly singular `(Machine, pp.17-23)`。

> [!intuition] 经济学直觉
> Ridge shrinks coefficients toward zero to reduce variance from multicollinearity。It keeps all variables, so it is mainly stabilization rather than model selection。

> [!formula] Lasso
> $$
> \hat\beta_L=\arg\min_\beta \|Y-X\beta\|_2^2+\lambda\|\beta\|_1.
> $$
> If $X'X=I_p$, it has soft-thresholding:
> $$
> \hat\beta_{L,j}=\operatorname{sgn}(\hat\beta_{OLS,j})
> (|\hat\beta_{OLS,j}|-\lambda/2)_+.
> $$
> `(Machine, pp.24-30)`

> [!intuition] 经济学直觉
> The $L_1$ penalty has corners, so small coefficients are pushed exactly to zero。This makes Lasso both an estimator and a variable selector。

### Econometric ML Applications

> [!definition] Lasso IV
> With many instruments $Z$, use Lasso in first-stage regressions $X_j=Z'\gamma_j+U_j$ to obtain fitted $\hat X_L$, then run IV with selected/predicted first-stage variation `(Machine, pp.31-34)`。

> [!intuition] 经济学直觉
> Many IVs can create overfitting in the first stage。Lasso tries to retain only instruments with meaningful predictive power, improving the signal-to-noise trade-off。

> [!definition] Partialling-out Lasso
> For $Y=D\theta+X'\beta+e$, run Lasso of $D$ on $X$ and $Y$ on $X$, get residuals $\hat V_i$ and $\hat U_i$, then estimate $\theta$ from residualized variation `(Machine, pp.35-40)`。

> [!intuition] 经济学直觉
> The target parameter is identified by variation in $D$ not explained by high-dimensional controls。Residualizing both sides removes nuisance variation while preserving the low-dimensional treatment signal。

### Problem Patterns

> [!example] ML questions
> - Weighted MSE comparison and ridge MSE condition `(PS6 Q1; WT_PS6TO_speaking)`。
> - Post-selection estimator failure under local alternatives and partialling-out robustness `(PS6 Q2; Tai_PS6_sol)`。
> - High-dimensional regression methods: ridge vs Lasso comparison `(Sample Exam 2026 Q2d; Sample Ans p.8)`。
> - Empirical model selection using adjusted $R^2$, BIC, AIC, CV, and Lasso `(PS6 Q3)`。

# Part 2: Vassilis Hajivassiliou

## Topic 0: Unified Regression Framework

### A1-A5, DGP, MAFE, MAFE+

> [!definition] Axiomatic approach
> A1 no perfect multicollinearity; A2 true model linking $(y,X,\epsilon)$; A3 exogeneity or unrelatedness; A4 variance-covariance of errors; A5 conditional distribution of errors `(Topic0, pp.6-7)`。

> [!intuition] 经济学直觉
> Vassilis 的核心不是背 estimator list, 而是判断某个 estimator 在哪些 assumptions 下可定义、可识别、consistent, efficient。不同 estimator 是不同 assumption bundles 的产物。

> [!definition] DGP, MAFE, MAFE+
> DGP is the true data-generating process; MAFE is the minimal assumptions for feasibility of an estimation method; MAFE+ adds assumptions needed to derive the Sampling Error Vector (SEV) `(Topic0, p.7)`。

> [!intuition] 经济学直觉
> A method can be computable under a weak MAFE but have desirable properties only if the true DGP satisfies stronger conditions。This is the difference between “can run it” and “can trust it”。

### Sampling Error Vector

> [!formula] Common SEV structure
> For analytic linear methods:
> $$
> SEV(\hat\beta)=\hat\beta-\beta^{true}
> =
> \left(\sum_{s=1}^S B_s\right)^{-1}\sum_{s=1}^S a_s.
> $$
> For asymptotic normality:
> $$
> \sqrt S\,SEV(\hat\beta)=
> \left(\frac1S\sum_s B_s\right)^{-1}
> \frac1{\sqrt S}\sum_s a_s.
> $$
> `(Topic0, pp.42-46)`

> [!intuition] 经济学直觉
> Consistency comes from the sample average of $a_s$ going to zero while the information matrix stays invertible。Asymptotic normality comes from the normalized sum of $a_s$ obeying a CLT。

> [!formula] IV estimator logic
> With instrument matrix $W$:
> $$
> \hat\beta_{IVE}=(W'X)^{-1}W'y.
> $$
> Relevance requires $plim(W'X/S)$ finite and nonsingular; validity requires $plim(W'\epsilon/S)=0$ `(Topic0, pp.51-54)`。

> [!intuition] 经济学直觉
> Instruments replace bad endogenous variation in $X$ with variation correlated with $X$ but unrelated to the structural error。Validity removes bias; relevance prevents division by near-zero signal。

### Problem Patterns

> [!example] Topic 0 questions
> - Non-normal ML: Laplace MLE equals LAD; logistic MLE is smooth but misspecified if DGP differs `(Vassilis PS2 Q3; WT_PS2VH_speaking)`。
> - Cauchy errors: OLS may be computable but moment conditions can fail; LAD/MLE discussion is about robustness to undefined moments `(Vassilis PS4 Q1)`。
> - Older exam questions on generic stochastic order or boundary asymptotics are mostly background, not core current topic `(EC484LT 2018-2024; EC484_2025 Q3)`。

## Topic 1: Panel Data

### Setup and Error Components

> [!definition] Panel data
> Observations are double-indexed $s=it$:
> $$
> y_{it}=x_{it}'\beta+\epsilon_{it},\qquad i=1,\ldots,N,\quad t=1,\ldots,T_i.
> $$
> Current focus is large $N$, small $T$ `(Panel, pp.1-5)`。

> [!intuition] 经济学直觉
> Panel data lets us compare an individual to themselves over time, helping control persistent unobserved heterogeneity that cross-sections cannot remove。

> [!definition] Error-components model
> $$
> \epsilon_{it}=\alpha_i+\nu_{it},
> $$
> where $\alpha_i$ is unobserved persistent heterogeneity and $\nu_{it}$ is idiosyncratic noise `(Panel, pp.13-14)`。

> [!intuition] 经济学直觉
> $\alpha_i$ captures stable individual traits, like ability or taste, that affect all periods。If regressors correlate with $\alpha_i$, pooled OLS and RE become biased。

### FE and RE

> [!definition] FE and RE are estimation approaches, not necessarily different DGPs
> Common DGP:
> $$
> y_{it}=x_{it}'\beta+z_i'\gamma+\alpha_i+\nu_{it}.
> $$
> FE treats $\alpha_i$ as part of the conditional mean; RE treats $\alpha_i+\nu_{it}$ as composite error with structure `(Panel, pp.15-21)`。

> [!intuition] 经济学直觉
> FE buys robustness by allowing $\alpha_i$ to correlate with regressors, but loses time-invariant coefficients。RE keeps more efficiency and estimates $z_i$, but needs stronger exogeneity of $\alpha_i$。

> [!formula] First differencing and within FE
> First differencing:
> $$
> \Delta y_{it}=\Delta x_{it}'\beta+\Delta\nu_{it}.
> $$
> Within transformation:
> $$
> y_{it}-\bar y_i=(x_{it}-\bar x_i)'\beta+(\nu_{it}-\bar\nu_i).
> $$
> Both eliminate $\alpha_i$ and $z_i$ `(Panel, pp.16-18)`。

> [!intuition] 经济学直觉
> FE identifies $\beta$ only from within-person changes。Anything that never changes within person cannot be separated from the individual fixed effect。

> [!formula] Random effects GLS
> RE-GLS uses quasi-demeaning:
> $$
> y_{it}^*=y_{it}-\lambda_i\bar y_i,\qquad
> x_{it}^*=x_{it}-\lambda_i\bar x_i,\qquad
> z_i^*=(1-\lambda_i)z_i,
> $$
> $$
> \lambda_i=1-\sqrt{\frac{\sigma_\nu^2}{\sigma_\nu^2+T_i\sigma_\alpha^2}}.
> $$
> `(Panel, pp.19-20)`

> [!intuition] 经济学直觉
> RE partially demeans: if individual heterogeneity is large, it behaves more like FE; if heterogeneity is small, it behaves more like pooled OLS。

### Extensions

> [!definition] Modified RE and Hausman-Taylor
> Modified RE models $E(\alpha_i|X,Z)$ using individual means $\bar x_i$ and $z_i$; Hausman-Taylor uses good time-varying variables as instruments for bad time-invariant variables `(Panel, pp.22-23)`。

> [!intuition] 经济学直觉
> These methods try to recover the efficiency and time-invariant coefficient benefits of RE while allowing some correlation between persistent heterogeneity and regressors。

> [!definition] Dynamic panel problem
> In
> $$
> y_{it}=\delta y_{i,t-1}+x_{it}'\beta+z_i'\gamma+\alpha_i+\nu_{it},
> $$
> lagged $y_{i,t-1}$ is correlated with $\alpha_i$ and transformed errors, so pooled OLS, RE, FD, and within FE are generally inconsistent `(Panel, pp.24-26)`。

> [!intuition] 经济学直觉
> Lagged outcome carries the past unobserved individual component。Transformations may remove $\alpha_i$, but they create correlation between transformed lagged $y$ and transformed errors。

> [!definition] Arellano-Bond and Bhargava-Sargan
> Arellano-Bond uses first differences and lagged levels/differences as IVs; Bhargava-Sargan writes a system of equations and estimates by 2SLS, 3SLS, or FIML `(Panel, pp.26-30)`。

> [!intuition] 经济学直觉
> AB exploits internal instruments from the panel history。B-S treats the dynamic panel as a system, using cross-equation restrictions and covariance structure more explicitly。

> [!warning] Nonlinear panel LDV
> FE/FD/within transformations usually fail in nonadditive LDV models; random effects probit/logit integrates over $\alpha_i$, often requiring simulation `(Panel, pp.31-40; Vas_PS3_sol)`。

### Problem Patterns

> [!example] Panel questions
> - Variable intercept model and within estimator via Frisch-Waugh-Lovell `(Vassilis PS1 Q1; Vas_PS1_sol)`。
> - Unbalanced random effects GLS and feasible $\lambda_i$ `(Vassilis PS1 Q2)`。
> - Sampling Error Vectors for FE-E1, FE-E2, RE-E1, RE-E2 in dynamic panel `(Vassilis PS1 Q3; WT_PS1VH_speaking)`。
> - Dynamic panel under iid, MA(1), AR(1) idiosyncratic errors and instrument validity `(Vassilis PS2 Q1; Vas_PS2_sol)`。
> - Dynamic panel binary probit likelihood with integration over $\alpha_i$ `(Vassilis PS3 Q1; Vas_PS3_sol)`。

## Topic 2: Time Series

### Serial Correlation and Robust SE

> [!definition] Time-series issue
> Serial correlation means errors or variables across time are correlated; dynamic models can create endogeneity because lagged dependent variables correlate with current errors under serially correlated disturbances `(Time Series, pp.1-6)`。

> [!intuition] 经济学直觉
> Time-series observations are not fresh independent draws。Today inherits shocks from yesterday, so naive cross-sectional standard errors understate uncertainty。

> [!warning] Newey-West vs White
> White robust SE addresses heteroskedasticity without serial correlation; Newey-West accounts for autocovariances across lags `(Time Series, pp.5-6)`。

### Stationarity and Ergodicity

> [!definition] Weak and strict stationarity
> Weak stationarity requires constant mean, finite constant variance, and autocovariance depending only on lag; strict stationarity requires the full joint distribution to be invariant to time shifts `(Time Series, pp.7-12)`。

> [!intuition] 经济学直觉
> Stationarity says the economic environment generating the series is stable enough that past data remain informative about future behavior。

> [!definition] Ergodicity
> Ergodicity allows time averages from one long series to converge to ensemble averages `(Time Series, pp.8-13)`。

> [!intuition] 经济学直觉
> If a process is nonergodic, observing one long history may still not reveal the population mean because the path is stuck with its own persistent initial condition or latent draw。

### ARMA and VAR

> [!formula] MA(q)
> $$
> \epsilon_t=\nu_t+\lambda_1\nu_{t-1}+\cdots+\lambda_q\nu_{t-q}.
> $$
> Finite MA(q) is covariance-stationary and $q$-dependent `(Time Series, p.14)`。

> [!intuition] 经济学直觉
> MA(q) shocks die after $q$ periods, so dependence is short-lived。This is why lagged variables beyond $q$ can become valid instruments in some dynamic models。

> [!formula] AR(1)
> $$
> \epsilon_t=\gamma\epsilon_{t-1}+\nu_t.
> $$
> Stationary if $|\gamma|<1$, with
> $$
> Var(\epsilon_t)=\frac{\sigma_\nu^2}{1-\gamma^2},\qquad
> Cov(\epsilon_t,\epsilon_{t-s})=\gamma^s\frac{\sigma_\nu^2}{1-\gamma^2}.
> $$
> `(Time Series, pp.14-15)`

> [!intuition] 经济学直觉
> A shock in AR(1) propagates geometrically。If $|\gamma|<1$, its influence fades; if not, shocks do not die out and the process cannot settle into stable variance。

> [!definition] VAR and Granger causality
> In a VAR(2), $Y$ does not Granger-cause $X$ if lags of $Y$ in the $X$ equation are insignificant, e.g. $\beta_{xy}=\gamma_{xy}=0$。Granger causal priority also rules out indirect paths through other equations `(Time Series, pp.17-18)`。

> [!intuition] 经济学直觉
> Granger causality is predictive precedence, not structural causality。If past $Y$ adds no forecasting power for $X$ after past variables are controlled, then $Y$ is not temporally informative for $X$。

### Nonstationarity

> [!definition] Weak nonstationarity taxonomy
> Type 0: finite but time-varying variance/covariance, e.g. ARCH/GARCH; Type I: strict stationarity with infinite or undefined moments, e.g. Cauchy; Type II: unit roots/integrated processes `(Time Series, pp.19; TS.md 2.3)`。

> [!intuition] 经济学直觉
> Nonstationarity can come from changing volatility, fat tails without moments, or persistent levels that never mean-revert。Each breaks standard asymptotics in a different way。

> [!warning] Not examinable details
> Distributed lags and detailed ARCH/GARCH/unit-root derivations are marked as not examinable or skim in the slides; definitions and implications still matter `(Time Series, pp.16, 19)`。

### Problem Patterns

> [!example] Time Series questions
> - AR(1) with serially correlated disturbance: OLS inconsistency and possible consistent estimator `(Vassilis PS3 Q2; WT_PS3_VH)`。
> - AR(2) stationarity via roots outside unit circle `(Vassilis PS3 Q3; WT_PS3_VH)`。
> - Strict stationarity, weak stationarity, ergodicity, CLT with Gaussian, Cauchy, logistic initial draw examples `(Vassilis PS3 Q4)`。
> - MA(3) autocovariance function and stationarity `(Vassilis PS3 Q5)`。
> - VAR and Granger non-causality/priority definitions `(Vassilis PS4 Q2)`。
> - Recent past papers with linear processes and stochastic order are useful background, but many are old theory-heavy questions `(EC484_2025 Q2b-c; EC484LT 2019-2023)`。

# Past Exam Analysis

## Relevant ST Papers

> [!exam] Strongly relevant
> - `Sample-EC484-2026-ST`: Q1 binary probit, Tobit, bootstrap test; Q2 ATT, weak IV, RDD, ridge/Lasso; Q3 Vassilis placeholder `(Sample Exam 2026, pp.2-4)`。
> - `EC484_2024`: Q3b treatment/IPW/double robustness; Q3a Pareto MLE; Q2 GMM; Q1a bootstrap `(Exam 2024, pp.2-4)`。
> - `EC484_2023`: Q1c bootstrap test; Q3 binary marginal effects and censored/truncated likelihood `(Exam 2023, pp.2-4)`。
> - `EC484_2022`: Q1 IV, measurement error, weak-IV robust confidence set; Q3 binary MLE, bootstrap CI, misspecification, semiparametric binary model `(Exam 2022, pp.2-4)`。
> - `EC484_2021`: Q1 trimmed IV/GMM and weak IV; Q3 ordered probit and endogenous ordered model `(Exam 2021, pp.2-4)`。
> - `EC484_2020`: Q1 binary endogenous regressor with IV/probit first stage; Q3 top-coded censored regression, CLAD, endogenous censored model `(Exam 2020, pp.2-5)`。
> - `EC484_2019`: Q2 bootstrap MSE for GMM; Q3 endogenous probit/control function `(Exam 2019, pp.3-4)`。
> - `EC484_2018`: Q3 MLE tests, IPW treatment identity, ordered/latent response estimation `(Exam 2018, p.5)`。

> [!exam] Marginally relevant
> `EC484_2025` is Spring/ST but mostly old-style asymptotics. Q1c overlaps with uniform maximum/nonregular Bootstrap example; Q2b-c overlaps with time-series linear processes; Q3 boundary constrained LS is less central to current listed topics `(Exam 2025, pp.2-5)`。

> [!warning] Mostly excluded
> `EC484LT_2018-2024` are January/LT/WT-style papers dominated by old asymptotic probability and stochastic order. Use only as optional background for stationarity/linear process LLN/CLT, not as main second-term exam guide.

## Cross-Year Patterns

- Limdep repeats as binary/ordered choice, marginal effects, MLE asymptotics, censoring/truncation, endogenous regressor correction。
- Causal repeats as treatment identification, IPW/propensity score, weak IV, RDD, and occasionally DID/LATE via problem sets rather than recent exams。
- Bootstrap appears as CI/test construction, bias/MSE, and failure under nonregular estimators。
- Vassilis past-paper overlap is noisier; current problem sets are more informative than old January papers for panel/time-series format。

# Quick Reference

## Causal

> [!formula] Core formulas
> $Y=WY_1+(1-W)Y_0$。
> $\theta_{ATE}=E[Y_1-Y_0]$。
> Under CI and overlap: $\theta_{ATE}=E[m_1(X)-m_0(X)]$。
> IPW: $\theta_{ATE}=E[WY/p(X)-(1-W)Y/(1-p(X))]$。
> LATE: $\theta_{LATE}=\frac{E[Y|Z=1]-E[Y|Z=0]}{E[W|Z=1]-E[W|Z=0]}$。
> DID: $(\bar Y_{T1}-\bar Y_{T0})-(\bar Y_{C1}-\bar Y_{C0})$。
> Sharp RDD: $\lim_{x\downarrow c}E[Y|X=x]-\lim_{x\uparrow c}E[Y|X=x]$。

## Limdep

> [!formula] Core formulas
> MLE: $\hat\theta=\arg\max_\theta n^{-1}\sum_i\log f(Z_i,\theta)$。
> Binary choice: $P(Y=1|X=x)=G(x'\beta)$。
> Binary marginal effect: $g(x'\beta)\beta_k$。
> Ordered probability: $G(\alpha_j-X'\beta)-G(\alpha_{j-1}-X'\beta)$。
> Tobit: $Y=\max\{0,X'\beta+e\}$。
> Tobit density: mass $\Phi(-x'\beta/\sigma)$ at 0, normal density for $y>0$。
> Truncation density: $\sigma^{-1}\phi((y-x'\beta)/\sigma)/\Phi(x'\beta/\sigma)$。
> Heckman correction: $X'\beta+\theta\phi(Z'\gamma)/\Phi(Z'\gamma)$。

## Bootstrap and ML

> [!formula] Core formulas
> Bootstrap variance: $(B-1)^{-1}\sum_b(\hat\theta_b^*-\bar{\hat\theta}^*)^2$。
> Bootstrap test statistic: $T^*=(\hat\theta^*-\hat\theta)/s(\hat\theta^*)$。
> Ridge: $\hat\beta_R=(X'X+\lambda I)^{-1}X'Y$。
> Lasso: $\arg\min_\beta \|Y-X\beta\|_2^2+\lambda\|\beta\|_1$。
> Partialling-out: estimate $\theta$ using residualized $Y$ and $D$ after Lasso on $X$。

## Vassilis

> [!formula] Core formulas
> SEV linear analytic:
> $$
> SEV(\hat\beta)=\left(\sum_s B_s\right)^{-1}\sum_s a_s.
> $$
> FE within:
> $$
> y_{it}-\bar y_i=(x_{it}-\bar x_i)'\beta+(\nu_{it}-\bar\nu_i).
> $$
> RE quasi-demeaning:
> $$
> y_{it}^*=y_{it}-\lambda_i\bar y_i,\quad
> \lambda_i=1-\sqrt{\frac{\sigma_\nu^2}{\sigma_\nu^2+T_i\sigma_\alpha^2}}.
> $$
> AR(1) stationarity: $|\gamma|<1$, $Var(\epsilon_t)=\sigma_\nu^2/(1-\gamma^2)$。
> Granger non-causality in VAR(2): lags of $Y$ in $X$ equation have zero coefficients。

# Final Revision Priorities

1. Limdep: binary choice MLE, marginal effects, Tobit/censoring/truncation, sample selection, endogenous regressor correction。
2. Causal: CI/overlap/IPW, LATE, DID, RDD, weak IV S-statistic。
3. Vassilis panel: FE vs RE, dynamic panel inconsistency, Arellano-Bond, nonlinear panel likelihood。
4. Time series: stationarity, ergodicity, AR/MA, VAR/Granger definitions。
5. Bootstrap/ML: centered bootstrap tests, nonregular failure, ridge/Lasso/partialling-out。

