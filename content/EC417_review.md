---
title: "EC417 Review"
date: 2026-05-06
course: "EC417 Advanced Macroeconomics"
tags:
  - review
  - ec417
  - macroeconomics
syllabus_topics:
  - "Business cycle facts, HP filter, DSGE paradigm"
  - "Real Business Cycle models, perturbation, log-linearization"
  - "New Keynesian DSGE models, nominal rigidity, monetary policy"
  - "Heterogeneity in NK models, TANK/HANK mechanisms"
  - "Persistent effects of recessions and endogenous growth"
  - "Firm heterogeneity, granular shocks, Hulten's theorem"
  - "Climate macro, integrated assessment, MIT shocks"
exam_format: "2 hours plus 15 minutes reading time; 3 questions worth 25, 25, and 50 points; based on lectures and classes."
---

# EC417 复习笔记

## Exam Information

> [!exam] 考试结构
> 这门课的考试是 2 小时写作时间加 15 分钟阅读时间，3 道题，分值为 25、25、50；problem sets 是很好的准备材料，考试范围基于 lectures and classes。`Lec 10 课件页 83`

> [!warning] PastExam 使用规则
> `past exam/` 里混有不同年份、不同老师或不同学期大纲的题。当前复习时，只有 lecture notes 和 classes 覆盖过的内容才应视为可考；notes 没讲的 Aiyagari、SIR、search/matching、连续时间增长、资产定价、Tobin's Q、human capital 等题，不要从 PastExam 反推出会考。`Lec 10 课件页 83｜参考：past exam/EC417LT_2021.pdf Q1-Q4, EC417LT_2024.pdf Q1-Q3, EC417_2023.pdf Q1-Q3`

> [!intuition]
> Past papers 的价值主要是“题型语言”和“答题深度”，不是无条件预测考纲。最可靠的复习证据链是：lecture summary pages -> problem sets -> 近年与当前 lectures 重合的 PastExam。

## Course Map

> [!definition] 课程主线
> 课程先讲“shocking theory of business cycles”：business cycle facts、RBC、NK-DSGE；后讲对 DSGE paradigm 的挑战：heterogeneity、persistent effects、micro origins of aggregate shocks、interesting steady states/climate macro。`Syllabus 课件页 1-3, Lec 10 课件页 82-95`

> [!intuition]
> Part I 是标准工具箱：如何建模、求解、校准、解释冲击。Part II 是批判和扩展：代表性家庭、暂时性波动、aggregate shocks、单一稳态这些假设什么时候会误导我们。

## Topic 1: Business Cycle Facts and Measurement

### Key Concepts

> [!definition] Business cycle
> Business cycle 是宏观变量围绕长期趋势的短期偏离，研究对象包括 output、consumption、investment、employment/unemployment、inflation 等。`Lec 1 课件页 8-16｜推荐练习：PS1 Q3 p3`

> [!intuition]
> 先分离 trend 和 cycle，才能问模型是否解释了 recession 中“产出低、就业低、投资更波动、变量同向移动”的事实。

> [!definition] 四个 business cycle facts
> 经验事实包括：irregularity、comovement、relative volatility、persistence；consumption、investment、employment 通常 procyclical，investment 比 output 和 consumption 更 volatile，cycle 有较高 autocorrelation。`Lec 1 课件页 22-30, Lec 10 课件页 87｜推荐练习：PS1 Q3 p3`

> [!intuition]
> 一个合格的 business cycle model 不只要让 GDP 上下波动，还要同时解释变量之间怎么一起动、谁更剧烈、冲击多久消失。

### Formulas

> [!formula] Trend-cycle decomposition
> $$y_t = y_t^g + y_t^c$$
> 其中 $y_t^g$ 是 trend，$y_t^c$ 是 cyclical component。`Lec 1 课件页 16-17｜推荐练习：PS1 Q3 p3`

> [!intuition]
> 这不是经济理论本身，而是把数据整理成模型可解释对象的 measurement step。

> [!formula] HP filter
> $$\{y_t^g\}=\arg\min_{\{y_t^g\}}\sum_t\left[(y_t-y_t^g)^2+\lambda(\Delta y_{t+1}^g-\Delta y_t^g)^2\right]$$
> $\lambda$ 控制 trend 的平滑度；quarterly data 的常用值是 1600，不同频率可按 $\lambda_N=\lambda_4(N/4)^4$ 调整。`Lec 1 课件页 18-21｜推荐练习：PS1 Q3 p3`

> [!intuition]
> 第一项不让 trend 离原数据太远，第二项惩罚 trend growth 的剧烈变化；$\lambda$ 越大，trend 越平滑，剩下的 cycle 越像短期波动。

> [!formula] Solow residual / TFP growth
> 在 CRS、competitive factor markets、zero profits 下：
> $$\frac{\dot Z_t}{Z_t}=\frac{\dot Y_t}{Y_t}-\left(1-\frac{w_tL_t}{Y_t}\right)\frac{\dot K_t}{K_t}-\frac{w_tL_t}{Y_t}\frac{\dot L_t}{L_t}$$
> `Lec 1 课件页 36-39, Lec 3 课件页 53-55`

> [!intuition]
> Solow residual 是“产出增长中不能由投入增长解释的部分”。它常被叫 productivity，但也可能混入 utilization、measurement error 或政策冲击。

### Problem Patterns

> [!example] 常见问法
> 解释 HP filter 的 objective、$\lambda$ 的作用、如何从宏观序列得到 business cycle facts；或解释 Solow residual 为什么不一定是“纯技术冲击”。`Lec 1 课件页 18-21, Lec 3 课件页 53-55｜推荐练习：PS1 Q3 p3, EC417 LT 2018 Section A 1(c) p2`

> [!technique]
> 答题顺序：先定义 measurement object，再写公式，再说明 identification/measurement caveat，最后联系 RBC 是否把 TFP shocks 当作 business cycle 的来源。

## Topic 2: Baseline RBC Model

### Key Concepts

> [!definition] RBC model
> RBC 是带有 productivity shocks 的 neoclassical growth model：代表性家庭动态选择 consumption、labor、saving/investment；代表性企业在竞争市场选择 capital 和 labor；无 nominal frictions，波动被解释为对 real shocks 的有效反应。`Lec 1 课件页 32-43, Lec 10 课件页 87-89｜推荐练习：PS1 Q1-Q2 p1-p2, EC417_2025 Q1 p2`

> [!intuition]
> RBC 的核心叙事是：经济不是因为 demand failure 偏离最优，而是生产率变化改变了工作、消费和投资的最优选择。

### Model Setup

> [!definition] Household problem
> 示例 household 最大化
> $$E_t\sum_{s=t}^{\infty}\beta^{s-t}\left(\ln C_s-\frac{L_s^{1+1/\eta}}{1+1/\eta}\right)$$
> subject to $I_s+C_s=r_sK_s+W_sL_s$ and $K_{s+1}=I_s+(1-\delta)K_s$。`Lec 1 课件页 42-46｜推荐练习：PS1 Q1-Q2 p1-p2`

> [!intuition]
> Household 在三种 margin 上权衡：今天消费 vs 明天消费，工作 vs leisure，消费 smoothing vs capital accumulation。

> [!formula] Household FOCs
> $$C_t^{-1}=\beta E_t[(1+r_{t+1}-\delta)C_{t+1}^{-1}],\qquad L_t=\left(\frac{W_t}{C_t}\right)^\eta$$
> TVC: $\lim_{s\to\infty}\beta^s C_s^{-1}K_{s+1}=0$。`Lec 1 课件页 45-46｜推荐练习：PS1 Q1-Q2 p1-p2, EC417_2024 Q1 p2`

> [!intuition]
> Euler equation 说今天少消费一单位的边际效用成本，要等于明天资本回报带来的预期边际效用收益。Labor FOC 说 real wage 高或 consumption 低时，工作相对更有吸引力。

> [!definition] Firm problem
> Firm 最大化 $\pi_t=Y_t-W_tL_t-r_tK_t$，生产函数为
> $$Y_t=Z_tK_t^\alpha L_t^{1-\alpha},\qquad Z_t=Z_{t-1}^{\rho}\exp(\sigma\epsilon_t).$$
> `Lec 1 课件页 47-48｜推荐练习：PS1 Q2 p2, EC417_2025 Q1 p2`

> [!intuition]
> Competitive firm 把 factor prices 设为 marginal products；productivity shock 同时推高 output、wages 和 capital returns。

> [!formula] Firm FOCs
> $$W_t=(1-\alpha)Z_tK_t^\alpha L_t^{-\alpha},\qquad r_t=\alpha Z_tK_t^{\alpha-1}L_t^{1-\alpha}.$$
> `Lec 1 课件页 48-50｜推荐练习：PS1 Q2 p2, EC417_2025 Q1(a) p2`

> [!intuition]
> 工资等于 MPL，租金等于 MPK；生产率上升会让同样的 labor/capital 更 productive，因此提高 factor demand。

> [!definition] Competitive equilibrium
> Equilibrium 是 quantities/prices 的序列 $\{C_t,L_t,K_t,I_t,Y_t,Z_t\},\{W_t,r_t\}$，使 households optimize、firms optimize、technology/resource constraints hold。`Lec 1 课件页 49-50, Lec 2 课件页 34｜推荐练习：PS1 Q1 p1`

> [!intuition]
> “解模型”不是列出 FOC，而是找到 policy functions，把内生变量写成 state variables 和 shocks 的函数。

### Problem Patterns

> [!example] RBC FOC/CE 题型
> 常见题目会改 utility、去掉 capital、加入 bonds 或换 labor preference，让你重新写 Lagrangian、FOCs、equilibrium，再解释 productivity shock 对 employment/output 的作用。`Lec 1 课件页 42-50, Lec 10 课件页 87-89｜推荐练习：PS1 Q1-Q2 p1-p2, EC417_2024 Q1 p2, EC417_2025 Q1 p2`

> [!technique]
> 答题模板：agents -> objective -> constraints -> FOCs -> market clearing -> shock process -> intuition。遇到 unfamiliar preference，先稳住 FOCs，再讨论 wealth/substitution effects。

## Topic 3: Solving RBC Models

### Perturbation and Policy Functions

> [!definition] General DSGE form
> RBC 可写成
> $$E_t[f(y_{t+1},y_t,y_{t-1},u_t)]=0,$$
> 目标是求 policy function $y_t=g(y_{t-1},u_t)$。`Lec 2 课件页 13-15｜推荐练习：PS2 Q1 p1-p2`

> [!intuition]
> 状态变量和 shock 给定后，policy function 告诉经济今天怎么选择。求解的难点是这些选择同时影响未来状态。

> [!formula] First-order perturbation
> $$g(y_{t-1},u_t)\approx g(y,0)+g_y'(y,0)(y_{t-1}-y)+g_u'(y,0)u_t.$$
> Steady state 满足 $f(y,y,y,0)=0$ and $g(y,0)=y$。`Lec 2 课件页 18-24｜推荐练习：PS2 Q1 p1-p2, EC417LT_2019 Q1(a)-(d) p2`

> [!intuition]
> Perturbation 的经济含义是：只在 steady state 附近研究小冲击，把复杂非线性系统近似成线性或二阶系统。

> [!formula] IRF from linear policy function
> 若 $y_t-y=g_y'(y_{t-1}-y)+g_u'u_t$，一次 shock 后
> $$y_{t+s}-y=(g_y')^s(g_u'u_t).$$
> `Lec 2 课件页 25, Lec 3 课件页 46-51｜推荐练习：PS2 Q1 p1-p2, PS4/Pset4 Q1(c) p2`

> [!intuition]
> IRF 的形状由两个东西决定：shock 当期冲击多大，以及 state dynamics 让偏离以多快速度消失。

### Steady State and Log-linearization

> [!formula] RBC steady state example
> 在 baseline RBC 中：
> $$\bar Z=1,\quad \bar I=\delta\bar K,\quad \bar Y=\bar C+\bar I,\quad \bar K=\left(\frac{\alpha}{\beta^{-1}-(1-\delta)}\right)^{1/(1-\alpha)}\bar L.$$
> `Lec 2 课件页 38-43｜推荐练习：PS2 Q1-Q2 p1-p3`

> [!intuition]
> Steady state 是无 shock、无时间下标时的长期锚点；所有近似和 Dynare 初始值都围绕它展开。

> [!formula] Log-linearization
> 对变量定义 $\hat x_t\equiv (X_t-X)/X\approx \log(X_t/X)$；例如
> $$E_t\hat c_{t+1}-\hat c_t=(1-\beta[1-\delta])E_t(\hat y_{t+1}-\hat k_{t+1}).$$
> `Lec 2 课件页 55-61｜推荐练习：PS2 Q2 p3, PS3 p1-p2`

> [!intuition]
> Log-linearization 把非线性 equilibrium conditions 变成 percentage-deviation equations，便于手算、解释系数和 guess-and-verify。

### Blanchard-Kahn Conditions

> [!definition] Blanchard-Kahn condition
> 在线性 rational expectations model 中，stable unique solution 需要 unstable eigenvalues 的个数等于 non-predetermined/jump variables 的个数。`Lec 3 课件页 5-20, Lec 5 课件页 45-50｜推荐练习：PS5 Q1 p1`

> [!intuition]
> Predetermined state 不能自由跳，所以爆炸路径不能靠 state 调整消除；jump variables 可以当期调整，正好用来排除爆炸路径。

> [!warning] 常见错误
> 不要只说“eigenvalues less than one”。要先看模型写法是否已 inverted，以及 jump/state variable 的个数。`Lec 3 课件页 12-15, Lec 5 课件页 48｜推荐练习：PS5 Q1 p1`

## Topic 4: RBC Evaluation, Calibration, and Critiques

### Calibration and Quantitative Evaluation

> [!definition] Calibration
> Calibration 选择参数让 steady state 或 micro evidence 匹配关键事实，再用 untargeted moments 检验模型。RBC 示例参数包括 $\beta=0.988,\delta=0.026,\alpha=0.33,\eta=1,\rho=0.813$。`Lec 3 课件页 28-34｜推荐练习：PS2 Q1 p1-p2`

> [!intuition]
> Calibration 不是“估计真理”，而是问：在合理参数下，这个机制能否产生数据中看到的波动模式？

> [!exam] RBC performance
> Baseline RBC 可解释 procyclicality、investment volatility 和 persistence 的一部分，但 employment volatility 太低，对 wage/productivity/employment 的 transmission 过强依赖 productivity shock。`Lec 3 课件页 37-49, Lec 10 课件页 89｜推荐练习：EC417 LT 2018 Section A 1(e)-(g) p2`

> [!intuition]
> RBC 的就业波动依赖“工资随生产率变动，家庭自愿多工作/少工作”。如果数据中 productivity shocks 反而让 hours 下降，机制就有问题。

### Critiques

> [!warning] RBC 四个核心批评
> 1. Employment/wage/productivity transmission 不匹配；2. persistence 主要来自 persistent shock 而非强 propagation；3. technology shocks 难以解释和测量；4. monetary/fiscal policy 作用有限。`Lec 3 课件页 45-61, Lec 10 课件页 89｜推荐练习：PS3 p1-p2, EC417_2024 Q1 p2`

> [!intuition]
> 这些批评直接引出 NK-DSGE：如果价格或工资不能自由调整，那么 demand 和 monetary policy 就会影响 real variables。

> [!definition] Fiscal spending in RBC
> 政府 spending $G_t$ 可作为 exogenous AR(1) shock，resource constraint 变为
> $$\hat y_t=\hat c_t(C/Y)+\hat i_t(I/Y)+\hat g_t(G/Y),\qquad \hat g_t=\rho_g\hat g_{t-1}+\epsilon_t^g.$$
> `Lec 3 课件页 57-60｜推荐练习：PS3 p1-p2`

> [!intuition]
> 在 representative-agent RBC 中，wasteful government spending 通过资源约束和税负改变 household wealth、labor supply 和 investment，而不是通过 Keynesian demand multiplier。

> [!technique] IRF 解释技巧
> 先解释 exogenous shock，再按 state/control、firm side、household side、resource constraint 同时推理；不要把同时决定的变量讲成严格时间顺序。`PS4 Answers p11｜推荐练习：Pset4 Q1(c) p2`

## Topic 5: New Keynesian DSGE Model

### Motivation and Setup

> [!definition] NK-DSGE
> NK-DSGE 在 RBC 的动态优化和 general equilibrium 上加入 nominal rigidities，尤其是 sticky prices 和 sticky wages；关键差别是 business cycle 可以是 inefficient，monetary policy 可以有 real effects。`Lec 4 课件页 4, 17-26, Lec 10 课件页 90｜推荐练习：EC417_2024 Q3 p4, EC417_2025 Q3 p5-p6`

> [!intuition]
> 如果价格不能及时下降，负需求冲击不会立刻通过价格调整被吸收，而会表现为 output 和 employment 下跌。

> [!exam] Nominal rigidity evidence
> 货币政策 shock 对 output 有实质影响，价格调整慢于 output；CPI micro data 中价格持续时间较长，wage cuts 也有明显刚性。`Lec 4 课件页 9-26, Lec 10 课件页 90`

> [!intuition]
> NK 的建模动机是经验事实：nominal variables 的迟缓调整让 nominal policy 影响 real allocations。

### CES, Flexible Prices, and Markups

> [!formula] CES demand and price index
> $$C_t=\left[\int_0^1 C_{i,t}^{(\epsilon-1)/\epsilon}di\right]^{\epsilon/(\epsilon-1)},\quad C_{i,t}=\left(\frac{P_{i,t}}{P_t}\right)^{-\epsilon}C_t,$$
> $$P_t=\left[\int_0^1P_{i,t}^{1-\epsilon}di\right]^{1/(1-\epsilon)}.$$
> `Lec 4 课件页 29-33, Lec 10 课件页 90｜推荐练习：EC417_2024 Q3 p4`

> [!intuition]
> CES 让每个 firm 面对 downward-sloping demand，因此有 pricing power；elasticity $\epsilon$ 越高，消费者越容易替代，markup 越低。

> [!formula] Flexible-price markup
> Flexible prices 下，firm 设定
> $$P_t=\frac{\epsilon}{\epsilon-1}MC_t.$$
> Product-market power 使 output 低于 social planner efficient level：
> $$\frac{Y_t^{Flex}}{Y_t^*}=\left(\frac{\epsilon-1}{\epsilon}\right)^{(1-\alpha)/\zeta}<1.$$
> `Lec 4 课件页 38-47, Lec 5 课件页 9｜推荐练习：EC417_2024 Q3(c) p4`

> [!intuition]
> Monopoly markup 把价格推到 marginal cost 之上，降低需求和 labor demand；即使 flexible prices，市场力量也会带来低产出。

### Calvo Pricing and NKPC

> [!definition] Calvo pricing
> Firm 每期以概率 $1-\theta$ 重设价格，expected price duration 为 $(1-\theta)^{-1}$。`Lec 4 课件页 49-57, Lec 5 课件页 15-21｜推荐练习：EC417_2024 Q2(c) p3`

> [!intuition]
> 当前能改价的 firm 会考虑如果未来几期不能改价，今天的价格是否仍然合适，所以 optimal reset price 是 forward-looking。

> [!formula] New Keynesian Phillips Curve
> $$\pi_t=\beta E_t\pi_{t+1}+\kappa\tilde y_t,$$
> $$\kappa=(1-\beta\theta)\left(\frac{1-\theta}{\theta}\right)\left(\frac{1-\alpha}{1-\alpha+\alpha\epsilon}\right)\left(\sigma+\frac{\phi+\alpha}{1-\alpha}\right).$$
> `Lec 5 课件页 25-32, Lec 6 课件页 6-12｜推荐练习：PS5 Q1-Q2 p1-p2, PS6 p1`

> [!intuition]
> Positive output gap 推高 marginal costs，能改价的 firms 提价，从而 inflation 上升；$\theta$ 越高，价格越 sticky，inflation 对 output gap 越不敏感。

### Dynamic IS and Taylor Rule

> [!formula] Dynamic IS curve
> $$\tilde y_t=E_t\tilde y_{t+1}-\frac{1}{\sigma}(i_t-E_t\pi_{t+1}-r_t^n).$$
> 若存在 productivity shocks，
> $$r_t^n=\rho+\sigma\left(\frac{\phi+1}{\zeta}\right)E_t[\Delta a_{t+1}].$$
> `Lec 5 课件页 34-37, Lec 6 课件页 6-8｜推荐练习：PS6 p1, EC417_2025 Q3 p5-p6`

> [!intuition]
> Output gap 由 actual real rate 相对 natural real rate 的偏离决定。实际 real rate 太高时，家庭推迟消费，需求不足。

> [!formula] Taylor rule and determinacy
> $$i_t=\rho+\phi_\pi\pi_t+\phi_y\tilde y_t+v_t.$$
> Canonical NK determinacy condition 可写作
> $$0<\kappa(\phi_\pi-1)+(1-\beta)\phi_y.$$
> 当 $\phi_y=0$ 时，这对应 Taylor principle $\phi_\pi>1$。`Lec 5 课件页 39-51｜推荐练习：PS5 Q1 p1, PS7 Q1(d) p2`

> [!intuition]
> 若 inflation 上升时 nominal rate 提高得不够，real rate 可能反而下降，需求继续扩张，expectations 无法被锚定。

## Topic 6: NK Mechanisms, Shocks, and Critiques

### Monetary, Demand, and Productivity Shocks

> [!exam] Monetary policy shock
> Contractionary monetary policy shock 提高 nominal rate；sticky prices 使 inflation 不足以抵消 nominal rate 上升，real rate 上升，consumption/demand/output gap/inflation 下降。`Lec 6 课件页 13-21｜推荐练习：PS7 Q1(a)-(b) p1, EC417_2025 Q3 p5-p6`

> [!intuition]
> Monetary non-neutrality 的关键不是央行“直接控制 real rate”，而是价格刚性让 nominal rate 的变化短期内转化为 real rate 的变化。

> [!definition] Demand shock
> Demand shock 在给定 real rate 下改变 current consumption preference 或 demand；sticky prices 下会造成 output gap 和 inflation 变化，aggressive central bank 可部分稳定。`Lec 6 课件页 22-24｜推荐练习：PS7 Q1 p1-p2`

> [!intuition]
> 负 demand shock 下，flexible prices 会通过降价和 lower real rate 稳定需求；sticky prices 使 real rate 偏高，需求不足持续。

> [!exam] Productivity shock in NK
> Positive productivity shock 提高 productive capacity，降低 natural real rate；若 monetary policy/price adjustment 不足，actual real rate 相对过高，output gap、inflation、employment 可下降。`Lec 6 课件页 27-32, Lec 10 课件页 91｜推荐练习：PS6 p1, PS6 Answers p2-p22`

> [!intuition]
> 这解释了为什么 NK 中 productivity shock 可导致 hours 下跌，和 RBC 的“productivity -> wage -> more labor”形成对比。

### Policy Trade-off

> [!formula] Simple IID shock NK solution pattern
> 在 PS7 的 simplified NK model 中，IID shocks 使 expectations 为 0，可将 IS、NKPC、Taylor rule 联立解出 $\pi_t$、$\tilde y_t$ 和 $i_t$ 对 demand/supply shocks 的反应。`PS7 p1-p2, PS7 Answers p5-p18｜推荐练习：PS7 Q1`

> [!intuition]
> Cost-push shock 让 inflation 和 output gap 反向移动，central bank 面临 inflation stabilization 与 output-gap stabilization 的 trade-off；demand shock 通常让二者同向移动，trade-off 弱得多。

### Critiques

> [!warning] NK critique: intertemporal substitution
> RANK 的 monetary transmission 很依赖 Euler equation 的 intertemporal substitution，但现实中 consumption 对 real interest rate 的直接反应可能较弱。`Lec 6 课件页 34, Lec 7 课件页 28-37`

> [!intuition]
> 如果家庭不太因利率变化重新安排消费，代表性家庭 NK 模型会高估 direct substitution channel。

> [!warning] NK critique: countercyclical markups/profits
> NKPC 可写成 markup 形式 $\pi_t=\beta E_t\pi_{t+1}-\Lambda\tilde\mu_t$；某些 shocks 下模型依赖 countercyclical markups/profits 来放大 output response。`Lec 6 课件页 35-42`

> [!intuition]
> 如果扩张时 markups/profits 在数据中并不按模型方向变化，那么模型的 transmission mechanism 就需要谨慎解释。

## Topic 7: Heterogeneity in NK Models

### Wage Rigidity and Unemployment

> [!definition] Wage rigidity model
> Lecture 7 扩展 NK：firms 使用 differentiated labor，household members 有不同 labor disutility/specialty，unions 设置 wage，Calvo wage setting 产生 structural 和 cyclical unemployment。`Lec 7 课件页 3-14, Lec 10 课件页 92`

> [!intuition]
> Sticky wages 让 labor supply 和 labor demand 不能靠工资即时清算，所以 negative demand shock 可表现为 involuntary unemployment。

> [!formula] Wage Phillips curve
> $$\pi_t^w=\beta E_t\pi_{t+1}^w-\lambda_w\phi \hat u_t^w.$$
> `Lec 7 课件页 5, 9-14`

> [!intuition]
> 当 unemployment gap 高时，工资上涨压力低；但 wage rigidity 使工资调整慢，失业可持续。

### RANK vs TANK/HANK

> [!definition] RANK direct channel
> Representative-agent NK 中，consumption 主要由 Euler equation 决定，one-off income shock 的 MPC 约为 $1-\beta\approx 0$，monetary policy 主要通过 intertemporal substitution。`Lec 7 课件页 28-34｜推荐练习：PS8 Q2 p2`

> [!intuition]
> 永久收入假说下，暂时收入变化对 lifetime resources 很小，所以消费不太动；这削弱 Keynesian multiplier。

> [!exam] Empirical MPC evidence
> 税收 rebate 和 CARES transfer 研究发现 transitory income shocks 的 MPC 可达 20-40% 左右，明显高于 RANK 的 one-off MPC。`Lec 7 课件页 35-37`

> [!intuition]
> 高 MPC 意味着当政策改变当前收入时，很多家庭会立刻消费，从而放大 aggregate demand。

> [!definition] TANK
> TANK 假设 fraction $\lambda$ 为 hand-to-mouth consumers，剩余 $1-\lambda$ 为 optimizing savers；hand-to-mouth 的 MPC 为 1，firm side 保留 NKPC。`Lec 7 课件页 39-49, TANK derivations p1-p4｜推荐练习：EC417_2025 Q2 p3-p4`

> [!intuition]
> Monetary policy 不再只靠 savers 的 intertemporal substitution，还通过 employment income 和 taxes 影响 hand-to-mouth households 的消费。

> [!formula] TANK IS curve
> $$\hat c_t=E_t\hat c_{t+1}-\tilde\sigma(\hat i_t-E_t\pi_{t+1})-\Omega_nE_t[\Delta\hat n_{t+1}]+\Omega_gE_t[\hat t_{t+1}].$$
> 其中 $\tilde\sigma$ 随 optimizing share 变化，$\Omega_n,\Omega_g$ 来自 hand-to-mouth 的 labor/tax income channels。`Lec 7 课件页 41-49｜推荐练习：EC417_2025 Q2 p3-p4`

> [!intuition]
> $\lambda$ 越高，直接 substitution channel 越弱，但 labor-income 和 fiscal channels 越强，政策效果可能被放大。

> [!definition] HANK intuition
> HANK 用 idiosyncratic income risk、borrowing constraints、liquid/illiquid assets 生成 realistic MPCs 和 wealthy hand-to-mouth。`Lec 7 课件页 52-56`

> [!intuition]
> 有些家庭资产不少但流动性差，短期仍像 hand-to-mouth；这能解释为什么现实中 transitory income shocks 会显著影响消费。

## Topic 8: Persistent Effects of Recessions and Endogenous Growth

### Lucas Cost of Business Cycles

> [!definition] Lucas welfare cost
> Lucas 假设 consumption 围绕 deterministic growth trend 波动：
> $$C_t=\lambda^t(1+\epsilon_t)C_0,$$
> 并计算 household 愿意放弃多少 consumption 来消除 uncertainty。`Lec 8 课件页 19-21｜推荐练习：PS8 Q1 p1, EC417_2024 Q2(a)-(b) p3`

> [!intuition]
> 如果 business cycles 只是小的、暂时的 consumption noise，而不影响长期增长，那么 risk-averse household 愿意付出的代价很小。

> [!formula] Approximate cost
> $$\chi\approx \frac{1}{2}\gamma\sigma^2.$$
> Lucas-style calibration 得到约 $0.04\%$ consumption。`Lec 8 课件页 20｜推荐练习：PS8 Q1 p1, EC417_2024 Q2(a) p3`

> [!intuition]
> 这个数很小，是因为假设 shocks 不改变 trend growth；如果 recession 伤害 future productivity，成本会大很多。

### AK and Endogenous Growth

> [!definition] AK model
> 去掉 diminishing returns，令
> $$Y_t=\theta A_tK_t,\qquad A_t=A_{t-1}^{\rho}\exp(\epsilon_t).$$
> Balanced growth rate:
> $$G=(\beta(1+\theta-\delta))^{1/\gamma}.$$
> `Lec 8 课件页 14-18, Lec 10 课件页 93｜推荐练习：PS8 Q1 p1`

> [!intuition]
> 没有 diminishing returns 时，暂时冲击降低 investment 会永久降低 future capital path，因此 recession 可留下 level effect。

> [!definition] Romer expanding-varieties model
> Innovation 产生新 intermediate-input technologies，$A_{t+1}-A_t=\varphi RD_t$；monopolist patent profits 激励 R&D；equilibrium growth 为
> $$G=\left[(1+\rho)^{-1}(1+\varphi\beta L)\right]^{1/\gamma}.$$
> `Lec 8 课件页 32-44, Lec 10 课件页 93`

> [!intuition]
> Growth 来自 ideas/blueprints 的积累。R&D 回报越高、research effectiveness 越强、市场规模越大，长期增长越快。

> [!definition] Comin-Gertler mechanism
> 如果 R&D/adoption 取决于 expected profits 和 financing conditions，recession 会降低 profitability，减少 adoption/R&D，从而让 transitory shocks 产生 persistent TFP effects。`Lec 8 课件页 47-54, Lec 10 课件页 93`

> [!intuition]
> 一次短期衰退不仅减少今天产出，还可能让企业少投资新技术，导致明天的 productivity frontier 更低。

## Topic 9: Firms, Granular Shocks, and Hulten's Theorem

### Lucas Diversification and Gabaix

> [!definition] Lucas diversification argument
> 若经济由 $N$ 个同规模、独立 shock 的生产单位组成，则 aggregate volatility 为
> $$\sigma_Y=\frac{\sigma}{\sqrt N}.$$
> `Lec 9 课件页 15-18, Lec 10 课件页 94｜推荐练习：PS9 Q1 p1`

> [!intuition]
> 独立微观冲击会互相抵消；企业数量很大时，单个企业 shock 不应造成宏观波动。

> [!formula] Heterogeneous size and Herfindahl
> 若 firm sizes 不同但 shock volatility 相同：
> $$\sigma_Y=\sigma h,\qquad h=\left(\sum_i\left(\frac{a_i}{Y}\right)^2\right)^{1/2}.$$
> `Lec 9 课件页 20-23, 35, Lec 10 课件页 94｜推荐练习：PS9 Q1 p1-p2`

> [!intuition]
> 大企业权重高，shock 不容易被平均掉；Herfindahl 是“未被 diversification 消除的集中度”。

> [!definition] Pareto firm-size distribution
> Pareto CDF:
> $$F(x)=1-\left(\frac{x}{x_m}\right)^{-\delta},\qquad x\ge x_m.$$
> 若 $\delta\le 2$，二阶矩不存在；firm-size tail parameter 接近 1 时，aggregate volatility 随 $N$ 衰减很慢。`Lec 9 课件页 26-34, Lec 10 课件页 94｜推荐练习：PS9 Q1 p1`

> [!intuition]
> Fat tail 意味着少数巨型企业占比异常大，所以“很多企业”并不自动保证风险分散。

### Hulten's Theorem

> [!formula] Hulten's theorem
> 在有效率经济中，firm/sector $i$ 的 productivity shock 对 GDP 的一阶影响为 Domar weight：
> $$\frac{d\log GDP}{d\log z_i}=\lambda_i=\frac{p_i y_i}{GDP}.$$
> `Lec 9 课件页 39-47, Lec 10 课件页 94｜推荐练习：PS9 Q1 p2`

> [!intuition]
> Sales share 同时捕捉 final consumption 和 intermediate input linkages；所以即使生产网络复杂，一阶影响也可由 Domar weight 概括。

> [!warning] Hulten limitations
> Hulten 是 first-order approximation，依赖 efficient allocation；large shocks、distortions、endogenous Domar weights 会使结论需要修正。`Lec 9 课件页 47-48`

> [!intuition]
> 小冲击附近可以用 envelope theorem 忽略 reallocation；大冲击或扭曲经济中，资源重配本身会影响 aggregate outcome。

## Topic 10: Climate Macro, SCC, and MIT Shocks

### Integrated Assessment Models

> [!definition] Integrated Assessment Model (IAM)
> IAM 把 neoclassical growth model 与 carbon cycle、temperature block、damage function 连接起来：human activity 产生 emissions，carbon affects temperature，temperature damages productivity/output。`Lec 10 课件页 11-18`

> [!intuition]
> Climate macro 的优势是把动态、general equilibrium、policy counterfactual 放在同一框架里，适合分析 carbon tax 和 long-run transition。

> [!formula] Damage and output
> Nordhaus-style damage 可写作
> $$\Omega(T_t)=\frac{1}{1+\theta_1+\theta_2T_t^2},\qquad Y_t=F(K_t,A_tL_t)\Omega(T_t).$$
> `Lec 10 课件页 17-18`

> [!intuition]
> 温度通过降低 effective productivity/output 进入经济模型；damage function 把 climate science 和 economic production 联系起来。

> [!formula] Social cost of carbon / optimal emissions tax
> $$\tau_t=E_t\sum_{j=0}^{\infty}\beta^j\frac{u'(c_{t+j})}{u'(c_t)}\left(-\frac{\partial Y_{t+j}}{\partial S_{t+j}}\right)\frac{\partial S_{t+j}}{\partial E_{i,t}}.$$
> `Lec 10 课件页 20-30`

> [!intuition]
> SCC 是今天多排放一单位 carbon 对未来所有期 GDP damage 的贴现边际成本，因此等于 optimal carbon tax。

### Transition and MIT Shocks

> [!definition] Directed green innovation and financial constraints
> Green transition model 中，innovation 是 directed 且 path-dependent，年轻企业更可能受融资约束；financial shock 会 disproportionally harm green innovation。`Lec 10 课件页 41-68`

> [!intuition]
> 如果绿色创新集中在年轻、融资受限企业，credit tightening 会拖慢技术转型，即使绿色和非绿色项目本身没有不同融资规则。

> [!definition] MIT shock
> MIT shock 是某个时点发生的参数或环境变化；agents 不认为此类 shock 会反复发生，旧稳态到新稳态的 transition path 是 deterministic。`Lec 10 课件页 69-75`

> [!intuition]
> 大型结构模型不一定围绕一个 steady state 做小扰动；可以直接求从旧稳态到新稳态的 transition dynamics。

## Past Exam Analysis

> [!exam] 高权重 PastExam: 与当前 lecture notes 重合度最高
> - `EC417_2025.pdf`: Q1 是无资本 RBC 与 productivity/labor response；Q2 是 TANK/heterogeneous households；Q3 是 NK government spending、natural rate、ZLB/peg。`Exam 2025 Q1-Q3 p2-p6｜对应：Lec 1-3, Lec 5-7`
> - `EC417_2024.pdf`: Q1 是 RBC preference/labor response；Q2 是 Lucas cost、price setting/Calvo；Q3 是 NK preference shock、natural/efficient output 和 subsidy。`Exam 2024 Q1-Q3 p2-p4｜对应：Lec 1-6, Lec 8`

> [!intuition]
> 2024 和 2025 的题型非常像当前 notes 的“会换设定但考同一机制”：FOC、自然产出、sticky prices、heterogeneity、welfare cost。

> [!exam] 中等参考价值
> - `EC417_2022.pdf` Q2 是 NK model、measurement error、Taylor rule；Q3 是 RBC preference shock。`Exam 2022 Q2-Q3 p2-p4｜对应：Lec 1-6`
> - `EC417LT_2019.pdf` Q1 考 perturbation/solution methods，Q4 考 NK model。`Exam LT 2019 Q1/Q4 p2-p4｜对应：Lec 2-6`
> - `EC417 LT_2018.pdf` Section A 涉及 RBC complete markets assumption、Solow residual、NK inflation、RBC amplification、fiscal policy 和 IRFs。`Exam LT 2018 Section A p2｜对应：Lec 1-6`

> [!intuition]
> 这些题可以用来练“短问短答”和模型技巧，但遇到 notes 中没出现的模型块时要跳过。

> [!warning] 低参考或应跳过的 PastExam 内容
> Aiyagari stationary equilibrium、SIR model、search/matching、complete markets Arrow-Debreu、Tobin's Q、资产风险溢价、continuous-time growth/human capital 等不是当前 WT lecture notes 的核心覆盖，不应作为可考重点。`Exam LT 2021 Q1-Q4 p2-p4, Exam LT 2022 Q1-Q4 p2-p5, Exam LT 2024 Q1-Q3 p1-p3, Exam 2018 Q5 p4-p5, Exam 2023 Q1-Q3 p2-p4`

## 21-Hour Problem-First Review Roadmap

每个 3 小时 block 固定节奏：

| Time | Task |
|---|---|
| 0:00-0:20 | 先看题目，写出每问在考什么机制 |
| 0:20-1:35 | 不看 notes 轻计时作答 |
| 1:35-2:20 | 对答案或 lecture pages，定位错误 |
| 2:20-2:50 | 回到指定 lecture pages 修补公式和直觉 |
| 2:50-3:00 | 更新 error log，标记下一次 redo |

### Session 1: RBC Setup and Business Cycle Measurement

- Goal: 能从零写出 RBC agents、FOCs、CE，并解释 HP filter/business cycle facts。
- Start from questions: `PS1 Q1-Q3 p1-p3, EC417_2025 Q1 p2, EC417_2024 Q1 p2`
- Return to notes: `Lec 1 课件页 16-21, 42-50, Lec 10 课件页 87`
- Fix the gap: HP filter objective、Solow residual caveat、Euler equation、labor FOC、firm FOCs。
- Output: 一页 RBC setup template。

### Session 2: RBC Solution Methods

- Goal: 能解释 perturbation、steady state、log-linearization、BK conditions。
- Start from questions: `PS2 Q1-Q2 p1-p3, EC417LT_2019 Q1 p2, PS5 Q1 p1`
- Return to notes: `Lec 2 课件页 13-28, 38-43, 55-61, Lec 3 课件页 5-20`
- Fix the gap: policy function vs equilibrium conditions、steady state 手算、IRF 解释、jump/state variables。
- Output: 一张 “solve DSGE in exam” 流程表。

### Session 3: RBC Evaluation, Fiscal Policy, and Extensions

- Goal: 能评价 RBC 成功/失败，并处理 fiscal、capital utilization、GHH/Jaimovich-Rebelo 类 preference extensions。
- Start from questions: `PS3 p1-p2, Pset4 Q1 p1-p2, PS4 Answers p2-p15, EC417_2024 Q1 p2`
- Return to notes: `Lec 3 课件页 28-61, Lec 10 课件页 89`
- Fix the gap: calibration targets、IRF story、employment/wage/productivity critique、wealth vs substitution effects。
- Output: RBC critique paragraph bank。

### Session 4: NK Derivation Core

- Goal: 能从 household CES demand、firm markup、Calvo pricing 推到 NKPC/DIS/Taylor rule。
- Start from questions: `PS5 Q1-Q2 p1-p2, EC417_2024 Q3 p4, EC417_2025 Q3 p5-p6`
- Return to notes: `Lec 4 课件页 28-47, Lec 5 课件页 6, 25-39, 45-51, Lec 10 课件页 90`
- Fix the gap: CES demand、price index、flexible-price natural output、NKPC slope、DIS/natural rate。
- Output: NK three-equation model cheat sheet。

### Session 5: NK Mechanisms, Policy Trade-offs, and Heterogeneity

- Goal: 能解释 monetary/demand/productivity shocks，并把 RANK 与 TANK/HANK 区分清楚。
- Start from questions: `PS6 p1, PS6 Answers p2-p22, PS7 p1-p2, PS7 Answers p2-p23, EC417_2025 Q2 p3-p4`
- Return to notes: `Lec 6 课件页 6-43, Lec 7 课件页 28-57, Lec 10 课件页 91-92`
- Fix the gap: Taylor principle、productivity shock in NK、cost-push trade-off、MPC evidence、TANK IS channels。
- Output: 一页 “RANK vs TANK/HANK transmission” 对比表。

### Session 6: Persistent Recessions and Growth

- Goal: 能答 Lucas welfare cost、AK persistence、Romer growth、Comin-Gertler mechanism。
- Start from questions: `PS8 Q1-Q2 p1-p2, EC417_2024 Q2(a)-(b) p3`
- Return to notes: `Lec 8 课件页 12-25, 32-44, 47-54, Lec 10 课件页 93`
- Fix the gap: Lucas assumptions、$\chi$ approximation、diminishing returns vs AK、R&D/adoption/profits channel。
- Output: 250-word Lucas critique answer。

### Session 7: Firm Heterogeneity, Climate Macro, and Timed Synthesis

- Goal: 能答 diversification/Gabaix/Hulten，并用 2024/2025 进行一次整卷串联。
- Start from questions: `PS9 Q1 p1-p2, EC417_2024 Q1-Q3 p2-p4, EC417_2025 Q1-Q3 p2-p6`
- Return to notes: `Lec 9 课件页 15-54, Lec 10 课件页 11-23, 69-75, 83-95`
- Fix the gap: Herfindahl、Pareto tail、Domar weights、IAM/SCC/MIT shock basic definitions。
- Output: final error log plus formula sheet v2。

## Quick Reference

> [!formula] RBC core
> $$C_t^{-1}=\beta E_t[(1+r_{t+1}-\delta)C_{t+1}^{-1}],\quad L_t=(W_t/C_t)^\eta,\quad Y_t=Z_tK_t^\alpha L_t^{1-\alpha}.$$
> `Lec 1 课件页 42-50`

> [!intuition]
> RBC 把 cycle 解释为 real shocks 改变 household 和 firm 的最优选择。

> [!formula] Perturbation
> $$y_t\approx y+g_y'(y_{t-1}-y)+g_u'u_t.$$
> `Lec 2 课件页 18-25`

> [!intuition]
> 在 steady state 附近用低阶多项式逼近 policy function。

> [!formula] BK condition
> Unique stable solution requires number of explosive eigenvalues equals number of jump variables。`Lec 3 课件页 5-20, Lec 5 课件页 45-50`

> [!intuition]
> Jump variables 用来排除爆炸路径；state variables 不能自由跳。

> [!formula] NK three equations
> $$\pi_t=\beta E_t\pi_{t+1}+\kappa\tilde y_t,$$
> $$\tilde y_t=E_t\tilde y_{t+1}-\frac{1}{\sigma}(i_t-E_t\pi_{t+1}-r_t^n),$$
> $$i_t=\rho+\phi_\pi\pi_t+\phi_y\tilde y_t+v_t.$$
> `Lec 5 课件页 6, 31, 37, 39`

> [!intuition]
> NKPC 是 supply/pricing block，DIS 是 demand/intertemporal block，Taylor rule 是 policy closure。

> [!formula] TANK channel
> $$\hat c_t=E_t\hat c_{t+1}-\tilde\sigma(\hat i_t-E_t\pi_{t+1})-\Omega_nE_t[\Delta\hat n_{t+1}]+\Omega_gE_t[\hat t_{t+1}].$$
> `Lec 7 课件页 44-49`

> [!intuition]
> 高 MPC households 让 labor income 和 tax changes 进入 aggregate demand multiplier。

> [!formula] Lucas cost
> $$\chi\approx \frac{1}{2}\gamma\sigma^2.$$
> `Lec 8 课件页 19-24`

> [!intuition]
> 若 shocks 不影响 trend growth，business cycle welfare cost 很小；若影响 endogenous growth，成本显著上升。

> [!formula] Granular volatility
> $$\sigma_Y=\sigma h,\qquad h=\left(\sum_i s_i^2\right)^{1/2}.$$
> `Lec 9 课件页 20-35`

> [!intuition]
> Firm-size concentration 决定 idiosyncratic shocks 是否能 aggregate up。

> [!formula] Hulten's theorem
> $$\frac{d\log GDP}{d\log z_i}=\frac{p_iy_i}{GDP}.$$
> `Lec 9 课件页 39-47`

> [!intuition]
> Domar weight 把复杂 input-output linkages 的一阶效应压缩成 sales-to-GDP ratio。

> [!formula] Social cost of carbon
> $$\tau_t=E_t\sum_{j=0}^{\infty}\beta^j\frac{u'(c_{t+j})}{u'(c_t)}\left(-\frac{\partial Y_{t+j}}{\partial S_{t+j}}\right)\frac{\partial S_{t+j}}{\partial E_{i,t}}.$$
> `Lec 10 课件页 20-23`

> [!intuition]
> Optimal carbon tax equals today排放对所有未来期造成的贴现边际损害。
