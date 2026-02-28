## 项目背景

Local governance in rural China often involves substantial discretion in how policies are implemented who learns about programs, who successfully applies, and how state actions affect household resources. Yet we have limited causal evidence on whether human capital that improves communication and information access can change citizen-state interaction sand distributional outcomes. This project will generate new knowledge on a core question in political economy and development: can improved command of the national language empower rural residents by lowering information barriers and facilitating engagement with bureaucracies, thereby improving targeting and take-up of subsidies and reducing extractive interactions.

While the existing literature confirms that national language proficiency yields high returns in the labor market and aids social assimilation, its political economy impacts at the micro-level remain under explored. The novelty of our paper lies in conceptualizing language not just as human capital for employment, but as "institutional capital." If successful, this research will demonstrate that educational language policies have unintended, positive spillover effects on rural governance and resource distribution. It provides action able insights for policymakers aiming to reduce rural inequality and curb local corruption through grassroots empowerment.



Identification Strategy: 小学中学，老师必须用普通话上课

当地方言和普通话的接近程度？eg：老家讲东北话，影响就会很小

Regression Kink Design

如何理解 density test



## Todo

- [x] 关于 measurement，先 Standardize 再取均值
- [ ] 未来跑回归的时候记得 impute missing value。假设样本 missing 是 10%，那么可以使用均值
- [ ] 基于 graph. do 生成一个 `descriptive graph` ，纯 
- [ ] 关于 control variable，使用 head 
- [ ] table 删了多少样本必须做
- [x] 关于 measurement，哪怕是 0-1，也要 standardize 再取 mean
- [x] density test

### Priority
1. Summary Statistics 
2. 主结果
3. Test



## 会记

1. baseline 结果不错
2. 是不是 only child
3. control 孩子的年龄
4. wave
5. 比较重要：y 家庭从政府收入的，predetermined density，1 to 1 match 的。另一个 sample selection 的问题是家庭户里最大的小孩应该考虑在家 350 天/180 天。在 balance 的时候保证两边的 sample size 要对齐
6. 先 collapse 在 village 再跑 density test
7. predetermined test
8. head 


