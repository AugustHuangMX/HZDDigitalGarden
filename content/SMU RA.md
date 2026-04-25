[[Claude MD for SMU RA]]

## 项目背景

Local governance in rural China often involves substantial discretion in how policies are implemented who learns about programs, who successfully applies, and how state actions affect household resources. Yet we have limited causal evidence on whether human capital that improves communication and information access can change citizen-state interaction sand distributional outcomes. This project will generate new knowledge on a core question in political economy and development: can improved command of the national language empower rural residents by lowering information barriers and facilitating engagement with bureaucracies, thereby improving targeting and take-up of subsidies and reducing extractive interactions.

While the existing literature confirms that national language proficiency yields high returns in the labor market and aids social assimilation, its political economy impacts at the micro-level remain under explored. The novelty of our paper lies in conceptualizing language not just as human capital for employment, but as "institutional capital." If successful, this research will demonstrate that educational language policies have unintended, positive spillover effects on rural governance and resource distribution. It provides action able insights for policymakers aiming to reduce rural inequality and curb local corruption through grassroots empowerment.



Identification Strategy: 小学中学，老师必须用普通话上课

当地方言和普通话的接近程度？eg：老家讲东北话，影响就会很小

Regression Kink Design

如何理解 density test



## Todo


### Priority
1. Summary Statistics 
2. 主结果
3. Test


---

## 组会日记

第一个系列更新一下自己人生中加入的第一个 Econ 课题组。分享一些心得体会，以及一些在课堂知识本身学不到的内容。

加入课题组已经有一个半月了，最大的感受是相较于 EME 课程里对于理论模型的强调，在实证研究里会更加在意 identification strategy，尤其是在处理 survey data 的时候，注定会有大量的 measurement error，一些 obs 需要大胆丢掉，一些 obs 需要进行处理（比如通过其他相关的 variable 进行计算后替换）。目前的阶段还停留在对 balance test 的处理当中，也在思考是否要去除 outliers。

组里的氛围非常好（当然这是我的第一个组，我也没有合适的参照物，但是在干活和开会的时候我整体是非常开心的），老师们也不 push，也会肯定你的 effort，会在需要的时候直接给出明确的建议，组里的学姐前辈也会随时在细节上进行指点，我还能多要求什么呢？


---

## 关键结果

Minxing Huang 接到三项数据处理任务：为 CFPS 数据匹配新的语言距离指标、探索 RD 设计中的 donut 方法、以及收集 1990-2020 年的 CPI 价格指数。项目目标是证明普通话推广项目对农村儿童语言能力的提升效果，并分析其对家庭获取政府补贴权益的影响。 

## 项目背景

- 研究主题：评估儿童普通话水平提升是否帮助农村父母更好地争取政府补贴和权益（如退耕还林补贴、集体收入等） 1
- 数据来源：
    
    - CFPS（中国家庭追踪调查）：包含普通话水平测量、土地征用、住房拆迁及赔偿款等数据 23
    - NFS（村居调查）：包含集体收入、政府收入、退耕还林等数据 3
    - CHNS（健康追踪调查）：暂不使用，主要关注健康和饮食问题 45

## 任务分配

### 任务一：CFPS 县级语言指标匹配（优先级最高）

- 目标：为 CFPS 数据中的 160 多个县匹配黄老师团队的新语言距离测量指标 67
- 数据限制：CFPS 只能定位到县级，与之前使用的 NFS（村级）数据不同 6
- 具体步骤：
    
    1. Qinyue 将提供县名列表（Excel 格式） 78
    2. Minxing 根据县名查找地理坐标（经纬度） 67
    3. 使用经纬度匹配黄老师的语言距离指标 7
    4. 最终交付包含县名和对应语言指标的文件，供 Qinyue 直接 merge 使用 79

### 任务二：RD 设计的 Donut 稳健性检验

- 背景问题：使用 9 年教育年限数据时，language affinity 图表显示轻微的 pre-trend，理论上不同地区普通话水平差异应该稳定 10
- 解决方案：采用 RD 设计中的 donut 方法（挖掉断点周边数据重新回归） 11
- 工作内容：
    
    1. 先询问 GPT 了解 donut 方法的原理 12
    2. 搜索使用 RD 方法的高质量期刊文章（如发表在 top 期刊），查找其公开的 robustness check 代码 1112
    3. 重点关注方法而非主题，找到标准的 Stata 代码写法 1112
    4. 将搜索结果和代码示例提供给 Qinyue 评估 12

### 任务三：CPI 价格指数收集

- 用途：调整 CFPS 中不同年份的土地征用和住房拆迁赔偿款，消除通货膨胀影响 1314
- 数据要求：
    
    - 时间范围：1990-2020 年 14
    - 地理范围：全国平均水平（不需要细化到县市） 14
    - 数据来源：国家统计局或国际组织（如 IMF），避免使用论坛等非官方数据 14
- 交付格式：简单的年份-CPI 对照表，以 1990 年为基期 1415
- 注意事项：Qinyue 会检查 CFPS 问卷中受访者回答的拆迁年份和赔偿金额，确认是否需要调整；同时也会检查 NFS 数据中的政府收入、集体收入等货币变量是否需要类似调整 1617

## 待确认事项

- CFPS 数据中 answer 的格式，确认拆迁赔偿款数据是否已经过调整 15
- NFS 数据中的货币类变量（政府收入、集体收入）是否也需要按年份调整 15
- Donut 方法的具体实施方案，等待 Minxing 提供文献和代码参考后决定由谁编写 12

## 沟通方式

- 遇到问题随时通过微信联系 18
- 优先在群里@提问，其他成员可能也能解答 18

## 行动项

- Minxing：按优先级顺序完成三项任务（CFPS 语言指标 → Donut 方法文献搜索 → CPI 数据收集） 919
- Qinyue：发送 CFPS 县名列表给 Minxing 18
- Qinyue：测试土地征用数据是否需要 CPI 调整 1519