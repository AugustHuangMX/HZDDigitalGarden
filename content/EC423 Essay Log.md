**Student:** Minxing **Programme:** MSc Econometrics and Mathematical Economics, LSE **Course:** Labour Economics (EC421 or equivalent) **Deadline:** 4PM, Tuesday 26 May 2026 **Word limit:** 6,000 words (excl. abstract, footnotes, references, appendices) **Format:** Independent Research Essay

---

## Working Title

**"Offsetting Effects: AI Displacement and Augmentation Within Occupations — Evidence from the UK Labour Force Survey"**

---

## Core Argument

The aggregate null result in AI-employment studies is not evidence of no effect. It is an artefact of aggregation over offsetting displacement and productivity effects that operate on different segments of the within-occupation skill distribution.

- **Displacement effect** falls on entry-level workers whose task bundles overlap heavily with AI capabilities.
- **Productivity effect** benefits experienced workers whose tasks are complemented (not replaced) by AI.
- When these offset at the occupation level, aggregate statistics show little change — but the underlying composition shifts substantially.

This has policy implications: aggregate labour market statistics understate disruption for precisely the groups (young entrants) with the weakest safety nets and the most to lose from delayed career entry.

---

## Novelty Positioning — REVISED (17 March 2026)

### What we CANNOT claim

- "First to document AI's disproportionate effect on young/junior workers" — Brynjolfsson, Chandar & Chen (2025) did this for the US using ADP payroll data; Klein Teeselink (2025) did this for the UK using LinkedIn + job postings data.
- "First UK evidence on AI and labour markets" — Klein Teeselink (2025) already provides UK evidence, though using different data.

### What we CAN claim

1. **Theoretical contribution (unique):** Extending Autor and Thompson's (2025) expertise framework to the within-occupation level. A&T's model treats each occupation as internally homogeneous (Proposition 1: all workers in an occupation are equally productive once they meet the expertise threshold). We relax this assumption by introducing within-occupation task specialisation driven by comparative advantage between junior and senior workers. This yields a new, testable prediction: within-occupation compositional shifts that precede and underlie A&T's between-occupation bifurcation. **No existing paper has done this.**
    
2. **Data contribution:** UK Labour Force Survey is population-representative (unlike LinkedIn data in Klein Teeselink, which has selection bias; unlike ADP payroll in Brynjolfsson et al., which covers only ADP client firms). Individual-level analysis with ~180K employed observations (wave 1 only).
    
3. **Measurement contribution:** DfE (2023) UK-specific AI exposure scores mapped to SOC 2010 — most prior studies use US O*NET-based measures without UK adaptation.
    

### Revised framing

The essay is positioned as a **theory paper with supporting empirical evidence**, not a pure empirical paper. The theoretical extension of A&T is the primary contribution; the LFS analysis provides corroborating evidence using a complementary, population-representative data source.

**Target framing language:**

> Recent empirical work has documented that AI adoption disproportionately affects entry-level workers (Brynjolfsson, Chandar and Chen, 2025; Klein Teeselink, 2025). However, this emerging literature lacks a theoretical framework explaining _why_ the within-occupation age gradient arises. We address this gap by extending the expertise framework of Autor and Thompson (2025) to the within-occupation level, deriving testable predictions about the bifurcation of AI's effects across experience levels within the same occupation. We test these predictions using the UK Labour Force Survey — a population-representative data source that complements the administrative and platform-based data used in prior studies.

---

## Theoretical Framework — Plan (Updated 17 March 2026)

### Approach: Extend Autor and Thompson (2025) to within-occupation heterogeneity

**What A&T's model does:** Predicts between-occupation bifurcation. Automation that removes inexpert tasks raises expertise requirements → wages up, employment down. Automation that removes expert tasks lowers requirements → wages down, employment up. Key mechanism: expertise bifurcation across occupations.

**What A&T's model cannot do:** Explain within-occupation compositional shifts. Their Assumption 3 (occupational task bundling) + equation (1) imply all workers in an occupation are equally productive, so no junior/senior distinction exists within an occupation.

**Our modification:** Replace A&T's intra-occupational homogeneity with within-occupation task specialisation.

### Model Structure (Partial Equilibrium, Single Occupation)

**Setup:** Single occupation produces output Y via CES aggregation of two task types:

- Task L (low-expertise): routine, codifiable — susceptible to AI
- Task H (high-expertise): judgment-intensive, context-dependent

$$Y = \left[\beta , y_L^{\frac{\sigma-1}{\sigma}} + (1-\beta) , y_H^{\frac{\sigma-1}{\sigma}}\right]^{\frac{\sigma}{\sigma-1}}$$

**Workers:** Two types with comparative advantage:

- Junior (J): productive in task L, measure $n_J$
- Senior (S): productive in task H, measure $n_S$
- Comparative advantage: $a_L/a_H > b_L/b_H$

**Departure from A&T:** Replace occupational task bundling (their Assumption 3) with within-occupation task specialisation driven by comparative advantage.

**AI technology:** AI capital M performs task L at productivity A. AI and junior labour are perfect substitutes in task L.

$$y_L = A \cdot M + a_L \cdot n_J, \quad y_H = b_H \cdot n_S$$

**Key Results:**

1. **Displacement (Result 1):** $w_J = r \cdot a_L / A$ → junior wage pinned by AI cost-effectiveness. $\partial w_J / \partial A < 0$.
2. **Augmentation (Result 2):** $w_S = p(1-\beta) \cdot b_H \cdot (Y/y_H)^{1/\sigma}$ → senior wage rises as AI boosts $y_L$ and hence $Y$. $\partial w_S / \partial A > 0$ for any $\sigma > 0$.
3. **Offsetting (Result 3):** Juniors exit when $w_J < \bar{w}_J$; seniors enter as $w_S$ rises. Net occupation employment change ≈ 0.

**Connection to A&T language:** AI automates tasks that are "relatively expert" for juniors (core work) but "relatively inexpert" for seniors (supporting tasks). Same automation → expertise-displacing for juniors, expertise-augmenting for seniors. This is A&T's bifurcation operating within-occupation rather than between-occupation.

**Positioning:** A&T do between-occupation; we do within-occupation. Same conceptual language, different level of analysis, new testable prediction.

### Caveats to discuss in essay

- Perfect substitution between AI and junior labour is too strong — CES relaxation would attenuate but not reverse Result 1. Explains small empirical effect size (~5.6% SD).
- Complete specialisation assumption — partial specialisation yields same qualitative results.
- Partial equilibrium — no between-occupation worker flows modelled. Acceptable because our empirical focus is within-occupation compositional shift.

### Word budget for theory section (~1,000 words)

- ~300 words: Introduce A&T framework, identify within-occupation homogeneity limitation
- ~400 words: Present modified model (setup, two worker types, AI technology, key results)
- ~300 words: Derive testable predictions, connect to empirical strategy
- Full derivation can go to appendix if needed

---

## Essay Structure (Agreed)

|Section|Target Words|Purpose|
|---|---|---|
|1. Introduction|~800|Present puzzle, state thesis, preview contribution|
|2. Theoretical Framework|~1,000|A&T extension to within-occupation; derive predictions|
|3. Existing Evidence|~1,000|Literature review: aggregate null → disaggregated effects tension|
|4. Data and Empirical Strategy|~1,000|UK LFS description, exposure classification, identification|
|5. Results and Analysis|~1,500|Descriptive + regression evidence of compositional shift|
|6. Discussion|~600|Measurement implications; pipeline/training externality paradox|
|7. Conclusion|~300|Restate argument, limitations, future research|

**Design rationale:** Theory section comes before literature review (unconventional but deliberate) — by setting up the theoretical prediction first, the literature review becomes evidence for a puzzle already defined, making the essay feel like an argument rather than a survey.

---

## Empirical Strategy — Plan

### Primary Dataset: UK Labour Force Survey (LFS)

- **Source:** UK Data Service
- **Coverage:** 2019 Q1 to 2025 Q4 (28 quarterly files, all downloaded)
- **Unit of analysis:** Individual person (person-level QLFS, `lfsp_` prefix files)
- **File format:** Stata `.dta`, with `pwt24` weight vintage

#### Key Variables

**Core identification:**

- `SOC10M` — SOC 2010 occupation code, native in 2019 Q1–2020 Q4
- `SC2010M` — SOC 2010 occupation code, backward-mapped from SOC 2020 in 2021 Q1–2025 Q4
- `SOC20M` — SOC 2020 occupation code, available from 2021 Q1 onward
- `AGE` — individual age
- `INECAC05` — ILO economic activity (employed/unemployed/inactive)
- `REFWKY`, `QRTR` — reference year and quarter
- `THISWV` — wave identifier (1–5). Used to restrict sample to first-wave respondents.

**Additional analytical variables:**

- `EMPLEN` — employment tenure length (more direct seniority proxy than age; robustness check)
- `JOBBEG` — when current job began (identifies recent entrants)
- `MANAG2` / `MANAGER` — managerial duties (another seniority angle)
- `FTPT` / `FTPTWK` — full-time/part-time
- `HIQUAL22` / `HIQUL22D` — highest qualification (post-transition); `HIQUAL15` / `HIQUL15D` in pre-transition files — needs harmonising
- `LEVQUL22` / `SVQLEV22` — qualification level (more granular; for regression controls)
- `GOR9D` — government office region
- `SEX` — sex
- `SECTOR` / `PUBLICR` — public/private sector (control variable)
- `HOURPAY`, `HRRATE`, `GRSSWK`, `GROSS99`, `NETWK` — earnings variables (available in individual-level files; potential secondary outcome)

**Weights:**

- `PIWT24` / `PWT24` — person-level cross-sectional weight (use throughout; NOT `PHHWT23`, which is the household weight)

### Data Files

```
raw/QLFS/lfsp_jm19_eul_pwt24.dta   (2019 Q1 — Jan-Mar)
raw/QLFS/lfsp_aj19_eul_pwt24.dta   (2019 Q2 — Apr-Jun)
raw/QLFS/lfsp_js19_eul_pwt24.dta   (2019 Q3 — Jul-Sep)
raw/QLFS/lfsp_od19_eul_pwt24.dta   (2019 Q4 — Oct-Dec)
raw/QLFS/lfsp_jm20_eul_pwt24.dta   (2020 Q1)
raw/QLFS/lfsp_aj20_eul_pwt24.dta   (2020 Q2)
raw/QLFS/lfsp_js20_eul_pwt24.dta   (2020 Q3)
raw/QLFS/lfsp_od20_eul_pwt24.dta   (2020 Q4) ← last file with native SOC10M
raw/QLFS/lfsp_jm21_eul_pwt24.dta   (2021 Q1) ← first file with SOC20M + SC2010M
raw/QLFS/lfsp_aj21_eul_pwt24.dta   (2021 Q2)
raw/QLFS/lfsp_js21_eul_pwt24.dta   (2021 Q3)
raw/QLFS/lfsp_od21_eul_pwt24.dta   (2021 Q4)
raw/QLFS/lfsp_jm22_eul_pwt24.dta   (2022 Q1)
raw/QLFS/lfsp_aj22_eul_pwt24.dta   (2022 Q2)
raw/QLFS/lfsp_js22_eul_pwt24.dta   (2022 Q3)
raw/QLFS/lfsp_od22_eul_pwt24.dta   (2022 Q4)
raw/QLFS/lfsp_jm23_eul_pwt24.dta   (2023 Q1)
raw/QLFS/lfsp_aj23_eul_pwt24.dta   (2023 Q2)
raw/QLFS/lfsp_js23_eul_pwt24.dta   (2023 Q3)
raw/QLFS/lfsp_od23_eul_pwt24.dta   (2023 Q4)
raw/QLFS/lfsp_jm24_eul_pwt24.dta   (2024 Q1)
raw/QLFS/lfsp_aj24_eul_pwt24.dta   (2024 Q2)
raw/QLFS/lfsp_js24_eul_pwt24.dta   (2024 Q3)
raw/QLFS/lfsp_od24_eul_pwt24.dta   (2024 Q4)
raw/QLFS/lfsp_jm25_eul_pwt24.dta   (2025 Q1)
raw/QLFS/lfsp_aj25_eul_pwt24.dta   (2025 Q2)
raw/QLFS/lfsp_js25_eul_pwt24.dta   (2025 Q3)
raw/QLFS/lfsp_od25_eul_pwt24.dta   (2025 Q4)
```

### SOC Code Transition — RESOLVED

- **Break point:** Between 2020 Q4 and 2021 Q1
- **Pre-transition (8 files, 2019 Q1–2020 Q4):** Use `SOC10M` (native SOC 2010)
- **Post-transition (20 files, 2021 Q1–2025 Q4):** Use `SC2010M` (ONS backward mapping from SOC 2020 to SOC 2010)
- **Crosswalk validation:** Confirmed that `SC2010M` is populated for ALL employed individuals in post-transition files. The only missing values (-9) correspond to non-employed individuals who also lack `SOC20M`. Crosswalk is complete.
- **No overlap quarter:** 2020 Q4 does not contain `SC2010M`, so no direct validation of native vs. mapped SOC 2010 is possible. Accepted as low risk given complete coverage.
- **Strategy:** Work entirely in SOC 2010 throughout the sample period. This also simplifies the AI exposure mapping, since US SOC → UK SOC 2010 crosswalks are well-established.

### SOC 2020 Miscoding Issue — IMPORTANT

**Source:** ONS article, "Revision of miscoded occupational data in the ONS Labour Force Survey, UK: January 2021 to September 2022" (11 July 2023). URL: https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/employmentandemployeetypes/articles/revisionofmiscodedoccupationaldataintheonslabourforcesurveyuk/january2021toseptember2022

**What happened:** When the LFS switched from SOC 2010 to SOC 2020 in January 2021, survey responses were being miscoded to wrong occupations. 209 out of 412 four-digit SOC 2020 codes (50.7%) were marked as "high impact." Some extreme examples: "Higher level teaching assistant" jumped from a historical average of 70,000 to 238,000 in the original Jan–Mar 2021 data.

**Affected period:** January 2021 to September 2022 — the first 7 quarters of our post-transition data.

**Resolution:** ONS conducted a recoding exercise and re-released all affected LFS microdata in July–August 2023. Our files (`pwt24` suffix) were downloaded after this re-release, so we have the **corrected** data.

**Residual concern:** Even after correction, 171 out of 412 four-digit SOC codes (42%) still showed more than 5 percentage points deviation from historical averages. ONS warns users to "expect slight discontinuities" at the four-digit level around the transition points.

**Mitigation strategies for our analysis:**

1. Work at coarser occupational groupings (2-digit or broad exposure groups) where ONS says impact is "only marginal"
2. Our high/low exposure classification aggregates many 4-digit codes together, washing out individual miscoding noise
3. Note in essay data section that revised data is used and residual 4-digit discontinuities are mitigated by group-level analysis
4. The DfE (2023) report made the same choice — using SOC 2010 "due to known issues with SOC 2020"

**Implication for `SC2010M`:** Since `SC2010M` is derived from `SOC20M`, the backward mapping inherits any residual SOC 2020 miscoding errors in the 2021 Q1–2022 Q3 period. This further supports working at aggregated occupational groups rather than individual 4-digit codes.

### Rotating Panel and Wave Restriction — IMPORTANT

**Issue:** The LFS operates as a rotating panel where each household is interviewed for 5 consecutive quarters. Simply stacking all 28 quarterly files means the same individual appears up to 5 times in the dataset. This inflates precision (standard errors are too small) because OLS assumes independent observations, but repeated observations of the same person are highly correlated.

**Evidence:** Full sample ~740K employed observations; wave 1 only ~180K (24.4%). Wave distribution: wave 1 = 24.4%, wave 2 = 22.9%, wave 3 = 18.8%, wave 4 = 17.8%, wave 5 = 16.1% — declining due to panel attrition.

**Solution:** Restrict primary sample to first-wave respondents only (`THISWV == 1`). This eliminates all repeated observations. Variable `THISWV` ("Wave to which data refers") is available in all EUL files.

**Impact on results:** Core coefficients (A1, A4) barely change in magnitude but p-values increase as expected — from p<0.001 to p=0.014–0.023. This is the honest inference. Full sample results are reported as robustness check.

### Sample Structure

- ~72,000 observations per quarter total
- ~36,000 employed individuals per quarter (the rest are "Does not apply" — inactive/unemployed/children)
- 28 quarters × ~36,000 employed ≈ 1,000,000+ employed person-quarter observations (full sample)
- **Wave 1 restriction: 180,196 employed individuals with valid AIOE** (primary analysis sample)
- Adequate for individual-level regression analysis

### AI Exposure Classification — RESOLVED

**Decision: Use DfE (2023) pre-computed AIOE scores mapped to UK SOC 2010.**

The UK Department for Education's "Impact of AI on UK Jobs and Training" report (November 2023) applied the Felten et al. (2023) methodology to UK occupations and published a complete dataset of AIOE scores at 4-digit UK SOC 2010 level. This eliminates the need to build our own crosswalk.

- **Data source:** DfE supplementary data file `Annex_1_-_Impact_of_AI_on_UK_jobs_and_training_data_sources.xlsx`, sheet "AIOE by educational level"
    - Download: https://assets.publishing.service.gov.uk/media/65575c92046ed400148b9ad1/Annex_1_-_Impact_of_AI_on_UK_jobs_and_training_data_sources.xlsx
- **Variables available per SOC 2010 code:** `All AI` (overall AIOE score), `LLM` (language modelling exposure score), `Ranked AI`, `Ranked LLM`
- **Preferred measure for our analysis:** `LLM` score — more relevant to the post-2022 ChatGPT/generative AI shock we're studying
- **Coverage:** All 365 4-digit SOC 2010 codes ranked from most to least exposed
- **Crosswalk used by DfE:** O*NET → UK SOC 2010, built by NFER and researchers at University of Sheffield and University of Warwick (acknowledged in the report). DfE explicitly chose SOC 2010 over SOC 2020 "due to known issues with SOC 2020" (the miscoding problem).

### Empirical Design

**Primary analysis:**

- Classify occupations into high/low AI exposure groups using published index
- Within each group, track employment by age cohort (22–25, 26–30, 31–40, 41+) over time
- **Prediction:** In high-exposure occupations, employment share of 22–25 year-olds declines relative to older workers post-2022. No such divergence in low-exposure occupations.

**Approach:**

- Descriptive: time-series plots of employment composition by seniority within exposure groups
- Regression: individual-level OLS with LLM exposure as continuous dependent variable, interacted with age group × post-AI indicator
- **Not a formal DiD** — documenting compositional shift consistent with theory, not claiming airtight causal identification. Must be transparent about this.
- **Sample restriction:** Wave 1 respondents only (`THISWV == 1`) to avoid repeated observations from rotating panel design.

**Possible secondary outcomes:**

- **Wage effects using `GRSSWK` / `HOURPAY`** — test whether junior workers in high-exposure occupations see relative wage stagnation/decline. Provides additional testable prediction from the modified A&T model (Result 1: $\partial w_J / \partial A < 0$; Result 2: $\partial w_S / \partial A > 0$). Include if space permits. `GRSSWK` covers employees only (self-employed missing). **Status: planned, not yet run.**

### Revelio Labs Data — Role and Scope

**Decision:** Revelio Labs serves as corroborating demand-side evidence, NOT a parallel empirical analysis. Receives 1–2 paragraphs + possibly one figure in the Results section.

**Most useful table: Workforce Dynamics (Geographic)**

- Provides headcounts, inflows, outflows segmented by 7-level seniority scale (1 = Entry/Intern through 7 = Senior Executive)
- Can show whether entry-level inflows dry up while senior headcounts hold steady — the demand-side mechanism behind the LFS employment composition pattern
- Available by country (filter to UK), job category (`role_k10`), and month

**Limitations:**

- `role_k10` has only 12 categories — too coarse for rigorous AI exposure classification
- Headcounts are modelled estimates from LinkedIn data (non-integer)
- LinkedIn sourcing may underrepresent freelancers and manual occupations

---

## Key Literature

### Theoretical Foundations

- Acemoglu and Restrepo (2018) — Task-based framework, automation and new tasks
- Acemoglu and Restrepo (2019) — Automation and new tasks: how technology displaces and reinstates labour
- Acemoglu and Restrepo (2020) — Robots and jobs
- Acemoglu (2024/2025) — "The Simple Macroeconomics of AI," _Economic Policy_ 40(121): 13–58
- Autor, Levy, and Murnane (2003) — Task framework origins
- Autor (2015) — Polarisation, skill-biased technical change
- **Autor and Thompson (2025) — "Expertise," _JEEA_ 23(4): 1203–1271. Schumpeter Lecture.** Expertise framework: automation's impact depends on whether removed tasks are expert or inexpert for the occupation. Bifurcation of wages and employment across occupations. Key limitation for our purposes: within-occupation homogeneity assumption (all workers in an occupation equally productive). **Our theoretical contribution extends this framework to within-occupation heterogeneity.** Also: Hampole et al. (2025) cited by A&T as complementary — mean vs. concentrated exposure distinction.

### AI Exposure Measurement

- Eloundou, Manning, Mishkin, and Rock (2023) — GPTs are GPTs, _Science_
- Felten, Raj, and Seamans (2018, 2021, 2023) — AIOE methodology
- Webb (2020) — Patent-text-based exposure measure
- Tomlinson et al. (2025) — Validates Eloundou et al. measures against Copilot usage data
- **Henseke et al. (2025)** — UK-specific GAISI index using Skills and Employment Surveys. arXiv:2507.22748. Finds AI-exposed task wage premia declining ~12% by 2023/24.

### UK-Specific AI Labour Market Evidence

- **Department for Education (2023)** — Applies Felten et al. (2023) to UK SOC 2010. **Our AI exposure data source.**
- **UK Government / DSIT (2026)** — AI exposure associated with 3.9% reduction in UK job posting volume, significant ~7 months after ChatGPT release.
- **Klein Teeselink (2025) — "Generative AI and Labor Market Outcomes: Evidence from the United Kingdom." King's College London, SSRN.** DiD using LinkedIn profiles + job postings, 2021–2025. Highly exposed firms reduced employment by 4.5%, concentrated in junior positions (-5.8%). Technical and creative roles hit hardest. Effects concentrated in high-wage segments. **Key comparison paper for our essay — same country, similar finding, but different data source (LinkedIn vs. LFS) and no theoretical framework.** Cites Autor and Thompson (2025) but does not extend the model.

### Aggregate Employment Evidence (Limited Effects)

- **Brynjolfsson, Chandar, and Chen (2025) — "Canaries in the Coal Mine?" Stanford DEL WP.** ADP payroll data, US. 13–16% relative decline in employment for 22–25 year-olds in most AI-exposed occupations. Older workers unaffected. Effects concentrated in automative (not augmentative) AI usage. **Most directly comparable to our empirical finding — same age group, same pattern, different country and data source.**
- Humlum and Vestergaard (2025) — Small effects in Danish administrative data
- Johnston and Makridis (2025) — AI-exposed industries saw employment gains
- Chandar (2025), Gimbel et al. (2025) — CPS-based studies, at most small effects

### Disaggregated/Subgroup Displacement

- Hui, Reshef, and Zhou (2024) — Upwork freelancers, _Organization Science_
- Huang (2024) — IMF WP. US commuting zones 2010–2021

### Firm-Level / Task Reallocation

- Hampole, Papanikolaou, Schmidt, and Seegmiller (2025) — NBER WP 33509

### Productivity

- Brynjolfsson, Li, and Raymond (2025) — "Generative AI at Work," _QJE_ 140: 889–942
- Noy and Zhang (2023) — Experimental evidence, _Science_

---

## Stacked Dataset Summary

**File:** `clean/qlfs_stacked.dta` **Built by:** `do/00_data_clean.do`

|Statistic|Value|
|---|---|
|Total observations|1,993,579|
|Employed with valid SOC|822,603|
|Employed with valid SOC + AIOE|819,299 (99.6% match rate)|
|**Wave 1 employed with valid AIOE**|**180,192 (primary analysis sample)**|
|Age 22–25 (employed, full sample)|45,807|
|Age 26–30 (employed, full sample)|76,283|
|Age 31–40 (employed, full sample)|187,139|
|Age 41–64 (employed, full sample)|434,357|
|Quarters covered|28 (2019 Q1 – 2025 Q4)|
|Obs per quarter|~50,000–87,000 (varies; LFS response rate dip in 2022–2023)|

**AIOE合并情况：** DfE数据覆盖365个4位数SOC 2010编码，LFS中有369个。4个未匹配的SOC共3,304条观测（占在职样本0.4%），均为不适用AI暴露评分的职业。

**Known issue:** LFS response rates dropped significantly in 2022–2023. ONS survey weights correct for differential non-response. Must mention in data section.

---

## Drafts and Code Produced

|Document|Status|Date|Notes|
|---|---|---|---|
|Introduction (v1)|Working draft|13 Mar 2026|~750 words. Will need revision to incorporate revised novelty positioning.|
|`00_data_clean.do`|Complete|16 Mar 2026|加载28个QLFS文件，统一SOC编码和变量，合并DfE AIOE评分。已加入`rename THISWV wave`。|
|`01_descriptive.do`|Complete|16 Mar 2026|描述性时间序列分析|
|`02_descriptive_focused.do`|Complete|16 Mar 2026|更细的职业层面描述性分析|
|`03_regression.do`|Complete|16 Mar 2026|单元格层面三重差分回归（不显著——统计功效不足）|
|`04_individual_regression.do`|进行中|17 Mar 2026|个人层面回归。**已加入wave 1限制。核心发现在此。**|

---

## Empirical Results Summary (as of 17 March 2026)

### 重要方法论修正：Wave 1 限制

LFS采用轮换面板设计（rotating panel），每个住户连续访问5个季度。直接合并所有季度导致同一个人最多出现5次，虚增统计精度。

**解决方案：** 使用`THISWV == 1`限制样本为每人首次受访观测（变量已在`00_data_clean.do`中重命名为`wave`）。样本量从~740K降至180,196名在职个人——仍足以支持个人层面回归。

**影响：** 核心系数大小基本不变，但p值合理增大。此前full sample的极端显著性（p<0.001）部分来自重复观测。Wave 1结果更诚实。

### 描述性分析

**截面特征：** 22-25岁在最高暴露四分位（Q4）中仅占18.7%，在最低四分位（Q1）中占30.9%。年轻工人明显集中在低AI暴露职业。

**时间序列：** D10 vs D1（极端10%分割）信号最强——红线（最高暴露10%）在2023年后有下行趋势。Suggestive but noisy。

### 单元格层面回归（`03_regression.do`）

所有规格下triple系数均不显著。根本原因是统计功效不足（仅224个单元格观测）。

### 个人层面回归（`04_individual_regression.do`） — ★ 核心发现 ★

**以下均为 Wave 1 样本（N = 180,192）。**

**回归A1（基础OLS，因变量=aioe_llm）：** `young_post` = **-0.046**，p = 0.023

**回归A2（加性别、地区、学历控制）：** `young_post` = **-0.014**，p = 0.441 ⚠️ 不显著。`hiqual`作为potential bad control吸收了效应——如果AI冲击改变了年轻人的教育/培训决策，学历是内生的。**A2不作为主回归。**

**回归A4（所有年龄组交互，性别+地区控制，以41-64为基准）：** ★ 主回归 ★

|年龄组 × post_ai|系数|p值|
|---|---|---|
|**22-25岁**|**-0.050**|**0.014**|
|26-30岁|+0.002|0.870|
|**31-40岁**|**-0.031**|**0.006**|

**年龄梯度与理论预测一致：** 最年轻群体效应最强，26-30无效应，31-40中等效应。效应不严格局限于entry-level——displacement强度随经验递减，但波及至mid-career工人（其task bundle中仍有相当比例的AI可替代任务）。

**B组LPM（因变量=高暴露虚拟变量）：** 所有规格不显著。原因：将连续LLM score二值化损失了分布内部信息。效应是边际位移（marginal shift within the exposure distribution），不是跨阈值的离散跳跃。在论文中简短说明即可，不列为核心表格。

### Full Sample vs. Wave 1 对比（用于robustness讨论）

|回归|Full Sample系数|p值|Wave 1系数|p值|
|---|---|---|---|---|
|A1 young_post|−0.050|<0.001|−0.046|0.023|
|A4 age_2225_post|−0.049|<0.001|−0.050|0.014|
|A4 age_2630_post|+0.006|0.470|+0.002|0.870|
|A4 age_3140_post|−0.010|0.068|−0.031|0.006|

系数大小稳定，p值因样本量缩减合理增大。Full sample结果可作为robustness check报告。

---

## Immediate Next Steps

1. ~~Download person-level LFS data~~ — **DONE.**
2. ~~Check SOC 2010 → SOC 2020 crosswalk~~ — **RESOLVED.**
3. ~~Build data pipeline~~ — **DONE.**
4. ~~Identify AI exposure data source and crosswalk~~ — **RESOLVED.** DfE (2023).
5. ~~Merge AIOE scores onto LFS data~~ — **DONE.**
6. ~~Run descriptive analysis~~ — **DONE.**
7. ~~Run cell-level regressions~~ — **DONE.** (不显著)
8. ~~Run individual-level regressions~~ — **核心发现已出。**
9. ~~文献查重：检查是否有人做过类似方向~~ — **DONE (17 Mar).** Klein Teeselink (2025) 有UK evidence但用不同数据且无理论框架。A&T within-occupation extension无人做过。
10. ~~完成B组LPM回归~~ — **DONE (17 Mar).** Wave 1下全部不显著，归因于二值化信息损失。
11. **完成A5回归的margins** — 如果计算时间允许。
12. **用`emplen`（tenure）替代`age`做稳健性检验。**
13. **尝试wage回归** — 用`GRSSWK`/`HOURPAY`检验理论模型的wage prediction（Result 1: junior wage↓; Result 2: senior wage↑）。即使结果noisy，方向一致的point estimate就有用。
14. **写理论框架section** — A&T extension model，~1,000字。
15. **整理回归结果为论文表格** — A1/A4两列并排是核心回归表（Wave 1样本）。
16. **修订introduction draft** — 纳入revised novelty positioning。
17. **Read Brynjolfsson, Chandar, and Chen (2025) in full** — 对比方法论。
18. **Read Klein Teeselink (2025) in full** — 了解UK evidence的具体内容和局限。
19. **在论文中报告wave 1限制的理由和full sample对比** — robustness section。
20. **考虑是否对A4加入occupation-level cluster** — 目前只有robust SE，因变量按SOC分配，同一SOC内个体的残差可能相关。

---

## Decision Log

|Date|Decision|Rationale|
|---|---|---|
|13 Mar 2026|Abandoned cohort-exposure (graduation year) angle|Identification problem too severe|
|13 Mar 2026|Adopted "offsetting effects" framing|Resolves real tension in the literature|
|13 Mar 2026|Chose UK LFS as primary dataset|Population-representative; UK evidence novel|
|13 Mar 2026|Chose Option A (formal model) for theory section|Ambitious but appropriate for EME student|
|13 Mar 2026|Chose theory-before-literature structure|Frames lit review as evidence for puzzle|
|13 Mar 2026|Revelio Labs as corroborating evidence only|Word count constraint|
|13 Mar 2026|Work in SOC 2010 throughout|SOC transition resolved; simplifies AIOE mapping|
|13 Mar 2026|Use DfE (2023) pre-built AIOE scores|Expert-built crosswalk; government precedent|
|13 Mar 2026|Use LLM score as primary exposure measure|More relevant to post-2022 GenAI shock|
|**17 Mar 2026**|**Adopt A&T expertise framework as theoretical foundation**|**Provides precise language (expertise bifurcation) for within-occupation effects. Novel extension: relax intra-occupational homogeneity assumption to allow junior/senior task specialisation. No existing paper has done this.**|
|**17 Mar 2026**|**Revised novelty positioning: theory paper with supporting evidence**|**Literature search revealed Brynjolfsson et al. (2025) and Klein Teeselink (2025) already document junior/senior AI employment heterogeneity empirically. Our unique contribution is the theoretical extension of A&T + population-representative UK data.**|
|**17 Mar 2026**|**Added wage analysis as planned extension**|**Modified model generates testable wage predictions (Result 1: junior↓, Result 2: senior↑). LFS has `GRSSWK`/`HOURPAY` for employees. Even noisy results with correct sign add value.**|
|**17 Mar 2026**|**Added Klein Teeselink (2025) and Henseke et al. (2025) to key literature**|**Klein Teeselink is the most directly comparable UK paper (must cite and differentiate). Henseke et al. develop a UK-specific GAISI exposure index.**|
|**17 Mar 2026**|**Restrict primary sample to wave 1 respondents (`THISWV == 1`)**|**LFS rotating panel design means each individual appears up to 5 quarters. Stacking without restriction inflates precision. Wave 1 restriction eliminates repeated observations; sample drops from ~740K to ~180K employed obs — still sufficient for individual-level analysis.**|
|**17 Mar 2026**|**A1/A4 (no `hiqual` control) as primary specifications**|**A2 with `hiqual` yields insignificant `young_post` under wave 1 (p=0.441). `hiqual` is a potential bad control: if AI shock changes education/training decisions, qualification is endogenous. A1 (no controls) and A4 (sex + region only) are cleaner specifications.**|
|**17 Mar 2026**|**B-group LPM results relegated to footnote/appendix**|**All B-group coefficients insignificant under wave 1. Explained by information loss from binarising continuous LLM score — effect operates as marginal shift within exposure distribution, not discrete threshold crossing.**|
|**17 Mar 2026**|**Revised narrative: displacement extends to 31–40 but with age gradient**|**Wave 1 A4 shows 31–40 significant at −0.031 (p=0.006), not just marginal as in full sample. Narrative shifts from "only entry-level affected" to "displacement intensity decreases with experience." Theory accommodates this: junior/senior boundary is about task specialisation, not a strict age cutoff.**|

---

## Open Questions

- [x] At which quarter did LFS switch from SOC 2010 to SOC 2020? → **Between 2020 Q4 and 2021 Q1**
- [x] Is the person-level LFS available for all quarters 2019–2025? → **Yes, all 28 files downloaded**
- [x] Can Revelio Labs data serve as a useful secondary analysis? → **Corroborating only**
- [x] Which AI exposure index maps most cleanly to UK SOC 2010? → **DfE (2023)**
- [x] What age bands give adequate cell sizes? → **22-25/26-30/31-40/41-64**
- [x] What threshold for high/low exposure? → **Continuous LLM score works best at individual level**
- [x] Has anyone already done our empirical analysis for the UK? → **Klein Teeselink (2025) uses LinkedIn data, finds similar junior displacement. But uses different data source and no theory. Our LFS analysis + A&T extension remain novel.**
- [x] Has anyone extended A&T's model to within-occupation? → **No. This is our unique theoretical contribution.**
- [x] LFS轮换面板是否导致重复观测问题？ → **是。已通过`THISWV == 1`（wave 1限制）解决。**
- [x] B组LPM回归结果？ → **Wave 1下不显著。信息损失问题，非结论不稳健。**
- [ ] Professor meeting: has it happened? Any feedback on direction?
- [ ] Should the model include endogenous task assignment or assume it exogenously?
- [ ] Which qualification variable harmonisation is needed? (`HIQUAL15` pre vs `HIQUAL22` post)
- [ ] Is `EMPLEN` consistently defined across the full sample period?
- [ ] Wage regression feasibility using `GRSSWK`/`HOURPAY`?
- [ ] 效应在2024Q3后回落——真实适应效应还是数据噪声？
- [ ] 如何在论文中定位"统计显著但经济意义较小"的结果？
- [ ] 是否需要在occupation level做cluster SE？（当前因变量=occupation-level LLM score，同SOC残差相关）

---

## Notes for Future Conversations

When starting a new chat in this project, reference this log to get up to speed. Key points:

1. The essay argues that aggregate null results mask offsetting displacement (juniors) and augmentation (seniors) within occupations.
2. **Theoretical contribution:** Extends Autor and Thompson (2025) expertise framework to within-occupation level by relaxing intra-occupational homogeneity. Introduces two-worker-type task specialisation within a single occupation. Novel — no existing paper does this.
3. **Novelty positioning (revised 17 Mar):** Theory paper with supporting evidence. Empirical junior displacement already documented by Brynjolfsson et al. (2025, US) and Klein Teeselink (2025, UK/LinkedIn). Our contribution = theoretical framework + population-representative UK data.
4. Primary data is UK LFS 2019–2025, wave 1 only, ~180K employed observations with valid AIOE.
5. AI exposure: DfE (2023) LLM scores at UK SOC 2010 level.
6. **Core empirical finding (Wave 1, N=180,192):** A4主回归：age_2225_post = −0.050 (p=0.014), age_2630_post = +0.002 (p=0.870), age_3140_post = −0.031 (p=0.006). 年龄梯度：22–25最强，26–30零，31–40中等。
7. Cell-level regressions insignificant (power issue). B-group LPM insignificant (information loss from binarisation). Individual-level A1/A4 with wave 1 restriction are core evidence.
8. **Planned but not yet done:** wage regression, tenure robustness check, theory section draft, occupation-level clustered SE.
9. Person weight is `PIWT24`/`PWT24`. Wave variable is `THISWV` (renamed to `wave` in clean data).
10. Project root: `/Users/huangminxing/Documents/EC423_Essay/`
11. 代码注释统一用中文。交流可以中英文自由切换。

---

## Working Rules for Claude

1. **Never output code as a file.** Always provide code directly in chat.
2. **Language:** Follow whichever language Minxing uses. 中英文自由切换。
3. **Code comments in Chinese.** 所有代码注释统一用中文。
4. **Project log is the source of truth.** Always read and update when decisions are made.
5. **Be concise with code explanations.** Show what changed and why.
6. **Flag data issues early.**

---

## Key External Links

| Resource                                      | URL                                                                                                                                                                                        |
| --------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| **DfE AIOE data (our primary source)**        | https://assets.publishing.service.gov.uk/media/65575c92046ed400148b9ad1/Annex_1_-_Impact_of_AI_on_UK_jobs_and_training_data_sources.xlsx                                                   |
| DfE (2023) report page                        | https://www.gov.uk/government/publications/the-impact-of-ai-on-uk-jobs-and-training                                                                                                        |
| UK Gov (2026) AI labour market assessment     | https://www.gov.uk/government/publications/assessment-of-ai-capabilities-and-the-impact-on-the-uk-labour-market                                                                            |
| ONS SOC 2020 miscoding article                | https://www.ons.gov.uk/employmentandlabourmarket/peopleinwork/employmentandemployeetypes/articles/revisionofmiscodedoccupationaldataintheonslabourforcesurveyuk/january2021toseptember2022 |
| Felten et al. AIOE data                       | https://github.com/AIOE-Data/AIOE                                                                                                                                                          |
| Klein Teeselink (2025) SSRN                   | https://papers.ssrn.com/sol3/papers.cfm?abstract_id=5516798                                                                                                                                |
| Brynjolfsson et al. (2025) "Canaries"         | https://digitaleconomy.stanford.edu/publications/canaries-in-the-coal-mine/                                                                                                                |
| Autor and Thompson (2025) "Expertise" NBER WP | https://www.nber.org/papers/w33941                                                                                                                                                         |
| Henseke et al. (2025) UK GAISI index          | https://arxiv.org/html/2507.22748v2                                                                                                                                                        |