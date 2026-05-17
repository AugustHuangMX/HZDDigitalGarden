---
title: "EC423 Starred Reading Summaries"
date: 2026-05-17
course: "EC423 Labour Economics"
source_pdf: "Reading List.pdf"
scope: "Required readings marked with (*) in the reading list"
actual_required_readings: 20
note_style: "中文解释 + English technical terms; identification strategy prioritized"
count_note: "The PDF text contains 21 literal '(*)' markers because the introductory sentence includes one; there are 20 actual starred paper entries."
---

# EC423 必读论文总结

这份笔记只总结 `Reading List.pdf` 中真正作为论文条目标记为 `(*)` 的 required readings。每篇都按同一模板整理，重点放在 identification strategy、比较组、关键假设和考试可用的 takeaway。

| Topic | 课程主题 | 必读篇数 |
|---|---:|---:|
| Topic 1 | Wage Differentials: Gender and Racial Gaps | 4 |
| Topic 2 | Compensating Differentials | 2 |
| Topic 3 | Place-Based Policies | 3 |
| Topic 4 | Minimum Wage and Unions | 3 |
| Topic 5 | Intergenerational Mobility | 3 |
| Topic 6 | Job Displacement | 2 |
| Topic 7 | Labor Market Insurance Policies | 3 |
| **Total** |  | **20** |

## Topic 1: Wage Differentials

### 1. Altonji and Pierret (2001)

- **题目**: [Employer Learning and Statistical Discrimination](https://academic.oup.com/qje/article/116/1/313/1939055)
- **作者/年份**: Joseph G. Altonji and Charles R. Pierret, 2001
- **背景与研究问题**: 这篇论文研究 employers 是否在年轻工人进入劳动力市场时使用容易观察的特征来预测 productivity，并随着经验积累逐渐学习真实能力。核心问题不是简单问 schooling 是否影响工资，而是问 schooling 在早期工资中是否部分充当 statistical discrimination 的 proxy。
- **Identification Strategy**: 识别来自 wage equation 中 observable signal 与 labor market experience 的交互项。教育等 easily observed characteristics 在入职时可被雇主看到，AFQT、父亲教育等 hard-to-observe productivity correlates 被研究者观察到但雇主起初未必完全掌握。若存在 employer learning，随着经验增加，工资对 hard-to-observe ability proxies 的系数应上升，而对 schooling 等初始 proxy 的系数应下降。比较组本质上是同一 cohort 中不同经验阶段的工资定价结构。关键假设是 AFQT 等变量确实更接近生产率且雇主随时间获得相关信息，而经验本身没有通过其他渠道机械改变这些系数。威胁包括 schooling 真实回报随经验变化、measurement error、职业选择和样本选择。
- **研究方法与数据**: 使用 NLSY79 中年轻男性及其 siblings 的工资、教育、AFQT、家庭背景等资料，估计包含 experience interactions 的 wage regressions。
- **主要结论**: 结果支持 employer learning: 随着经验增加，工资对 AFQT 的反应增强，对 schooling 的信息性作用下降。论文对 race-based statistical discrimination 的证据较弱。
- **考试/复习 takeaway**: 这篇是 statistical discrimination 的经典 empirical test。答题时要写清楚: prediction 不是平均工资差距，而是 signal coefficients 随 experience 的动态变化。

关键词： [[Statistical Discrimination]]


### 2. Charles and Guryan (2008)

- **题目**: [Prejudice and Wages: An Empirical Assessment of Becker's The Economics of Discrimination](https://www.nber.org/papers/w13661)
- **作者/年份**: Kerwin Kofi Charles and Jonathan Guryan, 2008
- **背景与研究问题**: 论文检验 Becker taste-based discrimination 模型。Becker 的关键预测是少数族裔工资不是由最偏见的人决定，而是由市场中 marginal discriminator 的 prejudice 决定，因为最偏见的雇主不会雇佣黑人劳动者。
- **Identification Strategy**: 识别来自美国各州 white racial prejudice distribution 的差异，并将其与 black-white relative wages 联系起来。论文用 General Social Survey 构造州层面的偏见分布，特别关注 lower tail 或 marginal white prejudice，而不是平均偏见。比较对象是不同州中可比黑人和白人工资差距的差异。核心识别假设是，在控制人口结构、技能质量、地区特征后，州层面 marginal prejudice 对黑人相对工资的影响主要通过 labor market discrimination，而不是通过未观测的学校质量、产业结构、迁移选择或种族特定劳动供给冲击。论文还用历史黑人占比等工具变量和 skill controls 做 robustness，但这不是完全随机实验。
- **研究方法与数据**: 结合 GSS prejudice measures 与工资数据，估计州层面 racial wage gap 与 prejudice distribution 的关系。
- **主要结论**: 黑人相对工资与 marginal white prejudice 负相关，与最偏见群体的 prejudice 关系较弱，符合 Becker 模型。论文估计 prejudice 可解释相当一部分 racial wage gap。
- **考试/复习 takeaway**: 适合用来区分 taste-based discrimination 和 statistical discrimination。重点写 marginal discriminator，而不是“社会越偏见工资越低”的泛泛说法。

### 3. Kleven, Landais and Søgaard (2019)

- **题目**: [Children and Gender Inequality: Evidence from Denmark](https://www.aeaweb.org/articles?id=10.1257/app.20180010)
- **作者/年份**: Henrik Kleven, Camille Landais and Jakob Egholt Søgaard, 2019
- **背景与研究问题**: 论文问一个直接但很重要的问题: 为什么在教育和劳动参与趋同之后，gender earnings gap 仍然持久存在？作者把重点放在 parenthood，尤其是第一胎出生后女性相对男性的 labor market trajectory 是否永久分叉。
- **Identification Strategy**: 核心设计是 event study around childbirth。作者比较男女在孩子出生前后的 earnings、hours、participation、wage rates 和 occupational rank 变化，并把事件时间设为第一胎出生年份。识别依赖于出生前男女趋势相近，以及没有其他正好在 childbirth 时点发生、且只影响女性的未观测冲击。它识别的是 parenthood-associated child penalty，严格说不是完全随机 fertility treatment effect，因为生育时间和是否生育可能内生。论文通过丰富行政数据、pre-trends、动态分解和额外的家庭环境分析增强可信度。重要威胁是 anticipatory career choices、选择性生育和文化规范与职业选择同时变化。
- **研究方法与数据**: 使用丹麦 1980-2013 年行政数据，追踪个人收入、工时、就业、职业、企业和家庭背景。
- **主要结论**: 第一胎后女性 earnings 长期下降约 20%，由 participation、hours 和 wage rates 共同驱动。child penalties 对总体 gender inequality 的解释份额随时间上升，并且与代际性别规范有关。
- **考试/复习 takeaway**: gender gap 题中可以把 child penalty 写成 event-study evidence: 图像上是 childbirth 后男女 earnings path 的突然且持久分叉。

### 4. Olivetti, Pan and Petrongolo (2024)

- **题目**: [The Evolution of Gender in the Labor Market](https://doi.org/10.1016/bs.heslab.2024.11.010)
- **作者/年份**: Claudia Olivetti, Jessica Pan and Barbara Petrongolo, 2024
- **背景与研究问题**: 这是 Handbook of Labor Economics 章节，系统总结女性劳动供给、工资差距、职业分布、家庭生产、制度和 norms 如何共同塑造 gender inequality 的长期演化。
- **Identification Strategy**: **非实证识别论文**。这篇不是单一 causal design，而是综合理论模型和实证文献。识别层面的贡献在于把不同机制分清楚: human capital convergence、occupational sorting、family constraints、child penalties、discrimination、social norms 和 policy institutions。复习时应把它当成 conceptual map，而不是强行寻找一个 treatment-control comparison。
- **研究方法与数据**: 文献综述和理论整理，涵盖跨国长期趋势、家庭分工模型、劳动供给模型、职业选择、工资结构和政策证据。
- **主要结论**: 性别差距已从教育和基础劳动参与差距，转向工作时间、职业轨迹、家庭形成和高技能职位中的晋升/灵活性惩罚。家庭与市场之间的约束是理解现代 gender inequality 的核心。
- **考试/复习 takeaway**: 适合做 essay backbone。答 gender inequality 时，可用它组织机制，再用 Kleven et al. 提供最干净的 child penalty evidence。

## Topic 2: Compensating Differentials

### 5. Stern (2004)

- **题目**: [Do Scientists Pay to Be Scientists?](https://pubsonline.informs.org/doi/10.1287/mnsc.1040.0241)
- **作者/年份**: Scott Stern, 2004
- **背景与研究问题**: 论文研究 scientists 是否愿意用较低工资换取 science-oriented jobs，比如允许发表论文、继续个人研究议程和参与开放科学共同体。它对应 compensating differentials: 非工资 job attributes 可能有正 utility。
- **Identification Strategy**: 最大识别问题是高能力科学家可能同时收到更高工资和更 science-oriented 的 offer，简单横截面会把 ability sorting 当成 job amenity 的价格。Stern 的关键设计利用 postdoctoral biologists 在接受工作前通常有 multiple job offers。比较发生在同一科学家的多个 offer 之间，因此 researcher fixed effects 控制了个人能力、偏好和整体薪资水平。识别来自同一人面对的 offer 在 publication permission、research flexibility 等 science orientation 上的差异。关键假设是 conditional on individual fixed effects and offer controls，offer 的 science attributes 与未观测 offer quality 不完全同向；威胁是 science-oriented offer 也可能附带更好 lab resources、career networks 或未来 option value。
- **研究方法与数据**: 使用 postdoctoral biologists 的 offer-level survey data，估计 hedonic wage equation，并重点纳入 individual fixed effects。
- **主要结论**: 同一科学家面对的 science-oriented offer 往往工资更低，说明科学家愿意为开放发表和研究自主性接受 wage discount。
- **考试/复习 takeaway**: 这是 compensating differential 的很漂亮例子。关键不是“科学家工资低”，而是 same worker, multiple offers 的 within-person comparison。

### 6. Summers (1989)

- **题目**: [Some Simple Economics of Mandated Benefits](https://larrysummers.com/publication/some-simple-economics-of-mandated-benefits-2/)
- **作者/年份**: Lawrence H. Summers, 1989
- **背景与研究问题**: 论文讨论政府强制雇主提供 benefits 时，成本到底由谁承担，以及 mandated benefits 与 payroll tax、cash transfer 相比是否更有效率。
- **Identification Strategy**: **非实证识别论文**。这是一篇理论和政策 incidence 论文，没有 treatment-control design。核心逻辑是 incidence: 如果工人充分重视某项 benefit，雇主成本可通过较低工资 pass through 给工人，employment distortion 可能小于等额 payroll tax；如果工人低估或不需要该 benefit，则 mandated benefit 更像税，会降低就业或工资。
- **研究方法与数据**: 使用标准劳动供需图和局部均衡 incidence 分析，区分 worker valuation、labor demand elasticity、wage flexibility 和制度约束。
- **主要结论**: mandated benefits 的效率取决于 workers' valuation。若 benefit 与工人偏好一致，强制福利可能通过工资调整实现较低 deadweight loss；若估值低，则成本难以有效转化为福利。
- **考试/复习 takeaway**: 答 compensating differentials 或 benefits incidence 时，要同时画 wage 和 employment effects，并写清楚 cost pass-through 取决于 worker valuation。

## Topic 3: Place-Based Policies

### 7. Busso, Gregory and Kline (2013)

- **题目**: [Assessing the Incidence and Efficiency of a Prominent Place Based Policy](https://doi.org/10.1257/aer.103.2.897)
- **作者/年份**: Matias Busso, Jesse Gregory and Patrick Kline, 2013
- **背景与研究问题**: 论文评估美国 federal urban Empowerment Zone program 的 incidence 和 efficiency。核心问题是 place-based subsidies 是否真的改善目标地区就业和工资，还是主要被土地所有者、迁入者或企业资本化。
- **Identification Strategy**: 识别来自 Round I Empowerment Zone designation 的准实验性差异。作者将获批 EZ 的 neighborhoods 与 rejected applicants 和 future applicants 比较，后者提供比普通地区更可信的 counterfactual，因为它们同样申请过项目、具备类似政策目标和政治经济背景。设计接近 difference-in-differences/event-study: 看 designation 前后目标区相对对照区的变化。关键假设是若未获批，获批区会沿 rejected/future applicant areas 的趋势变化。威胁包括申请成功并非随机、地方政府同步投入、spillovers 到附近地区、人口选择性迁入迁出和 rent capitalization。
- **研究方法与数据**: 使用 Decennial Census confidential microdata 与 Longitudinal Business Database，估计居民、企业、就业、工资、房租和人口变化，并结合 welfare analysis。
- **主要结论**: EZ designation 增加 zone 内就业和企业活动，提高本地工人工资，但没有明显推高人口或当地生活成本，因而效率成本相对有限。
- **考试/复习 takeaway**: place-based policy 的好答案要问“谁受益”: workers、firms、landowners 还是 migrants。Busso et al. 是 incidence + efficiency 的核心实证例子。

### 8. Chyn (2018)

- **题目**: [Moved to Opportunity: The Long-Run Effects of Public Housing Demolition on Children](https://www.aeaweb.org/articles?id=10.1257/aer.20161352)
- **作者/年份**: Eric Chyn, 2018
- **背景与研究问题**: 论文研究低收入儿童被迫搬离高贫困 public housing 后，成年就业、收入、教育和犯罪结果是否改善。它与 MTO randomized voucher experiment 互补，因为 demolition 影响的是不一定主动申请搬迁的家庭。
- **Identification Strategy**: 识别来自 Chicago public housing demolition 在 building level 的政策冲击。作者比较住在被拆除楼栋的儿童与住在附近、同一公共住房环境中但楼栋未被拆除的儿童。关键 variation 是 demolition forced relocation，而非家庭主动选择搬家。核心假设是 conditional on development/neighborhood controls，被拆楼栋儿童与附近未拆楼栋儿童在未受冲击时会有相似趋势。主要威胁是拆除楼栋是否因更差住户、犯罪、建筑条件或行政优先级被选择，以及搬迁后家庭 attrition 和 neighborhood exposure 的异质性。
- **研究方法与数据**: 将 Chicago Housing Authority records 与成年后的行政数据连接，估计就业、收入、教育和犯罪等长期结果。
- **主要结论**: 被迫搬迁儿童成年后就业率和收入更高，暴力犯罪逮捕更少；较小年龄搬迁的儿童高中辍学率更低。
- **考试/复习 takeaway**: 这是 neighborhood effects 的自然实验例子。答题时强调 forced relocation 减少了 purely voluntary moving selection，但 demolition selection 仍需讨论。

### 9. Kline and Moretti (2014)

- **题目**: [People, Places, and Public Policy: Some Simple Welfare Economics of Local Economic Development Programs](https://www.annualreviews.org/content/journals/10.1146/annurev-economics-080213-041024)
- **作者/年份**: Patrick Kline and Enrico Moretti, 2014
- **背景与研究问题**: 这篇 Annual Review 讨论 place-based policies 的福利经济学: 当政府把补贴投向特定地区时，政策是否比 people-based transfers 更好？谁获得收益？全国福利是否提高？
- **Identification Strategy**: **非实证识别论文**。它不是单一项目评估，而是建立 spatial equilibrium welfare framework 来组织实证证据。核心识别思路是区分 local treatment effects 与 national welfare effects: 地区就业上升不等于社会福利上升，因为可能只是 reallocation；工资上升也可能被 rents 吸收。
- **研究方法与数据**: 理论模型结合已有 place-based policy 文献，讨论 agglomeration externalities、local labor market frictions、migration elasticities、rent capitalization 和 fiscal costs。
- **主要结论**: place-based policies 只有在存在空间外部性、迁移/劳动市场摩擦或 redistributive objective 明确时才可能有强福利理由。政策评估必须同时看 workers、firms、landowners 和 taxpayers。
- **考试/复习 takeaway**: 这篇给 place-based essay 的福利框架。不要只写 employment effect，要写 incidence, efficiency, migration, rents, agglomeration。

## Topic 4: Minimum Wage and Unions

### 10. Card and Krueger (1994)

- **题目**: [Minimum Wages and Employment: A Case Study of the Fast-Food Industry in New Jersey and Pennsylvania](https://www.nber.org/papers/w4509)
- **作者/年份**: David Card and Alan B. Krueger, 1994
- **背景与研究问题**: 论文检验最低工资上升是否必然降低低工资就业。1992 年 New Jersey 提高 minimum wage，而相邻 Pennsylvania 没有变化，形成一个经典 natural experiment。
- **Identification Strategy**: 主要设计是 difference-in-differences。treated group 是 New Jersey fast-food restaurants，control group 是 Pennsylvania fast-food restaurants。比较政策前后 NJ 相对 PA 的 employment、wages 和 prices 变化。关键假设是若 NJ 不提高最低工资，两地 fast-food employment trends 会平行。威胁包括 NJ 和 PA 同期需求冲击不同、样本 survey measurement error、企业预期调整、跨州 spillovers、以及 fast-food 行业是否能代表 broader low-wage labor market。论文还使用 gap/exposure style variation: 政策前工资越低、受 minimum wage bite 越强的店应反应更大。
- **研究方法与数据**: 对 fast-food restaurants 做政策前后电话调查，估计 employment changes、wage compliance 和价格变化。
- **主要结论**: 结果没有显示 NJ 提高最低工资导致就业下降，某些规格下就业甚至相对上升。这挑战了简单竞争模型的强预测。
- **考试/复习 takeaway**: 最低工资题要写清楚 DiD 的 treated/control、parallel trends 和行业/地区 external validity。结果不是“最低工资永远无害”，而是这个市场和政策范围内没有明显 disemployment。

### 11. DiNardo and Lee (2004)

- **题目**: [Economic Impacts of New Unionization on Private Sector Employers: 1984-2001](https://academic.oup.com/qje/article/119/4/1383/1851076)
- **作者/年份**: John DiNardo and David S. Lee, 2004
- **背景与研究问题**: 论文问新 unionization 对 private-sector employers 的工资、就业、产出、生产率和企业存活有什么影响。普通比较会有严重 selection，因为 unions 可能选择更有利润或更有组织基础的企业。
- **Identification Strategy**: 核心是 regression discontinuity design at the 50 percent union election threshold。美国 union certification elections 中，工会以微弱优势赢得和以微弱劣势输掉的企业，在潜在支持率上非常接近；因此 near-threshold winners and losers 可视作局部可比。running variable 是 union vote share，cutoff 是 50%。关键假设是企业和工人无法精确操纵刚好过线，且 cutoff 附近 potential outcomes smooth。识别的是 close elections 中 union certification 的 local effect，不一定代表 landslide victories 或长期强工会环境。还要注意 first stage: 赢得 election 提高 legal bargaining mandate，但不保证强合同或高工资 gains。
- **研究方法与数据**: 使用多个 establishment-level datasets，连接 union election records 与企业 outcomes，估计 RD 和多种带宽/函数形式。
- **主要结论**: 对工资、就业、产出、生产率和企业存活的影响普遍小或接近零，说明新认证工会在研究时期未能显著改变雇主经济结果。
- **考试/复习 takeaway**: 这篇是 RD 的黄金例子。答题时写“barely won vs barely lost”，并解释 local nature 和 first-stage/union strength。

### 12. Dube, Lester and Reich (2010)

- **题目**: [Minimum Wage Effects across State Borders: Estimates Using Contiguous Counties](https://doi.org/10.1162/REST_a_00039)
- **作者/年份**: Arindrajit Dube, T. William Lester and Michael Reich, 2010
- **背景与研究问题**: 论文重新估计最低工资对低工资行业就业和收入的影响，核心批评是传统 state-level panel 可能把区域经济趋势误当成 minimum wage effects。
- **Identification Strategy**: 识别来自 contiguous county pairs straddling state borders。treated county 与 control county 位于州界两侧，面对不同 state minimum wages，但共享相近 local demand shocks、产业结构和区域趋势。设计可以理解为 local DiD with county-pair fixed effects: 在同一 border pair 内利用最低工资差异随时间变化。关键假设是边境两侧 counties 的未观测经济冲击更相似，且最低工资变化没有强烈跨境 spillovers、commuting substitution 或企业迁移污染对照组。威胁是 border counties 未必属于同一真实 labor market，或州政策差异还包含其他制度变化。
- **研究方法与数据**: 使用美国县级餐饮和低工资行业数据，比较全国面板、区域 controls 和 border-pair designs 的估计差异。
- **主要结论**: 在控制本地异质趋势后，最低工资显著提高 earnings，但没有发现明显负就业效应。传统模型中的负就业估计可能来自未控制的区域趋势。
- **考试/复习 takeaway**: 这是 minimum wage identification 的升级版。答题时强调为什么 local controls 比全州/全国比较更可信。

## Topic 5: Intergenerational Mobility

### 13. Black and Devereux (2011)

- **题目**: [Recent Developments in Intergenerational Mobility](https://www.nber.org/papers/w15889)
- **作者/年份**: Sandra E. Black and Paul J. Devereux, 2011
- **背景与研究问题**: 这篇 Handbook 章节总结 intergenerational mobility 文献从测量 parent-child correlations 转向识别 causal mechanisms 的发展。它关心父母收入、教育、家庭环境、基因、学校和 neighborhoods 如何影响子代结果。
- **Identification Strategy**: **非实证识别论文**。它没有一个单独的 treatment，而是整理多类 identification designs: twins/siblings 控制 family fixed effects，adoption designs 分离 biological 与 adoptive family channels，IV 利用教育政策或收入冲击，natural experiments 研究 neighborhoods 和 schools。核心提醒是 intergenerational elasticity 或 rank-rank slope 本身通常是 descriptive persistence，不等于某个家庭投入的 causal effect。
- **研究方法与数据**: 综述跨国 mobility measurement、administrative datasets、adoption/twin studies、education and income transmission designs。
- **主要结论**: 文献越来越重视 mechanisms，而不仅是 persistence 的大小。家庭背景影响确实重要，但基因、环境、学校、地区和政策渠道需要用不同设计区分。
- **考试/复习 takeaway**: 适合在 mobility essay 开头使用: measurement answers “how persistent”，identification answers “why persistent”。

### 14. Chetty, Hendren, Kline and Saez (2014)

- **题目**: [Where Is the Land of Opportunity? The Geography of Intergenerational Mobility in the United States](https://www.nber.org/papers/w19843)
- **作者/年份**: Raj Chetty, Nathaniel Hendren, Patrick Kline and Emmanuel Saez, 2014
- **背景与研究问题**: 论文问美国是否真是 “land of opportunity”，以及 upward mobility 是否因成长地区不同而显著变化。它把 intergenerational mobility 从全国平均推进到 geography of opportunity。
- **Identification Strategy**: 这篇主要是 high-quality descriptive measurement，不是 causal identification of neighborhood effects。识别重点在于用大规模 administrative tax records 准确测量 parent-child income ranks，并在 commuting zones 层面比较 mobility。比较组是来自不同地区、不同 parental income rank 的 children。关键假设是 tax data 能稳定捕捉父母和成年子女收入，地区归属反映成长环境；但地区相关因素与家庭选择高度相关，所以 area correlations 不能直接解释为 causal effects。论文明确探索 correlates，如 segregation、inequality、school quality、social capital 和 family structure，而不是证明这些因素的单独因果效应。
- **研究方法与数据**: 使用超过 4000 万儿童及父母的美国行政收入记录，估计 rank-rank relationship、absolute mobility 和 upward mobility measures。
- **主要结论**: 美国 intergenerational mobility 在地区间差异巨大。父母收入 rank 每高 10 percentile，子女平均 rank 约高 3.4 percentile。高 mobility 地区通常 segregation 更低、学校更好、social capital 更强、家庭结构更稳定。
- **考试/复习 takeaway**: 写 mobility 时要区分 description 和 causality。Chetty et al. 证明 geography matters descriptively，但机制因果需要 MTO、Chyn 或 later neighborhood exposure designs。

### 15. Sacerdote (2007)

- **题目**: [How Large Are the Effects from Changes in Family Environment? A Study of Korean American Adoptees](https://academic.oup.com/qje/article/122/1/119/1924717)
- **作者/年份**: Bruce Sacerdote, 2007
- **背景与研究问题**: 论文研究 family environment 对教育、收入、健康和行为的 causal effect 有多大。普通 parent-child correlations 混合了 genetics、assortative matching 和 shared environment，难以解释 nurture 的作用。
- **Identification Strategy**: 识别来自 Korean American adoptees 被 quasi-randomly assigned to adoptive families。因为被收养儿童与养父母没有共同基因，且分配过程近似随机，养父母教育、家庭规模等差异可用来识别 family environment 的影响。比较对象是被分配到不同 adoptive family environments 的 adoptees。关键假设是 adoption agency 没有按儿童未观测能力或健康系统性匹配家庭，或者这种匹配可由 observables 控制。威胁包括 agency placement rules、选择进入收养家庭、样本代表性和 adoptive families 本身不是普通家庭。
- **研究方法与数据**: 构建 Korean American adoptees 数据，连接养父母特征与 adoptee 成年教育、收入、健康、行为和 college selectivity。
- **主要结论**: 养父母教育和较小家庭规模显著改善多项结果。nurture 对 college selectivity、饮酒/吸烟等行为尤其重要，对教育年限也有影响但不是全部解释。
- **考试/复习 takeaway**: adoption design 的关键是把 genetics 和 family environment 分开。考试里要说明 external validity: adoptees 和 adoptive families 都不是随机抽自总体。

## Topic 6: Job Displacement

### 16. Jacobson, LaLonde and Sullivan (1993)

- **题目**: [Earnings Losses of Displaced Workers](https://research.upjohn.org/up_workingpapers/11/)
- **作者/年份**: Louis S. Jacobson, Robert J. LaLonde and Daniel G. Sullivan, 1993
- **背景与研究问题**: 论文研究 high-tenure workers 被迫离开 distressed firms 后的 earnings losses 有多大、持续多久。重点是 job displacement 的长期成本，而不只是失业当期收入损失。
- **Identification Strategy**: 核心设计是 event-study / difference-in-differences using administrative earnings histories。treated workers 是在 declining or mass-layoff firms 中离职的高年资工人，comparison workers 是同一州行政数据中持续就业、未被 displacement 的类似工人。通过观察分离前后的长期 earnings path，作者控制 worker fixed effects 和 calendar effects，识别 displacement 后相对轨迹的变化。关键假设是若没有 displacement，被裁工人的收入会沿对照组或其 pre-trend 延续。威胁是 distressed firms 中工人在正式离职前已受到 wage cuts、hours reductions 或选择性离职影响，因此估计既反映 job loss，也反映企业衰退暴露。
- **研究方法与数据**: 使用 Pennsylvania administrative quarterly earnings records 和 firm information，追踪 1980s 高年资工人。
- **主要结论**: 被 displacement 的高年资工人长期 earnings losses 约为 25% per year，损失在离职前已开始扩大，离职后多年仍不完全恢复。
- **考试/复习 takeaway**: job displacement 题要写动态图: pre-displacement dip、impact loss、persistent post-displacement loss。mass layoff helps but does not eliminate all selection concerns。

### 17. Lachowska, Mas and Woodbury (2020)

- **题目**: [Sources of Displaced Workers' Long-Term Earnings Losses](https://www.aeaweb.org/articles?id=10.1257/aer.20180652)
- **作者/年份**: Marta Lachowska, Alexandre Mas and Stephen A. Woodbury, 2020
- **背景与研究问题**: 论文不仅问 displacement 后收入损失多大，还问损失来自哪里: hours、hourly wages、lost employer premiums，还是 worker-employer match quality。
- **Identification Strategy**: 识别建立在 linked employer-employee panel 的 displacement event study 和 wage decomposition 上。作者比较 Great Recession 中 displaced workers 与未 displaced 或较少受冲击工人的 earnings、hours 和 wages 动态，并使用 employer wage premiums / worker-employer match components 分解工资损失。关键因果假设与 displacement 文献类似: 在控制 worker histories、employer effects 和时间效应后，displaced workers 的 counterfactual path 可由对照组近似。进一步分解依赖于 AKM-style wage components 的解释: employer premiums 与 match effects 可被区分。威胁包括谁被裁员并非随机、reemployment sorting、hours measurement 和 match quality 的模型依赖。
- **研究方法与数据**: 使用 Washington State linked employer-employee administrative data，覆盖 Great Recession 前后就业、工时、工资率和企业信息。
- **主要结论**: 长期 earnings losses 主要来自 hourly wage rates 的下降和缓慢恢复，而不只是少工作。lost employer-specific premiums 解释的份额有限，worker-employer match loss 更重要。
- **考试/复习 takeaway**: 这篇适合回答“为什么 displacement costs 持久”。不要只写 unemployment duration，要分解 hours、wage rate、firm premium 和 match quality。

## Topic 7: Labor Market Insurance Policies

### 18. Chetty (2008)

- **题目**: [Moral Hazard versus Liquidity and Optimal Unemployment Insurance](https://dash.harvard.edu/entities/publication/73120378-a3ac-6bd4-e053-0100007fdf3b)
- **作者/年份**: Raj Chetty, 2008
- **背景与研究问题**: 论文研究 UI benefits 为什么会延长 unemployment duration。传统解释是 moral hazard: benefits 降低 search incentives。Chetty 强调另一机制: liquidity effect，即失业者缺现金时，UI 让他们能更平滑消费并等待更好工作。
- **Identification Strategy**: 论文用两类 variation 分解 duration response。第一，比较 liquidity-constrained 与 unconstrained households 对 UI benefit generosity 的反应；如果低流动性家庭反应更大，说明部分 duration response 是 cash-on-hand/liquidity，而不只是 substitution effect。第二，利用 severance payments 这种 lump-sum cash shocks: severance 不改变继续失业的边际补贴率，因此若它也延长 unemployment duration，说明 liquidity matters。关键假设是财富或 severance variation 在控制后不只是未观测 worker quality、job prospects 或 preferences 的 proxy。威胁包括 wealth endogeneity、severance 与工作质量/行业相关、以及 constrained households 的 search technology 不同。
- **研究方法与数据**: 结合失业持续时间、福利制度、家庭资产和 severance information，估计 reduced-form elasticities，并推导 optimal UI sufficient statistic formula。
- **主要结论**: UI 对 unemployment duration 的影响中约相当大部分来自 liquidity effect，而非纯 moral hazard。最优 UI replacement rate 因此可高于只看 search distortion 时的建议水平。
- **考试/复习 takeaway**: UI 题中不要把 longer duration 直接等同 welfare loss。要写 liquidity vs moral hazard decomposition，以及 Baily-Chetty sufficient statistic。

### 19. Gerard and Naritomi (2021)

- **题目**: [Job Displacement Insurance and (the Lack of) Consumption-Smoothing](https://www.aeaweb.org/articles?id=10.1257/aer.20190388)
- **作者/年份**: François Gerard and Joana Naritomi, 2021
- **背景与研究问题**: 论文研究 job displacement insurance 是否真的平滑消费。巴西制度下，layoff 同时带来 severance pay 等短期现金流入和长期收入损失，这是观察 consumption response 的好环境。
- **Identification Strategy**: 识别来自 layoff event timing、benefit payment timing 和 eligibility rules。作者追踪同一工人在 layoff 前后的 high-frequency expenditure，观察现金发放时消费是否跳升，同时比较不符合部分福利条件或不同支付时点的 workers。核心比较是 displaced workers 在事件前后以及不同 cash-on-hand exposure 下的 spending path。关键假设是消费变化不是由季节性、预期性大额支出或未观测家庭冲击驱动，而是由 displacement-related cash and income shocks 触发。威胁包括 layoff selection、informal insurance、credit access differences 和只观察可匹配消费数据的人群。
- **研究方法与数据**: 使用巴西去标识化 expenditure data 与 employment records，估计 layoff、severance、UI exhaustion 和长期收入损失对消费的动态影响。
- **主要结论**: 工人在 layoff 时反而显著增加消费，即使长期收入下降；消费对 cash-on-hand 高度敏感，说明现有支付时点未能很好实现 consumption smoothing，present bias 或 liquidity frictions 很重要。
- **考试/复习 takeaway**: 这篇把 insurance design 的重点从“给多少钱”扩展到“什么时候给”。UI/severance 的 timing 本身会影响 welfare。

### 20. Giupponi and Landais (2023)

- **题目**: [Subsidizing Labour Hoarding in Recessions: The Employment and Welfare Effects of Short-Time Work](https://academic.oup.com/restud/article/90/4/1963/6767833)
- **作者/年份**: Giulia Giupponi and Camille Landais, 2023
- **背景与研究问题**: 论文研究 short-time work (STW) subsidies 在衰退中是否能通过 subsidizing labour hoarding 保住工作，并问这种保就业是否提升 welfare，还是阻碍劳动者从低生产率企业转移。
- **Identification Strategy**: 识别来自意大利 CIGS short-time work 的 eligibility rules。CIGS eligibility 由 INPS contributory codes 与 firm size thresholds 共同决定；在细行业内，一些 otherwise similar firms 因历史行政规则可获得 STW，另一些不能。作者利用这种 eligibility variation 作为准实验，并用 size threshold 检查和控制 differential shocks。比较组是相同细行业中不符合资格但相似的企业和工人。关键假设是 INPS code 和 eligibility threshold 在 Great Recession 时不与企业未观测趋势系统相关，且 firms 不能操纵 code/size 精确进入资格。威胁包括 eligible firms 自选择申请、size manipulation、同时期政策差异和 general equilibrium spillovers。
- **研究方法与数据**: 使用意大利 INPS 行政社保数据、STW applications/authorizations、企业和 worker histories，并结合 firm balance sheets 与 local labor market IV 分析。
- **主要结论**: STW 显著降低每名员工工时但提高 headcount employment 和企业存活。对 temporary shocks 和 liquidity-constrained firms，STW 有保险价值；但在 persistent shocks 中，低生产率企业选择进入可能带来 reallocation costs。
- **考试/复习 takeaway**: STW 不是简单“保就业好/坏”。考试答案要写 welfare trade-off: insurance and inefficient layoffs versus adverse selection and delayed reallocation。
