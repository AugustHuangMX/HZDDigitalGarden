
## 📊 **30天计量经济学复习计划（双PS驱动版）| GTD框架**

### **📌 两份Problem Sets说明**

**【基础PS】Problem_Set.pdf (5套)**

- PS1-PS5：涵盖基础理论和标准方法

**【高级PS】Problem_Set_Otsu.pdf (4套)**

- **Otsu老师明确的优先题目**：
    - PS1: Q1, Q2 ⭐
    - PS2: Q2, Q3 ⭐
    - PS3: Q2, Q3 ⭐
    - PS4: Q1, Q3 ⭐

---

## 📅 **第一周详细计划（Day 1-7）：Phase 1 - 基础理论构建**

| 天数        | 复习主题             | GTD要完成的题目（预计耗时）                                                                                           | 题目涉及的知识点（课件位置）                                                                                                                                        | 今日产出物                        |
| --------- | ---------------- | --------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------- | ---------------------------- |
| **Day 1** | **渐近理论基础**       | **【基础PS1, Q3】**(1.5h)<br>- Q3(a-b): 加权均值的无偏性与方差<br>- Q3(c): 依概率收敛的充分条件<br>- Q3(d): $\max w_i = o(n)$的证明   | 📌 **EC484_Asymptotic_Theory.pdf**<br>- Slide 30-43: 依概率收敛定义<br>- Slide 43: Markov不等式应用<br>- Slide 44-52: WLLN                                        | PS1 Q3完整手写解答 + "收敛类型"对比表     |
| **Day 2** | **收敛概念深化**       | **【基础PS1, Q4】**(1.5h)<br>- Q4(a): 判断$X_n \xrightarrow{p} 0$<br>- Q4(b-c): 计算期望与方差<br>- Q4(d): 不同分布的对比     | 📌 **EC484_Asymptotic_Theory.pdf**<br>- Slide 5: $\lim \inf$和$\lim \sup$<br>- Slide 30-52: 收敛概念与LLN<br>- 需理解：为何$E[X_n]=0$但$X_n$不收敛到0                  | PS1 Q4解答 + "期望vs概率收敛"澄清笔记    |
| **Day 3** | **条件期望与投影**      | **【基础PS1, Q1】**⭐(2h)<br>- 证明$\beta^* = (E[xx'])^{-1}E[xm(x)]$<br>- 证明$x'\beta^*$是CEF的最佳线性近似               | 📌 **Lecture_1.pdf**<br>- Slide 5-15: CEF定义$E[yx]$<br>- Slide 16-24: 线性投影与最小化<br>- Slide 11: Law of Iterated Expectations                             |                              |
| **Day 4** | **遗漏变量偏差**       | **【基础PS1, Q2】**⭐(2h)<br>- 分析遗漏$x_2$对$\beta_1$的影响<br>- 证明是否会导致异方差性                                         | 📌 **Lecture_1.pdf**<br>- Slide 24-28: 投影误差性质<br>📌 **EC484_OLS.pdf**<br>- Slide 10-15: Omitted Variable Bias<br>- 需理解：同方差性在投影与结构方程中的差异               | PS1 Q2证明 + "OVB影响路径"流程图      |
| **Day 5** | **Delta Method** | **【基础PS2, Q2】**⭐(2h)<br>- Q2(a): 用Delta Method推导$\sqrt{n}(\hat{\beta}-\beta)$<br>- Q2(b-c): $\mu=0$时的特殊处理 | 📌 **EC484_Asymptotic_Theory.pdf**<br>- Slide 71-85: Delta Method定理<br>- Slide 86-90: 应用案例<br>- 需理解：为何$\mu=0$时需用$n\hat{\beta}$而非$\sqrt{n}\hat{\beta}$ | PS2 Q2完整推导 + Delta Method流程图 |
| **Day 6** | **Ridge回归渐近性**   | **【基础PS2, Q3】**⭐(2h)<br>- Q3(a): 固定$\lambda>0$时的概率极限<br>- Q3(b): $\lambda=cn$时的情况                         | 📌 **EC484_OLS.pdf**<br>- Slide 5-12: OLS一致性<br>- Slide 20-25: $\frac{1}{n}\sum x_ix_i' \xrightarrow{p} E[xx']$<br>- 需理解：一致性需要什么条件                    | PS2 Q3解答 + "一致性定义"澄清笔记       |
| **Day 7** | **📌 周回顾**       | **行动清单**：<br>1. 白纸默画"本周知识树"(1h)<br>2. 重做本周所有错题(1h)<br>3. 列出"下周重点攻克的3个知识点"(0.5h)                           | **整理材料**：<br>- 本周完成的6道题解答<br>- 标记理解程度                                                                                                                 | A3纸知识地图 + 错题本 + 下周学习清单       |

---

## 🔮 **第二周概览（Day 8-14）：Phase 1延续 + Phase 2开始**

### **核心题目安排**：

**Day 8**：【基础PS3, Q2】⭐ - 非线性假设检验

- **涉及课件**：EC484_OLS.pdf (Slide 35-45) Wald/LM/LR检验
- **产出**：PS3 Q2解答 + Wald检验步骤模板

**Day 9**：【基础PS3, Q3】⭐ - 两步估计量的渐近分布

- **涉及课件**：EC484_OLS.pdf (Slide 48-60) 渐近分布推导
- **产出**：PS3 Q3解答 + 两步估计框架

**Day 10**：【Otsu PS1, Q1】⭐ - Minimum Distance估计

- **涉及课件**：General.pdf (Slide 1-20) 一般一致性定理
- **产出**：Otsu PS1 Q1(a-b)证明 + MD估计理论总结

**Day 11**：【Otsu PS1, Q2】⭐ - 非线性回归NLLS

- **涉及课件**：General.pdf (Slide 21-32) NLLS一致性与渐近正态性
- **产出**：Otsu PS1 Q2(a-c)解答 + NLLS置信区间构造

**Day 12-13**：【基础PS4, Q1】 - IV估计的一致性与渐近正态性（重要但难度大）

- **涉及课件**：EC484_IV.pdf (Slide 1-25) IV基础理论
- **产出**：PS4 Q1(a-d)完整证明 + IV理论框架

**Day 14**：周回顾 + 调整计划

---

## 🚀 **第三周概览（Day 15-21）：Phase 2 - IV与GMM核心**

**Day 15-16**：【基础PS4, Q4】 - Ph.D.经济学家市场的联立方程

- **涉及课件**：EC484_IV.pdf (Slide 5-15) 供需模型识别
- **产出**：PS4 Q4完整解答（4个子问题）+ 识别条件总结

**Day 17-18**：【基础PS5, Q1】 - IV vs 2SLS vs GMM的关系

- **涉及课件**：EC484_GMM1.pdf (Slide 1-25) GMM统一框架
- **产出**：PS5 Q1解答 + "OLS→IV→GMM"演进图

**Day 19-21**：【基础PS5, Q2】⭐ - J-test的$\chi^2$分布（最难题目，3天攻克）

- **涉及课件**：GMM2.pdf (Slide 10-30) 过度识别检验
- **产出**：PS5 Q2(a-g)完整证明 + 投影矩阵性质总结

---

## 🎯 **第四周概览（Day 22-30）：Phase 3 - Quantile/Nonparametric + 冲刺**

**Day 22-23**：【Otsu PS2, Q2】⭐ - GMM with Macro Constraints

- **涉及课件**：GMM2.pdf (Slide 1-20) GMM效率
- **产出**：Otsu PS2 Q2(a-e)解答

**Day 24-25**：【Otsu PS3, Q2】⭐ - Quantile回归渐近分布

- **涉及课件**：Quantile.pdf (全部)
- **产出**：Otsu PS3 Q2(a-d)推导

**Day 26-27**：【Otsu PS4, Q1】⭐ - Kernel密度导数估计

- **涉及课件**：Nonparametric.pdf (Slide 20-40) Kernel估计
- **产出**：Otsu PS4 Q1(a-d)解答

**Day 28-29**：全真模拟考试（2场 × 3小时）

**Day 30**：高频公式默写 + 轻度复习

---

## 💡 **重要说明**

1. **⭐ 标记的题目**：老师明确重点，必须100%掌握
2. **两份PS的关系**：基础PS打基础，Otsu PS拔高，都很重要
3. **做题策略**：先尝试15分钟 → 卡住就定位课件 → 理解后重新做

---

这份计划**明确区分了两份Problem Sets**，并且标注了每道题对应的课件位置。你觉得这个安排如何？需要调整吗？ 💪



---

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

