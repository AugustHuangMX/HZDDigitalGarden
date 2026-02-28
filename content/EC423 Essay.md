#Research 

在这个项目中，我想完成一个劳动经济学硕士课程的 Essay，初步的话题是 AI 对于劳动力市场的影响，我尤其希望探究的是图像生成技术的 AI 如何影响市场的工资，比如 graphic designer 这样的职位。

可以采用的数据有 Revelio Labs, 通过 LSE 开通的 WRDS 账户https://wrds-www.wharton.upenn.edu/

我希望通过 Latex 撰写这篇论文

我能掌握的是 Python 和 Stata Codes，因此需要你也使用这两个分析工具

初步的研究方法应该是 DID，你也可以使用其他方法、更先进的方法。

字数要求不超过 6000 词。需要用全英文写作，写作风格务必保证专业、符合劳动经济学顶刊标准。


# LSE Labour Economics Essay: Research Mentorship Plan

这是一个非常有潜力的研究课题。让我先帮你搭建整个论文的框架，然后我们可以逐步深化每个部分。

---

## 一、研究定位与核心问题精炼

**初步题目建议：**

> _"Artificial Brushstrokes: The Wage Effects of Generative AI on Visual Creative Workers"_

**核心研究问题（RQ）：**

> Did the public release of image-generative AI tools (Midjourney, Stable Diffusion, DALL·E 2) causally reduce wages and job postings for graphic designers and closely related visual occupations?

这个问题的优势在于：

- 有**明确的外生冲击时间点**（treatment timing），是做 DID 的理想条件
- Revelio Labs 数据可以直接测量 wages & job postings
- 对 top journal 而言足够 novel，2022 年之后的 image AI 冲击数据目前学界覆盖仍有限

---

## 二、文献定位（你需要对话的 5 个核心文献群）

|文献群|代表文献|你的论文对话方式|
|---|---|---|
|Task-based framework|Acemoglu & Restrepo (2018, 2019, AER/JPE)|AI 替代 routine visual tasks 的理论基础|
|AI & labor displacement|Felten, Raj & Seamans (2023); Gmyrek et al. (2023, ILO)|宏观 AI exposure index|
|Generative AI specifically|Brynjolfsson et al. (2023, Science); Noy & Zhang (2023, Science)|生产力效应 vs 替代效应|
|Job postings as labor demand|Hershbein & Kahn (2018, AER); Deming & Kahn (2018)|用 job posting 衡量 labor demand 的方法论依据|
|Staggered DID methods|Callaway & Sant'Anna (2021, JoE); Sun & Abraham (2021, JoE)|你的计量方法基础|

---

## 三、数据策略（Revelio Labs via WRDS）

### 3.1 Revelio Labs 核心数据集

通过 WRDS 你可以访问以下 Revelio 表：

```
wrds.revelio.job_postings      -- 职位发布数据（含薪资、技能要求、SOC code）
wrds.revelio.employment        -- 个体层面就业记录
wrds.revelio.transitions       -- 职业转换数据
```

**关键变量构建：**

- **Outcome 1**: `log(posted_salary_median)` — 岗位发布薪资（月/年）
- **Outcome 2**: `log(job_posting_count)` — 职位发布数量（衡量 labor demand）
- **Outcome 3**: `employment_share` — 该职业占总就业比例

### 3.2 Treatment 与 Control 分组

**Treatment Group（高暴露职业）：**

- Graphic Designers（SOC 27-1024）
- Illustrators（SOC 27-1013）
- Art Directors（SOC 27-1011）
- Multimedia Artists（SOC 27-1014）

**Control Group（低暴露的创意类职业，规避 spillover）：**

- UX/UI Designers（SOC 15-1255）— 偏技术，AI image 替代性较低
- Video Editors（SOC 27-4032）— 视频生成 AI 滞后于图像 AI
- Industrial Designers（SOC 27-1021）— 物理产品设计，AI 替代较难

这个分组需要你在论文中通过 **O*NET task content** 或 Revelio 的 **skills data** 来正式化、量化，构建一个 _AI Image Generation Exposure Index (AIGE)_。

### 3.3 Treatment Timing（关键外生冲击）

```
2022-04: DALL·E 2 (OpenAI) — 首个高质量公开模型
2022-07: Midjourney v1 公开
2022-08: Stable Diffusion 开源 ← 建议作为主要 event（开源性质使冲击最广泛）
2023-03: Midjourney v5（质量大幅提升）← 可作为第二冲击/robustness check
```

你的主要 treatment date：**2022Q3（2022年8月）**

---

## 四、计量策略

### 4.1 主要方法：Staggered DID + Event Study

由于不同工具的发布时间不同、不同企业/地区采用时间不同，建议使用 **Callaway & Sant'Anna (2021)** 的 heterogeneity-robust estimator，而非传统 TWFE（Two-Way Fixed Effects）。

**基准回归（TWFE，作为基础）：**

$$\log w_{ot} = \alpha + \beta \cdot \text{Treat}_o \times \text{Post}_t + \gamma_o + \delta_t + \epsilon_{ot}$$

其中：

- $o$ = occupation（职业）
- $t$ = quarter（季度）
- $\text{Treat}_o$ = 该职业对 image AI 的暴露程度（0/1 或连续指数）
- $\text{Post}_t$ = 2022Q3 之后 = 1
- $\gamma_o$ = occupation FE，$\delta_t$ = time FE

**Event Study（检验平行趋势）：**

$$\log w_{ot} = \alpha + \sum_{k \neq -1} \beta_k \cdot \text{Treat}_o \times \mathbf{1}[t = k] + \gamma_o + \delta_t + \epsilon_{ot}$$

### 4.2 更进一步：连续处理强度（Continuous Treatment Intensity）

比简单 0/1 更有说服力的做法是构建 **AIGE Index**：

$$\text{AIGE}_o = \sum_{s} \text{SkillShare}_{os} \times \text{AIImageRelevance}_s$$

即：用该职业的技能构成 × 每种技能被 image AI 替代的程度（可参考 Felten et al. 2023 的方法，或用 GPT API 自动打分）。

### 4.3 Robustness Checks

1. **Callaway-Sant'Anna estimator**（主要 robustness）
2. **Placebo test**：用 2021Q3 作为假 treatment date
3. **Synthetic Control**（如果处理组职业少）
4. **Cross-sectional heterogeneity**：按企业规模、地区分样本
5. **Spillover test**：检验 control group 是否受到污染

---

## 五、论文结构（6000词分配）

```
1. Introduction                          (~700 words)
   - Hook: image AI adoption speed
   - RQ + preview of findings
   - Contribution to literature

2. Background & Institutional Context   (~500 words)
   - Timeline of image AI tools
   - How graphic design labor market works
   - Adoption channels (freelance vs. in-house)

3. Conceptual Framework                 (~500 words)
   - Task-based model (Acemoglu & Restrepo)
   - Two channels: substitution vs. complementarity
   - Testable predictions

4. Data                                 (~600 words)
   - Revelio Labs description
   - Sample construction
   - Summary statistics (Table 1)
   - AIGE Index construction

5. Empirical Strategy                   (~700 words)
   - DID setup
   - Identification assumptions
   - Parallel trends discussion

6. Results                              (~1200 words)
   - Main DID estimates (Table 2)
   - Event study figures (Figure 1-2)
   - Heterogeneity analysis (Table 3)
   - Mechanisms

7. Robustness                           (~600 words)
   - CS estimator results
   - Placebo tests
   - Alternative control groups

8. Discussion & Conclusion              (~700 words)
   - Policy implications
   - Limitations
   - Future research

References                              (~200 words equivalent)
Appendix (不计入字数)
```

---

## 六、工具链安排

### Python（数据拉取 & 清洗）

```python
# WRDS 连接示例
import wrds
conn = wrds.Connection(wrds_username='your_lse_username')

# 拉取 Revelio job postings
query = """
    SELECT occupation_code, post_date, salary_min, salary_max, 
           skills, company_size, state
    FROM revelio.job_postings
    WHERE post_date BETWEEN '2020-01-01' AND '2024-01-01'
      AND occupation_code IN ('27-1024', '27-1013', '27-1011', 
                               '27-1014', '15-1255', '27-4032')
"""
df = conn.raw_sql(query)
```

### Stata（主要计量分析）

```stata
* 安装 csdid 包（Callaway-Sant'Anna）
ssc install csdid
ssc install eventstudyinteract  // Sun-Abraham

* 基准 TWFE 回归
reghdfe log_wage treat_post, absorb(occ_fe time_fe) cluster(occ_code)

* Event Study
reghdfe log_wage treat#ib-1.rel_time, absorb(occ_fe time_fe) cluster(occ_code)

* Callaway-Sant'Anna
csdid log_wage, ivar(occ_id) time(quarter) gvar(first_treated) method(dripw)
```

---



---
![[截屏2026-02-23 10.56.00.png]]






## 

1. Just do the rough DID, honest DID. 
2. Do a regression version.
3. second parametration. some measures cumulatative. some way to 
4. which version DID. Rough paper (honest )
5. got back to the question.
6. having 
7. connect with the people from Guy's 
8. make the question tight.


Questions to answer:
1. Is AI creating new jobs?
2. 