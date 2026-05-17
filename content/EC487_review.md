---
title: "EC487 Review"
date: 2026-05-07
course: "EC487 Advanced Microeconomics"
tags:
  - review
  - EC487
  - advanced-micro
syllabus_topics:
  - Games of Incomplete Information
  - Signalling Games
  - Cheap Talk and Reputation Games
  - Markets with Adverse Selection
  - Contracting with Hidden Action / Moral Hazard
  - An Introduction to Mechanism Design
  - Mechanism Design and Optimal Auctions
exam_format: "Spring 2025 sample: 4 compulsory questions, equal weight, 2 hours writing plus 15 minutes reading, no calculators or additional materials"
---
---
Related Links: [[EC487 Redo]]



# EC487 复习笔记

## Materials Scan

| Category | Found | Use in this note |
|---|---:|---|
| Syllabus / Outline | `EC487 - Syllabus 2026.pdf` | 课程主题顺序、考试与 problem set 信息 |
| Lecture slides | `lecture slides/lecture 1-7 - no pauses.pdf` | 主体定义、模型、公式、证明思路 |
| Supplement slides | `lecture slides/repeated contribution game.pdf`; `lecture slides/EC487_Lecture_3_Sup.pdf`; `lecture slides/slides on intuitive and d1.pdf` | 补充 repeated public good 与 Intuitive/D1 refinement；后两个 D1 文件内容重复，引用 `EC487_Lecture_3_Sup.pdf` |
| Problem sets | `problem sets/EC487_WT_Pset1-9.pdf` | 题型映射与 problem-first roadmap |
| Solutions | `solutions/pset1,2,4,6,7,9-solutions.pdf` | 解题结构、常见技巧；PS3/5/8 未见对应 solution |
| Past exam | `exam2025.pdf` | 唯一 past exam 证据；不能过度外推“必考/不考” |

## Exam Information

#### Exam Evidence

- 2025 试卷有 4 道必答题，全部计分、等权，每题 25 分；阅读 15 分钟，写作 2 小时，不允许计算器或额外材料。`Exam 2025 页 1`
- 2025 的四题分别覆盖：Beer-Quiche signalling/refinements，hidden type + hidden action contract，two-period repeated contracting with belief updating，Crawford-Sobel cheap talk。`Exam 2025 页 2-5`
- 因为这是唯一 past exam，最稳妥的推断不是“只考这四块”，而是：老师偏好让学生在熟悉模型中重新构造 equilibrium、IC/IR、belief updating、threshold/indifference condition。`Exam 2025 页 2-5｜推荐练习：PS3 Q3, PS4 Q1-Q2, PS6 Q2`

#### Economic Intuition

考试像是在考一件事：当信息不对称时，均衡不是“把最优选择算出来”这么简单，而是要同时问三层东西：谁知道什么，别人如何从行动中更新信念，以及这个信念是否让行动本身成为最优。

## Course Map: One Logic

EC487 的七个主题可以串成一条线：

1. **Games of Incomplete Information**：先把“不知道别人 payoff/type”形式化成 type + beliefs + strategy。`Syllabus 页 1; Lec 1 课件页 7-15`
2. **Signalling Games**：行动开始携带信息；均衡依赖 off-path beliefs，所以需要 refinement（改进）。`Lec 2 课件页 4-13, 23-39｜推荐练习：PS3 Q1-Q3, Exam 2025 Q1`
3. **Cheap Talk and Reputation**：信息可以是无成本语言，也可以来自动态历史；前者受偏好冲突约束，后者靠未来信念制造当前激励。`Lec 3 课件页 3-22, 23-31｜推荐练习：PS4 Q1-Q3, PS5 Q1, Exam 2025 Q4`
4. **Adverse Selection**：隐藏类型进入市场价格，导致 trade set 自我选择，可能 unravel。`Lec 4 课件页 3-12｜推荐练习：PS5 Q2-Q3`
5. **Moral Hazard**：隐藏行动进入合同，导致最优工资必须在 insurance 与 incentives 之间折中。`Lec 5 课件页 3-28｜推荐练习：PS6 Q1-Q2, PS7 Q1, Exam 2025 Q2-Q3`
6. **Mechanism Design**：从“给定 game 求均衡”反过来，问 designer 怎样设计规则让 truth-telling 成为均衡。`Lec 6 课件页 3-23｜推荐练习：PS7 Q2, PS8 Q1-Q2`
7. **Optimal Auctions**：机制设计应用到多买家 allocation；收入最大化不是最高 value，而是最高 virtual value。`Lec 7 课件页 3-24｜推荐练习：PS9 Q1-Q4`

#### Economic Intuition

整门课的 motivation 是：市场和博弈里的“效率失败”很多不是因为人笨或市场不够竞争，而是因为 information constraints 改变了可实施的集合。高级微观的核心工作，就是把这种 constraint 写成 IC、IR、belief consistency、monotonicity 或 likelihood-ratio 条件。

## Topic 1: Games of Incomplete Information

### Key Concepts

#### Definition

不完全信息博弈 (game of incomplete information) 可以写成 $G=(\Theta,S,p,u)$：每个玩家有 type set $\Theta_i$、strategy set $S_i$、共同先验 $p$，以及 payoff function $u_i$。一个 Bayesian pure strategy 是函数 $s_i:\Theta_i\to S_i$，即“每种 type 选什么行动”。`Lec 1 课件页 11, 15｜推荐练习：PS1 Q1`

#### Economic Intuition

type 不是一个“标签”，而是把玩家私人知道的 payoff-relevant 信息装进模型。策略必须按 type 写，是因为同一个玩家在不同 type 下其实面对不同 incentives。

#### Definition

贝叶斯纳什均衡 (Bayesian Nash Equilibrium, BNE) 是一组 type-contingent strategies，使每个 type 在给定自己信念与他人策略时最大化期望 payoff。`Lec 1 课件页 15｜推荐练习：PS1 Q1, PS1 Q2`


#### Economic Intuition

BNE 把“我不知道你是谁”转换成“我知道你按某个 type-dependent rule 行动”。所以 equilibrium 的固定点不是 action-to-action，而是 strategy rule-to-strategy rule。它的核心思想就是*每个类型在给定条件信念下都最优响应*。

$$
s_{i}(\theta_{i}) = \arg\max_{\theta_{i}}  \sum_{\theta_{-i}} p(\theta_{-i}|\theta_{i}) u_{i} (s_{i}', s_{-i}(\theta_{-i}), (\theta_{i}, \theta_{-i}))
$$

^78e3d8


#### Answer Technique

写 BNE 时先列出每个 player/type 的策略变量，再写每个 type 的 best response。Cournot with private costs 的答案结构就是：$(q_1^\ast,q_2^\ast(c_H),q_2^\ast(c_L))$，然后分别对 firm 1 的 expected profit 与 firm 2 各 type 的 profit 写 FOC。`PS1 Q1; Sol PS1 课件页 1-2`

### Models

#### Definition

Harsanyi transformation：把不完全信息博弈看作自然 (Nature) 先抽取 type 的完全但不完美信息博弈。`Lec 1 课件页 12-14`

> 想象有一个“神”

#### Economic Intuition

这一步的作用是把“玩家不知道游戏是什么”变成“玩家知道一个更大的游戏，但不知道自然选了哪个 node”。这样我们可以继续用 game tree、belief updating 和 sequential rationality。

#### Definition

Public good provision with private costs：两人决定是否 contribute；收益为 1，成本 $c_i$ 私人知道。均衡通常是 threshold strategy：存在 $c_i^\ast$，使玩家在 $c_i\le c_i^\ast$ 时 contribute。`Lec 1 课件页 16-19; repeated contribution game 课件页 1-2`

#### Formula

若 $z_{-i}$ 是对方 contribute 的均衡概率，玩家 $i$ 在 $c_i\le z_{-i}$ 时 contribute；若成本 $U[0,2]$，对称均衡 threshold 为 $c^\ast=2/3$。`Lec 1 课件页 18-19; repeated contribution game 课件页 1-2`

#### Economic Intuition

私人低成本者更愿意贡献；但每个人都想 free ride，所以 threshold 由“自己贡献的 marginal cost”和“对方贡献概率带来的 marginal benefit”相等决定。均衡贡献概率内生，因为它来自对方同样的 threshold rule。

#### Definition

Higher-order beliefs 是“我相信什么”“我相信你相信什么”“我相信你相信我相信什么”的无限层级；Email game 显示 almost common knowledge 不等于 common knowledge。`Lec 1 课件页 20-29｜推荐练习：PS2 Q1`

> 不会出现在 Exam, Global game 不会考，但是求 equilibrium 是值得复习的。

#### Economic Intuition

Coordination 需要的不只是每个人都很确定 payoff 好，还需要每个人都确定别人也确定，别人也确定自己确定，如此循环。一个很小的信息结构差异可以摧毁共同知识，从而改变均衡。

#### Problem Pattern

Global games 题型用 noisy private signals 选出唯一 threshold equilibrium；PS2 要证明 $x^\ast=1/2$，并连接 risk dominance。`PS2 Q1; Sol PS2 课件页 1-3`

#### Answer Technique

看到 global game：先猜 cutoff strategy，再计算 conditional payoff from investing；用 indifference condition 固定 cutoff；最后解释 $\sigma\to0$ 时选择 risk-dominant equilibrium。`PS2 Q1; Sol PS2 课件页 1-3`

### Dynamic Incomplete Information

#### Definition

Perfect Bayesian Equilibrium (PBE) 由策略与 beliefs 组成：每个 history 上策略都在给定 beliefs 下最优；on-path beliefs 由 Bayes rule 更新。`Lec 1 课件页 39-40; Lec 2 课件页 3-6`

#### Economic Intuition

PBE 是 Bayesian game 里的 backward induction。关键区别是：继续往后推时，玩家不是只看 payoff，*还要用历史行动重新估计对方 type*。

#### Definition

Repeated entry game：incumbent 可能 weak 或 tough，第一期行动会向第二个 entrant 传递 type 信息；weak incumbent 可能为了 reputation 在第一期 fight。`Lec 1 课件页 31-38; Lec 3 课件页 24-25`



#### Economic Intuition

Reputation 的核心不是“fight 本身赚钱”，而是 fight 改变后来者的 posterior belief。短期亏损可以购买长期威慑。

#### Formula

Repeated public good contribution 的两期版本中，第一期 threshold $c^\ast$ 由第一期 contribute 与 not contribute 的 continuation payoff 相等决定；历史 $h_1=00,11,01,10$ 会改变第二期的 posterior distribution。`repeated contribution game 课件页 3-14`

#### Economic Intuition

第一期行动既产生当前公共品 payoff，也透露成本类型。低成本者贡献会让别人未来更愿意指望他继续贡献，因此动态信息可能放大或压低第一期贡献激励。

### Problem Patterns

#### Problem Pattern

- BNE calculation with private payoff/cost types：写 type-contingent best responses。`PS1 Q1; Sol PS1 课件页 1-2`
- Purification：用小的私人 payoff shocks 支撑纯策略 threshold，并让极限对应 complete-information mixed equilibrium。`PS1 Q2; Sol PS1 课件页 3-4`
- Global games：用 noisy signals 和 cutoff 选择 risk-dominant action。`PS2 Q1; Sol PS2 课件页 1-3`
- Disclosure game：证明低/高 type 在 costless disclosure 下几乎都选择 reveal。`PS2 Q2`

#### Common Mistakes

- 把 Bayesian strategy 写成一个 action，而不是 type-to-action function。`Lec 1 课件页 15｜推荐练习：PS1 Q1`
- 以为 posterior belief 可以随便设；on-path history 必须 obey Bayes rule。`Lec 1 课件页 36-40`
- 在 coordination/global game 中只看 $\theta$ 的概率很高，而忘记 higher-order beliefs。`Lec 1 课件页 25-29｜推荐练习：PS2 Q1`

## Topic 2: Signalling Games

### Key Concepts

#### Definition

Signalling game 的 timing：Nature 选 sender type；sender 观察 type 后选 signal/action；receiver 观察 signal 但不观察 type，然后选择 response；payoff 取决于 type、signal、response。`Lec 2 课件页 4-6; EC487_Lecture_3_Sup 课件页 5-7`

#### Economic Intuition

signal 有经济内容，是因为行动成本或 payoff 会随 type 改变。receiver 看到行动后问的不是“这个行动本身好不好”，而是“什么 type 有动力选择这个行动”。

#### Definition

Pooling equilibrium：不同 sender types 选择同一 signal；separating equilibrium：不同 types 选择不同 signals。`Lec 2 课件页 7-13｜推荐练习：PS3 Q1-Q3, Exam 2025 Q1`

#### Economic Intuition

Pooling 的好处是隐藏身份，坏处是信息不传递；separating 的好处是高 type 被识别，坏处是高 type 常常要烧掉资源来证明自己。

### Beer-Quiche

> 暗示了可能会考，pset 里提到了 [[Mixed-Strategy Nash Equilibrium]].

#### Definition

Beer-Quiche game 中 sender 是 surly 或 wimpy，先选 beer/quiche；receiver 观察 breakfast 后选择 fight/run away。多个 pooling/PBE 可能靠 off-path beliefs 支撑。`Lec 2 课件页 7-13｜推荐练习：PS3 Q3, Exam 2025 Q1`

> 究竟如何理解 off-path 这个概念？在理解这个概念之前，需要知道什么是 Equilibrium Path，指在均衡策略下，实际上会发生的序列。off-path 简单来理解就是“不应该发生的事”。
> 
> off-path 发生的核心问题就是 Bayes Rule 无法应用（因为此时此刻分母为 0），如果发生了，那么 Receiver 就没有信念可用。就过就是：off-path belief 可以任意设定。




#### Economic Intuition

模型的笑点其实很严肃：同一个 breakfast 对不同 type 的成本/偏好不同，所以 receiver 试图从早餐推断 toughness。但如果某个早餐从未在均衡路径上出现，belief 没有 Bayes rule 约束，就会出现很多“看似合法但不可信”的均衡。

#### Problem Pattern

2025 Q1 要判断 pooling、mixed-strategy equilibrium、intuitive criterion、payoff variation 下 separating/pooling 是否存在。`Exam 2025 页 2｜推荐练习：PS3 Q3`

#### Answer Technique

Beer-Quiche 题按四步写：先设 sender strategies；再用 on-path Bayes rule 算 receiver belief；再给 receiver best response；最后检查每个 sender type 是否愿意 deviation。refinement 题再问 off-path deviation 应该被归因于哪个 type。`Lec 2 课件页 9-13, 27-28｜推荐练习：Exam 2025 Q1`

### Spence Signalling

#### Definition

Spence education signalling：worker type $\theta_L,\theta_H$，教育 $e$ 不提高 productivity，只作为 costly signal；firm 观察 $e$ 后给 wage $w$。`Lec 2 课件页 14-22｜推荐练习：PS3 Q1-Q2`

#### Formula

Firm 的 best-response wage 是 posterior expected productivity：
$$
w(e)=\mu(\theta_H\mid e)\theta_H+[1-\mu(\theta_H\mid e)]\theta_L.
$$
`Lec 2 课件页 15`

#### Economic Intuition

竞争性 wage 等于期望 productivity。education 影响 wage 不是因为生产率变了，而是因为它改变了 firm 的 posterior belief。

#### Definition

**Single-crossing condition**：高 productivity type 的 signalling marginal cost 更低，通常写作 $\partial^2 c(e,\theta)/\partial e\partial\theta<0$。`Lec 2 课件页 18-19｜推荐练习：PS3 Q1`

#### Economic Intuition

Separation 能成立，是因为同一个 signal 对低 type 太贵、对高 type 可承受。若 single crossing 不成立，education 就不能可靠地区分 types。

#### Formula

Two-type separating equilibria 满足 $e_L=0$，且
$$
c(e_H,\theta_L)\ge \theta_H-\theta_L \ge c(e_H,\theta_H).
$$
Least-cost separating equilibrium 进一步满足 $c(e_H,\theta_L)=\theta_H-\theta_L$。`Lec 2 课件页 17-18, 34｜推荐练习：PS3 Q1`

#### Economic Intuition

左边约束防止低 type 模仿高 type；右边约束保证高 type 愿意付出 signal cost。least-cost separating 是“刚好吓退低 type”的最小浪费。

#### Formula

Pooling equilibrium at $e^\ast$ 可由 off-path beliefs 支撑；存在条件包括 $p(\theta_H-\theta_L)\ge c(e^\ast,\theta_L)$。`Lec 2 课件页 20-22｜推荐练习：PS3 Q1-Q2`

#### Economic Intuition

Pooling 靠的是：偏离者被 firm 悲观地解释成低 type。只要这种惩罚足够强，所有 types 都愿意留在 pool 中。

### Equilibrium Refinements

#### Definition

Intuitive Criterion 排除某些 off-path beliefs：如果某个 deviation 对某些 type equilibrium dominated，却可能让另一些 type 获益，则 receiver 的 off-path belief 应该只放在“可能获益”的 type 上。`Lec 2 课件页 23-31; EC487_Lecture_3_Sup 课件页 8-11`

#### Economic Intuition

它把 off-path deviation 当作一段“信号语言”：如果某 type 绝不会这么做，就不应该用“也许是这个 type”来惩罚偏离。*可信的 belief 要尊重偏离激励*。

#### Definition

D1 Criterion 比 Intuitive Criterion 更强：它比较哪些 type 对某个 deviation 有更大的获益集合，保留“更可能 deviation”的 type。`Lec 2 课件页 36-39; EC487_Lecture_3_Sup 课件页 29-34`

#### Economic Intuition

Intuitive Criterion 问“谁可能偏离”；D1 进一步问“谁更有理由偏离”。所以 D1 的 surviving equilibria 集合通常是 Intuitive Criterion surviving equilibria 的子集。

#### Formula

在 two-type Spence 中，所有 pooling equilibria fail intuitive criterion；surviving equilibrium 是 least-cost separating equilibrium。多 type Spence 中 D1 选择 efficient/Riley outcome。`Lec 2 课件页 29-35; EC487_Lecture_3_Sup 课件页 22-28, 35-51｜推荐练习：PS3 Q1-Q2`

#### Economic Intuition

高 type 可以用略高于 pooling 的 education credible 地说：“低 type 付不起这个 signal，但我付得起。”因此 pooling 经不起合理 off-path belief。D1 在多 type 时更细，因为中间 type 和高 type 都可能偏离，需要比较谁从偏离中获益更多。

### Problem Patterns

#### Problem Pattern

- Enumerate pooling/separating/mixed PBE in Beer-Quiche. `PS3 Q3; Exam 2025 Q1`
- Compare candidate Spence equilibria by type payoffs, firm payoffs, Pareto dominance. `PS3 Q1`
- Construct partial pooling and test intuitive criterion. `PS3 Q2`
- Apply Intuitive/D1 in stepwise form: identify dominated types, restrict beliefs, check deviation profitability. `EC487_Lecture_3_Sup 课件页 8-11, 29-33｜推荐练习：PS3 Q2-Q3`

#### Common Mistakes

- 只写 pooling/separating strategies，不写 beliefs 与 receiver best responses。`Lec 2 课件页 5-6`
- 把 off-path beliefs 当成完全自由；refinement 题中它们正是被限制的对象。`Lec 2 课件页 23-39`
- Spence 中忘记 low-type IC 是决定 least-cost signal 的关键。`Lec 2 课件页 18, 34`

Paula's note: Intuitive Criterion is enough! D1 doesn't matter.



## Topic 3: Cheap Talk and Reputation Games

### Cheap Talk

#### Definition

Crawford-Sobel cheap talk：sender 观察 $\theta\sim U[0,1]$ 后发送 costless message $m$；receiver 选 action $a$；receiver ideal action 是 $\theta$，sender ideal action 是 $\theta+b$。`Lec 3 课件页 4-7｜推荐练习：PS4 Q1-Q3, Exam 2025 Q4`

#### Economic Intuition

Cheap talk 的核心 tension 是：message 没有直接成本，所以它只能靠 receiver 的 equilibrium response 产生激励。communication 能不能有信息，取决于 sender 和 receiver 的偏好是否足够接近。

#### Formula

Receiver best response:
$$
a^\ast(m)=E[\theta\mid m].
$$
Sender payoff:
$$
\pi_S(a,\theta)=\bar\pi_S-(a-(\theta+b))^2,
$$
receiver payoff:
$$
\pi_R(a,\theta)=\bar\pi_R-(a-\theta)^2.
$$
`Lec 3 课件页 5-7`

#### Economic Intuition

Receiver 永远做 posterior mean，因为 quadratic loss 下 mean 最小化 expected squared error。Sender 的 bias $b$ 使他想把 receiver action 往上推。

#### Definition

Babbling equilibrium 总是存在：message 不传递信息，receiver 忽略 message 并选 prior mean $1/2$。`Lec 3 课件页 8-9`

#### Economic Intuition

如果 receiver 不相信 message，sender 也没有理由让 message 随 state 改变。No information transmission 本身可以自我实现。

#### Formula

Fully revealing equilibrium 存在当且仅当 $b=0$。当 $b>0$ 时，sender 总想夸大 state，使 truth-telling 不能被 sustained。`Lec 3 课件页 10-12`

#### Economic Intuition

完全揭示需要 sender 与 receiver 想要同一个 action。只要 sender 有 bias，他就会希望 receiver 比真实 state 反应更强一点。

#### Formula

Two-message interval equilibrium 的 cutoff 是
$$
\theta_1=\frac12-2b,
$$
存在条件是 $b\le 1/4$。`Lec 3 课件页 15-18｜推荐练习：PS4 Q1, Exam 2025 Q4a`

#### Economic Intuition

高 message 的区间更大，因为 biased sender 更愿意把中间 state 往高处报。receiver 知道这一点，于是均衡只能 coarse：message 表示一个区间，而不是精确 state。

#### Formula

$n$-interval equilibrium 的相邻区间长度满足
$$
(\theta_{k+1}-\theta_k)=(\theta_k-\theta_{k-1})+4b.
$$
`Lec 3 课件页 19-21｜推荐练习：PS4 Q1-Q2, Exam 2025 Q4`

#### Economic Intuition

越高的 message 越容易被低一点的 type 夸大冒用，所以高区间必须更宽，才能让边界 type 在相邻 messages 间 indifferent。

#### Formula

给定 interval partition，receiver ex-ante payoff 是
$$
E[\pi_R]=-\sum_{k=0}^{n-1}\frac{1}{12}(\theta_{k+1}-\theta_k)^3,
$$
sender ex-ante payoff 是 $E[\pi_S]=E[\pi_R]-b^2$。`Sol PS4 课件页 1-3｜推荐练习：PS4 Q2, Exam 2025 Q4c-Q4d`

#### Economic Intuition

在固定 bias 下，sender 与 receiver ex ante 都喜欢更精细的信息，因为更细 partitions 降低 action 与 state 的误差。冲突在 interim truth-telling，不在 ex-ante ranking。

### Reputation Games

#### Definition

Reputation game：一个 long-lived player 与一串 short-lived players 互动；少量概率的 behavioral/crazy type 会改变 short-lived players 对 rational type 的 beliefs。`Lec 3 课件页 23-31｜推荐练习：PS5 Q1, Exam 2025 Q3`

#### Economic Intuition

即使 rational type 未来会 selfishly defect，只要别人相信他可能是 behavioral type，他就可能为了维持这种 belief 而短期模仿 behavioral type。

#### Definition

Finitely repeated Prisoner's Dilemma 加入 crazy type 后，早期 cooperation 可以出现；例如 $T=2$ 中 normal player 2 仍 always defects，但 player 1 在第一期可能因 $q>1/2$ cooperate；$T=3$ 中 normal player 2 也可能第一期 cooperate 来维持 reputation。`Lec 3 课件页 26-31`

#### Economic Intuition

普通有限重复 PD 的 backward induction 会消灭合作；但 incomplete information 打断这个逻辑，因为行动不仅给当前 payoff，还影响对方对你是否 crazy/commitment type 的 posterior。

#### Problem Pattern

Repeated contracting/persistent type 题与 reputation 逻辑相同：第一期 contract/effort 不仅产生当期 payoff，还影响第二期 principal 的 posterior $\hat\gamma$，从而改变 continuation rent。`Exam 2025 页 3-4｜推荐练习：Exam 2025 Q3, PS5 Q1`

#### Answer Technique

动态声誉题先从最后一期解 optimal action/contract，再把 continuation payoff 代回第一期 IC。不要先猜第一期行为；第一期激励取决于第二期 belief-induced payoff。`Lec 1 课件页 35-39; Lec 3 课件页 28-31｜推荐练习：Exam 2025 Q3`

### Common Mistakes

#### Common Mistakes

- Cheap talk 里把 message 当作可验证报告；实际上 message 本身无成本、不可承诺。`Lec 3 课件页 4-6`
- 只求 receiver action，不检查边界 type 的 indifference condition。`Lec 3 课件页 16-20｜推荐练习：PS4 Q1`
- Reputation 题中忘记 behavioral type 的存在会改变 rational type 的 payoff，即使 rational type 本身没有承诺。`Lec 3 课件页 25-31`

## Topic 4: Markets with Adverse Selection

> 整节课不考!!!

### Akerlof-Style Market

#### Definition

Adverse selection：交易意愿与私人信息相关，导致愿意交易的人群不是总体的随机样本。`Lec 4 课件页 3-10｜推荐练习：PS5 Q2-Q3`

> 怎么感觉跟 Labour 的还有点关系？

#### Economic Intuition

价格不仅分配 surplus，还筛选参与者。买方/firm 看到愿意以某个价格交易的人，会推断这群人的平均质量可能更低。

#### Definition

Private information labor market：worker type/productivity $\theta$ 私人知道，firm 只知道接受 wage $w$ 的 worker 集合；competitive equilibrium wage 等于接受者的平均 productivity。`Lec 4 课件页 4-7`

#### Formula

如果接受集合由 $r(\theta)\le w$ 描述，则 equilibrium wage 满足
$$
w^\ast=E[\theta\mid r(\theta)\le w^\ast].
$$
`Lec 4 课件页 6-10｜推荐练习：PS5 Q2-Q3`

#### Economic Intuition

Firm 的 zero-profit wage 必须等于被雇佣者平均 productivity；但 wage 越高，接受者集合也变，平均质量随之内生变化。

#### Definition

Market unraveling：若高 type 的 outside option 更高，较高 wage 吸引来的新增 workers 可能仍然平均质量不足，使 equilibrium 只雇佣最低 type。`Lec 4 课件页 9-11｜推荐练习：PS5 Q3`

#### Economic Intuition

市场崩掉不是因为没有 gains from trade，而是因为无法区分质量。高质量者不愿以 pooling price 出售，低质量者留下，进一步压低 price。

### Competitive Screening

#### Definition

Screening in competitive markets：firm 通过 menu of contracts $(w,t)$ 让不同 worker types 自我选择；$t$ 是 costly task。`Lec 4 课件页 12-17`

#### Economic Intuition

Screening 与 signalling 相反：signalling 是 informed side 主动选 signal；screening 是 uninformed side 设计一组合同让 informed side 自己暴露 type。

#### Formula

在两类 worker screening equilibrium 中，low type 接受 $(\theta_L,0)$，high type 接受 $(\theta_H,\hat t_H)$，其中 $\hat t_H$ 使 low type 不愿模仿 high-type contract。`Lec 4 课件页 17, 21-23`

#### Economic Intuition

High type 的工资反映 productivity，但必须附带 costly task 以防 low type mimicking。扭曲落在 high-type contract 的任务要求上；这和 Spence 的 education cost 是同一个 sorting logic。

#### Formula

No pooling equilibrium：若两类 worker 接受同一 contract，firm 可设计小幅偏离 contract 吸引有利类型并获得正利润。`Lec 4 课件页 18-20`

#### Economic Intuition

竞争下 pooling 很脆弱，因为任何 firm 都想 cream-skim：稍微改 contract，只吸引高质量/低成本群体。

#### Exam Evidence

2025 past exam 未直接考 adverse selection/screening，但 PS5 Q2-Q3 覆盖 positive selection 与 certification，说明这块仍是 problem set 重点。`Exam 2025 页 2-5; PS5 Q2-Q3`

### Problem Patterns

#### Problem Pattern

- Positive selection：当 $r(\theta)$ 随 $\theta$ 下降时，接受工作的是更 capable workers，并可能出现过度 employment。`PS5 Q2`
- Certification：把市场分成 certified/uncertified 两个 pool，分别求 equilibrium wage 与 employment threshold。`PS5 Q3`
- Screening diagrams：用 indifference curves 与 zero-profit lines 证明 no pooling、separating contract、possible nonexistence。`Lec 4 课件页 16-24`

#### Common Mistakes

- 把 adverse selection 写成“低质量多”，而不是“交易集合因私人信息而被选择”。`Lec 4 课件页 9`
- 忘记 competitive equilibrium wage 要等于实际接受者的平均 productivity，而不是 unconditional mean。`Lec 4 课件页 6-10`
- Screening 中只写 IC，不检查 firm deviations/zero profit。`Lec 4 课件页 18-24`

## Topic 5: Contracting with Hidden Action / Moral Hazard

### Moral Hazard Setup

如何理解 First-Best? 即若 effort 可观测而且可以写入合同，唯一需要的就是满足 $IR$ .

> first-best 的本质是，当信息完全的时候，在合同制定时只需要解决参与问题（IR）而不是激励问题（IC）。 IR 可以简单理解为，合同需要设计成让 agent 的期望收益比 outside option 高的情况。

#### Definition

Moral hazard：principal 不能观察 agent effort $e$，只能观察与 effort 相关的 outcome/profit $\pi$，并用 wage schedule $w(\pi)$ 提供激励。`Lec 5 课件页 3-5｜推荐练习：PS6 Q1-Q2, PS7 Q1, Exam 2025 Q2`

注意这里给出的 $wage$ 是按照具体的产出决定的，因为看不到真正的 effort，只能通过验收成果来倒推。

#### Economic Intuition

问题不是 agent 不知道该做什么，而是 effort 不可验证，无法直接写进合同。合同必须通过 noisy performance signal 间接奖励 effort。

#### Formula

Contractible effort benchmark:
$$
\max_{w,e}\int(\pi-w(\pi))f(\pi\mid e)d\pi
$$
subject to
$$
\int v(w(\pi))f(\pi\mid e)d\pi-c(e)\ge \bar u.
$$
`Lec 5 课件页 6-9`

#### Economic Intuition

若 effort 可 contract，principal 只需选择 efficient effort 并给 agent 最便宜的保险。risk-averse agent 面对 risk-neutral principal 时，最优 wage 是 flat wage。

#### Formula

给定 effort $e$，contractible benchmark 的 FOC 给出
$$
\frac{1}{v'(w(\pi))}=\lambda,
$$
所以 $w(\pi)$ 不随 $\pi$ 变化。`Lec 5 课件页 7-8`

#### Economic Intuition

flat wage 是 optimal insurance：如果 effort 已经被锁定，没必要让 risk-averse agent 承担 outcome risk。

> 大量的 Lagrangian 在这里。

### Hidden Action

#### Formula/Proposition

若 agent risk-neutral，可通过 $w(\pi)=\pi-\alpha$ 把 firm “卖给 agent”，使 agent internalize output return。`Lec 5 课件页 10-11`




#### Economic Intuition

risk-neutral agent 不怕风险，所以最强激励是让他成为 residual claimant。principal 用 fixed fee $\alpha$ 抽取 surplus。

#### Formula

> Case 2

Risk-averse agent、implement high effort $e_H$ 的最优 contract FOC:
$$
\frac{1}{v'(w(\pi))}=\lambda+\mu\left[1-\frac{f(\pi\mid e_L)}{f(\pi\mid e_H)}\right],
$$
其中 participation constraint 与 incentive constraint 都 bind。`Lec 5 课件页 12-17｜推荐练习：PS6 Q2`

#### Economic Intuition

工资随 outcome 变化，是为了让高 effort 更有吸引力；但变化越大，risk-averse agent 承担风险越多，principal 必须补偿 risk premium。这就是 insurance-incentive trade-off。

#### Definition

Monotone Likelihood Ratio Property (MLRP)：$f(\pi\mid e_L)/f(\pi\mid e_H)$ 随 $\pi$ 下降时，高 outcome 更支持 high effort；最优 high-effort wage 随 $\pi$ 单调上升。`Lec 5 课件页 17-18｜推荐练习：PS6 Q1`

#### Economic Intuition

MLRP 说 outcome 越高，越像是 high effort 产生的。因此高 outcome 应得更高工资，既奖励努力，也避免把奖励浪费在不含信息的 outcome 上。

#### Formula

Hidden action 下 agent 的 expected wage 高于 contractible effort case，因为 non-flat wage 让 risk-averse agent 承担风险，需要 risk premium。`Lec 5 课件页 19-20`

#### Economic Intuition

Moral hazard 的福利损失来自两个方向：努力可能偏低，以及为了诱导努力必须制造 wage risk。

### Informativeness and Sufficient Statistics

#### Formula

若额外信号 $y$ 与 effort 无关，或在给定 $\pi$ 后不再提供关于 effort 的信息，则 optimal contract 不使用 $y$。形式上，若
$$
f(\pi,y\mid e)=f_1(\pi\mid e)f_2(y\mid \pi),
$$
则 $y$ 是无用信息。`Lec 5 课件页 21-23`

#### Economic Intuition

合同只应该奖励“关于 effort 的信息”。纯噪声只增加 wage risk，不改善 incentive provision。

### LEN Model

#### Definition

LEN model：linear contract $w(\pi)=a+b\pi$，exponential utility，normal noise；agent effort 连续。`Lec 5 课件页 24-28`

#### Formula

最优 bonus $b^\ast$ 随 risk aversion $\eta$ 和 noise variance $\sigma^2$ 上升而下降；努力 $e^\ast=b^\ast/c$ 也下降。`Lec 5 课件页 26-28`

#### Economic Intuition

bonus 是激励强度。风险越大或 agent 越怕风险，给强 bonus 的保险成本越高，所以 principal 降低激励并接受较低 effort。

### Problem Patterns

#### Problem Pattern

- Limited liability + MLRP：最小成本 high-effort contract 只在最高 outcome 付正工资。`PS6 Q1; Sol PS6 课件页 1-2`
- Two-output optimal contract：先写 IC/IR，通常 low-output wage 压到最低，高-output wage 用 binding IC 定。`PS6 Q2; Sol PS6 课件页 2-4`
- Uniform noise special case：构造 punishment region 可达到 first-best，即 hidden action 未必总造成 welfare loss。`PS7 Q1; Sol PS7 课件页 1-2`
- Hidden type + hidden action：分别比较“诱导两类 high effort”“只诱导 low-cost high effort”“都 low effort”的最小成本合同与 expected payoff。`Exam 2025 页 2-3`

#### Answer Technique

Moral hazard 题最稳结构：先明确要 implement 哪个 effort/type set；写 IC；把 participation/limited liability/nonnegativity 约束放进去；用 binding constraints 求 minimum cost；最后比较 principal payoff。`Lec 5 课件页 12-20｜推荐练习：PS6 Q2, Exam 2025 Q2`

#### Common Mistakes

- 把 first-best contract 与 hidden-action contract 混在一起；first-best 可以 flat wage，hidden action 通常必须 performance-based。`Lec 5 课件页 6-20`
- MLRP 题中说“高 output 好所以多付”，但不说明高 output 是 high effort 的更强 evidence。`Lec 5 课件页 17-18｜推荐练习：PS6 Q1`
- 2025 Q2/Q3 这类题不要忘记 hidden type：同一 contract 对 low-cost 和 high-cost agent 的 IC 不同。`Exam 2025 页 2-4`

## Topic 6: An Introduction to Mechanism Design

### Motivation

#### Definition

Mechanism design 把问题反过来：不是给定 game 求 equilibrium，而是 designer 设计规则，使 agents 在私人信息下的 equilibrium 实现目标 allocation/payment。`Lec 6 课件页 3-5`

#### Economic Intuition

如果 information constraints 无法消除，designer 的工具不是命令 truth，而是设计 incentives 让 truth-telling 自愿发生。

### Two-Type Screening

#### Definition

Simple screening：seller 面对 buyer type $\theta_L,\theta_H$，buyer utility 为 $\theta q-p$，seller 选择 menu $(q_L,p_L),(q_H,p_H)$。`Lec 6 课件页 6-11｜推荐练习：PS7 Q2`

#### Formula

Two-type optimal screening 的典型性质：high type 的 quantity 无 distortion，满足 $c'(q_H)=\theta_H$；low type quantity downward distorted；high type 获得 information rent；low type IR bind。`Lec 6 课件页 8-11｜推荐练习：PS7 Q2`

#### Economic Intuition

高 type 更愿意购买高 quantity。为了阻止高 type 假装低 type，seller 必须给 high type 留 rent；为了减少这笔 rent，seller 降低 low-type package 的吸引力，于是 low quantity 被扭曲向下。高 type 不扭曲是 no distortion at the top。

### Direct Mechanisms and Revelation Principle

#### Definition

Direct mechanism 直接要求 agent report type，并规定 $(q(\hat\theta),p(\hat\theta))$；incentive compatibility 要求 truth-telling 对每个 type 最优，individual rationality 要求参与不低于 outside option。`Lec 6 课件页 12-14`

#### Economic Intuition

Direct mechanism 不是说现实中一定直接问 type，而是 revelation principle 允许我们把任何 equilibrium outcome 翻译成一个 truth-telling direct mechanism 来分析。

#### Definition

Revelation Principle：若某 general mechanism 的某 equilibrium 实现某 outcome，则存在 direct mechanism，在 truth-telling equilibrium 下实现同一 outcome。`Lec 6 课件页 12-14; Lec 7 课件页 13-15｜推荐练习：PS9 Q2`

#### Economic Intuition

所有策略复杂性都可以“折叠”进机制规则里。分析者只需找 truth-telling IC direct mechanisms，就没有丢掉可实现结果。

### Continuum Types and Virtual Values

#### Definition

连续 type screening 中，令
$$
U(\theta)=\theta q(\theta)-p(\theta).
$$
IC 等价于 $q$ nondecreasing 且
$$
U(\theta)=U(\underline\theta)+\int_{\underline\theta}^{\theta}q(\tilde\theta)d\tilde\theta.
$$
`Lec 6 课件页 15-18｜推荐练习：PS8 Q1`

#### Economic Intuition

高 type 边际上更喜欢 quantity，所以 truthful allocation 必须单调。Integral formula 说，高 type 的 rent 正是一路累积的 marginal quantity benefit。

#### Formula

Seller objective 可重写成 virtual surplus:
$$
\int_{\underline\theta}^{\bar\theta}
\left[\left(\theta-\frac{1-F(\theta)}{f(\theta)}\right)q(\theta)-c(q(\theta))\right]f(\theta)d\theta.
$$
Virtual value:
$$
\Psi(\theta)=\theta-\frac{1-F(\theta)}{f(\theta)}.
$$
`Lec 6 课件页 19-22｜推荐练习：PS8 Q2`

#### Economic Intuition

卖方收入最大化不是最大化真实 surplus $\theta q-c(q)$，而是最大化扣除 information rent 成本后的 virtual surplus。$\frac{1-F}{f}$ 是给更高 type 留 rent 的 shadow cost。

#### Definition

Myerson regularity：virtual value $\Psi(\theta)$ nondecreasing。regular case 下可 pointwise maximize virtual surplus；non-regular case 需要 ironing。`Lec 6 课件页 21-23`

#### Economic Intuition

IC 要求 allocation 随 type 单调。若 virtual value 本身单调，pointwise solution 自动满足 IC；若不单调，需要 ironing 把不单调部分“抹平”成可实施 allocation。

#### Formula

Take-it-or-leave-it single-unit selling：optimal posted price/reserve $\theta^\ast$ 解
$$
\theta^\ast-\frac{1-F(\theta^\ast)}{f(\theta^\ast)}=c.
$$
`Lec 6 课件页 24-26`

#### Economic Intuition

价格高于成本，不只是垄断 markup，也是在筛选高 valuation buyer。seller 宁可放弃一些 positive-surplus trades，以减少低价出售给高 type 带来的 rent loss。

### Problem Patterns

#### Problem Pattern

- Taxation principle：从 direct mechanism 的 $q,p$ 构造 nonlinear tariff $P(q)$，让 type 自选对应 quantity。`PS8 Q1`
- Closed-form mechanism：先算 $\Psi(\theta)$，再用 $c'(q)=\Psi(\theta)$；若 $\Psi\le0$ 则 no trade/zero quantity。`PS8 Q2; Lec 6 课件页 20-22`
- Nonnegativity constraints：用 KKT multipliers 检查 $q_L\ge0,q_H\ge0$ 是否 bind。`PS7 Q2; Sol PS7 课件页 2-3`

#### Common Mistakes

- 把 $p(\theta)$ 当成自由选择；在 IC 下，price function 基本由 $q(\theta)$ 与最低 type utility pin down。`Lec 6 课件页 16-18`
- 忘记 virtual value 可能为负；收入最大化时正 surplus trade 也可能不发生。`Lec 6 课件页 21-26`
- 只写 revelation principle 名字，不说明它允许限制到 direct truthful mechanisms。`Lec 6 课件页 12-14`

## Topic 7: Mechanism Design and Optimal Auctions

### Auction Basics

#### Definition

Independent Private Values (IPV)：一个物品、$n$ 个 bidders；bidder $i$ 的 valuation $v_i\sim F[0,1]$ 独立同分布，自己知道 $v_i$，seller 与其他 bidders 不知道。`Lec 7 课件页 4｜推荐练习：PS9 Q1-Q4`

#### Economic Intuition

Private value 下，赢得物品的价值只取决于自己的 type；竞争来自不知道别人愿意出多少钱，而不是共同价值估计误差。

#### Definition

常见 auctions：first-price、all-pay、second-price/Vickrey、English、Dutch；English 动态实现 second-price，Dutch 动态实现 first-price。`Lec 7 课件页 5-6｜推荐练习：PS9 Q1`

#### Economic Intuition

不同 auction format 改变的是 payment rule 和 strategic shading，不一定改变 allocation rule。Revenue equivalence 正是抓住这一点。

#### Formula

Second-price auction 中 truthful bidding $b(v)=v$ 是 dominant strategy。`Lec 7 课件页 7-8`

#### Economic Intuition

你的 bid 只决定是否赢，不决定赢时付多少钱；最优 cutoff 就是自己的 valuation。bid 低了可能错失 profitable win，bid 高了可能赢下 negative-surplus trade。

#### Formula

First-price symmetric equilibrium bidding:
$$
b(v_i)=\frac{\int_0^{v_i}x f^{\max}_{n-1}(x)dx}{F^{\max}_{n-1}(v_i)}.
$$
`Lec 7 课件页 9-11｜推荐练习：PS9 Q1`

#### Economic Intuition

First-price bid 是在“赢的概率”和“赢时利润”之间 trade off。均衡中 bid shaded below value，因为赢家支付自己的 bid。

### Direct Mechanisms and Revenue Equivalence

#### Definition

Auction mechanism 可写成 action spaces $M_i$、allocation probabilities $p_i$、payments $t_i$；direct mechanism 让 bidder report valuation。`Lec 7 课件页 12-17｜推荐练习：PS9 Q2`

#### Economic Intuition

Auction 也是 mechanism design：bid 是 message，allocation/payment rule 决定 incentives。把 bid space 换成 type report 后，可直接用 IC 和 envelope formula。

#### Formula

Bayesian IC direct mechanism 中，interim winning probability $P_i(v_i)$ 必须 nondecreasing，且 interim utility 满足
$$
U_i(v_i)=U_i(0)+\int_0^{v_i}P_i(x)dx.
$$
`Lec 7 课件页 16-17`

#### Economic Intuition

Valuation 越高越愿意赢，所以可实施的 allocation 必须让高 type 至少不比低 type 更少赢。Utility integral 是高 type 因更高 valuation 累积出来的信息 rent。

#### Formula

Revenue Equivalence Theorem：若两个 IC direct mechanisms 有同一 allocation rule 且最低 type payoff 相同，则每个 type 的 expected payment 与 seller expected revenue 相同。`Lec 7 课件页 18-20｜推荐练习：PS9 Q3`

#### Economic Intuition

同一 allocation rule 固定了每个 type 赢的概率函数 $P_i$；IC 又固定了 utility slope；最低 type utility 相同就 pin down 整条 utility curve，因此 expected payment 也被 pin down。

### Optimal Auctions

#### Formula

Seller expected revenue 可写成 virtual surplus：
$$
\sum_i\int_0^1\left(v_i-\frac{1-F_i(v_i)}{f_i(v_i)}\right)P_i(v_i)f_i(v_i)dv_i-U_i(0).
$$
`Lec 7 课件页 21-23`

#### Economic Intuition

收入最大化把 bidder 的 valuation 换成 virtual valuation，因为把物品给高 type 时，seller 还要支付/放弃相应的信息租。

#### Formula

Regular case optimal auction：把物品给最高非负 virtual value 的 bidder；若所有 virtual values 都为负，则不出售。若 bidders i.i.d. regular，second-price auction with reserve price 最优，reserve $r$ 满足
$$
r=\frac{1-F(r)}{f(r)}.
$$
`Lec 7 课件页 22-24｜推荐练习：PS9 Q4`

#### Economic Intuition

效率要求给最高 valuation；收入最大化要求给最高 virtual valuation。reserve price 是 seller 对“低 virtual value trade”说不，从而牺牲部分效率换取更高收入。

### Problem Patterns

#### Problem Pattern

- Directly compute bidding functions by bidder FOC for modified first-price/all-pay/losers-pay auctions。`PS9 Q1; Sol PS9 课件页 1-4`
- Construct direct mechanisms implementing indirect auction equilibria。`PS9 Q2; Sol PS9 课件页 4-6`
- Use revenue equivalence to solve mixed first/second-price auction。`PS9 Q3; Sol PS9 课件页 6-8`
- Compute reserve-price revenue with order statistics and verify Myerson reserve。`PS9 Q4; Sol PS9 课件页 8-11`

#### Common Mistakes

- Revenue equivalence 不等于所有 auctions 收入一样；必须 allocation rule 与最低 type utility 相同。`Lec 7 课件页 18-21`
- Optimal auction 不一定 efficient；可能不卖，也可能给最高 virtual value 而非最高 valuation。`Lec 7 课件页 23-24`
- First-price FOC 必须先对 off-equilibrium bid 求导，再用 symmetry 代入 $b=b(v)$。`Lec 7 课件页 9-10｜推荐练习：PS9 Q1`

## Past Exam Analysis

### What 2025 Actually Tested

| Question | Topic | Core skill | Source |
|---|---|---|---|
| Q1 | Beer-Quiche signalling | pooling/mixed/separating PBE; intuitive criterion under payoff variation | `Exam 2025 页 2｜推荐练习：PS3 Q3` |
| Q2 | Moral hazard with hidden type and hidden action | cost-minimizing contracts for different effort/type targets; compare principal payoff | `Exam 2025 页 2-3｜推荐练习：PS6 Q2` |
| Q3 | Repeated contracting | posterior belief, continuation payoff, first-period incentive constraints | `Exam 2025 页 3-4｜推荐练习：PS5 Q1, PS6 Q2` |
| Q4 | Cheap talk | construct two-message equilibrium; disprove candidate strategy; compare ex-ante payoffs; explain equilibrium vs Pareto ranking | `Exam 2025 页 4-5｜推荐练习：PS4 Q1-Q2` |

#### Economic Intuition

2025 的题目共同点是“构造并解释 equilibrium”，不是机械背 theorem。每题都要求你把 incentive constraint 或 indifference condition 讲清楚：sender 为什么不偏离，agent 为什么 effort，principal 为什么这样更新 belief，cheap-talk 边界 type 为什么 indifferent。

### Likely Exam-Useful Skills

#### Answer Technique

1. **Equilibrium construction template**：strategies $\to$ beliefs $\to$ best responses $\to$ deviations/refinement。`Lec 2 课件页 3-13｜推荐练习：Exam 2025 Q1`
2. **IC-first contract template**：先指定 implement target，再写最低成本 contract；最后比较 payoff。`Lec 5 课件页 12-20｜推荐练习：Exam 2025 Q2`
3. **Backward induction with beliefs**：最后一期 optimal policy 先解，再代回第一期 incentive。`Lec 1 课件页 35-40; Lec 3 课件页 28-31｜推荐练习：Exam 2025 Q3`
4. **Threshold/partition cheap-talk template**：receiver posterior mean + boundary type indifference + ex-ante payoff comparison。`Lec 3 课件页 15-22｜推荐练习：Exam 2025 Q4`

#### Common Mistakes

- 因为 2025 没考 auctions/mechanism/adverse selection，就误以为今年不会考；样本只有一份，证据太少。`Syllabus 页 1; Exam 2025 页 1-5`


## 21-Hour Problem-First Review Roadmap

默认 7 次，每次 3 小时。每次都按同一节奏走：

| Time | Task |
|---|---|
| 0:00-0:20 | 预览题目，写出每小问考什么 |
| 0:20-1:35 | 不看 notes 轻计时尝试 |
| 1:35-2:20 | 对照 solution/课件，标出 gap |
| 2:20-2:50 | 回到精确课件页修补概念/公式 |
| 2:50-3:00 | 更新 error log，选下一次 redo target |

### Session 1: Signalling and PBE

#### Goal

能在 Beer-Quiche 与 Spence 中完整构造 PBE，并解释 off-path beliefs 与 refinement。`Lec 2 课件页 4-39`

#### Start from questions

先做 `Exam 2025 Q1` 和 `PS3 Q3`；若还有时间，看 `PS3 Q1` 的 payoff comparison。`Exam 2025 页 2｜推荐练习：PS3 Q1, PS3 Q3`

#### Return to notes

回看 Beer-Quiche equilibrium construction 与 Intuitive Criterion：`Lec 2 课件页 7-13, 23-31`; Spence single crossing 与 least-cost separating：`Lec 2 课件页 14-22, 29-35`; D1 补充：`EC487_Lecture_3_Sup 课件页 29-34, 35-51`.

#### Fix the gap

把每个 candidate equilibrium 写成四行：sender strategy、belief、receiver action、deviation check。refinement 额外写“哪些 type 不可能偏离”。`Lec 2 课件页 24-26`

#### Output

一页 Beer-Quiche/Spence PBE checklist + intuitive criterion mini-template。

### Session 2: Cheap Talk

#### Goal

能从 interval partition 构造 cheap-talk equilibrium，并比较 ex-ante payoff。`Lec 3 课件页 4-22`

#### Start from questions

先做 `Exam 2025 Q4`，再做 `PS4 Q1-Q2`；PS4 solution 可用于核对 recurrence 与 payoff formula。`Exam 2025 页 4-5｜推荐练习：PS4 Q1-Q2`

#### Return to notes

回看 receiver best response、babbling/fully revealing、two-message cutoff、$n$-interval recurrence：`Lec 3 课件页 7-21`; payoff derivation：`Sol PS4 课件页 1-3`.

#### Fix the gap

所有 cheap-talk 题都先写 receiver action as posterior mean，再写 boundary type indifference；不要直接猜 cutoffs。`Lec 3 课件页 15-20`

#### Output

一张 cheap-talk formula sheet：$a(m)$、$\theta_1=1/2-2b$、interval recurrence、ex-ante payoff。

### Session 3: Moral Hazard Contracts

#### Goal

能区分 first-best、hidden action、limited liability、risk aversion，并用 IC/IR 解最小成本 contract。`Lec 5 课件页 3-23`

#### Start from questions

做 `Exam 2025 Q2`，再做 `PS6 Q1-Q2`；用 `Sol PS6` 核对 KKT 与 two-output closed form。`Exam 2025 页 2-3｜推荐练习：PS6 Q1-Q2`

#### Return to notes

回看 first-best flat wage：`Lec 5 课件页 6-9`; risk-neutral sell-the-firm：`Lec 5 课件页 10-11`; risk-averse FOC 与 MLRP：`Lec 5 课件页 12-20`; informativeness：`Lec 5 课件页 21-23`.

#### Fix the gap

把“implement high effort”的 IC 写成 high effort utility $\ge$ low effort utility；若有 limited liability，先判断哪些 wage 会被压到 lower bound。`PS6 Q1-Q2; Sol PS6 课件页 1-4`

#### Output

一份 contract problem skeleton：objective, IC, IR/LL, binding constraints, payoff comparison。

### Session 4: Dynamic Beliefs, Reputation, Repeated Contracting

#### Goal

掌握 backward induction with posterior beliefs，特别是第一期 action 如何影响第二期 belief/rent。`Lec 1 课件页 31-40; Lec 3 课件页 23-31`

#### Start from questions

做 `Exam 2025 Q3`，再看 `PS5 Q1` 的 seller reputation。`Exam 2025 页 3-4｜推荐练习：PS5 Q1`

#### Return to notes

回看 repeated entry game 的 belief updating：`Lec 1 课件页 35-38`; PBE definition：`Lec 1 课件页 39-40`; reputation PD：`Lec 3 课件页 26-31`; repeated contribution belief histories：`repeated contribution game 课件页 3-14`.

#### Fix the gap

先解最后一期策略与 payoff，再把 continuation value 放进第一期 IC。任何第一期 effort/action 都要问：它改变了对方明天的 posterior 吗？`Exam 2025 页 3-4`

#### Output

一张 posterior-updating table：history, belief, continuation contract/action, type payoff。

### Session 5: Adverse Selection and Screening

#### Goal

能解释 market unraveling、positive selection、certification，以及 competitive screening 的 no-pooling logic。`Lec 4 课件页 3-25`

#### Start from questions

做 `PS5 Q2-Q3`；若时间不足，至少完整做 certification market equilibrium。`PS5 Q2-Q3`

#### Return to notes

回看 Akerlof wage fixed point：`Lec 4 课件页 4-11`; screening setup 与 separating contract：`Lec 4 课件页 12-25`.

#### Fix the gap

Adverse selection 题先写“谁接受 wage/contract”，再由这个接受集合算 average productivity/wage。Screening 题必须检查 firm deviations。`Lec 4 课件页 6-10, 18-24`

#### Output

一页 adverse-selection diagram notes：acceptance set, average quality curve, 45-degree equilibrium, certification split markets。

### Session 6: Mechanism Design

#### Goal

能把 IC constraints 转成 monotonicity + integral formula，并用 virtual value 解 screening。`Lec 6 课件页 12-23`

#### Start from questions

做 `PS8 Q1-Q2`，再用 `PS7 Q2` 练 KKT/nonnegativity constraints。`PS8 Q1-Q2｜推荐练习：PS7 Q2`

#### Return to notes

回看 two-type screening：`Lec 6 课件页 6-11`; direct mechanism/revelation principle：`Lec 6 课件页 12-14`; continuum IC lemma 与 virtual value：`Lec 6 课件页 15-23`.

#### Fix the gap

每道 mechanism 题都先问：allocation monotone 吗？payment 能否由 utility/integral formula pin down？virtual value 是否 regular？`Lec 6 课件页 16-23`

#### Output

一页 mechanism-design checklist：IC, IR, monotonicity, integral formula, virtual value, ironing warning。

### Session 7: Auctions and Full Exam Rehearsal

#### Goal

掌握 auction bidding FOC、revenue equivalence、optimal reserve，并做一次 2 小时综合模拟。`Lec 7 课件页 3-24`

#### Start from questions

先做 `PS9 Q1-Q4` 中最弱的两题；然后用 `Exam 2025` 四题做 2 小时 compressed rehearsal。`PS9 Q1-Q4; Exam 2025 页 2-5`

#### Return to notes

回看 Vickrey truth-telling：`Lec 7 课件页 7-8`; first-price FOC：`Lec 7 课件页 9-11`; revenue equivalence：`Lec 7 课件页 16-20`; optimal auctions：`Lec 7 课件页 21-24`; PS9 solution：`Sol PS9 课件页 1-11`.

#### Fix the gap

如果 bid-function derivation 卡住，重新写 bidder deviation problem；如果 revenue equivalence 卡住，写 allocation rule + lowest type utility 是否相同。`Lec 7 课件页 9-20`

#### Output

最终 2 页：formula sheet + top 10 error log，每个 error 后写对应 source page。

## Quick Reference

| Concept | Key result / formula | Source |
|---|---|---|
| BNE | Strategy is type-contingent: $s_i:\Theta_i\to S_i$ | `Lec 1 课件页 11, 15｜推荐练习：PS1 Q1` |
| Harsanyi transformation | Nature first selects types; incomplete information becomes imperfect information | `Lec 1 课件页 12-14` |
| Public good threshold | Contribute iff $c_i\le z_{-i}$; with $U[0,2]$, symmetric $c^\ast=2/3$ | `Lec 1 课件页 18-19` |
| PBE | Sequential rationality + belief consistency | `Lec 1 课件页 39-40; Lec 2 课件页 3-6` |
| Spence separating | $e_L=0$ and $c(e_H,\theta_L)\ge\theta_H-\theta_L\ge c(e_H,\theta_H)$ | `Lec 2 课件页 17-18｜推荐练习：PS3 Q1` |
| Single crossing | High type has lower marginal signalling cost | `Lec 2 课件页 19` |
| Intuitive Criterion | Restrict off-path beliefs to types for whom deviation is not equilibrium dominated | `Lec 2 课件页 24-31` |
| D1 | Keep types with stronger deviation incentives | `Lec 2 课件页 36-39; EC487_Lecture_3_Sup 课件页 29-34` |
| Cheap talk receiver action | $a^\ast(m)=E[\theta\mid m]$ | `Lec 3 课件页 7` |
| Cheap talk two-message cutoff | $\theta_1=1/2-2b$ | `Lec 3 课件页 15-18｜推荐练习：PS4 Q1` |
| Cheap talk interval recurrence | $(\theta_{k+1}-\theta_k)=(\theta_k-\theta_{k-1})+4b$ | `Lec 3 课件页 19-21｜推荐练习：PS4 Q1` |
| Adverse selection wage | $w^\ast=E[\theta\mid r(\theta)\le w^\ast]$ | `Lec 4 课件页 6-10｜推荐练习：PS5 Q3` |
| Screening | Menus separate types through costly task/quantity distortion | `Lec 4 课件页 12-25; Lec 6 课件页 6-11` |
| First-best moral hazard | Contractible effort + risk-averse agent gives flat wage | `Lec 5 课件页 6-9` |
| Hidden action FOC | $\frac1{v'(w(\pi))}=\lambda+\mu[1-f(\pi\mid e_L)/f(\pi\mid e_H)]$ | `Lec 5 课件页 15-17｜推荐练习：PS6 Q2` |
| MLRP | Optimal high-effort wage monotone in outcome iff likelihood ratio supports high effort | `Lec 5 课件页 17-18｜推荐练习：PS6 Q1` |
| Sufficient statistic | Do not use signal $y$ if it adds no effort information conditional on $\pi$ | `Lec 5 课件页 21-23` |
| Revelation Principle | Any equilibrium outcome of a general mechanism can be implemented by truthful direct mechanism | `Lec 6 课件页 12-14; Lec 7 课件页 13-15` |
| IC envelope | $U(\theta)=U(\underline\theta)+\int_{\underline\theta}^{\theta}q(\tilde\theta)d\tilde\theta$ | `Lec 6 课件页 16-18｜推荐练习：PS8 Q1` |
| Virtual value | $\Psi(\theta)=\theta-\frac{1-F(\theta)}{f(\theta)}$ | `Lec 6 课件页 20-22; Lec 7 课件页 21-24` |
| Vickrey truth-telling | In second-price auction, $b(v)=v$ is dominant | `Lec 7 课件页 7-8` |
| First-price bid | $b(v)=\frac{\int_0^v xf^{\max}_{n-1}(x)dx}{F^{\max}_{n-1}(v)}$ | `Lec 7 课件页 9-11｜推荐练习：PS9 Q1` |
| Revenue equivalence | Same allocation + same lowest-type payoff implies same expected payments/revenue | `Lec 7 课件页 18-20｜推荐练习：PS9 Q3` |
| Optimal auction | Allocate to highest nonnegative virtual value; i.i.d. regular case implemented by second-price auction with reserve | `Lec 7 课件页 22-24｜推荐练习：PS9 Q4` |


---

## 明确会考的内容

^3d7c3b

**Lecture 1: 不完全信息静态博弈**

- Bayesian Nash Equilibrium 的定义和求解（策略是类型到行动的函数，期望收益最大化）
- Harsanyi 的 Nature 表示法（将不完全信息博弈转化为不完全信息的完全博弈）
- Contribution game 的求解——教授明确说"fair to expect you can solve this one"

**Lecture 2: 信号博弈与 Weak PBE**

- **Weak PBE 的定义**：策略 + 信念，optimality + consistency，是全课用得最多的均衡概念
- **Beer-Quiche game**：所有均衡（无分离均衡、两个混同均衡），包括混合策略均衡——教授说"I would know the beer and quiche game"
- **Spence signalling game**：分离均衡、混同均衡、均衡的连续统——教授说"these two are two examples you want to know"
- **Intuitive Criterion**：知道概念（对 off-path belief 的合理性约束），知道如何在 Beer-Quiche 和 Spence 这两个具体例子中应用。教授明确说**不会要求你对全新博弈应用 IC**
- Off-path beliefs 的角色：为什么 off-path beliefs 的任意性导致均衡多重性

**Lecture 3: Cheap Talk**

- **Crawford-Sobel cheap talk game**：教授说"everything that we did in terms of the cheap talk game seems fair play"
- Babbling equilibrium 的存在性证明
- 完全揭示均衡仅当 $b = 0$ 时存在
- Interval/partitional equilibrium 的构造（猜测→求信念→求最优响应→验证）
- 递推公式、$\bar{N}(b)$ 最大消息数
- **需要知道证明**——教授明确说"I'd say yes in this case"
- Problem set 中关于 ex ante alignment vs interim misalignment 的分析

**Lecture 5: 道德风险 (Moral Hazard)**

- First best（可观察effort）vs Second best（不可观察effort）的对比
- First best: 完全保险、participation constraint binding
- Risk neutral agent 的特殊情况：可以"sell the firm"实现 first best
- **Risk averse agent + 二元effort**：写 Lagrangian、解 FOC、解释乘子不为零的含义
- MLRP 条件与合同形状的解释（单调性等）
- Jensen's inequality 论证 second best 成本更高
- **LEN model**（连续effort、正态分布、线性合同）：first order approach
- **Problem set 6 很重要**：limited liability 约束、信息精度的比较静态
- 有界分布的特殊情况（effort 完全可推断，first best 可达）

**Lecture 6: 机制设计 (单买家 Screening)**

- Direct mechanism 的定义——"definitely important, it's going to come up"
- **Revelation Principle**：陈述和证明都要知道——"you definitely need to know it"
- 两类型情况的 Lagrangian 求解
- **Myerson Lemma**（连续类型）：IC + IR 等价于 $U$ 非递减 + $Q$ 非递减 + $U$ 的积分表达式——"you need to know this lemma"（证明不强制要求）
- Virtual valuation、integration by parts 的变换过程（熟悉即可，不需要自己做积分分步）
- 最优机制求解：no distortion at the top, distortion at the bottom, information rent
- Myerson regularity 条件

**Lecture 7: 拍卖与多买家机制设计**

- First-price auction、second-price auction 的均衡求解——"definitely I would know how to do these examples"
- 从 indirect mechanism 到 direct mechanism 的转换——"definitely something you want to know"
- Interim IC（与 ex post IC 的区别）
- **Revenue Equivalence Theorem**
- 最优拍卖中的 virtual valuation 与排除规则
- **最后一个 Problem set 非常重要**——教授说"this lecture and its problem set, very much, yes"

---

## 明确不考的内容

- **Higher-order beliefs / Email game**："this is not in the exam"（仅作为类型丰富性的例子）
- **Global games** 作为一个概念/refinement："this is not a word that comes up in my test"（但求解不完全信息博弈+取极限的**技术**可能考）
- **Reputation games / Behavioural players**："I want to promise that this is not in the exam"，"the words behavioural player are not in the exam"
- **Lecture 4 整体 (Akerlof / Rothschild-Stiglitz / Rational Expectations Equilibrium)**：教授说"all of lecture 4 is off"
- **D1 criterion**：教授说"if you paid me $10,000 right now, I couldn't tell you what D1 was"
- First order approach 何时不成立的一般性讨论（超出课程范围）
- Full implementation vs partial implementation 的区别

---

## 考试格式提示

- 去年的考试有4道题，混合了不同topic的工具（如道德风险 + reputation 的组合）
- 考的是**新组合的旧工具**，不是完全照搬课堂例子，但会有详细的 sub-question 引导
- 去年有一题就是 Beer-Quiche game，一题是 cheap talk game
- 教授建议参考去年考卷来了解结构