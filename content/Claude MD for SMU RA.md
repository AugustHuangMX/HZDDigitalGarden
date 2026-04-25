# 项目全局文档：方言、普通话能力与农村家庭谈判能力

> **用途**：每次新开 Claude 对话时，将本文档内容提供给 Claude 以快速同步项目进度。
> 
> **最后更新**：2026-03-18

---

老师们有一个取舍问题，就是目前光是 main regression 理论上就会输出 2 (specs: basic/full) × 5 (outcomes: subsidy/g60/g61/g62/g2) × 4 (measurements: a/b/c/d) × 2 (groups: 基线/fully exposed) = 80 张表，head 由于都是自然 fully exposed 的，所以是 40 张表。这样展示起来可能有些太多了，我想知道你们是否有比较在意的指标或者说我先把显著的都放在前面？


## 一、项目概览

### 研究问题

探讨方言与普通话能力对中国农村居民信息获取和谈判能力（Bargaining Power）的影响。核心假说：掌握普通话降低了与政府机构沟通的信息壁垒，使农户能够更有效地获取政府补贴——语言能力作为一种"制度资本"（institutional capital）。

### 识别策略

采用 **Differencing Regression Kink Design (RKD)**，利用中国 80–90 年代"推广普通话"政策作为准自然实验。该策略利用两个维度的变异：

1. **政策暴露度（Exposure）**：以出生队列（birth cohort）为 running variable，不同队列在校期间重叠政策的年限不同。模型在 **1974 年**（暴露从零到正）和 **1983 年**（暴露从正到平/下降）存在两个 kink 点。
2. **语言亲近度（Language Affinity）**：跨村庄的方言与普通话接近程度。方言与普通话差异大的地区（低亲近度），政策效果更显著。

关键系数：**beta3**（1974 cutoff 处的交互项斜率变化）和 **beta4**（1983 cutoff 处的交互项斜率变化）。理论预测：beta3 < 0，beta4 > 0。

### 数据

**NFPS（国家固定观察点数据）**，中国农业部，家庭调查面板数据。项目拥有 1986–2013 年数据，当前分析使用 **2003–2008 年**（2008 年后部分指标发生变化）。数据优势在于农业生产细节详尽，劣势是人口统计学信息不够详细。

### 团队

|姓名|角色|
|---|---|
|**胡子寒（Zihan Hu）**|项目负责人/导师，也是 Minxing 的直系导师|
|**罗钦月（Luo Qinyue）**|西南财经大学助理教授，RKD 方法专家，负责识别策略与语言亲近度数据|
|**刘颖（Liu Ying）**|数据分析，原始代码作者，SMU 的博士生|
|**Elaine Liu**|佐治亚大学教授，NFPS 数据专家，本项目的 Senior，负责整体宏观方向的把握|
|**黄敏行（Minxing Huang）**|也就是我，目前在 LSE 读书，负责项目启动到目前的所有代码工作和汇报工作|

---

## 二、当前项目状态（截至 2026-03-18）

### 已完成

- **data_clean.do v3**（三阶段架构）：
    - Phase 1：个体层面 tempfile 提取（kid_temp + head_temp）
    - Phase 2：共享基底构建（household + 户主 + 语言亲近度 + 结果变量处理）
    - Phase 3a：孩子样本 → `household_clean_child.dta`
    - Phase 3b：户主样本 → `household_clean_head.dta`（以户主 birth cohort 为 running variable，**单 cutoff 1974**）
- 缺失值处理策略：han/huzhu_edu 由均值插补改为直接删除（3.6 会议决定，两种方案结果高度一致，dropall 避免插补论证）
- 异常年龄差：面板修正升级为 **spell-based**（3.18）：利用 `a10`（是否上次调查户）划分同一住户连续期（spell），仅在同一 spell 内用正常年龄差中位数修正异常值，避免跨家庭打捞
- 年龄差 cutoff 由 [14, 100] 收紧至 [14, 60]
- 四种 zmeasurement 口径已实现：a（先标准化再均值）、b（先均值再标准化）、c（仅 measurement2）、d（仅 measurement4，即 measurement3 + 东北赋值 0.9）
- **Exposure 标准化决策**（3.18 最终确认）：**不在回归前标准化 exposure**。回归中使用原始 `iv1a_s` / `iv2a_s`，交互项为 `iv1a_s × zmeasurement_X`。系数解读通过事后报告 `iv1a_s` / `iv2a_s` 的标准差来换算"一个 SD 变化对应的效果"。此前 3.17 实施的 `z_iv1a_s` / `z_iv2a_s` 已回滚。
- **zmeasurement_d 已纳入 data_clean.do**（3.17）：measurement4 标准化后 rename 为 zmeasurement_d，交互项循环扩展至 a/b/c/d，两个 Phase 均已同步。
- **measurement4 生成**：在 `language_county.dta` 中基于 measurement3 生成 measurement4（double 类型），东北三省（辽吉黑，省代码 21/22/23）56 个全缺失村庄赋值 0.9，非东北 86 个缺失村庄保持缺失。原始 measurement3 不受影响。
- **户主样本重大更新**（3.18）：
    - 样本限制改为 `huzhu_birth_year <= 1983`（只保留第二个 kink point 之前的队列）
    - 仅使用 **单个 cutoff（1974）**，只生成 `iv1a_s` 和 `z_iv1a_s_X`（无 iv2a_s 相关变量）
    - 移除 `huzhu_age >= 18` 筛选（与导师确认）
- **年龄差面板修正日志增强**：新增修正前异常数、成功打捞数、打捞率的 display 输出，便于追踪修正效果。
- **孩子样本 balancing_test.do 重大更新**（3.17–3.18）：
    - 修复变量名 Bug：`age`/`age2` → `child_age`/`childage2`
    - 新增 measurement d 口径，输出 4 张表（Table_balancing_a/b/c/d.tex）
    - **新增 fully exposed 样本限制**：`child_age > 17`（团队讨论确认阈值为 17 岁，非 18）
    - 从 3 panel 扩展为 **6 panel**（3 种在家天数限制 × 2 种 exposure 限制的交叉组合）
    - 小数位统一为 `b(4) se(4)`
    - 回归中 exposure level 项使用未标准化的 `iv1a_s` / `iv2a_s`（与 3.18 exposure 决策一致）
- **孩子样本 main_regression.do 重大更新**（3.18）：
    - 新增 measurement d 口径
    - 6 panel 拆分为 **两组表格**：基线（Panel A/B/C）和 fully exposed（Panel D/E/F），各自独立成表
    - 文件命名：`main_reg_[outcome]_[spec]_[meas].tex`（基线）、`main_reg_[outcome]_[spec]_[meas]_fe.tex`（fully exposed）
    - 移除表格中 Village FE / Year FE 行（在 footnote 中说明）
    - 表格总数：**80 张**（4 measurements × 5 outcomes × 2 specs × 2 groups）
    - 回归中 exposure level 项使用未标准化的 `iv1a_s` / `iv2a_s`
- **户主样本 balancing_test_for_head.do 新建**（3.18）：
    - 从孩子样本 balancing test 适配而来
    - 单 cutoff（1974）：回归中只有 `z_iv1a_s_X` + `iv1a_s`，无 iv2a_s 相关变量
    - 预定特征：`huzhu_male` 替代 `childmale`
    - 控制变量：`huzhu_age huzhu_age2` 替代 `child_age childage2`
    - 样本限制用 `huzhu_ind6` 替代 `child_ind6`
    - **3 panel**（无 fully exposed，户主样本已限制 birth_year <= 1983）
    - F-stat 为单变量检验（非 joint test）
    - 输出 4 张表：`Table_balancing_head_a/b/c/d.tex`，存于 `output/tables/head/`
- **户主样本 main_regression_head.do 新建**（3.18）：
    - 从孩子样本 main_regression.do 适配而来
    - 单 cutoff（1974）：回归中只有 `z_iv1a_s_X` + `iv1a_s`
    - Basic 控制：`huzhu_age huzhu_age2`；Full 控制：+ `huzhu_male huzhu_edu num_children han`
    - 样本限制用 `huzhu_ind6`，3 panel（无 fully exposed）
    - coeflabels 只有 β₃
    - 文件命名：`main_reg_head_[outcome]_[spec]_[meas].tex`，存于 `output/tables/head/`
    - 表格总数：**40 张**（4 measurements × 5 outcomes × 2 specs）
- LaTeX 报告框架：使用 `\input{}` + `\newcommand{\tablepath}` 编译所有表格

### 进行中 / 待实现（data_clean 层面）

- **东北地区语言亲近度缺失**（已部分完成）：measurement4 已在 `language_county.dta` 中生成（东北赋值 0.9），zmeasurement_d 已在 data_clean.do 中实现。待完成：非东北 86 个缺失村庄的填补方案待定（广东 28、重庆 17、四川 15、内蒙古 9 为主）。
- **Spell-based 修正需验证**（3.18）：`a10` 变量在 `household_v2.dta` 中是否有值需确认。若某些年份 `a10` 全缺失，spell 划分退化为逐条独立，打捞率会显著低于之前版本。跑完后需检查日志中打捞率是否合理。

### 进行中 / 待实现（分析层面）

- **Balancing test 显著性问题诊断**：`childmale`、`huzhu_age`、`huzhu_edu` 在 balancing test 中持续显著。当前诊断策略：对比 6 个 panel 中前 3 个（不限制 exposure）与后 3 个（fully exposed only, child_age > 17），观察剔除非 fully exposed 样本后显著性是否消失或减弱。若改善明显，支持将 fully exposed 样本作为主样本。`onechild` 的持续显著可能与独生子女政策时间重叠有关——已知未解决问题。
- **Exposure SD 报告**：需在回归脚本或报告中计算并报告 `iv1a_s` 和 `iv2a_s` 的样本标准差，供论文中系数经济含义的换算（"一个 SD 变化对应多大效果"）。
- **分段分析**：2003–2004 vs 2005–2008，针对 g62 检验效果是否由 2005 年后政策成熟驱动。
- **G60 作为独立结果变量**：data_clean 中已生成所有函数形式，已在 main_regression.do 中加入。

### 远期计划

- 整合 CIPS、CGSS 等数据集（地方政府信任度等变量）
- 寻找新的 language affinity measurement（减少缺失、更现代的指标）
- 数据延伸至 2013 年的可行性评估
- 户主与孩子同时受政策影响的重叠情况分析

---

## 三、代码与文件架构

### 目录结构

```
项目根目录/
├── Original_Data/
│   ├── NFPS/
│   │   ├── individual_v2.dta
│   │   └── household_v2.dta
│   └── language_county.dta
├── intermediate/
│   ├── household_clean_child.dta    ← 孩子样本（双 cutoff）
│   └── household_clean_head.dta     ← 户主样本（单 cutoff 1974）
├── dofile/
│   └── v3/
│       ├── data_clean.do                ← 数据清洗主脚本
│       ├── main_regression.do           ← 孩子样本主回归
│       ├── balancing_test.do            ← 孩子样本平衡性检验
│       ├── main_regression_head.do      ← 户主样本主回归
│       ├── balancing_test_for_head.do   ← 户主样本平衡性检验
│       └── ...
├── output/
│   └── tables/
│       ├── main_reg_*.tex               ← 孩子样本表格
│       ├── Table_balancing_*.tex        ← 孩子样本 balancing test
│       └── head/
│           ├── main_reg_head_*.tex      ← 户主样本表格
│           └── Table_balancing_head_*.tex ← 户主样本 balancing test
├── logs/
│   └── data_clean_v3.log
└── report/
    └── main.tex                     ← LaTeX 主报告
```

### data_clean.do 三阶段架构

```
Phase 1: 个体层面 tempfile
    ├── kid_temp（最大孩子：birth_year, child_ind* 等）
    └── head_temp（户主：ind* 等）

Phase 2: 共享基底 base_temp
    household_v2 + head_temp + language_county
    ├── 语言亲近度标准化（zmeasurement_a/b/c/d）
    ├── 结果变量处理（缺失→0, subsidy, winsorize, 函数形式）
    ├── 户主变量（huzhu_age, huzhu_edu, huzhu_age2）
    ├── 删除 a11/huzhu_edu 缺失
    └── 虚拟变量（han, fiveguar, onechild）

Phase 3a: 孩子样本 → household_clean_child.dta
    base + kid_temp → spell-based 年龄差修正 → 筛选
    → RKD 变量（孩子 birth_year，双 cutoff 1974/1983）
    → 交互项 iv1a_s × zmeasurement_X, iv2a_s × zmeasurement_X (a/b/c/d)

Phase 3b: 户主样本 → household_clean_head.dta
    base → huzhu_birth_year [1960, 1983] 筛选
    → RKD 变量（户主 birth_year，单 cutoff 1974）
    → 交互项 iv1a_s × zmeasurement_X (a/b/c/d)
```

### 下游分析脚本架构

|脚本|样本|Cutoff|交互项|Panel 数|表格数|
|---|---|---|---|---|---|
|`main_regression.do`|孩子|双（1974, 1983）|β₃ + β₄|6（2 组 × 3）|80|
|`main_regression_head.do`|户主|单（1974）|仅 β₃|3|40|
|`balancing_test.do`|孩子|双（1974, 1983）|β₃ + β₄|6|4|
|`balancing_test_for_head.do`|户主|单（1974）|仅 β₃|3|4|

### 两个样本的关键差异

|维度|孩子样本|户主样本|
|---|---|---|
|Running variable|最大孩子 birth_year|户主 huzhu_birth_year|
|Cutoff 数量|双 cutoff（1974, 1983）|**单 cutoff（1974）**|
|Birth year 范围|>= 1960|[1960, 1983]|
|样本范围|必须有孩子|所有有户主的家庭|
|年龄差筛选|[14, 60]，含 spell-based 面板修正|无|
|huzhu_age 筛选|无|无（3.18 移除）|
|child_ind6|保留，下游可筛选|无|
|huzhu_ind6|无|保留，下游可筛选|
|孩子特有变量|child_age, childage2, childmale|无|
|户主特有变量|—|huzhu_male, huzhu_birth_year|
|RKD 交互项|z_iv1a_s_X + z_iv2a_s_X|**仅 z_iv1a_s_X**|
|Basic 控制|child_age + childage2|huzhu_age + huzhu_age2|
|Full 额外控制|childmale + huzhu_age + huzhu_age2 + ...|huzhu_male + huzhu_edu + ...|
|Balancing test 预定特征|childmale 为首列|**huzhu_male** 为首列|
|Fully exposed panel|有（child_age > 17）|无（已限制 birth_year <= 1983）|
|输出路径|`output/tables/`|`output/tables/head/`|

---

## 四、核心变量速查

### 结果变量（Outcome）

|变量|含义|函数形式后缀|
|---|---|---|
|g60|从政府得到的收入|_w, _dummy, _ihs, _ln1, _ln|
|subsidy|g60 − g69（政府净补贴）|同上|
|g61|救济、救灾、扶贫|同上|
|g62|退耕还林还草补偿|同上|
|g2|来自集体的收入|同上|

g62 目前结果最强（joint p ≈ 0.0015），beta3 < 0 且 beta4 > 0，与理论预测一致。

### 核心解释变量

|变量|含义|
|---|---|
|zmeasurement_a|语言亲近度：先标准化三个 measurement，再取行均值|
|zmeasurement_b|语言亲近度：先取原始均值，再标准化|
|zmeasurement_c|语言亲近度：仅 measurement2（缺失最少，表现最好）|
|zmeasurement_d|语言亲近度：仅 measurement4（measurement3 + 东北赋值 0.9）|
|iv1a_s|Kink 项：1974 cutoff 右侧 × 距 cutoff 距离（**未标准化，直接用于回归**）|
|iv2a_s|Kink 项：1983 cutoff 右侧 × 距 cutoff 距离（**未标准化，仅孩子样本**）|
|z_iv1a_s_X|交互项：iv1a_s × zmeasurement_X（对应 beta3）|
|z_iv2a_s_X|交互项：iv2a_s × zmeasurement_X（对应 beta4，仅孩子样本）|

**关于 exposure 标准化**（3.18 最终决策）：回归中不标准化 exposure，保持 `iv1a_s`/`iv2a_s` 原始单位（年）。系数解读方式为事后报告 SD，例如"iv1a_s 的一个标准差等于 X 年，系数 × SD 即为一个标准差变化对应的效果"。

### 控制与平衡性检验变量

|变量|含义|备注|
|---|---|---|
|huzhu_age / huzhu_age2|户主年龄及平方|孩子样本的控制变量用 child_age + childage2|
|huzhu_edu|户主教育年限（winsorized, 上限截断 20）||
|childmale|孩子性别|仅孩子样本|
|huzhu_male|户主性别|仅户主样本|
|han|汉族虚拟变量||
|onechild|独生子女|balancing test 中持续显著（可能与独生子女政策时间重叠）|
|total_people|家庭规模||
|num_children|子女数量||
|fiveguar|五保户||
|year1 / year2|出生年份多项式（以 1980 为中心）||

### 样本限制变量

|变量|含义|阈值|
|---|---|---|
|child_ind6|孩子在家天数|>= 350（严格）/ >= 180（次严格）/ 不限（宽松）|
|huzhu_ind6|户主在家天数|同上（户主样本）|
|child_age|孩子年龄|> 17 用于 fully exposed 样本限制|

---

## 五、回归设定

### 主回归（孩子样本）

固定效应：**村级 FE** + **wave FE**。标准误在**村级聚类**（单向，非 birth_year × village 双向，因 birth_year 聚类数不足，仅约 41 个）。

控制变量：child_age + childage2 + year1 + year2。RKD level 项使用**未标准化**的 `iv1a_s` / `iv2a_s`。

两种规格：basic（仅含上述基础控制）和 full（加入 childmale huzhu_age huzhu_age2 huzhu_edu num_children han）。

**表格结构**（3.18）：每个 outcome × spec × measurement 拆为两张表：

- 基线表（Panel A/B/C）：`main_reg_[outcome]_[spec]_[meas].tex`
- Fully exposed 表（Panel D/E/F）：`main_reg_[outcome]_[spec]_[meas]_fe.tex`

总计 80 张（4 meas × 5 outcomes × 2 specs × 2 groups）。

### 主回归（户主样本）

与孩子样本类似，但：

- 仅使用 **单个 cutoff（1974）**，RKD 结构项只有 `iv1a_s year1 year2`
- 交互项只有 `z_iv1a_s_X`，无 `z_iv2a_s_X`
- Basic 控制：huzhu_age + huzhu_age2 + year1 + year2
- Full 控制：+ huzhu_male huzhu_edu num_children han
- **3 panel**（无 fully exposed），样本限制用 `huzhu_ind6`
- 文件命名：`main_reg_head_[outcome]_[spec]_[meas].tex`，存于 `output/tables/head/`
- 总计 40 张（4 meas × 5 outcomes × 2 specs）

### Balancing Test（孩子样本）

每个 predetermined characteristic 单独做因变量，不加额外控制变量。核心 RKD 变量（`z_iv1a_s_X`, `z_iv2a_s_X`, `iv1a_s`, `iv2a_s`）必须保留——它们就是检验对象。`zmeasurement` 水平项不需要单独加入，因为村级 FE 已吸收时间不变的村庄特征。

**表格结构**：每种 zmeasurement 口径（a/b/c/d）一张表，共 4 张。每张表 6 个 panel：

|Panel|在家天数限制|Fully exposed 限制|
|---|---|---|
|A|不限|不限|
|B|>= 350|不限|
|C|>= 180|不限|
|D|不限|child_age > 17|
|E|>= 350|child_age > 17|
|F|>= 180|child_age > 17|

诊断逻辑：对比 Panel A–C 与 Panel D–F，观察剔除非 fully exposed 样本后预定特征的显著性是否改善。

### Balancing Test（户主样本）

与孩子样本类似，但：

- 单 cutoff：回归中只有 `z_iv1a_s_X` + `iv1a_s`，F-stat 为单变量检验（非 joint test）
- 预定特征首列用 `huzhu_male` 替代 `childmale`
- 控制变量用 `huzhu_age huzhu_age2`
- 样本限制用 `huzhu_ind6`
- **3 panel**（无 fully exposed）
- 文件命名：`Table_balancing_head_[meas].tex`，存于 `output/tables/head/`
- 共 4 张表

### 表格输出汇总

|类别|文件命名|路径|数量|
|---|---|---|---|
|孩子主回归（基线）|`main_reg_[y]_[spec]_[meas].tex`|`output/tables/`|40|
|孩子主回归（fully exposed）|`main_reg_[y]_[spec]_[meas]_fe.tex`|`output/tables/`|40|
|孩子 balancing test|`Table_balancing_[meas].tex`|`output/tables/`|4|
|户主主回归|`main_reg_head_[y]_[spec]_[meas].tex`|`output/tables/head/`|40|
|户主 balancing test|`Table_balancing_head_[meas].tex`|`output/tables/head/`|4|
|**总计**|||**128**|

格式规范：`esttab` + `fragment` + `prehead/postfoot` + `append`，`booktabs`，`collabels(none)`，`b(4) se(4)`。

---

## 六、工作流程规范

### Claude 交互规范

- **代码输出**：Stata do file 代码永远在对话中直接输出，不封装成文件。只有当明确要求时才生成文件。
- **语言**：日常沟通使用中文，代码和学术输出使用英文。专业术语保留英文。
- **回答结构**：先解释思路/方法论逻辑，再给代码，最后注意事项。
- **不确定时**：明确说明"需要结合实际数据确认"，不给武断结论。

### 代码规范

- 变量命名与 `main_regression.do` 保持一致（huzhu_age 非 age，huzhu_edu 非 ind7_w）
- 每步筛选前记录 `local n_before = _N`，筛选后 display 删除量和保留量
- 注释使用中文，解释也使用中文
- 日志记录关键分布统计（child_ind6, huzhu_ind6）
- `///` 是续行符，`//` 是行内注释——不要混淆

### 已知陷阱（历史教训）

|Bug|说明|
|---|---|
|ind6 vs child_ind6|曾误用户主在家天数（ind6）替代孩子在家天数（child_ind6）做样本限制，完全错误|
|350 vs 360|Readme 文档中阈值为 350 天，非 360|
|total_people vs a13|家庭规模用 `total_people`（_N），非 `a13`（全缺失）|
|childage2 vs child_age2|年龄平方项变量名为 `childage2`|
|age vs child_age|balancing test 中曾用 `age`/`age2` 而非 `child_age`/`childage2`，3.17 已修复|
|exposure 标准化回滚|3.17 曾对 exposure 做 z-score 标准化（z_iv1a_s/z_iv2a_s），3.18 经胡老师确认回滚为不标准化。回归中使用原始 iv1a_s/iv2a_s，事后报告 SD 换算|
|child→head 适配遗漏|户主样本脚本从孩子样本复制时，容易遗漏：child_ind6→huzhu_ind6、child_age→huzhu_age、childmale→huzhu_male、双 cutoff→单 cutoff、z_iv2a_s_X 需删除|
|`///` vs `//`|续行符 vs 行内注释，混淆导致语法错误|
|双撇号|Local macro 双撇号产生畸形文件名|
|均值插补 dummy|对 a11（民族）做均值插补不合适，应用众数或直接删除|
|标准化顺序|必须先标准化再取均值，非先均值再标准化（虽然 zmeasurement_b 作为对照保留了后者）|
|float 精度|Stata 默认 `float` 存储小数有舍入误差，`== 0.9` 匹配失败。对需要精确赋值的变量用 `gen double`|

---

## 七、关键会议决策索引

|日期|核心决策|
|---|---|
|2.10|项目启动；明鑫加入；优先熟悉刘颖代码并复现结果|
|2.13|统一样本限制；balancing test 不加控制；先标准化再均值；180/350 天阈值；户主变量替代父母变量|
|2.26|作图口径统一（count→mean→difference）；分段回归（03–04 vs 05–08）；subsidy 口径确认为 G60−G69；未标准化+标准化两版结果|
|3.06|第三 kink point 后样本剔除；han/huzhu_edu 缺失直接删除；新增 G60 独立结果变量；东北赋值 0.9 方案；exposure 标准化；户主本人受政策影响的新维度分析|
|3.10|data_clean.do 重构为三阶段架构；新增户主样本（household_clean_head.dta）；两个样本 RKD 变量名统一|
|3.15|年龄差 cutoff 收紧至 [14, 60]；户主年龄 >= 18 筛选|
|3.17|Fully exposed 阈值确认为 child_age > 17；balancing test 扩展为 6 panel × 4 measurement；zmeasurement_d 纳入 data_clean 和 balancing test；修复 balancing test 变量名 Bug|
|3.18|**Exposure 不标准化**（胡老师确认：保留原始 iv1a_s/iv2a_s，事后报告 SD 换算）；户主样本改为单 cutoff（1974），birth_year <= 1983，移除 huzhu_age >= 18；年龄差修正升级为 spell-based（用 a10 划分）；main_regression.do 拆为两组表格（基线 + fully exposed），总计 80 张表；新增 measurement d 口径；**新建户主样本全套分析脚本**（balancing_test_for_head.do + main_regression_head.do，共 44 张表）|

---

## 八、更新日志

本节记录每次对本文档的更新。

- **2026-03-15**：初始版本创建。涵盖项目概览、当前状态、代码架构、变量速查、回归设定、工作流程规范、历史陷阱、会议决策索引；新增 measurement4（measurement3 + 东北赋值 0.9）至 `language_county.dta`；更新东北缺失处理状态；补充 float 精度陷阱；代码注释统一为中文；第三个 kink point 探查完成（`birth_year > year - 18`，损失 20.3%，待确认阈值）；main_regression.do 更新（文件名、移除 _miss、b(4)、G60、中文注释）；主回归表格数量更新为 30 张；年龄差面板修正日志增强；表格输出小数位更新。
- **2026-03-17**：data_clean.do 更新：zmeasurement_d 纳入 Phase 2 并在 Phase 3a/3b 同步生成交互项（循环扩展至 a/b/c/d）、清理中间变量（drop zmeasurement1/3）。balancing_test.do 重大更新：修复变量名 Bug（`age`→`child_age`）；新增 measurement d；fully exposed 阈值确认为 child_age > 17；从 3 panel 扩展为 6 panel。
- **2026-03-18**：**Exposure 标准化回滚**：胡老师确认不在回归前标准化 exposure，保留原始 `iv1a_s`/`iv2a_s`，事后报告 SD 换算系数经济含义。data_clean.do Phase 3a 和 3b 均已回滚（删除 `egen z_iv1a_s = std(...)`，交互项改回 `iv1a_s × zmeasurement_X`）。**户主样本重构**：样本限制改为 `huzhu_birth_year <= 1983`，单 cutoff 1974（仅 iv1a_s），移除 `huzhu_age >= 18`。**年龄差修正升级**：从按 id 分组改为 spell-based（利用 `a10` 划分同一住户连续期）。**孩子样本 main_regression.do 更新**：新增 measurement d；6 panel 拆为两组表格（基线 + fully exposed），文件名加 `_fe` 后缀区分；移除表格中 FE 行；表格总数 80 张。**新建户主样本全套分析脚本**：`balancing_test_for_head.do`（单 cutoff、huzhu_male、huzhu_ind6、3 panel、4 张表）+ `main_regression_head.do`（单 cutoff、huzhu_age/huzhu_age2 控制、3 panel、40 张表），输出至 `output/tables/head/`。已知陷阱新增：child→head 适配遗漏清单。目录结构、下游脚本架构表、两样本差异表、回归设定、表格输出汇总全面更新。全部表格总计 128 张。