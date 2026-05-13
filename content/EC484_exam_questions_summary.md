---
title: "EC484 Current-Scope Exam Questions Summary"
date: 2026-05-09
course: "EC484 Econometric Analysis"
tags:
  - review
  - ec484
  - exam-questions
  - current-scope
---

做完之后第一时间去 [[EC484 Final Review WT 白皮书]] 总结考点。

# EC484 本学期范围内考试题总结

## Scan Summary

- 已排除：`AT/` 文件夹下所有内容。
- 当前范围依据：只用 `Slides/` 下本学期课件判断是否在范围内。
- 当前课件：`Slides/ec484-topic0.pdf`、`Slides/ec484-paneldata.pdf`、`Slides/ec484-timeseries.pdf`、`Slides/Bootstrap.pdf`、`Slides/Causal.pdf`、`Slides/Limdep.pdf`、`Slides/Machine.pdf`。
- 考试材料：`Past Exams/EC484_2018.pdf` 到 `Past Exams/EC484_2025.pdf`、`Past Exams/EC484LT_2018.pdf` 到 `Past Exams/EC484LT_2024.pdf`、`Sample-EC484-2026-ST.pdf`。
- 未重复计入：`Past Exams/PastExam_Combination.pdf` 是历年卷合集，内容与单年 PDF 重复。
- 说明：本文只总结考试题型和考点，不解题、不生成完整课件笔记。

## Current Scope Basis

| Current topic | Lecture locator |
|---|---|
| Topic 0: regression estimators, assumptions A1-A5, GMM, MLE, asymptotics, IV | `ec484-topic0 课件页 3-58` |
| Panel data: FE/RE, dynamic panel, panel LDV/GMM | `ec484-paneldata 课件页 1-40` |
| Time series: stationarity, ergodicity, ARMA, robust variance, definitions-only special topics | `ec484-timeseries 课件页 1-19` |
| Bootstrap: algorithm, bootstrap variance/CI/test/bias/MSE, OLS/GMM bootstrap | `Bootstrap 课件页 3-40` |
| Causal inference: ATE/ATT, propensity score/IPW, matching, IV/LATE, DID, RDD, weak IV | `Causal 课件页 3-73` |
| Limited dependent variables: MLE tests, binary/ordered/multinomial choice, Tobit/censored/truncated, sample selection | `Limdep 课件页 3-82` |
| Machine learning: AIC/CV, ridge, lasso, Lasso IV, partialling-out Lasso | `Machine 课件页 4-40` |

## High-Yield Question Families

### 1. Limited Dependent Variables and MLE

| Exam pattern                                                                          | Past exam evidence                                                            | Current lecture location                                      | What the question usually asks                                                                                                                                                          |
| ------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------- | ------------------------------------------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| General MLE definition, computation, asymptotic distribution, and Wald/LR/Score tests | `EC484_2018 Q3a PDF页 5`; `EC484_2024 Q3a PDF页 4`; `Sample 2026 Q1a(i) PDF页 2` | `Limdep 课件页 3-22`; `ec484-topic0 课件页 39-50`                   | Define the likelihood/log-likelihood, state MLE, use score/Hessian/sandwich information, or choose two test procedures.                                                                 |
| Binary probit/logit and marginal effects                                              | `EC484_2022 Q3a-c PDF页 4`; `EC484_2023 Q3a PDF页 4`; `Sample 2026 Q1a PDF页 2`  | `Limdep 课件页 23-38`; `Limdep 课件页 32`; `ec484-topic0 课件页 47-50` | Define probit/logit MLE, derive asymptotic distribution, use delta method for marginal effects, build asymptotic or bootstrap CI, discuss misspecified probit/logit pseudo-true limits. |
| Ordered probit / ordered latent-variable models                                       | `EC484_2018 Q3c PDF页 5`; `EC484_2021 Q3a-c PDF页 4`                            | `Limdep 课件页 39-45`                                            | Translate latent thresholds into category probabilities, write log-likelihood, then state MLE asymptotics or CI for expected outcome.                                                   |
| Endogenous regressor in binary/ordered probit                                         | `EC484_2019 Q3 PDF页 4`; `EC484_2021 Q3d PDF页 4`                               | `Limdep 课件页 35-38`                                            | Recognize endogeneity through correlated latent errors, use control-function/residual inclusion logic, estimate first stage, then include generated residual in probit/ordered probit.  |
| Censored, truncated, Tobit, censored LAD, top-coding                                  | `EC484_2020 Q3 PDF页 5`; `EC484_2023 Q3b PDF页 4`; `Sample 2026 Q1b PDF页 2`     | `Limdep 课件页 59-71`; `Limdep 课件页 61-67`; `Bootstrap 课件页 29-30` | Write likelihood for observed mass/continuous parts, handle heteroskedastic or endogenous variants, contrast MLE/NLS/censored LAD, and implement bootstrap tests.                       |

### 2. Causal Inference, Treatment Effects, RDD, and Weak IV

| Exam pattern | Past exam evidence | Current lecture location | What the question usually asks |
|---|---|---|---|
| Potential outcomes, CI/overlap, IPW, ATT/ATE identification | `EC484_2018 Q3b PDF页 5`; `EC484_2024 Q3b PDF页 4`; `Sample 2026 Q2a PDF页 3` | `Causal 课件页 3-18` | Prove an IPW or regression-identification formula, then suggest parametric or nonparametric estimation. |
| Doubly robust / augmented IPW style expression | `EC484_2024 Q3b(iv) PDF页 4` | `Causal 课件页 8-17` | The building blocks are current: conditional mean plus propensity score. Treat this as in-scope only if the exam explicitly asks for the displayed double-robust identity. |
| IV for treatment effects, LATE, and weak-IV asymptotics | `EC484_2020 Q1 PDF页 2`; `EC484_2021 Q1c PDF页 2`; `EC484_2022 Q1d PDF页 2`; `Sample 2026 Q2b PDF页 3` | `Causal 课件页 19-33`; `Causal 课件页 56-73`; `ec484-topic0 课件页 51-54` | Derive IV distribution, explain local-to-zero first stage, construct weak-IV robust confidence sets, or interpret random limits under weak identification. |
| Regression discontinuity design | `Sample 2026 Q2c PDF页 3` | `Causal 课件页 48-55` | Recognize threshold assignment, identify a causal effect at the cutoff, distinguish sharp vs fuzzy RDD, and describe local estimation. |
| DID / two-way fixed-effect causal interpretation | No direct current-scope past-exam question found in the scanned papers | `Causal 课件页 34-47`; `ec484-paneldata 课件页 15-23` | Still current because it is in the slides, but the scanned exam papers did not show a clean standalone DID question. |

### 3. Bootstrap

| Exam pattern                                        | Past exam evidence                                                                                                                                                 | Current lecture location                                          | What the question usually asks                                                                                                                        |
| --------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- |
| Bootstrap bias, variance, MSE, CI, and p-value/test | `EC484_2018 Q1b(iii) PDF页 3`; `EC484_2019 Q2d PDF页 3`; `EC484_2022 Q3b PDF页 4`; `EC484_2023 Q1c PDF页 2`; `EC484_2024 Q1a(iv) PDF页 2`; `Sample 2026 Q1b(ii) PDF页 2` | `Bootstrap 课件页 4-8`; `Bootstrap 课件页 29-33`; `Bootstrap 课件页 34-40` | State the resampling algorithm, define bootstrap statistic, use empirical quantiles or bootstrap p-values, and explain whether recentering is needed. |
| Bootstrap for GMM / overidentification tests        | `EC484_2019 Q2d PDF页 3`; `EC484_2023 Q1c PDF页 2`                                                                                                                   | `Bootstrap 课件页 34-40`; `ec484-topic0 课件页 23-25`                   | Recenter moments if the sample moment is not zero at the estimator; use bootstrap distribution for test statistic or MSE.                             |

### 4. IV, GMM, Moment Estimation, and Misspecification

| Exam pattern | Past exam evidence | Current lecture location | What the question usually asks |
|---|---|---|---|
| IV estimator, asymptotic distribution, variance estimator | `EC484_2019 Q1a-d PDF页 2`; `EC484_2020 Q1a-b,d PDF页 2`; `EC484_2021 Q1a PDF页 2`; `EC484_2022 Q1a PDF页 2`; `Sample 2026 Q2b PDF页 3` | `ec484-topic0 课件页 51-54`; `Causal 课件页 56-73` | Define IV as moment estimator, state LLN/CLT assumptions, derive asymptotic variance, and estimate it consistently. |
| Two-step GMM, optimal weight, J-test / overidentification | `EC484_2018 Q2d PDF页 4`; `EC484_2019 Q2a-e PDF页 3`; `EC484_2021 Q1b PDF页 2`; `EC484_2022 Q2a-b PDF页 3`; `EC484_2023 Q2a-e PDF页 3`; `EC484_2024 Q2a-b PDF页 3` | `ec484-topic0 课件页 23-25`; `Bootstrap 课件页 37-40`; `Causal 课件页 58-71` | Set up sample moments, choose weight matrix, derive asymptotic distribution, state optimality, and interpret J-test rejection. |
| Omitted variables, measurement error, and misspecified moments | `EC484_2022 Q1b-c PDF页 2`; `EC484_2024 Q2d-e PDF页 3`; `ec484-topic0 课件页 55-58` | `ec484-topic0 课件页 51-58` | Compute probability limits under the true DGP instead of the assumed model; decide whether consistency survives. |
| Local power / one-sided tests in GMM-type settings | `EC484_2022 Q2b PDF页 3` | `Limdep 课件页 11-18`; `ec484-topic0 课件页 42-50` | State test statistic and local alternative, then characterize rejection probability under local drift. |

### 5. Machine Learning and High-Dimensional Regression

| Exam pattern | Past exam evidence | Current lecture location | What the question usually asks |
|---|---|---|---|
| Ridge vs Lasso when $k > n$ | `Sample 2026 Q2d PDF页 3` | `Machine 课件页 17-30` | Suggest two estimators for high-dimensional regression, compare shrinkage, variable selection, bias-variance trade-off, and tuning by cross-validation. |
| Lasso IV / partialling-out Lasso | No direct past-exam question found, but current slides cover it | `Machine 课件页 31-40` | Current but not yet strongly represented in the scanned exam papers. Expect conceptual comparison or algorithmic outline rather than long derivation. |
| AIC/CV/post-selection inference | No direct past-exam question found | `Machine 课件页 4-16` | Current but not strongly represented in the scanned exam papers. |

### 6. Vassilis Part: Asymptotics, Time Series, and Specialized Regression

| Exam pattern | Past exam evidence | Current lecture location | What the question usually asks |
|---|---|---|---|
| $O_p$, $o_p$, convergence in distribution/probability/mean, sample variance order | `EC484LT_2018 Q2 PDF页 3`; `EC484LT_2022 Q1 PDF页 2`; `EC484_2025 Q1 PDF页 2` | `ec484-topic0 课件页 42-50` | Show stochastic boundedness, improve order when the limit is zero, or derive stochastic order for sample moments. |
| Uniform maximum / boundary normalization | `EC484LT_2019 Q2b PDF页 2`; `EC484LT_2022 Q1c PDF页 2`; `EC484_2025 Q1c PDF页 2` | `ec484-topic0 课件页 42-50` | Find $g(n)$ so a nonstandard estimator such as $\max_i x_i$ has a nondegenerate limiting distribution. |
| Linear process averages, long-memory order, AR(1)/MA processes | `EC484LT_2021 Q1 PDF页 2`; `EC484LT_2021 Q2c PDF页 3`; `EC484LT_2022 Q2b-c PDF页 3`; `EC484LT_2023 Q2b-c PDF页 3`; `EC484LT_2024 Q2 PDF页 3`; `EC484_2025 Q2b-c PDF页 3` | `ec484-timeseries 课件页 7-15`; `ec484-timeseries 课件页 14-19` | Prove LLN/CLT-type results for dependent data, identify stationarity/ergodicity conditions, handle autocovariance decay, or show convergence of quadratic averages. |
| Trending regressions, heteroskedastic constants, efficient weighted estimators | `EC484LT_2018 Q3 PDF页 4`; `EC484LT_2020 Q3 PDF页 3`; `EC484LT_2021 Q2-Q3 PDF页 3-4`; `EC484LT_2024 Q3 PDF页 4`; `EC484_2025 Q2a PDF页 3` | `ec484-topic0 课件页 29-38`; `ec484-topic0 课件页 42-50`; `ec484-timeseries 课件页 1-6` | Work out rate/normalization of LS or weighted LS when regressors/error variances trend with $i$ or $t$. |
| Constrained LS at boundary | `EC484LT_2022 Q3 PDF页 5`; `EC484LT_2023 Q3 PDF页 5`; `EC484_2025 Q3 PDF页 5` | `ec484-topic0 课件页 42-50` | Obtain nonstandard limiting distribution when the true parameter is on the boundary of $[0,1]$. |
| Panel data FE/RE/dynamic panel | No clean standalone past-exam question found in the scanned papers | `ec484-paneldata 课件页 15-30` | Current because it is in the slides, but not strongly represented in these exam PDFs. |

## Year-by-Year Current-Scope Index

| Source                     | Current-scope questions to care about                                                                                                                                                                                                                                                                                                       | Lower-priority / filtered notes                                                                                                                                                                                                  |
| -------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `Sample-EC484-2026-ST.pdf` | Q1a probit MLE, marginal effect CI, NLS, misspecified logit; Q1b censored wage MLE and bootstrap test; Q2a ATT identification; Q2b weak IV; Q2c RDD; Q2d ridge/lasso. `Sample 2026 PDF页 2-3`; `Limdep 课件页 23-71`; `Bootstrap 课件页 29-40`; `Causal 课件页 3-73`; `Machine 课件页 17-30`                                                             | Q2e and Q3 are placeholders for Vassilis part, no actual question text.                                                                                                                                                          |
| `EC484_2018.pdf`           | Q1b(iii) bootstrap bias for LAD; Q2d optimal IV-GMM for probit-style conditional CDF; Q3a MLE/tests; Q3b IPW identity; Q3c ordered probit. `EC484_2018 PDF页 2-5`; `Bootstrap 课件页 31-40`; `Limdep 课件页 3-45`; `Causal 课件页 8-18`; `ec484-topic0 课件页 23-25`                                                                                     | Q1a and parts of Q1b on projection/LAD asymptotics are less directly represented in the current slides; keep only if instructor emphasized LAD/linear projection.                                                                |
| `EC484_2019.pdf`           | Q1 IV asymptotics and variance; Q2 one-step vs two-step GMM and bootstrap MSE; Q3 endogenous probit/control function. `EC484_2019 PDF页 2-4`; `ec484-topic0 课件页 23-25`; `ec484-topic0 课件页 51-54`; `Limdep 课件页 35-38`; `Bootstrap 课件页 33-40`                                                                                                  | Q1e semiparametric partialling-out is adjacent to current ML/semiparametric ideas but not a central current slide topic.                                                                                                         |
| `EC484_2020.pdf`           | Q1 endogenous binary regressor with IV, efficient estimator, generated-regressor/probit first stage; Q3 censored/top-coded model, heteroskedastic censored MLE, censored LAD, endogenous censored model. `EC484_2020 PDF页 2,5`; `ec484-topic0 课件页 51-54`; `Causal 课件页 56-73`; `Limdep 课件页 59-71`; `Limdep 课件页 35-38`                        | Q2 kernel density/CDF/bandwidth is not a standalone current lecture topic; ignore unless nonparametrics is explicitly restored.                                                                                                  |
| `EC484_2021.pdf`           | Q1 trimmed IV/GMM and weak-IV local asymptotics; Q3 ordered probit, CI for conditional mean, semiparametric ordered model, endogenous ordered probit. `EC484_2021 PDF页 2,4`; `ec484-topic0 课件页 23-25`; `Causal 课件页 56-73`; `Limdep 课件页 39-45`; `Limdep 课件页 35-38`                                                                           | Q2 joint kernel density/conditional density is lower priority under current slides.                                                                                                                                              |
| `EC484_2022.pdf`           | Q1 IV with omitted variable, IV measurement error, weak-IV robust confidence set; Q2 GMM variance/local power; Q3 binary probit/logit misspecification, bootstrap CI, semiparametric binary model. `EC484_2022 PDF页 2-4`; `ec484-topic0 课件页 23-25`; `ec484-topic0 课件页 51-58`; `Causal 课件页 56-73`; `Limdep 课件页 23-38`; `Bootstrap 课件页 26-40` | Q2d nonparametric conditional variance is lower priority unless generic kernel methods are restored.                                                                                                                             |
| `EC484_2023.pdf`           | Q1c bootstrap test for linear restrictions; Q2 GMM/MoM/J-test/MLE using uniform distribution; Q3 binary marginal effect and censored/truncated likelihood. `EC484_2023 PDF页 2-4`; `Bootstrap 课件页 29-40`; `ec484-topic0 课件页 23-25`; `Limdep 课件页 23-71`                                                                                       | Q1a IV quantile regression and Q1b generic kernel regression are not central current-slide topics.                                                                                                                               |
| `EC484_2024.pdf`           | Q1a(iv) bootstrap test; Q1c one-step Newton/extremum consistency; Q2 GMM, J-test, misspecification, measurement error; Q3a Pareto MLE consistency; Q3b treatment-effect IPW/augmented IPW identity. `EC484_2024 PDF页 2-4`; `Bootstrap 课件页 29-40`; `ec484-topic0 课件页 23-25`; `ec484-topic0 课件页 42-58`; `Limdep 课件页 3-18`; `Causal 课件页 8-18`  | Q1b generic nonparametric derivative is only indirectly related to current RDD/local estimation.                                                                                                                                 |
| `EC484_2025.pdf`           | Q1 stochastic order/convergence and uniform maximum normalization; Q2 trend regression variance estimator plus linear-process averages; Q3 constrained LS at boundary. `EC484_2025 PDF页 2-5`; `ec484-topic0 课件页 42-50`; `ec484-timeseries 课件页 7-15`                                                                                         | Treat as Vassilis/asymptotic-current, but some details may require lecture notes beyond slide text.                                                                                                                              |
| `EC484LT_2018.pdf`         | Q2 $O_p/o_p$ algebra and sample variance consistency/order; Q3 trending heteroskedastic regression and efficient estimator. `EC484LT_2018 PDF页 3-4`; `ec484-topic0 课件页 29-38`; `ec484-topic0 课件页 42-50`                                                                                                                                     | Q1 exponential tails and special convergence results are lower priority unless covered in class.                                                                                                                                 |
| `EC484LT_2019.pdf`         | Q2 uniform maximum normalization is relevant to the repeated nonstandard-asymptotics pattern. `EC484LT_2019 PDF页 2`; `ec484-topic0 课件页 42-50`                                                                                                                                                                                               | Q1 uniform integrability and Q3 spectral-density/mixing CLT are not explicit in current slides; ignore unless instructor says otherwise.                                                                                         |
| `EC484LT_2020.pdf`         | Q3 trending regression with $\gamma$, convergence in second mean, complete convergence, and asymptotic distribution. `EC484LT_2020 PDF页 3`; `ec484-topic0 课件页 42-50`; `ec484-timeseries 课件页 1-6`                                                                                                                                            | Q1 uniform integrability and Q2 extremes are lower priority under current slide scope.                                                                                                                                           |
| `EC484LT_2021.pdf`         | Q1 regression with MA/AR errors and GLS; Q2 trend regression variance estimator and AR(1) quadratic average; Q3 heteroskedastic constants and exponential regressor normalization. `EC484LT_2021 PDF页 2-4`; `ec484-topic0 课件页 29-50`; `ec484-timeseries 课件页 7-15`                                                                           | No major filtered part beyond detail level.                                                                                                                                                                                      |
| `EC484LT_2022.pdf`         | Q1 stochastic order and uniform maximum normalization; Q2 trend regression variance estimator plus linear-process average; Q3 constrained LS at boundary. `EC484LT_2022 PDF页 2-5`; `ec484-topic0 课件页 42-50`; `ec484-timeseries 课件页 7-15`                                                                                                    | No major filtered part beyond detail level.                                                                                                                                                                                      |
| `EC484LT_2023.pdf`         | Q2 trend regression variance estimator plus linear-process average; Q3 constrained LS at boundary. `EC484LT_2023 PDF页 3-5`; `ec484-topic0 课件页 42-50`; `ec484-timeseries 课件页 7-15`                                                                                                                                                           | Q1 uniform integrability is not explicit in current slides; ignore unless class notes add it.                                                                                                                                    |
| `EC484LT_2024.pdf`         | Q2 long-memory LS order with/without intercept; Q3 heteroskedastic constants and exponential regression normalization. `EC484LT_2024 PDF页 3-4`; `ec484-topic0 课件页 42-50`; `ec484-timeseries 课件页 7-15`                                                                                                                                       | Q1 uniform integrability/WLLN/linear-process sufficient condition is not explicit in current slides; likely lower priority. This PDF was image-based on pages 2-4, so these question summaries were checked from rendered pages. |

## Things To Ignore Unless Confirmed By Instructor

- Standalone kernel density / kernel CDF / bandwidth derivations from old ST papers: `EC484_2020 Q2 PDF页 3-4`; `EC484_2021 Q2 PDF页 3`; `EC484_2023 Q1b PDF页 2`; `EC484_2024 Q1b PDF页 2`. Current slides include RDD/local estimation and some semiparametric references, but not a full standalone kernel-density topic. `Causal 课件页 48-55`; `Limdep 课件页 33-34`
- Uniform integrability proof questions: `EC484LT_2019 Q1 PDF页 2`; `EC484LT_2020 Q1 PDF页 2`; `EC484LT_2023 Q1 PDF页 2`; `EC484LT_2024 Q1 PDF页 2`. Current slides discuss LLN/ergodicity/moment caveats, but the exact uniform-integrability theorem is not explicit. `ec484-topic0 课件页 26-28`; `ec484-timeseries 课件页 7-13`
- Spectral-density and mixing CLT derivations from older LT papers: `EC484LT_2019 Q3 PDF页 3`. Current time-series slides cover stationarity/ARMA concepts, but not that full derivation. `ec484-timeseries 课件页 7-15`
- IV quantile regression and standalone quantile/LAD asymptotics: `EC484_2023 Q1a PDF页 2`; parts of `EC484_2018 Q1 PDF页 2-3`. Current slides mention LAD and IV/GMM, but do not make IV quantile regression a central topic. `ec484-topic0 课件页 21-25`; `ec484-topic0 课件页 51-54`

## Quick Priority List

1. Highest priority: `Sample 2026 Q1-Q2` because it directly matches current Otsu slides. `Sample 2026 PDF页 2-3`; `Limdep 课件页 23-71`; `Causal 课件页 3-73`; `Machine 课件页 17-30`
2. Very high priority: LDV/probit/censored/ordered/endogenous binary questions across `EC484_2018`, `EC484_2019`, `EC484_2020`, `EC484_2021`, `EC484_2022`, `EC484_2023`. `Limdep 课件页 23-82`
3. Very high priority: IV/GMM/weak-IV questions across `EC484_2019` to `EC484_2024` and `Sample 2026 Q2b`. `ec484-topic0 课件页 23-25`; `ec484-topic0 课件页 51-54`; `Causal 课件页 56-73`
4. High priority: bootstrap tests, CI, bias/MSE, especially when attached to LDV/GMM. `Bootstrap 课件页 29-40`
5. High priority for Vassilis: stochastic order, trend regressions, linear processes, constrained boundary estimators. `ec484-topic0 课件页 42-50`; `ec484-timeseries 课件页 7-15`
6. Medium priority: panel-data slides because they are current, but the scanned past exams contain few clean panel-only questions. `ec484-paneldata 课件页 1-40`
