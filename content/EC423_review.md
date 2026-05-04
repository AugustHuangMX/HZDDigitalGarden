---
title: "EC423 Labour Review"
date: 2026-04-27
course: "EC423 Labour Economics"
tags:
  - review
  - labour-economics
---

# EC423 Labour Economics 复习笔记

## Course Overview

**Instructor:** Christiane Szerman  
**Term:** Winter Term 2026  
**Course Focus:** Jobs you will take, where you live, who you are, and your family

### Core Topics (Reading List Structure)
1. **Wage Differentials and Discrimination: Gender and Race** (Lec 1-2)
2. **Compensating Differentials** (Lec 3)
3. **Place-Based Policies** (Lec 4-5)
4. **Minimum Wage and Unions** (Lec 6-7)
5. **Intergenerational Mobility** (Lec 8)
6. **Labour Market Insurance** (Lec 9-10)

---

## Topic 1: Gender Inequality (Lec 1)

### Stylized Facts

> [!fact] 核心事实
> - 女性劳动参与率在过去一个世纪持续上升 (女性 LFP)
> - 女性平均人力资本投资高于男性
> - 尽管如此，女性工资仍然低于男性（全球现象）
> - 工资差距随出生队列在缩小，但收敛远未完成

### Key Papers

| Paper | Key Contribution |
|-------|------------------|
| Blau & Kahn (2017) | Decomposes gender wage gap into explained (characteristics) and unexplained (discrimination) components |
| Bertrand, Goldin & Katz (2010) | Traces career dynamics of MBAs - explains divergence over time |
| Kleven, Landais & Søgaard (2019) | Estimates "child penalty" using event study design in Denmark |
| Goldin (2021) | "Career and Family" - historical perspective on gender convergence |
| Olivetti, Pan & Petrongolo (2024) | Evolution of gender in labor markets - comprehensive review |

### Empirical Methodology

> [!formula] Gender Wage Gap Decomposition (性别工资差距分解)
> 
> $$\log w_i = \beta \text{Female}_i + \gamma X_i + \epsilon_i$$
> 
> 其中：
> - $\text{Female}_i$: 女性虚拟变量
> - $X_i$: 控制变量（教育、经验、职业等）
> - $\beta$: 未调整的性别工资差距
> 
> Oaxaca-Blinder 分解：
> $$\bar{w}_M - \bar{w}_F = \underbrace{(\bar{X}_M - \bar{X}_F)\hat{\beta}_M}_{\text{特征差异}} + \underbrace{\bar{X}_F(\hat{\beta}_M - \hat{\beta}_F)}_{\text{系数差异(歧视)}}$$

> [!intuition] 经济学直觉
> 特征差异部分源于男女在教育、经验和职业选择上的差异；系数差异部分反映了无法由可观测特征解释的差距，可能包括歧视、谈判能力差异或不可观测特征差异。

### Key Finding: Child Penalty (生育惩罚)

> [!formula] Event Study Specification (事件研究模型)
> 
> $$Y_{ist} = \sum_{j\neq -1}\alpha^g_j \cdot 1[j=t] + \sum_k \beta^g_k \cdot 1[k=\text{age}_{ts}] + \sum_y \gamma^g_y \cdot 1[y=s] + \nu^g_{ist}$$
> 
> 其中：
> - $Y_{ist}$: 性别 $g$ 的个体 $i$ 在时间 $t$ 的结果
> - $j$: 相对于孩子出生的年份（$j=-1$ 为基准期）
> - $\alpha^g_j$: 生育对结果 $j$ 年后的因果效应
> - $1[j=t]$: 事件指示器

> [!intuition] 经济学直觉
> 孩子出生后，女性收入急剧下降（约30%），长期不会完全恢复。这反映了生育导致的职业中断、工时减少和职业晋升机会损失。男性收入不受显著影响，甚至可能略有增加（家庭收入效应）。

### Bertrand, Goldin & Katz (2010) - MBA Career Dynamics

> [!formula] Career Trajectory Model
> 
> $$w_{it} = \beta \text{Female}_i + \delta C_{it} + \gamma E_{it} + \theta X_{it} + \epsilon_{it}$$
> 
> 其中 $w_{it}$ 是个体 $i$ 毕业后第 $t$ 年的对数收入。

> [!findings] 关键发现
> 1. **Initial equality:** 男性与女性 MBA 毕业时收入几乎相同
> 2. **Rapid divergence:** 10 年后男性收入优势达 60 个对数点
> 3. **Mechanisms:**
>    - 职业中断差异：女性更可能暂停职业生涯
>    - 周工时差异：女性平均工时更少
>    - 职业路径差异：女性更可能转向灵活性更高但晋升路径更窄的职业

> [!intuition] 经济学直觉
> 职业生涯初期的相似性说明教育机会均等。后期分化反映了生育和家庭责任的"隐性成本"——这些成本主要通过职业中断、工时减少和职业选择来体现，而非直接歧视。

### 解释性别差距的三个视角

1. **生育成本**
   - 直接效应：职业中断、工时减少
   - 间接效应：人力资本贬值、职业晋升受阻

2. **本质差异**
   - 偏好差异：风险厌恶、竞争性、职业价值观
   - 技能差异：谈判能力、领导力
   - 证据主要来自实验室实验，结果混合

3. **机会与约束差异**
   - 家庭责任分配（传统性别角色）
   - 社会规范与刻板印象
   - 职场歧视（统计或基于偏见）
   - 缺乏反刻板印象榜样

### Problem Patterns

> [!example] 题型分析
> 1. **分解工资差距：** 使用 Oaxaca-Blinder 分解，计算特征差异和系数差异
> 2. **识别生育惩罚：** 设计事件研究，解释 $\alpha_j$ 的含义
> 3. **解释职业路径分化：** 讨论职业中断、工时和职业选择的作用
> 4. **政策评估：** 分析产假政策、托儿补贴对性别差距的影响

---

## Topic 2: Racial Inequality (Lec 2)

### Key Theoretical Models

#### 1. Taste-Based Discrimination (Becker, 1957)

> [!definition] Taste-Based Discrimination (基于偏见的歧视)
> 雇主、员工或顾客对某些种族群体有"品味偏好"，表现为对少数族裔工人的"歧视系数" $d$。

> [!formula] Employer Profit Maximization
> 
> $$\max_{L_B, L_W} \pi = f(L_B + L_W) - w_W L_W - (w_B + d)L_B$$
> 
> FOCs:
> $$f'(L_B + L_W) = w_B + d$$
> $$f'(L_B + L_W) = w_W$$
> 
> 均衡条件：
> $$w_W = w_B + d$$
> 
> 少数族裔工人工资等于 $w_B = w_W - d < w_W$。

> [!intuition] 经济学直觉
> 歧视系数 $d$ 像一种"税"，雇主雇佣少数族裔工人时需要承担额外成本。即使两个群体生产率相同，少数族裔工人也会接受更低工资以补偿雇主的"品味成本"。

#### 2. Statistical Discrimination

> [!definition] Statistical Discrimination (统计歧视)
> 雇主在无法准确观测个体生产率时，利用群体均值信息进行推断，导致对同一生产率但不同种族的工人提供不同工资。

> [!formula] Signal Extraction Model
> 
> 雇主观测到含噪信号 $\tilde{p}_i = p_i + \eta_i$，其中 $p_i$ 是真实生产率，$\eta_i$ 是噪声。
> 
> 贝叶斯更新：
> $$E(p_i | \tilde{p}_i, g) = (1-\beta)\bar{p}_g + \beta \tilde{p}_i$$
> 
> 其中信号-噪声比：
> $$\beta = \frac{\sigma_p^2}{\sigma_p^2 + \sigma_\eta^2}$$
> 
> 同一信号下，不同种族工人的期望生产率差异：
> $$E(p_i | \tilde{p}_i, W) - E(p_i | \tilde{p}_i, B) = (1-\beta)(\bar{p}_W - \bar{p}_B) > 0$$

> [!intuition] 经济学直觉
> 即使没有偏见，信息不对称也会导致歧视。如果白人和黑人平均生产率不同，雇主会对同一测试分数给出不同解读——因为他们知道这个信号对不同群体有不同的"信息价值"。

### Key Papers

| Paper | Method | Key Finding |
|-------|--------|-------------|
| Bertrand & Mullainathan (2004) | Resume audit study | White-sounding names receive 50% more callbacks |
| Charles & Guryan (2008) | Taste-based model test | Racial prejudice in area predicts racial wage gaps |
| Altonji & Pierret (2001) | Statistical discrimination test | Employers rely more on education signal early, race signal later |
| Agan & Starr (2018) | BTB policy analysis | "Ban the Box" increased racial disparity in hiring |

### Empirical Identification

> [!technique] 区分统计歧视与偏见歧视
> 
> **统计歧视的关键预测：**
> 1. 随着信息积累（工作经验），基于种族的工资差距应缩小
> 2. 同一教育水平下，如果白人平均生产率更高，白人工资更高
> 
> **偏见歧视的关键预测：**
> 1. 市场竞争应减少雇主偏见（Becker 模型）
> 2. 顾客/员工偏见可能持续存在
> 
> **检验策略（Altonji & Pierret, 2001）：**
> $$\ln w_{it} = \gamma E_{it} + \theta T_i + \delta S_i + \beta_1(T_i \times E_{it}) + \beta_2(S_i \times E_{it}) + \eta X_{it} + \epsilon_{it}$$
> 
> - $E_{it}$: 可观测教育信号
> - $T_i$: 潜在能力（测试分数）
> - $S_i$: 种族
> - $\beta_1, \beta_2$: 测试分数和种族的回报如何随经验变化

> [!intuition] 经济学直觉
> 如果是统计歧视，随着雇主获得更多信息（经验增加），他们对种族信号的依赖会减少，$\beta_2$ 会向零收敛。如果是偏见歧视，$\beta_2$ 不会随经验系统性变化。

### "Ban the Box" Policy (禁止询问犯罪记录)

> [!warning] 意外后果
> Agan & Starr (2018) 发现，禁止雇主在申请表中询问犯罪记录后：
> - 整体求职成功率提高（对有犯罪记录者）
> - 种族差距扩大（对黑人男性不利）
> 
> **解释：** 移除"犯罪记录"信号后，雇主更多依赖种族信号进行统计歧视。

### Problem Patterns

> [!example] 题型分析
> 1. **理论模型推导：** 从雇主利润最大化出发，推导歧视工资差距
> 2. **模型比较：** 区分统计歧视与偏见歧视的预测
> 3. **实证设计：** 如何识别统计歧视的存在
> 4. **政策评估：** 分析平权政策、"禁止询问"政策的效应

---

## Topic 3: Compensating Differentials (Lec 3)

### Core Theory

> [!definition] Compensating Wage Differential (补偿性工资差异)
> 在竞争均衡中，工人对不同工作的"总补偿"（工资+非货币收益）应该相等。低工资工作必须有其他优势（如安全性、灵活性）来补偿。从数据上来看（“workers in the US value health insurance and flexible hours”）

> [!formula] Worker Utility Maximization
> 
> $$\max_{h, D} U = u(C, D) \quad \text{s.t.} \quad C = w(D)h + I$$
> 
> 其中：
> - $C$: 消费
> - $D$: 工作特性（如安全、灵活性）
> - $w(D)$: 特性 $D$ 的工资函数
> - $I$: 非劳动收入
> 
> 均衡条件：
> $$\frac{\partial w}{\partial D} = -\frac{\partial U/\partial D}{\partial U/\partial C} = -\text{MRS}_{CD}$$

> [!intuition] 经济学直觉
> 工资与工作特性之间的边际替代率决定了工资差异的"市场价格"。如果工人愿意为每周一天居家办公接受 $\$100$ 的工资下降，那么市场均衡中，提供此福利的职位工资应该恰好低 $\$100$。

### Stern (2004): "Do Scientists Pay to Be Scientists?"

> [!research] 研究问题
> 科学家接受更低工资是否因为对"科学导向"工作有偏好？

> [!model] Conceptual Framework
> 
> **工人效用：** $U_i = \lambda_0 + \alpha_s \gamma_i \text{SCI}_j + w_{i,j}$
> 
> **企业利润：** $\pi_{i,j} = \gamma_i(\beta_0 + \beta_s \text{SCI}_j) - w_{i,j} - \delta \text{SCI}_j$
> 
> 均衡工资：
> $$w_{i,j} = \gamma_i \beta_0 + \gamma_i(\phi\beta_s - \alpha_s)\text{SCI}_j$$
> 
> 其中 $\text{SCI}_j$ 衡量职位 $j$ 的"科学导向"程度。

> [!intuition] 经济学直觉
> 工资中的"科学溢价"取决于两个力量的平衡：(1) 企业的生产率效应 ($\phi\beta_s$)，(2) 工人的偏好效应 ($-\alpha_s$)。如果工人强烈偏好科学工作（$\alpha_s$ 大），他们会接受更低工资，导致"科学折价"而非溢价。

### Empirical Challenges

> [!warning] 识别问题
> 1. **工人异质性：** 能力不同的工人可能系统性地选择不同工作
> 2. **工作异质性：** 高工资工作可能有其他不可观测优势
> 3. **因果识别：** 需要外生变化来分离偏好效应

> [!technique] 解决策略
> - 工人固定效应控制不可观测能力
> - 工作固定效应控制不可观测特性
> - 使用"多重录用"设计（如 Mas & Pallais, 2017 的实验）

### Mas & Pallais (2017): "Valuing Alternative Work Arrangements"

> [!experiment] 实验设计
> 向求职者展示职位描述，随机变化：
> - 工资水平（从基准工资减 $0$ 到 $\$5$）
- 是否提供居家办公/弹性工时

> [!findings] 关键发现
> - 女性比男性更愿意为弹性工时接受工资折价
> - 高技能工人对弹性工时的支付意愿更高
> - 居家办公的支付意愿约为工资的 5-8%

### Problem Patterns

> [!example] 题型分析
> 1. **理论推导：** 从工人效用最大化推导补偿差异公式
> 2. **实证识别：** 讨论如何控制不可观测异质性
> 3. **政策分析：** 最低工资对工作特性的影响
> 4. **弹性计算：** 计算工人对特定特性的支付意愿

---

## Topic 4-5: Place-Based Policies (Lec 4-5)

### Theoretical Framework

> [!definition] Place-Based Policy (基于地点的政策)
> 针对特定地理区域的经济刺激政策，包括企业园区、基础设施投资、住房补贴等。

#### Roback (1982) Model of Location Choice

Also the workhorse model for this lecture (most important). The key goal is to answer this question: *"If a place becomes more attractive, what happens to its wages and rents?"* In other words, a local change is partly capitalized into **wages** and **rents/house prices**.

> [!model] 基本设定
> 
> **工人：** 最大化效用 $U(w, r, s)$
> 
> - $w$: 工资
> - $r$: 租金
> - $s$: 地区特性（气候、便利设施）
> 
> **企业：** 最小化成本 $c(w, r, s)$
> 
> **均衡条件：**
> 
> (1) 工人无差异：$V(w(s), r(s), s) = \bar{V}$
> 
> (2) 企业无差异：$c(w(s), r(s), s) = \bar{c}$
> 
> (3) 市场出清：$L_w(s) + L_p(s) = \bar{L}(s)$

在这里，原课件使用的是 Direct Utility, 比如 $u(x,l^c,s)$ , and recall the [[Budget Constraint]] is $x + rl^c = w + I$ ,

In this system, the only prices are $r$ and $w$ , thus intuitive to check out $w'(s)$ and $r'(s)$ .

Since it's a [[Perfect Competition]] market, and workers are allowed to free entry/leave, thus it is intuitive to have:

$$
\begin{align}
c(w(s), r(s), s)  & = 1 \\
V(w(s), r(s), s)  & = V^0
\end{align}
$$

$V^0$ here means that if some place could give people higher/lower utility to workers, they would choose to move here (free entry), thus finally all places would converge to the same $V$ level, which is $V^0$ .





> [!formula] Comparative Statics
> 
> 从均衡条件全微分：
> 
> $$dw(s) = \frac{c_r V_s - c_s V_r}{c_w V_r - c_r V_w} ds$$
> $$dr(s) = \frac{c_w V_s - c_s V_w}{c_w V_r - c_r V_w} ds$$
> 
> 其中 $c_w, c_r, c_s$ 是成本对工资、租金、特性的偏导数，$V_w, V_r, V_s$ 是效用的偏导数。

> [!intuition] 经济学直觉
> 地区特性的价值通过工资和租金"资本化"。如果特性对工人有益（$V_s > 0$）但不影响生产率（$c_s = 0$），工人愿意接受更低工资或支付更高租金，导致 $w$ 下降、$r$ 上升。如果特性也提高生产率（$c_s < 0$），企业也愿意支付更高工资，净效应取决于两个力量。

### Social Value of Amenities

> [!definition] Total Social Value
> 特性的总社会价值 = 工人支付意愿 + 企业支付意愿
> 
> $$\text{Social Value} = \underbrace{(-V_s/V_w)}_{\text{工人WTP}} + \underbrace{(-c_s/c_w)}_{\text{企业WTP}}$$

符合大一时候学习的一些直觉，类似于 Marginal Rate of Subsitution.


> [!intuition] 经济学直觉
> 如果特性只影响工人感受（如好天气），社会价值等于工人的支付意愿。如果特性也提高生产率（如好基础设施），企业也愿意支付，总社会价值更大。但租金会捕获部分价值，导致"资本化"效应。


在这里要区分 Full [[Rosen Roback]] model 和 Partial [[Rosen Roback]] 的区别。Full [[Rosen Roback]] 主要引入了异质性工人，这让我们可以分析人口流动和福利分配等。 Here we involve two different places and markets are also different.

How to measure the efficiency? We look at the welfare impact per money spent (measure the deadweight loss).


### Key Papers

| Paper | Design | Key Finding |
|-------|--------|-------------|
| Kline & Moretti (2014) | TVA historical analysis | Large local multiplier effects, but limited spillovers |
| Busso, Gregory & Kline (2013) | Empirical Bayes + RDD | Enterprise zones increased employment for residents |
| Chyn (2018) | Housing demolition as instrument | Moving to better areas improved children's long-run outcomes |
| Chetty, Hendren & Katz (2016) | MTO experiment | Moving to low-poverty areas improved children's outcomes |

### Kline & Moretti (2014): Tennessee Valley Authority (TVA)

> [!research] 研究问题
> 大型基础设施投资（TVA）的当地经济效应和外溢效应

> [!findings] 关键发现
> - TVA 显著提高了当地人均收入
> - 乘数效应约为 1.5（每 $\$1$ 投资产生 $\$1.5$ 收入）
> - 外溢效应有限，主要收益留在当地

> [!intuition] 经济学直觉
> 基础设施投资通过两个渠道促进经济增长：(1) 直接提高生产率，(2) 吸引工人和企业迁入。但如果劳动力流动性强，部分收益可能"外溢"到其他地区。

### Policy Evaluation Framework

> [!technique] 评估方法
> 
> 1. **差异-in-差异：** 比较政策实施前后，处理组与控制组的变化
> 
> 2. **空间断点回归：** 在政策边界附近比较
> 
> 3. **合成控制法：** 为处理地区构建"合成"对照组
> 
> 4. **工具变量：** 如 Chyn (2018) 使用住房拆迁作为居住地变化的工具

### Problem Patterns

> [!example] 题型分析
> 1. **理论模型：** 推导 Roback 模型的均衡条件
> 2. **比较静态：** 分析特性变化对工资和租金的影响
> 3. **社会价值计算：** 分离工人与企业的支付意愿
> 4. **政策评估：** 讨论基于地点政策的有效性和外溢效应

---

## Topic 6: Minimum Wage (Lec 6)

### Basic Theory

> [!definition] Minimum Wage Bite (咬合度)
> $$\text{Bite} = \frac{\text{Minimum Wage}}{\text{Median Wage}}$$
> 
> 衡量最低工资的约束力。

#### Competitive Labor Market

> [!figure] 标准模型
> - 在竞争市场中，最低工资高于均衡工资导致就业减少
> - 就业损失 = 劳动需求在最低工资处的弹性 × 影响人口比例
> 
> $$\Delta E = \eta_D \cdot \frac{\Delta w}{w} \cdot \bar{E}$$
> 
> 其中 $\eta_D$ 是劳动需求弹性。

#### Monopsony Model

> [!figure] 买方垄断模型
> - 企业面临向上倾斜的劳动供给曲线
> - 边际劳动成本高于工资
> - 最优工资低于竞争水平
> - 适度提高最低工资可以**同时**提高工资和就业

> [!intuition] 经济学直觉
> 在买方垄断中，企业雇佣更多工人会推高所有工人的工资（因为劳动供给曲线向上倾斜）。这导致边际劳动成本高于平均工资。最低工资可以"替代"企业的垄断定价行为，将工资推向竞争水平，同时增加就业。

### Key Papers

| Paper | Method | Key Finding |
|-------|--------|-------------|
| Card & Krueger (1994) | Diff-in-Diff (NJ-PA) | No negative employment effect after NJ minimum wage increase |
| Dube, Lester & Reich (2010) | Contiguous county design | No significant employment effects |
| Cengiz et al. (2019) | Event study along wage distribution | Job losses below MW offset by gains above MW |
| Neumark & Wascher (2008) | Meta-analysis | Generally negative employment effects |

### Cengiz et al. (2019): Event Study Design

> [!method] 沿工资分布的事件研究
> 
> 将工人按相对于新最低工资的工资水平分组，估计每个"工资箱"的就业效应：
> 
> $$\Delta b = \text{jobs lost below MW}$$
> $$\Delta a = \text{jobs gained above MW}$$
> 
> 净就业效应 = $\Delta b + \Delta a$

> [!findings] 关键发现
> - 最低工资提高后，低工资箱的就业减少
> - 但工资箱"向上移动"——工人从低工资箱进入更高工资箱
> - 净就业效应接近零，但平均工资显著提高

> [!intuition] 经济学直觉
> 最低工资提高后，企业可能：(1) 减少雇佣，(2) 提高现有工人工资，(3) 更换工人。如果企业选择提高工资，工人在工资分布中的"位置"向上移动，看起来像就业从低工资箱消失，但实际上是同一工人获得更高工资。

### Empirical Strategies

> [!technique] 识别策略
> 
> 1. **跨州比较（Diff-in-Diff）：** 比较提高最低工资的州与未提高的州
> 
> 2. **连续县对设计：** 比较州边界两侧的县，控制不可观测地区特性
> 
> 3. **事件研究：** 检查平行趋势假设，观察动态效应
> 
> 4. **行业异质性：** 估计不同行业的效应差异（如餐饮业受影响更大）

### Minimum Wage and Racial Inequality

> [!research] Derenoncourt et al. (2023)
> 研究美国 1967 年最低工资覆盖范围扩大对种族工资差距的影响

> [!findings] 关键发现
> - 1967 年改革将最低工资覆盖扩展到农业和服务业
> - 黑人工人在这些行业占比较高
> - 改革解释了 1960 年代末种族工资差距缩小的 20% 以上
> - 近年最低工资增加对种族差距影响较小（因为覆盖已广泛）

> [!intuition] 经济学直觉
> 最低工资可以减少种族不平等，如果少数族裔集中在低工资部门。但随着最低工资覆盖已经广泛，新的提高可能对种族差距影响有限，因为两个群体都受到类似影响。

### Problem Patterns

> [!example] 题型分析
> 1. **理论比较：** 竞争市场 vs. 买方垄断中的最低工资效应
> 2. **实证设计：** 评估特定最低工资政策的识别策略
> 3. **结果解释：** 解释事件研究中的 $\Delta b$ 和 $\Delta a$
> 4. **政策分析：** 最低工资对收入分配、种族不平等的影响

---

## Topic 7: Unions (Lec 7)

### Union Wage Premium

> [!definition] Union Wage Premium (工会工资溢价)
> $$\text{Premium} = \frac{w_U - w_N}{w_N}$$
> 
> 其中 $w_U$ 是工会化工人工资，$w_N$ 是非工会化工人工资。

> [!intuition] 经济学直觉
> 工会通过集体谈判提高工资，但可能通过两种渠道影响就业：(1) 替代效应——高工资减少劳动需求；(2) 减员效应——企业雇佣更少但更高生产率的工人。

### Key Papers

| Paper | Method | Key Finding |
|-------|--------|-------------|
| DiNardo & Lee (2004) | Regression discontinuity at unionization threshold | New unionization increased wages by ~15% |
| Lee & Mas (2012) | Event study (financial markets) | Unionization reduced firm value by ~10% |
| Harasztosi & Lindner (2019) | Minimum wage as instrument for union power | Higher minimum wage reduced union wage premium |

### DiNardo & Lee (2004): RD Design

> [!method] 回归断点设计
> 
> 利用工会选举中 50% 投票率的断点：
> 
> $$Y_i = \alpha + \tau \cdot 1[\text{Vote}_i > 0.5] + f(\text{Vote}_i - 0.5) + \epsilon_i$$
> 
> - $1[\text{Vote}_i > 0.5]$: 工会化指示器
> - $\tau$: 工会化的局部平均处理效应 (LATE)
> - $f(\cdot)$: 控制投票率的平滑函数

> [!findings] 关键发现
> - 工会化后工资立即提高约 15%
> - 就业无显著下降
> - 企业可能通过其他渠道调整（减少福利、提高生产率）

> [!intuition] 经济学直觉
> RD 设计利用投票率在 50% 附近的随机性，识别工会化的因果效应。如果投票率恰好 51% 和 49% 的企业系统性不同（除了工会化），那么它们的差异可以归因于工会化。

### Long-Run Effects of Unions

> [!research] Lee & Mas (2012)
> 利用金融市场对工会化公告的反应，估计长期效应

> [!findings] 关键发现
> - 工会化公告后，企业股价平均下跌约 10%
> - 效应持续数年，反映长期成本
> - 资本密集型企业受影响更大

> [!intuition] 经济学直觉
> 金融市场能够快速整合信息。如果工会化导致长期利润下降，投资者会立即卖出股票，导致股价下跌。股价下跌幅度反映了市场对工会化长期成本的预期。

### Unions and Minimum Wage

> [!finding] Harasztosi & Lindner (2019)
> 匈牙利最低工资提高后：
> - 非工会化部门工资大幅提高
> - 工会化部门工资提高较少
> - 工会工资溢价下降

> [!intuition] 经济学直觉
> 最低工资为非工会化工人提供了"类似工会"的保护。当最低工资提高时，非工会化工人工资趋近于工会化水平，压缩了工会工资溢价。这解释了为什么工会近年来可能更支持最低工资提高。

### Problem Patterns

> [!example] 题型分析
> 1. **RD 设计：** 解释 DiNardo & Lee 的识别策略和假设
> 2. **长期效应：** 讨论工会化对企业的长期影响
> 3. **与最低工资互动：** 分析最低工资对工会工资溢价的影响
> 4. **福利分析：** 工会的分配效应与效率效应

---

## Topic 8: Intergenerational Mobility (Lec 8)

### Key Concepts

> [!definition] Intergenerational Elasticity (IGE, 代际弹性)
> $$\log y_{child} = \alpha + \rho \log y_{parent} + \epsilon$$
> 
> 其中 $\rho$ 是 IGE。$\rho = 1$ 表示完全流动（孩子收入独立于父母），$\rho = 0$ 表示完全不流动（孩子收入完全由父母决定）。

> [!definition] Rank-Rank Correlation (等级相关系数)
> $$\rho_{rank} = \text{Corr}(\text{rank}_{parent}, \text{rank}_{child})$$
> 
> 使用收入分布的百分位数而非对数收入，对异常值更稳健。

> [!intuition] 经济学直觉
> IGE 衡量收入对数的传递性——如果父母收入高 10%，孩子收入平均高 $\rho \times 10\%$。Rank-rank 衡量百分位数的传递性——如果父母在第 80 百分位，孩子平均在第 $\rho_{rank} \times 80$ 百分位。

### Mechanisms of Intergenerational Transmission

> [!theory] Becker-Tomes (1979) Model
> 
> **父母决策：** 在消费 $C$ 和对子女的人力资本投资 $I$ 之间分配资源
> 
> $$\max_{C, I} U(C) + \beta V(y_{child})$$
> 
> **子女收入生产函数：**
> $$y_{child} = f(I, e)$$
> 
> 其中 $e$ 是"禀赋"（基因、环境运气）。

> [!intuition] 经济学直觉
> 代际流动性取决于：(1) 父母对子女收入的重视程度（$\beta$），(2) 人力资本投资的边际回报，(3) 禀赋的遗传性。如果高收入父母能够更有效地投资人力资本，流动性会降低。

### Key Papers

| Paper | Method | Key Finding |
|-------|--------|-------------|
| Chetty et al. (2014) | Tax records, county-level | Large geographic variation in mobility |
| Solon (1992) | PSID, multi-year income | IGE ~0.4 in US |
| Black & Devereux (2011) | Review, adoption studies | Genetics explains ~50% of IGE |
| Sacerdote (2007) | Korean adoptees | Family environment matters |

### Chetty et al. (2014): "Where is the Land of Opportunity?"

> [!research] 研究问题
> 美国各县的代际流动性差异及其决定因素

> [!findings] 关键发现
> - 代际流动性在美国各县差异巨大
> - 东南部流动性最低，中西部流动性最高
> - 与流动性正相关的因素：学校质量、家庭稳定性、社会资本
> - 与流动性负相关的因素：种族隔离、收入不平等

> [!intuition] 经济学直觉
> 地理因素通过多个渠道影响流动性：(1) 邻里质量影响教育和社交网络，(2) 学校质量影响人力资本积累，(3) 社会规范影响职业选择和行为。高流动性地区的"机会结构"更平等。

### Absolute vs. Relative Mobility

> [!definition] Absolute Mobility (绝对流动性)
> 孩子收入高于父母的概率或比例
> 
> $$P(y_{child} > y_{parent})$$

> [!definition] Relative Mobility (相对流动性)
> 收入排名的独立性（如 IGE 或 rank-rank）

> [!intuition] 经济学直觉
> 绝对流动性可能因经济增长而提高（即使相对流动性不变），因为"水涨船高"。相对流动性衡量机会的"形状"——收入分配的"粘性"。政策可以同时影响两者（如最低工资提高绝对流动性但不一定影响相对流动性）。

### Problem Patterns

> [!example] 题型分析
> 1. **IGE 解释：** 解释 $\rho$ 的经济含义
> 2. **Becker-Tomes 模型：** 推导流动性决定因素
> 3. **地理差异：** 解释流动性地理差异的机制
> 4. **政策分析：** 评估政策对代际流动性的影响

---

## Topic 9: Job Displacement (Lec 9)

### Key Concepts

> [!definition] Job Displacement (工作流失)
> 因工厂关闭、裁员等雇主发起的永久性工作损失，通常伴随显著收入损失。

> [!intuition] 经济学直觉
> 工作流失后的长期收入损失源于多个渠道：(1) 特定人力资本贬值——在原工作积累的技能在新工作中不完全适用，(2) "降级"效应——被迫接受更低工资、更低技能的工作，(3) 劳动力市场退出——部分工人因年龄或健康问题退出。

### Key Papers

| Paper | Method | Key Finding |
|-------|--------|-------------|
| Jacobson, LaLonde & Sullivan (1993) | Administrative data, event study | Earnings losses persist 15+ years |
| Lachowska, Mas & Woodbury (2020) | Decomposition | 75% of losses from wage cuts, 25% from unemployment |
| Sullivan & Von Wachter (2009) | Mortality data | Job displacement increases mortality |

### Earnings Dynamics After Displacement

> [!figure] 典型模式
> 
> **事件研究：**
> 
> - $t=-2$ 到 $t=-1$：收入略有下降（预兆效应）
> - $t=0$：收入急剧下降（-30% 到 -50%）
> - $t=1$ 到 $t=5$：部分恢复，但长期损失持续
> - $t>5$：损失趋于稳定（约 -15% 到 -20%）

> [!formula] Earnings Loss Decomposition
> 
> $$\text{Total Loss} = \underbrace{\Delta w \cdot h}_{\text{Wage cut effect}} + \underbrace{\Delta h \cdot w}_{\text{Hours cut effect}}$$
> 
> 其中 $\Delta w$ 是工资变化，$\Delta h$ 是工时变化。

> [!findings] Lachowska et al. (2020)
> - 约 75% 的损失来自工资下降
> - 约 25% 的损失来自失业期间收入为零
> - 工资下降即使在重新就业后也持续

> [!intuition] 经济学直觉
> 工作流失的主要成本不是失业期间的收入损失，而是永久性工资下降。即使找到新工作，工资通常低于流失前水平，这反映了人力资本的不可转移性和职业降级。

### Intergenerational Effects

> [!research] "The Intergenerational Effects of Worker Displacement"
> 
> 研究问题：父母工作流失是否影响子女长期 outcomes？

> [!findings] 关键发现
> - 父亲工作流失降低子女长期收入
> - 机制：(1) 家庭收入下降影响教育投资，(2) 压力和家庭不稳定影响发展
> - 效应在儿童期比青春期更强

> [!intuition] 经济学直觉
> 工作流失的影响不仅限于被解雇者本人，还通过家庭资源、家庭环境和心理压力影响子女。这产生了"代际传递"效应——当前的经济冲击可能影响下一代的机会。

### Policy Responses

> [!policy] 政策工具
> 
> 1. **失业保险：** 提供收入支持，平滑消费
> 
> 2. **再培训项目：** 帮助工人获得新技能
> 
> 3. **工资保险：** 补偿新工作与原工作的工资差距
> 
> 4. **积极劳动市场政策：** 求职协助、工作匹配

> [!intuition] 经济学直觉
> 政策需要在保护与激励之间平衡。慷慨的失业保险可能延长失业时间（道德风险），但也可以提供资源用于更好的求职（流动性效应）。再培训项目的效果取决于培训内容与市场需求的匹配度。

### Problem Patterns

> [!example] 题型分析
> 1. **事件研究：** 解释工作流失后的收入动态
> 2. **损失分解：** 分离工资效应和工时效应
> 3. **代际效应：** 估计父母工作流失对子女的影响
> 4. **政策评估：** 评估工资保险等政策的有效性

---

## Topic 10: Labour Market Insurance (Lec 10)

### Key Concepts

> [!definition] Moral Hazard (道德风险)
> 保险降低求职激励，延长失业持续时间。

> [!definition] Liquidity Effect (流动性效应)
> 保险提供资源，改善求职质量，可能提高匹配质量。

> [!intuition] 经济学直觉
> 失业保险的福利效应取决于两个相反力量的平衡。道德风险延长失业，降低福利；流动性效应改善匹配，提高福利。最优设计需要找到"最佳平衡点"。

### Optimal Unemployment Insurance (Chetty, 2008)

> [!model] 基本框架
> 
> **社会 planner 最大化：**
> 
> $$\max_b \left[ U(c) - V(b) \right]$$
> 
> - $U(c)$: 消费的效用（保险收益）
> - $V(b)$: 失业持续时间的负效用（道德风险成本）
> - $b$: 失业保险金

> [!formula] 一阶条件
> 
> $$U'(c) \cdot \frac{dc}{db} = V'(b) \cdot \frac{dD}{db}$$
> 
> 其中 $D$ 是失业持续时间。

> [!intuition] 经济学直觉
> 最优失业保险金设定在保险边际收益等于道德风险边际成本处。增加一美元保险的收益是消费平滑的边际效用，成本是失业延长的边际负效用。

### Empirical Evidence

> [!research] Kroft, Lange & Notowidigdo (2013)
> 
> **实验设计：** 随机分配求职者的保险金到期时间

> [!findings] 关键发现
> - 保险金到期后求职活动急剧增加
> - 失业持续时间呈"聚束"在到期日附近
> - 但新工作质量并未显著提高

> [!intuition] 经济学直觉
> 失业保险的到期时间显著影响求职行为。工人在保险即将到期时大幅增加求职努力，但找到的工作质量与更早找到的工作质量相似。这表明道德风险确实存在，但流动性效应可能有限。

### Short-Time Work (STW) Schemes

> [!definition] Short-Time Work (短时工作计划)
> 企业在衰退期减少工时而非解雇工人，政府补偿部分工资损失。

> [!research] Giupponi & Landais (2023)
> 
> **研究发现：**
> - STW 有效减少裁员
> - 但可能推迟必要的调整
> - 成本效益取决于衰退持续时间和严重程度

> [!intuition] 经济学直觉
> STW 通过"共享负担"来避免解雇。企业保留工人，政府分担工资成本。但如果衰退是结构性的而非周期性的，STW 可能只是推迟不可避免的调整。

### Job Displacement Insurance

> [!policy] 工作流失保险
> 
> 补偿因工厂关闭等原因流失工作的工人：
> 
> $$\text{Benefit} = \min(\alpha \cdot (w_{old} - w_{new}), \bar{B})$$
> 
> 其中 $\alpha$ 是替代率，$\bar{B}$ 是最高补偿。

> [!intuition] 经济学直觉
> 工作流失保险针对特定风险（结构性失业），而非一般失业风险。这种设计可以减少道德风险（因为保险只针对不可控的工作流失），同时为最脆弱的工人提供保护。

### Problem Patterns

> [!example] 题型分析
> 1. **最优 UI：** 推导 Chetty (2008) 模型的一阶条件
> 2. **道德风险 vs. 流动性：** 讨论两个相反效应的平衡
> 3. **政策比较：** 比较失业保险、短时工作计划、工作流失保险
> 4. **实证设计：** 如何识别失业保险的道德风险和流动性效应

---

## Past Exam Analysis

### Exam Format (2020-2025)

| Component | Details |
|-----------|---------|
| **Structure** | 4 questions in 2 sections (A and B) |
| **Requirement** | Answer 1 question from each section (2 total) |
| **Marks** | 50 marks per question, 100 marks total |
| **Time** | 3 hours |
| **Word Limit** | 300 words per sub-question (recent years) |
| **Open/Closed** | Typically closed-book, formulas provided if needed |

### Topic Frequency (2019-2025)

| Topic | Frequency | Notes |
|-------|-----------|-------|
| Minimum Wage | 6/6 | Always appears, often with Cengiz et al. |
| Intergenerational Mobility | 5/6 | Very common, IGE and rank-rank |
| Racial Discrimination | 5/6 | Statistical vs. taste-based |
| Gender Inequality | 4/6 | Wage gap decomposition |
| Job Displacement | 3/6 | Intergenerational effects |
| Labour Supply/UBI | 3/6 | Slutsky decomposition |
| Place-Based Policies | 2/6 | Roback model applications |
| Unions | 2/6 | RD design, wage premium |

### Question Types

> [!technique] 类型 1: 理论推导
> - 从假设出发，推导均衡条件
> - 提供经济学直觉解释结果
> - 常见主题：补偿差异、Roback 模型、最优 UI

> [!technique] 类型 2: 实证分析
> - 解释回归结果，讨论识别策略
> - 评估因果识别的合理性
> - 常见主题：最低工资效应、歧视测试、流动性估计

> [!technique] 类型 3: 政策评估
> - 分析政策的福利效应
> - 讨论潜在的一般均衡效应
> - 常见主题：最低工资、UBI、基于地点的政策

> [!technique] 类型 4: 方程解释
> - 解释变量的经济含义
> - 讨论假设和限制
> - 常见主题：IGE、统计歧视、失业持续时间

### Recurring Themes

1. **工资差距分解：** Oaxaca-Blinder，特征差异 vs. 系数差异
2. **歧视类型区分：** 统计 vs. 偏见，实证检验策略
3. **最低工资的异质性效应：** 不同行业、不同工资水平
4. **代际流动性的机制：** 人力资本投资、地理因素
5. **政策权衡：** 保险 vs. 激励，保护 vs. 效率

---

## Quick Reference

### Key Equations

| Topic | Equation | Meaning |
|-------|----------|---------|
| Gender Wage Gap | $\log w_i = \beta \text{Female}_i + \gamma X_i + \epsilon_i$ | 基础回归 |
| Oaxaca-Blender | $\bar{w}_M - \bar{w}_F = (\bar{X}_M - \bar{X}_F)\hat{\beta}_M + \bar{X}_F(\hat{\beta}_M - \hat{\beta}_F)$ | 分解 |
| Statistical Discrim. | $E(p_i | \tilde{p}_i, g) = (1-\beta)\bar{p}_g + \beta \tilde{p}_i$ | 贝叶斯更新 |
| Compensating Diff. | $\frac{\partial w}{\partial D} = -\text{MRS}_{CD}$ | 边际替代率 |
| IGE | $\log y_{child} = \alpha + \rho \log y_{parent} + \epsilon$ | 代际弹性 |
| Slutsky | $\frac{\partial h}{\partial w} = \frac{\partial h^c}{\partial w} - h \frac{\partial h}{\partial I}$ | 劳动供给分解 |

### Key Paper Methods

| Paper | Method | Key Insight |
|-------|--------|-------------|
| Bertrand & Mullainathan (2004) | Audit study | 直接测量歧视 |
| DiNardo & Lee (2004) | RD at 50% | 工会化的因果效应 |
| Cengiz et al. (2019) | Event study along distribution | 就业"向上移动" |
| Chetty et al. (2014) | County-level mobility maps | 地理差异巨大 |
| Kleven et al. (2019) | Event study (childbirth) | 生育惩罚的精确估计 |

---

## Exam Tips

> [!technique] 通用解题技巧
> 
> 1. **定义变量：** 写出方程前明确定义每个变量
> 
> 2. **陈述假设：** 理论推导前明确列出关键假设
> 
> 3. **提供直觉：** 每个数学结果后用经济学语言解释"为什么"
> 
> 4. **使用图表：** 劳动供给、最低工资、补偿差异等主题适合用图
> 
> 5. **联系实证：** 讨论政策或现象时引用关键论文的证据

> [!warning] 常见错误
> 
> - **混淆相关与因果：** 回归不等于因果，需要讨论识别策略
> - **未区分统计与偏见歧视：** 两者有不同的预测和检验方法
> - **只关注就业效应：** 最低工资也影响工资、收入分配、种族差距
> - **忽略一般均衡效应：** 基于地点的政策可能有外溢效应
> - **缺乏经济直觉：** 数学推导后必须解释经济含义

> [!exam] 考试策略
> 
> 1. **选题：** 选择你最熟悉的主题（通常是问题最多的）
> 
> 2. **时间分配：** 每个问题 90 分钟，其中 30 分钟规划，60 分钟作答
> 
> 3. **结构清晰：** 每个子问题按"定义-模型-结果-直觉"结构回答
> 
> 4. **字数控制：** 严格控制在 300 词内，简洁明了

---

*Generated from EC423 course materials (2025-2026 Winter Term)*  
*Sources: Lecture slides (Lec 1-10), Reading List, Problem Sets, Past Exams (2020-2025), Seminars*
