#LSE/EC423_Labour 

[[Unemployment Insurance]]

It's intuitive that higher benefit level -> longer unemployment durations.



## Chetty(2009)

The core trade-off:
- Benefit: Consumption smoothing while unemployed
- Cost: Reduced job search effort ([[Moral Hazard]])

$$
et = (1-e) b \implies t = b (1-e)/e
$$

### Second-Best Problem 

Given $(b,t)$ , the worker chooses effort:

$$
\max_{e} e \cdot u(A+w_{H} - t) + (1- e) \cdot u(A + w_{L} + b) -\psi(e)
$$

And we apply the [[Envelope Theorem]]:

$$
\frac{dV}{db} = e \cdot 
$$

>  We can not ignore $e'(b)$ effects.
>  这是 Slide 15 的内容，涉及 second-best 问题中对 $b$ 求导时的一个关键区分。
> 
> **可以忽略的部分：** $e'(b)$ 对工人效用的影响。因为工人已经最优选择了 $e^*$，由 envelope theorem，$e$ 的微小变化对工人目标函数的影响是二阶的（FOC 已经为零），所以在对 $V(b)$ 求导时不需要考虑 $e$ 随 $b$ 变化这条路径。
> 
> **不能忽略的部分：** $e'(b)$ 对政府预算约束的影响。预算约束是 $t = \frac{1-e(b)}{e(b)} b$，这里 $e$ 出现在约束中。当 $b$ 增加，$e$ 下降，失业人数 $(1-e)$ 增多、就业人数 $e$ 减少，政府需要从更少的就业者身上征更多税来补贴更多的失业者——这是一阶的财政效应，不能忽略。
> 
> 直觉上：工人自己已经把 effort 调到最优了，所以 $e$ 微调对他自己的福利影响很小；但对政府来说，$e$ 的变化直接改变了"收税的人数"和"领补贴的人数"的比例，这是实实在在的预算压力。这就是为什么 $t'(b)$ 的表达式里包含了 $\epsilon_{1-e,b}$ [Slide 16]。

Why sufficient statistics approach?

Baily-Chetty 公式的核心是：

$$\frac{\epsilon_{1-e,b}}{e} = \frac{u'(c_L) - u'(c_H)}{u'(c_H)}$$

之所以叫 "sufficient statistic" approach，是因为**你不需要知道模型的全部结构参数**（如效用函数的具体形式、搜索成本函数 $\psi(e)$ 的形状、工资分布等），只需要估计**少数几个可观测的 reduced-form 统计量**就能评估最优政策：

- LHS：非就业对 UI 补贴的弹性 $\epsilon_{1-e,b}$（可从政策变化的 quasi-experiment 中估计）
- RHS：就业与失业状态间的边际效用差距（可从消费数据中估计）

这是相对于传统 structural approach 的巨大简化。传统方法需要完整地估计和校准整个搜索模型（效用函数参数、搜索技术、wage offer 分布等），然后做 counterfactual simulation。Sufficient statistic approach 绕过了这些，直接用几个弹性就"足够"（sufficient）回答 policy 问题。

代价是什么？公式依赖于特定的模型假设——静态、partial equilibrium、无 spillovers 等。如果放松这些假设，可能需要额外的 sufficient statistics，公式会更复杂。但核心思路不变：用尽可能少的可估计参数来做 welfare analysis。

### Estimating LHS from optimal UI formula

In event-study analysis, the hazard of remaining unemployed typically exhibits a sharp decline around the time of benefit exhaustion.

If workers couldn't smooth their consumption, UI benefits increase cash on hand 

- UI raises consumption while unemployed, workers search less because financial pressure is reduced. And longer duration reflects both liquidity effect and [[Moral Hazard]].





## Cohen and Ganong (2025) Disemployment effect of [[Unemployment Insurance]]


## Gerard and Naritomi (2021): Setting

In Brazil, after involuntary job displacement, formal workers are entitled to:

- UI
- FGTS
- Severance Pay




## Gruber (1997)

Why when $\gamma = 1, b^* = 0$ ? 

代入 $\gamma = 1$：

$$b^* = \frac{1 \times 0.222 - 0.432}{1 \times 0.265} = \frac{-0.21}{0.265} < 0$$

$b$ 不能为负，所以最优解是 $b^* = 0$。

直觉是：$\gamma = 1$ 意味着工人对消费波动的厌恶程度很低。此时 Baily-Chetty 公式的 RHS（保险价值 $= \gamma \frac{c_H - c_L}{c_H}$）很小，而 LHS（moral hazard 成本）不变。保险的边际收益不足以抵偿搜索扭曲的边际成本，所以最优策略是根本不提供 UI。

反过来，$\gamma = 4$ 时工人极度厌恶消费波动，保险价值足够大，才能 justify 较高的 replacement rate。

### Estimate the RHS 

