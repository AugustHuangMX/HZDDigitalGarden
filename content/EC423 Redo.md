---
title: "EC423 Redo"
date: 2026-05-12
course: "EC423 Labour Economics"
tags:
  - review
  - ec423
  - past-exam
  - full-term
---

# EC423 Redo

## 材料扫描与范围

Found in `EC423 Labour/`:

| Category | Materials used | Scope decision |
|---|---|---|
| Past Exams | `Past Exams/EC423_2020.pdf` to `Past Exams/EC423_2025.pdf` | 全部纳入 |
| AT lecture slides | `Lecture Slides/EC423_Autumn_Topic1.pdf` to `EC423_Autumn_Topic4.pdf` | 纳入主表 |
| WT lecture slides | `Lecture Slides/EC423_WT_Lec1.pdf` to `EC423_WT_Lec10.pdf`; `EC423_WT_Lec4_Update.pdf` | 纳入主表；Place-Based Policies 采用 update 版 |
| Practice and seminars | Problem sets, WT seminars, available solutions | 用于辅助识别题型，不替代课件页码 |
| Caveat | Some old crime questions | 当前 AT/WT lecture PDFs 中没有完整 Becker crime model deck；这些题仍保留，并标注未找到对应课件页 |

## 高频考点速记

| Topic | High-yield exam pattern | Core source |
|---|---|---|
| AT Topic 1: Labor Supply | static labor supply, Slutsky equation, income floor, NIT, UBI, SSP, IV/LATE | `Autumn Topic 1, p7-23`; `Autumn Topic 1, p62-87`; `Autumn Topic 1, p124-149` |
| AT Topic 2: Human Capital and Methods | Mincer, OLS bias, IV, DiD, RD, fuzzy RD, manipulation checks | `Autumn Topic 2, p9-52`; `Autumn Topic 2, p55-73`; `Autumn Topic 2, p74-101` |
| AT Topic 3: Immigration | immigration surplus, Roy/Borjas selection model, counterfactual earnings, IMR | `Autumn Topic 3, p15-28`; `Autumn Topic 3, p47-75` |
| AT Topic 4: Inequality and Technology | quantile regression, CES skill premium, relative supply/demand, robots/technology | `Autumn Topic 4, p29-45`; `Autumn Topic 4, p57-93` |
| WT Lecture 1-2 | gender gaps, racial gaps, taste-based and statistical discrimination, employer learning | `Lecture 1, p26-55`; `Lecture 2, p57-96` |
| WT Lecture 4-5 | Rosen-Roback, amenity valuation, MTO, place-based policies | `Lecture 4 Update, p21-76`; `Lecture 5, p37-67` |
| WT Lecture 6 | minimum wage theory, bite/coverage, Cengiz, Dube, distributional effects | `Lecture 6, p16-34`; `Lecture 6, p67-104`; `Lecture 6, p108-121` |
| WT Lecture 8-9 | intergenerational mobility, measurement, adoptees/siblings, displacement scarring | `Lecture 8, p15-27`; `Lecture 8, p37-58`; `Lecture 8, p78-123`; `Lecture 9, p3-44` |
| WT Lecture 10 | unemployment insurance, Baily-Chetty, liquidity vs moral hazard | `Lecture 10, p4-19`; `Lecture 10, p46-59` |

## Past Exam Redo Table

| 题目 | 题号(a,b,c,d) | 考点 | 主要解题方法 | 关联课件 | 重做 |
|---|---|---|---|---|---|
| 2020 Q1 Migration/Roy model | a | 迁移决策的线性近似 | 从 migrate iff exp(w1)-C > exp(w0) 出发，用小迁移成本近似得到 $(\mu_1-\mu_0-\pi)+(\varepsilon_1-\varepsilon_0)>0$ | `Autumn Topic 3, p56-63` |  |
| 2020 Q1 Migration/Roy model | b | migration probability | 定义 $\nu=\varepsilon_1-\varepsilon_0$，标准化成 z，用 normal CDF 写迁移概率 | `Autumn Topic 3, p60-66` |  |
| 2020 Q1 Migration/Roy model | c | migrants 的 counterfactual home earnings | 用 truncated normal/IMR 计算 $E[w_0 \mid I=1]$，强调 selection term | `Autumn Topic 3, p64-68` |  |
| 2020 Q1 Migration/Roy model | d | 模型假设评价 | 逐条评估 earnings normality, known parameters, no nonpecuniary motives, proportional migration cost, no credit/friction | `Autumn Topic 3, p47-75` |  |
| 2020 Q2 RD school grant | a | parametric RD specification | 写 $Y_i=\alpha+\beta(x_i-x_0)+\rho D_i+\eta_i$，并说明 running variable, cutoff, bandwidth, treatment definition | `Autumn Topic 2, p74-85` |  |
| 2020 Q2 RD school grant | b | fewer parametric assumptions | 用 local linear/nonparametric RD；说明 bandwidth 选择和 local nature | `Autumn Topic 2, p86-88` |  |
| 2020 Q2 RD school grant | c | other policy at same threshold | 检查其它政策或 predetermined outcomes/covariates 是否在 cutoff 同时跳跃 | `Autumn Topic 2, p91-95`; `Autumn Topic 2, p108` |  |
| 2020 Q2 RD school grant | d | headteacher changes after policy | 区分 post-treatment mediator 和 manipulation；若 assignment 用 census pre-policy headteacher status，不一定 invalid，但解释变成 reduced form | `Autumn Topic 2, p91-101` |  |
| 2020 Q2 RD school grant | e | manipulation concerns | 检查 running variable density bunching, covariate balance, sorting around cutoff | `Autumn Topic 2, p91-95`; `Autumn Topic 2, p123-124` |  |
| 2020 Q3 Crime and incentives | a | Becker crime model and legal wages | 用 opportunity cost 写 legal wage 上升降低 crime participation；解释 table wage coefficient sign | 未在当前 lecture PDFs 中找到 Becker crime 对应页 |  |
| 2020 Q3 Crime and incentives | b | conviction rate and deterrence | conviction probability raises expected cost of crime；看 coefficient 是否与 deterrence prediction 一致 | 未在当前 lecture PDFs 中找到 Becker crime 对应页 |  |
| 2020 Q3 Crime and incentives | c | conviction rate endogeneity | crime rates may affect policing/conviction, omitted enforcement shocks, reverse causality | 未在当前 lecture PDFs 中找到 Becker crime 对应页 |  |
| 2020 Q3 Crime and incentives | d | sentence length as IV | 写 relevance and exclusion；比较 OLS/IV 可解释 measurement error or endogeneity direction | 未在当前 lecture PDFs 中找到 Becker crime/IV 应用页；IV 基础见 `Autumn Topic 1, p124-149` |  |
| 2020 Q3 Crime and incentives | e | minimum wage as IV for low wage | 评估 relevance 和 exclusion；最低工资可能通过 employment margin 直接影响 crime，需用 MW theory/evidence 平衡讨论 | `Lecture 6, p21-34`; `Lecture 6, p50-104` |  |
| 2020 Q4 Becker-Tomes IGM | a | OLS 不识别 structural beta | 写 unobserved endowment correlated with parental income，OLS mixes parental investment and inherited endowment | `Lecture 8, p15-25`; `Lecture 8, p37-52` |  |
| 2020 Q4 Becker-Tomes IGM | b | identical twins | 用 twins 控制 genetic endowment；说明需要 identical endowment and comparable family treatment | `Lecture 8, p78-88` |  |
| 2020 Q4 Becker-Tomes IGM | c | adoptees | 用 adoptive parent income variation；需要 random assignment/no selective placement | `Lecture 8, p93-108` |  |
| 2020 Q4 Becker-Tomes IGM | d | adoption estimates interpretation | 分 biological parent effect 和 adoptive parent effect，解释 nature vs nurture/environment | `Lecture 8, p93-99` |  |
| 2020 Q4 Becker-Tomes IGM | e | China shock and upward mobility | 把 local trade shock 连到 parental income, school/neighborhood, job displacement scarring and local opportunity | `Lecture 8, p117-123`; `Lecture 4 Update, p7-13`; `Lecture 9, p55-59` |  |
| 2021 Q1 Divorce and income | a | simultaneous causal signs | 判断 income affects divorce and divorce affects income 的符号，并说明机制 | `Autumn Topic 1, p100-123`; `Autumn Topic 4, p42-45` |  |
| 2021 Q1 Divorce and income | b | OLS in simultaneous equations | 代入联立方程，写 OLS estimand as structural effect plus simultaneity bias | `Autumn Topic 1, p114-123` |  |
| 2021 Q1 Divorce and income | c | bias sign intuition | 用 covariance/signs 判断 OLS bias 方向，解释 reverse causality | `Autumn Topic 1, p114-123` |  |
| 2021 Q1 Divorce and income | d | first-born girl as IV | 写 first stage, exclusion, independence；用于 divorce 对 income 的 causal effect | `Autumn Topic 1, p124-133` |  |
| 2021 Q1 Divorce and income | e | heterogeneous IV model | 需要说服 monotonicity, first-stage heterogeneity, no defiers, exclusion with heterogeneous effects | `Autumn Topic 1, p134-149` |  |
| 2021 Q1 Divorce and income | f | LATE limitations | 说明 IV identifies compliers not ATE/ATT；可用 multiple instruments, external validity discussion, heterogeneity analysis | `Autumn Topic 1, p144-152` |  |
| 2021 Q2 UBI | a | UBI vs income floor and labor supply | 画 budget constraints；分 initial hours and participation；UBI income effect vs income floor kink/notch | `Autumn Topic 1, p62-72` |  |
| 2021 Q2 UBI | b | evidence for quantitative UBI effects | 引 lottery wealth effects, NIT/transfer evidence, SSP caution；强调 external validity and financing | `Autumn Topic 1, p24-45`; `Autumn Topic 1, p67-87` |  |
| 2021 Q2 UBI | c | work-conditioned transfer | 比较 unconditional UBI and eligibility threshold；讨论 extensive margin, bunching at 10 hours, inequality | `Autumn Topic 1, p65-72`; `Autumn Topic 1, p88-92` |  |
| 2021 Q3 Crime scars | a | unemployment and crime participation | 用 legal opportunity cost/scarring logic；entry unemployment worsens legal labor market payoff | 未在当前 lecture PDFs 中找到 Becker crime 对应页；scarring 相关见 `Lecture 9, p3-16` |  |
| 2021 Q3 Crime scars | b | migration self-selection | local labor shocks may induce selective migration；selection changes treated population and biases local estimates | `Autumn Topic 3, p47-59`; `Lecture 4 Update, p5-13` |  |
| 2021 Q3 Crime scars | c | dynamic crime effects | 读 event-time pattern，区分 short-run and long-run scarring；联系 labor market scarring persistence | `Lecture 9, p3-16`; `Lecture 9, p26-33` |  |
| 2021 Q3 Crime scars | d | criminal record persistence | early convictions create path dependence, lower legal opportunities, higher reoffending | 未在当前 lecture PDFs 中找到 Becker crime 对应页；employment scarring 相关见 `Lecture 9, p3-16` |  |
| 2021 Q3 Crime scars | e | racial heterogeneity and discrimination | 预期 minorities experience larger labor-market shocks；不能直接把 heterogeneity 等同 discrimination，需要额外识别 | `Lecture 2, p5-15`; `Lecture 2, p57-96`; `Lecture 9, p3-16` |  |
| 2021 Q4 Cengiz minimum wage | a | missing/excess jobs | 读 wage-bin figure，比较 below-MW missing jobs and above-MW excess jobs；对照 perfect competition | `Lecture 6, p21-34`; `Lecture 6, p84-91` |  |
| 2021 Q4 Cengiz minimum wage | b | employment-wage elasticity | 用 percent employment effect divided by percent wage effect；解释 near-zero elasticity | `Lecture 6, p21-34`; `Lecture 6, p86-91` |  |
| 2021 Q4 Cengiz minimum wage | c | industry bite | restaurants/low-wage sectors have higher bite and stronger first stage | `Lecture 6, p16-19`; `Lecture 6, p84-91` |  |
| 2021 Q4 Cengiz minimum wage | d | small shocks and adjustment margins | 讨论价格、利润、productivity、firm value、reallocation, not only employment | `Lecture 6, p79-104`; `Lecture 6, p108-120` |  |
| 2021 Q4 Cengiz minimum wage | e | MW and long-run racial gaps | 区分 current earnings gap and persistent mobility; one-generation policy may not change rank-rank mobility | `Lecture 6, p108-120`; `Lecture 8, p37-42`; `Lecture 8, p117-123`; `Lecture 2, p5-7` |  |
| 2022 Q1 MTO | a(i) | treatment 1 vs treatment 2 | Restricted voucher vs unrestricted voucher ITT; interpret offer effect and take-up | `Lecture 5, p37-43` |  |
| 2022 Q1 MTO | a(ii) | treatment 1 vs control | Offer of low-poverty voucher vs no offer; not pure effect of moving itself | `Lecture 5, p37-43` |  |
| 2022 Q1 MTO | a(iii) | controls in randomized experiment | Controls improve precision/check balance; do not rescue identification | `Lecture 5, p40-43` |  |
| 2022 Q1 MTO | b | babies born after program | 警惕 endogenous fertility/post-treatment sample；建议预定义 cohorts/outcomes | `Lecture 5, p37-50` |  |
| 2022 Q1 MTO | c | many outcomes | 讨论 multiple testing, pre-analysis plan, outcome families, FWER | `Lecture 5, p45-50`; `Autumn Topic 2, p113-118` |  |
| 2022 Q1 MTO | d | voucher offer as IV | 写 first stage, exclusion, monotonicity, LATE for movers/compliers | `Lecture 5, p37-43`; `Autumn Topic 1, p134-149` |  |
| 2022 Q1 MTO | e | demolition quasi-experiment | 需要 demolition as-good-as-random, comparable controls, no selective mobility；比较 MTO ITT | `Lecture 5, p52-67` |  |
| 2022 Q2 Degree RD | a | linear RD assumptions | 说明 cutoff 附近 distinction recipients/nonrecipients comparable；linear CEF assumption | `Autumn Topic 2, p74-85` |  |
| 2022 Q2 Degree RD | b(i) | potential outcome CEFs | 写 $E[Y_0 \mid x]$ 和 $E[Y_1 \mid x]$ 的二阶多项式近似，允许 cutoff 两边形状不同 | `Autumn Topic 2, p80-86` |  |
| 2022 Q2 Degree RD | b(ii) | flexible estimating equation | 用 centered running variable and interactions with treatment for second-order polynomial | `Autumn Topic 2, p80-86` |  |
| 2022 Q2 Degree RD | b(iii) | advantage over linear RD | flexible CEF 减少非线性误判为 discontinuity 的风险 | `Autumn Topic 2, p81-88` |  |
| 2022 Q2 Degree RD | c | nonparametric RD | local linear RD around cutoff; identifies local treatment effect at cutoff | `Autumn Topic 2, p86-88`; `Autumn Topic 2, p96-101` |  |
| 2022 Q2 Degree RD | d | RD threats | manipulation/bunching and covariate imbalance; check density and predetermined covariates | `Autumn Topic 2, p91-95`; `Autumn Topic 2, p123-124` |  |
| 2022 Q3 Ban the Box | a | discrimination against ex-offenders | statistical discrimination: criminal record is productivity/risk signal；也可提 taste-based | `Lecture 2, p57-67`; `Lecture 2, p71-96` |  |
| 2022 Q3 Ban the Box | b | DiD assumptions | BTB timing across MSAs; need parallel trends by race, no differential shocks/no anticipation | `Lecture 2, p93-96`; `Autumn Topic 2, p55-73` |  |
| 2022 Q3 Ban the Box | c | interpreting Table 4 | compare White/Black/Hispanic effects for young low-educated males | `Lecture 2, p93-96` |  |
| 2022 Q3 Ban the Box | d | older/more educated placebo-style evidence | effects concentrated in groups employers use as proxy supports statistical not pure taste discrimination | `Lecture 2, p71-96` |  |
| 2022 Q3 Ban the Box | e | BTB and reoffending | lower employment opportunity can increase offending/reoffending incentives; connect policy backfire | `Lecture 2, p93-96` |  |
| 2022 Q4 Parental displacement | a | IGE beta | Define beta as intergenerational earnings elasticity; discuss lifetime income measurement | `Lecture 8, p37-58` |  |
| 2022 Q4 Parental displacement | b | causal effect of plant closure | Need plant closure conditionally exogenous; compare displaced vs non-displaced with controls/no pre-trends | `Lecture 9, p3-8`; `Lecture 9, p30-33`; `Lecture 9, p55-59` |  |
| 2022 Q4 Parental displacement | c | child outcomes | Interpret earnings, UI claims, social assistance effects as long-run spillovers | `Lecture 9, p55-59`; `Lecture 8, p37-42` |  |
| 2022 Q4 Parental displacement | d | Becker-Tomes channels | parental income shock lowers investment, changes neighborhood/school/stress | `Lecture 8, p15-27`; `Lecture 9, p3-16` |  |
| 2022 Q4 Parental displacement | e | persistence and scarring | persistent losses through employer/match capital and unemployment spells feed into children outcomes | `Lecture 9, p3-16`; `Lecture 9, p26-44`; `Lecture 9, p55-59` |  |
| 2023 Q1 Migration/Roy model | a | migration decision approximation | Same Borjas/Roy derivation as 2020 Q1a | `Autumn Topic 3, p56-63` |  |
| 2023 Q1 Migration/Roy model | b | counterfactual and realized migrant earnings | Use IMR selection terms for $E[w_0 \mid I=1]$ and $E[w_1 \mid I=1]$ | `Autumn Topic 3, p64-68` |  |
| 2023 Q1 Migration/Roy model | c | treatment effect of migration on migrants | Compare $E[w_1-w_0 \mid I=1]$ to $\mu_1-\mu_0$; characterize selection terms and equality conditions | `Autumn Topic 3, p67-75` |  |
| 2023 Q1 Migration/Roy model | d | ideal migration experiment | Randomly assign migration opportunity/cost; discuss ethics, compliance, external validity, SUTVA/general equilibrium | `Autumn Topic 3, p47-75` |  |
| 2023 Q2 SSP | a | static labor supply prediction | Draw welfare vs SSP budget; use Slutsky and participation threshold; evaluate 0/15/30/45 hours | `Autumn Topic 1, p7-23`; `Autumn Topic 1, p75-87` |  |
| 2023 Q2 SSP | b | control group hours over time | Read table time pattern; describe baseline and trend in control group | `Autumn Topic 1, p78-87` |  |
| 2023 Q2 SSP | c | treatment group hours over time | Read treatment group trend and take-up/intensive/extensive margins | `Autumn Topic 1, p78-87` |  |
| 2023 Q2 SSP | d | program effects over time | Compare adjusted/unadjusted differences; discuss take-up, job search, eligibility, dynamic response | `Autumn Topic 1, p78-87` |  |
| 2023 Q2 SSP | e | static model vs observed evidence | Explain static model predicts incentives but not gradual take-up/time dynamics | `Autumn Topic 1, p75-87` |  |
| 2023 Q3 MW and racial inequality | a | coverage, bite, racial pay gaps | Newly covered industries have higher Black share, creating stronger treatment intensity | `Lecture 6, p16-19`; `Lecture 6, p108-121`; `Lecture 2, p5-7` |  |
| 2023 Q3 MW and racial inequality | b | DiD assumptions | Treatment newly covered industries, control already covered; need parallel trends by race | `Lecture 6, p54-58`; `Lecture 6, p86-90`; `Autumn Topic 2, p55-73` |  |
| 2023 Q3 MW and racial inequality | c | wage effects by race | Positive earnings effects; larger Black effect follows exposure/bite | `Lecture 6, p115-120`; `Lecture 6, p108-121`; `Lecture 2, p5-7` |  |
| 2023 Q3 MW and racial inequality | d | employment effects | Compare perfect competition job-loss prediction to small/zero modern employment effects | `Lecture 6, p21-34`; `Lecture 6, p84-104` |  |
| 2023 Q3 MW and racial inequality | e | historical racial gap decline | MW compressed lower tail and high-exposure Black industries; later reforms may have less racial exposure | `Lecture 6, p108-121`; `Lecture 6, p115-120`; `Lecture 2, p5-7`; `Lecture 2, p57-67` |  |
| 2023 Q4 Trade and crime | a | import competition and local labor markets | Explain tariff reductions by regional industrial exposure affect earnings/employment | `Lecture 4 Update, p9-13`; `Autumn Topic 4, p83-93` |  |
| 2023 Q4 Trade and crime | b | DiD assumptions and labor-market results | Need regional exposure as-good-as-random conditional on controls; interpret earnings/employment panels | `Autumn Topic 2, p55-73`; `Lecture 4 Update, p9-13` |  |
| 2023 Q4 Trade and crime | c | labor-market effects in Becker crime model | Lower legal earnings/employment reduce opportunity cost of crime; Becker crime model itself not in lecture deck | 未在当前 lecture PDFs 中找到 Becker crime 对应页；labor shock context `Lecture 9, p3-16` |  |
| 2023 Q4 Trade and crime | d | reduced-form crime estimates | Interpret RTC coefficient signs relative to predicted crime changes and policy exposure scale | 未在当前 lecture PDFs 中找到 Becker crime 对应页；local shocks context `Lecture 4 Update, p9-13` |  |
| 2023 Q4 Trade and crime | e | IV exclusion problem | Trade shock affects crime through public goods, revenue, inequality, migration, not only labor market outcomes | `Autumn Topic 1, p124-149`; `Lecture 4 Update, p9-18` |  |
| 2024 Q1 Slutsky and lottery | a | wage decrease via Slutsky | Use Marshallian vs Hicksian leisure demand; translate leisure response into labor supply | `Autumn Topic 1, p16-23` |  |
| 2024 Q1 Slutsky and lottery | b | unambiguous wage increase effect | State cases where substitution and income effects imply same direction, e.g. inferior leisure or dominated income effect | `Autumn Topic 1, p20-23` |  |
| 2024 Q1 Slutsky and lottery | c | Imbens lottery figure | Discuss preexisting differences, timing, magnitude, volatility, and relation to income effect | `Autumn Topic 1, p24-29` |  |
| 2024 Q1 Slutsky and lottery | d | Swedish lottery identification | Explain lottery-cell randomization, controls, randomization tests, difference from Imbens et al. | `Autumn Topic 1, p30-39` |  |
| 2024 Q1 Slutsky and lottery | e | decompose earnings into hours and wages | Distinguish labor-supply hours response from wage/job-quality response | `Autumn Topic 1, p39-45` |  |
| 2024 Q2 CES skill premium | a | derive skill premium and elasticity | Use marginal products under CES; derive $w_H/w_L$ and elasticity wrt $A_H/A_L$ | `Autumn Topic 4, p57-67` |  |
| 2024 Q2 CES skill premium | b | aggregate time-series estimation | Estimate log skill premium on log relative supply and demand trend; discuss identification and endogeneity | `Autumn Topic 4, p68-79` |  |
| 2024 Q2 CES skill premium | c | firm-panel estimation | Use firm variation in technology/skill mix; discuss sorting, simultaneity, demand shocks | `Autumn Topic 4, p75-90` |  |
| 2024 Q2 CES skill premium | d | low-skilled wage decline | Explain possible skill-biased tech with relative demand shifts; assess plausibility | `Autumn Topic 4, p65-79`; `Autumn Topic 4, p83-93` |  |
| 2024 Q3 Upward mobility | a(i) | gender/race mobility differences | Read figure through gender/racial gaps and pre-market/post-market mechanisms | `Lecture 1, p7-25`; `Lecture 2, p5-15`; `Lecture 8, p117-123` |  |
| 2024 Q3 Upward mobility | a(ii) | geography in mobility | Use Chetty-style geography and neighborhood opportunity | `Lecture 8, p117-123`; `Lecture 5, p37-50` |  |
| 2024 Q3 Upward mobility | b | school quality in Becker model | School quality changes return/cost/productivity of parental investment | `Lecture 8, p15-27`; `Lecture 8, p110-114` |  |
| 2024 Q3 Upward mobility | c(i) | border-pair model and Dube analogy | Cross-border pairs absorb local shocks while policy variation differs | `Lecture 6, p67-78`; `Lecture 8, p117-123` |  |
| 2024 Q3 Upward mobility | c(ii) | why border pairs help | Within-pair differencing removes shared geography; remaining concern state-specific shocks | `Lecture 6, p67-78`; `Lecture 8, p117-123` |  |
| 2024 Q3 Upward mobility | d | mandated teacher wages as IV | Discuss relevance, exclusion, first stage, 2SLS vs OLS | `Lecture 6, p21-34`; `Lecture 6, p67-78`; `Lecture 8, p110-114` |  |
| 2024 Q3 Upward mobility | e | employment margin critique | Mandated wage may affect teacher employment/quality/composition, threatening exclusion | `Lecture 6, p21-34`; `Lecture 6, p79-104` |  |
| 2024 Q4 Racial bias in policing | a | manipulation around threshold | Use bunching/density logic near 9/10 mph to classify lenient officers | `Autumn Topic 2, p91-95`; `Lecture 2, p57-92` |  |
| 2024 Q4 Racial bias in policing | b(i) | Price-Wolfers similarity | Compare decision-maker assignment and same/different race treatment interaction | `Lecture 2, p38-52`; `Lecture 2, p57-67` |  |
| 2024 Q4 Racial bias in policing | b(ii) | assignment assumption | Need quasi-random encounter with lenient officer conditional on controls | `Lecture 2, p38-52`; `Lecture 2, p57-67` |  |
| 2024 Q4 Racial bias in policing | b(iii) | testing assignment assumption | Covariate balance: driver characteristics should not predict officer leniency | `Lecture 2, p38-52`; `Lecture 2, p57-67` |  |
| 2024 Q4 Racial bias in policing | c | beta3 interpretation | beta3 shows whether white drivers receive more leniency discount than minority drivers | `Lecture 2, p57-92` |  |
| 2024 Q4 Racial bias in policing | d(i) | taste vs statistical discrimination | Define prejudice/taste versus Bayesian group signal under imperfect information | `Lecture 2, p57-67`; `Lecture 2, p71-86` |  |
| 2024 Q4 Racial bias in policing | d(ii) | prior tickets and statistical discrimination | If prior tickets proxy criminality, residual race gap is less consistent with statistical discrimination on that signal | `Lecture 2, p71-92` |  |
| 2025 Q1 Occupational decline | a | data for long-run worker effects | Use linked admin/panel earnings and occupation data with pre-period occupation and controls | `Lecture 9, p3-8`; `Lecture 9, p28-33` |  |
| 2025 Q1 Occupational decline | b | causal assumptions | Conditional exchangeability/parallel trends between declining and non-declining occupations | `Lecture 9, p30-33` |  |
| 2025 Q1 Occupational decline | c | testing assumptions | Pre-trends, placebo outcomes, pre-period balance, robustness to control groups | `Lecture 9, p30-33` |  |
| 2025 Q1 Occupational decline | d | decomposition | Interpret treatment effect for A, treatment effect for B, and baseline occupation differences | `Lecture 9, p28-44` |  |
| 2025 Q1 Occupational decline | e | regression interpretation | State assumptions for beta to summarize causal occupational-decline loss | `Lecture 9, p28-44` |  |
| 2025 Q2 UBI | a | UBI vs income floor | Draw budget constraints and compare participation/hours by initial-hours scenario | `Autumn Topic 1, p62-72` |  |
| 2025 Q2 UBI | b | quantitative UBI evidence | Use lottery/NIT/SSP evidence with caution about external validity and financing | `Autumn Topic 1, p24-45`; `Autumn Topic 1, p67-87` |  |
| 2025 Q2 UBI | c | work-conditioned UBI | Analyze 10-hour eligibility threshold, participation incentives, bunching, inequality | `Autumn Topic 1, p65-72`; `Autumn Topic 1, p88-92` |  |
| 2025 Q3 Rosen-Roback | a | worker problem and FOCs | Set utility over composite good, land, amenity; FOC equates MRS to rent/price | `Lecture 4 Update, p23-26`; `Lecture 4 Update, p30-32` |  |
| 2025 Q3 Rosen-Roback | b | indirect utility and worker equilibrium | Derive $V(w,r,s)$; mobile workers require equalized utility | `Lecture 4 Update, p43-45`; `Lecture 4 Update, p59-63` |  |
| 2025 Q3 Rosen-Roback | c | firm unit cost and equilibrium | Derive $c(w,r,s)$ and zero-profit/free-entry condition $c=1$ | `Lecture 4 Update, p27-29`; `Lecture 4 Update, p64-75` |  |
| 2025 Q3 Rosen-Roback | d(i) | regulation cost shock | Treat zero-emission machinery as negative productivity/cost shock; sign wages/rents through equilibrium conditions | `Lecture 4 Update, p47-58`; `Lecture 4 Update, p64-75` |  |
| 2025 Q3 Rosen-Roback | d(ii) | firm lump-sum transfer | Distinguish lump-sum transfer from marginal productivity/amenity change; discuss capitalization | `Lecture 4 Update, p47-58`; `Lecture 4 Update, p64-75` |  |
| 2025 Q3 Rosen-Roback | e | empirical amenity valuation | Estimate capitalization into wages/rents; specify data, identifying variation, welfare formula | `Lecture 4 Update, p59-75` |  |
| 2025 Q3 Rosen-Roback | f | policy recommendation | Recommend policies only if amenity/productivity gains exceed costs and target groups retain welfare | `Lecture 4 Update, p16-18`; `Lecture 4 Update, p76-77`; `Lecture 5, p9-22` |  |
| 2025 Q4 Statistical discrimination | a | statistical discrimination model | Write productivity prior by group, noisy signal, Bayesian updating | `Lecture 2, p71-86` |  |
| 2025 Q4 Statistical discrimination | b | employer learning test | Use experience interactions; group/schooling proxy weights should change as employers learn | `Lecture 2, p90-92` |  |
| 2025 Q4 Statistical discrimination | c | cautions | Omitted ability, schooling as proxy, selection, experience profile differences, what firms observe | `Lecture 2, p21-36`; `Lecture 2, p90-92` |  |
| 2025 Q4 Statistical discrimination | d | ability proxy z | Estimate Altonji-Pierret style model with ability proxy and experience interactions | `Lecture 2, p90-92` |  |
| 2025 Q4 Statistical discrimination | e | policy recommendation | Improve individual information signals/certification/auditing; warn removing information can backfire | `Lecture 2, p93-101` |  |

## 空复盘表

| 题目                                 | 我当时卡在哪里                                                                                                      | 下次重做计划 |
| ---------------------------------- | ------------------------------------------------------------------------------------------------------------ | ------ |
| 2020 Q1 Migration/Roy model        |                                                                                                              |        |
| 2020 Q2 RD school grant            |                                                                                                              |        |
| 2020 Q3 Crime and incentives       |                                                                                                              |        |
| 2020 Q4 Becker-Tomes IGM           |                                                                                                              |        |
| 2021 Q1 Divorce and income         |                                                                                                              |        |
| 2021 Q2 UBI                        |                                                                                                              |        |
| 2021 Q3 Crime scars                |                                                                                                              |        |
| 2021 Q4 Cengiz minimum wage        |                                                                                                              |        |
| 2022 Q1 MTO                        | 这道题好就好在它几乎覆盖了所有本节课教的 identification Strategy: RCT 下的 OLS, IV/2SLS -> LATE, 以及简单带过的 DiD。需要知道怎么去区分 ATE 和 LATE。 |        |
| 2022 Q2 Degree RD                  | 考察了 RDD 的相关内容，需要回顾 `Topic 2`，而且不算难，只需要回顾课件里的内容就行，不需要有天马行空的设定。                                                |        |
| 2022 Q3 Ban the Box                | 经典 Statistical Discrimination 话题，                                                                            |        |
| 2022 Q4 Parental displacement      | e 问的突破点反而是在 Lecture 9，而且提到了一个 Labour Market Scarring 这个概念完全没有想到。                                             | 重新推导一次 |
| 2023 Q1 Migration/Roy model        |                                                                                                              |        |
| 2023 Q2 SSP                        |                                                                                                              |        |
| 2023 Q3 MW and racial inequality   |                                                                                                              |        |
| 2023 Q4 Trade and crime            |                                                                                                              |        |
| 2024 Q1 Slutsky and lottery        |                                                                                                              |        |
| 2024 Q2 CES skill premium          |                                                                                                              |        |
| 2024 Q3 Upward mobility            |                                                                                                              |        |
| 2024 Q4 Racial bias in policing    |                                                                                                              |        |
| 2025 Q1 Occupational decline       |                                                                                                              |        |
| 2025 Q2 UBI                        |                                                                                                              |        |
| 2025 Q3 Rosen-Roback               |                                                                                                              |        |
| 2025 Q4 Statistical discrimination |                                                                                                              |        |


---

## 感悟


- 什么情况下 ITT = TOT？
	- 当我们强行要求有 compliance 的时候（perfect compliance）
	- ITT 和 TOT 的数量关系：TOT = ITT/Take up rate
- ATE 和 LATE 的区别？
	- 同上，如果 compliance 
- Control Variable 的原则
	- 只加 pre-treatment variable
	- post-treatment variable? -> Bad Control 
- [[Internal Validity]] 和 [[External Validity]] 取舍问题
	- RCT → 强internal validity，弱external validity（self-selected sample）
	- Quasi-experiment → internal validity依赖parallel trends，但population更接近general population
- 最新奇：Multiple [[Hypothesis test]] 带来的问题
	- 存在可能性说 you find some significance by chance
		- 解决办法：Anderson summary index或[[Bonferroni correction]]. 后者比较简单，只需要拿传统的 significance level 去除以 outcome 的个数即可。
- [[Sample Selection]] bias 
	- 当分析样本的 _存在本身_ 被treatment影响时，randomization在子样本上失效
- IV 的 Exclusion Restriction 问题
	- IV要求instrument只通过endogenous variable影响outcome
	- 不可检验（untestable），只能通过经济直觉论证
	- Excluded category的选择影响exclusion restriction的可信度（T2 vs. Control的区别）
- 如何理解 Excluded Category?
	- 即regression中 **被省略的那个baseline组**，也叫 reference group。在 sample 里，是都有的
- [[Regression Discontinuity Design]]
	- 主要需要掌握三种 RDD（Sharp）即 Linear, Flexible Polynomial, Nonpar，分别是递进的关系。需要说出，每种设定放松了哪个假设，代价是什么。
		- 这里有一个隐藏的点，就是我们在 Linear RD 中，其实隐含了 treatment effect 是 constant 的点。
	- Threats to Identification
		- Manipulation：操控/谎报 直接导致两侧 not comparable
			- Solution：McCrary density test + pre-determined covariates在cutoff处无jump
		- Confounding discontinuities: 其他treatment也在同一cutoff变化 → bundled effect
			- Solution: 检查其他 outcome 是否也一同变化 + 研究制度规则，人为扫清障碍。
	- [[Nonparametric Method]]
		- Nonparametric RD的核心tension：用更窄的窗口更准确但更 noisy，用更宽的窗口更精确但可能引入 bias。
			- Bandwidth $\delta$ 小 → 低bias，高variance
			- Bandwidth $\delta$ 大 → 低variance，高bias
		- 解决方案：local linear regression
- Potential Outcome
	- 一个合并 CEF 的技巧，可以见 `2022 Q2`，交互项的含义指允许两侧的斜率和曲率不同
		- 为什么要 renormalize？因为让截距差直接代表我们想捕捉的效应，也就是在 cutoff 处的 treatment effect。
- LATE
	- 这里主要是需要和 IV 的 LATE 辨析一下，IV 的 LATE 是 local 在 complier，但是在 RDD 中，主要是 local 在这个 cutoff 附近。
- F test
	- F test 的作用就是去检测一组参数是否*同时*为 0.如果 F＞critical value，那么我们就要拒绝 $H_{0}$ 意思就是额外的参数是有意义的。反之，则建议简单的模型就够用。
- 