---
title: Card and Krueger (1994)
---
选择 Fast Food 的原因是因为这个行业的大部分人都围绕在 MW 上下，因此 bite 极大。MW 上调的 first stage 影响最大，可以很好地捕捉到 employment effect。 

- DiD 的直觉也很自然，因为没有 MW 政策的话，NJ 和 PA 的趋势会是一样的。
- GAP 是一个度量，衡量一个店铺被这个政策“咬” 得多惨。具体来说，这个公式是 $$
GAP_{i} = NJ_{i} \times \max\left\{ \frac{W_{\min} - W_{i1}}{W_{1i}}, 0 \right\}
$$
$W_{1i}$ 代表你在 first wave，$W_{\min}$ 是新的 MW。自然而然的如果你所受的影响越大， GAP 就会越大。被影响的就越惨

两种识别方法所承担的功能也不同：**DiD** 捕捉 **market-wide response**：NJ 整个市场相对于 PA 的平均就业变化，包含所有 general equilibrium effects（所有竞争者同时涨薪、消费者需求变化等）。

**GAP** 捕捉 **single-firm effect, holding the market constant**：在 NJ 内部，被 MW bite 更多的店铺相对于 bite 较少的店铺的就业变化。Variation 来自 firm-level 的 wage gap 差异，控制了 market-level 的 common effects。

**批评**：**Hamermesh (1995)**: 两个时间维度的问题——(1) 企业可能在 MW 上调前就 **anticipate** 并提前调整了（Wave 1 已不是 pure baseline），(2) Wave 2 仅在 MW 上调后 8 个月，时间太短，firms 的 longer-term adjustments（如自动化、关店）尚未完全显现。

**Neumark & Wascher (2000)**: 数据质量问题——电话问卷的 employment measures 存在 measurement error。当他们使用 payroll data（行政工资记录）重做分析时，得到了负的就业效应。

**Card & Krueger (2000)**: 回应——使用 Bureau of Labor Statistics 的 social security data（ES-202），重新验证了原始结论，employment effect 仍然接近 0。

> 这些争议都比较常见，在考场上应该力争能够独立解决。

这场争论至今未完全解决，也正是 Manning (2021) `p60` 总结的 "elusive employment effect" 的核心来源。
