## Background

来自 Borjas （1987）基于 [[Roy Model]] 的自选择模型

---

比较容易遗漏的点在于，必须显式地说明 $v$ 服从 [[Normal Distribution]].


## 构建 Counter Factual

明确你在算什么。题目如果问到：mean earnings that migrants would have if they had not migrated，就是一个明确的反事实，它的条件（范围）设定在那些移民者，而 expected 要算的是他们没有移民能赚的钱。

在计算上还有一个必须要记住的公式是 Truncated Normal conditional expectation:

$$
\mathbb{E}[X|Y>c] = \text{Cov}(X,Y) \cdot \frac{\phi(c)}{1-\Phi(c)}
$$

See [[Inverse Mills Ratio]]


## Assumption

原始的 [[Roy Model]] 框架只有三个 Assumption：

1. Multiple Skills
2. Self-Selection：每个人选择给自己带来最高收入的部门（或国家）
3. 技能分布：两个部分的潜在收入有一个联合分布

Borjas 把移民[[Immigration]] 放入到了这个模型里（把两个部门变成两个国家），并且又追加了假设：

1. 正态分布（误差的正态分布，而且他们 jointly normal）
2. 成本形式：$C= \pi \exp(w_{0})$ 迁移成本和母国的收入成比例
3. $\pi$ 对所有人都相同（最容易 challenge 的）
4. 纯收入最大化
5. 完全信息（每个人都知道自己的 $\mu_{0},\mu_{1},\sigma_{0}\dots$）
6. 静态（无 return migration 等）




---

## Reference

- EC423 `Topic 3 Immigration`