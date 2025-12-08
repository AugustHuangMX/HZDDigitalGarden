#GameTheory #Econ/Micro 

This course is mainly about the [[Game Theory]] stuff. This page serves as a Map of Content.

## Examinable Proofs

Below are some examinable proofs you should be able to reproduce in the exam:

- [[Min-Max = Max-Min]]
- 

# Lecture 1

>  Definition 1.1 A finite normal-form game is a tuple $(N,A,u)$:
>  - $N = {1, ..., n}$ is a finite set of players.
>  - Each player $j$ has a finite action set $A^j$. Let $A = \times^N_{j = 1} A^j$.
>  - Each player $j$ has a utility function $u^j: A \to \mathbb{R}$. that represents preferences over $A$. We define as $u = (u^j)^N_{j=1}$ .

Notice that, *Mixed Strategy* allows for **randomization**. We use the simplex notation $\Delta(A^j)$ to denote the set of all probability distributions over $A^j$:

$$
S^j = \Delta(A^j) = \left\{ s^j: A^j \to \mathbb{R}_{+} \text{s.t.} \sum_{a^j \in A^j}s^j(a^j) = 1 \right\}
$$

and $S = \times^N_{j=1} S^j$ . Here $S$ means the set of all possible mixed strategy profiles.

$j$ here represents a specific player.

## [[Nash Equilibrium]]

Unlike in the undergrad, we give a more general definition of [[Nash Equilibrium]] here:

A strategy profile $s^{ * } \in S$ is a [[Nash Equilibrium]] if

$$
v^j(s^{ * j},s^{ * -j}) \geq v^j(s^{  j},s^{ * -j}) 
$$
for all $s^j \in S^j$ and for all players $j \in \{1,\dots,N\}$.

>  Here, $s^{-j}$ means the strategy profile of all players except player $j$.

## [[Zero Sum Game]]


# Lecture 2 

## What is $\Delta(X)$

We first need to denote that $\Delta (X)$ is the probability simplex over a finite set $X$.

$$
\Delta(X) = \{ p: X \to \mathbb{R}_+ \text{ s.t. } \sum_{x \in X} p(x) = 1 \}
$$

For example, $\Delta(A^j)$ is all mixed strategies for player $j$, if $A^j = \{L,R\}$, then $\Delta(A^j) = \{(p,1-p) : p \in [0,1]\}$, which means all ways to randomize between left and right.

## Belief 

The belief is written as $\mu^j \in \Delta (A^{-j})$, intuitively, it means a probability distribution over what all **other** players might play. In [[Nash Equilibrium]], belief about other player's actions had to be *consistent* with their strategies, i.e.,

$$
\mu^j(a^{-j}) = \prod_{i \neq j} s^i (a^i)
$$

>  The intuition of this consistency condition is that, it requires **beliefs match reality**.

>  Again, we recall that $a^j$ is an element, it stands for what $j$ actually plays, while $s^j$ is a function, it stands for the probability distribution over all possible actions. And $s^j(a^j)$ means the probability that player $j$ plays action $a^j$. 
>  The upper letter case, like $A^j$, means the set of all possible actions.


Combining the correlated beliefs (and strategies), we could define player $j$ 's expected utility as follows:

$$
v^j(s^j,\mu^j) = \sum_{a^j \in A^j} \sum_{a^{-j} \in A^{-j}} s^j(a^j) \mu^j(a^{-j}) u^j(a^j,a^{-j})
$$

>  Note that, here we use $\mu^j$ instead of $s^{-j}$, because we want to emphasize the belief part. But in [[Nash Equilibrium]], they are consistent, so it doesn't matter which one you use.

This equation, to be honest, is quite abstract at the first slight, we think about it step by step:

- Step 1: We first consider if the player $j$ plays pure action $a^j$ and opponents also play pure profile $a^{-j}$, utility is very simple:
	$$
	u^j(a^j,a^{-j})
	$$
- Step 2: Now, if player $j$ isn't sure what opponents will play, so he would have a belief $\mu^j$ about it. Then, the expected utility for player $j$ if he plays pure action $a^j$ is: 
	$$
	\sum_{a^{-j} \in A^{-j}} \mu^j(a^{-j}) u^j(a^j,a^{-j})
	$$
- Step 3: Now, player $j$ also randomizes his action, using his mixed strategies $s^j$, then the expected utility for player $j$ is:
	$$
	\sum_{a^j \in A^j} s^j(a^j) \left( \sum_{a^{-j} \in A^{-j}} \mu^j(a^{-j}) u^j(a^j,a^{-j}) \right)
	$$ 

By rearranging the terms, we get the equation below: 

$$
v^j(s^j,\mu^j) = \sum_{a^j \in A^j} \sum_{a^{-j} \in A^{-j}} s^j(a^j) \mu^j(a^{-j}) u^j(a^j,a^{-j})
$$

> [!example]  Definition
> A player $j$ action $a^j \in A^j$ is a [[Best Response]] $BR^j(\mu^j)$ against belief $\mu^j \in \Delta(A^{-j})$ if $a^j \in\text{argmax}_{\tilde{a}^j} v^j(a^j, \mu^j)$


## Rationality

If a player is **rational**, the weakest decision criterion for him is not to apply in any situation that are never [[Best Response]].


> [!example]  Definition (Never a [[Best Response]])
> An action $a^j \in A^j$ is never a [[Best Response]] if there doesn't exist any belief $\mu^j \in \Delta(A^{-j})$ such that $a^j \in BR^j(\mu^j)$.




## Correlated Beliefs and Uncorrelated Beliefs


This distinction is crucial for understanding the difference between Nash equilibrium and more general solution concepts.
### Uncorrelated Beliefs

**Uncorrelated beliefs** assume opponents play independently. Player $j$ believes each opponent $i$ mixes according to some strategy $s^i$, and their joint actions are statistically independent:

$$\mu^j(a^{-j}) = \prod_{i \neq j} s^i(a^i)$$

This means: "The probability of seeing action profile $a^{-j}$ equals the product of individual probabilities."

**Example**: In a 3-player game, if Player 3 believes:

- Player 1 plays Left with probability 0.5
- Player 2 plays Up with probability 0.3

Then Player 3 must believe:

- $\mu^3(Left, Up) = 0.5 \times 0.3 = 0.15$
- $\mu^3(Left, Down) = 0.5 \times 0.7 = 0.35$
- $\mu^3(Right, Up) = 0.5 \times 0.3 = 0.15$
- $\mu^3(Right, Down) = 0.5 \times 0.7 = 0.35$

### Correlated Beliefs

**Correlated beliefs** allow players to believe opponents' actions are statistically dependent. Now $\mu^j \in \triangle(A^{-j})$ can be any probability distribution.

**Example**: Player 3 could believe:

- $\mu^3(Left, Up) = 0.6$
- $\mu^3(Right, Down) = 0.4$
- $\mu^3(Left, Down) = 0$
- $\mu^3(Right, Up) = 0$

This cannot arise from independent mixing! Players 1 and 2 seem to coordinate - when one goes Left/Up, the other does too.


## [[Dominant Strategy]]


> [!example]  Definition (Strictly Dominated)
> An action $a^j$ is strictly dominated by a strategy $s^j\in \Delta(A^j)$ if 
> $$
> u^j(a^j,a^{-j}) < \sum_{\tilde{a}^j \in A^j} s^j(\tilde{a}^j) u^j(\tilde{a}^j,a^{-j}) \quad \forall a^{-j} \in A^{-j}
> $$


It's easy to come up with the idea that $a^j$ would never a BR iff it is **strictly dominated**. 

>  There would be a proof in the `lecture 2`, redo it.


> [!example]  Definition (Recursive Rationalizability)

$\mu^i_{t+1} [a^i]$



>  Common knowledge of rationality is "stronger" than rationality alone.


See the [[Problem Sets for EC487]] for more applications.


Take a break, I want to summarize the notations about what we have come so far: 

| Notation | Meaning                         | Example           |
| -------- | ------------------------------- | ----------------- |
| $A^j$    | $j$ 's action sets              | $A^j = \{U,M,D\}$ |
| $a^j$    | a specific action by player $j$ | $a^j = U$         |
|          |                                 |                   |


---

About the exam. Half of the lecture would be about an additional idea, and give some ideas 


convex of [[Competitive Equilibrium]], and [[Game Theory]]

- There would be 3 exercises, and 6 short questions for each exercise. The third question is very heavy. The second question is a proof, and there would be a *list* provided.


## Review Plan

# EC487 高级微观经济学 40天复习计划

**总复习时长：** 40天  
**每日时间分配：** 2.5-3小时  
**考试日期：** `TBC`

---

## 📊 复习进度概览

```
第1-20天：博弈论部分 (Game Theory)
第21-35天：竞争均衡部分 (Competitive Equilibrium)
第36-40天：综合复习与模拟考试
```

---

## 第一阶段：博弈论基础 (Day 1-8)

### Day 1: Nash均衡基础

**总时间：2.5小时**

- [ ] 复习Nash均衡定义与存在性定理 (45分钟)
    - 纯策略Nash均衡
    - 混合策略Nash均衡
    - Kakutani不动点定理
- [ ] 练习：求解2×2博弈的Nash均衡 (60分钟)
    - 至少完成3道纯策略题
    - 至少完成2道混合策略题
- [ ] 整理笔记：Nash均衡的经济直觉 (30分钟)
- [ ] 复习Lecture 1相关内容 (15分钟)

**重点关注：** 混合策略下的无差异条件

---

### Day 2: 零和博弈与Nash讨价还价

**总时间：3小时**

- [x] 零和博弈理论 (50分钟)
    - Minimax定理: [[Min-Max = Max-Min]] 
    - 与Nash均衡的关系
    - 对偶性质
- [ ] Nash讨价还价解 (50分钟)
    - 四大公理
    - 最优化求解：$\max (u_1 - d_1)(u_2 - d_2)$
    - 对称性与Pareto效率
- [ ] 练习题 (60分钟)
    - 零和博弈的minimax求解
    - Nash讨价还价的数值计算
- [ ] 总结：合作vs非合作博弈 (20分钟)

**重点关注：** Nash讨价还价解的公理化推导

---

### Day 3: 均衡精炼（上）

**总时间：2.5小时**

- [ ] 支配策略与迭代删除 (50分钟)
    - 严格支配vs弱支配
    - 迭代删除严格支配策略 (IESDS)
    - 支配策略均衡
- [ ] 可理性化策略 (50分钟)
    - 定义：never-best-response的删除
    - 与支配策略的关系
    - 理性化过程的顺序无关性
- [ ] 练习：迭代删除与可理性化 (50分钟)
- [ ] 整理知识框架图 (20分钟)

**重点关注：** 理性化与支配的逻辑关系

---

### Day 4: 均衡精炼（下）

**总时间：3小时**

- [ ] 相关均衡 (60分钟)
    - 定义与经济含义
    - 与Nash均衡的关系
    - 协调装置的作用
- [ ] 均衡概念的层级关系 (40分钟)
    - 支配策略均衡 ⊆ Nash均衡 ⊆ 相关均衡
    - Nash均衡 ⊆ 可理性化 ⊆ 未被支配
- [ ] 综合练习 (60分钟)
    - 判断不同均衡概念的关系
    - 构造反例
- [ ] 复习Lecture 2笔记 (20分钟)

**重点关注：** 各均衡概念的包含关系

---

### Day 5: 超模博弈

**总时间：2.5小时**

- [ ] 超模博弈理论 (60分钟)
    - 定义：$\frac{\partial^2 u_i}{\partial a_i \partial a_j} \geq 0$
    - 策略互补性的经济含义
    - 最大/最小Nash均衡的存在性
- [ ] Tarski不动点定理 (40分钟)
    - 定理陈述
    - 在超模博弈中的应用
- [ ] 练习：识别超模博弈 (40分钟)
- [ ] 案例分析：投资互补、网络效应 (20分钟)

**重点关注：** 互补性的数学表达与经济直觉

---

### Day 6: 势博弈

**总时间：2.5小时**

- [ ] 势博弈基础 (60分钟)
    - 精确势博弈定义
    - 序数势博弈
    - 势函数的构造
- [ ] 纯策略Nash均衡的存在性 (40分钟)
    - 势函数最大化点是Nash均衡
    - 有限最优响应性质 (FIP)
- [ ] 练习：构造势函数 (40分钟)
- [ ] 应用：拥塞博弈 (20分钟)

**重点关注：** 势函数的唯一性与应用

---

### Day 7: 第一阶段总结与练习

**总时间：3小时**

- [ ] 系统复习Day 1-6所有概念 (60分钟)
- [ ] 完成Problem Set练习题 (90分钟)
    - 混合策略Nash均衡计算
    - 均衡精炼的应用
    - 超模/势博弈的识别
- [ ] 制作概念对比表 (30分钟)

**重点关注：** 薄弱环节的强化

---

### Day 8: 机动复习日

**总时间：2.5小时**

- [ ] 复习第一周遗留问题 (90分钟)
- [ ] 重做错题 (60分钟)
- [ ] 准备进入动态博弈部分 (预习30分钟)

---

## 第二阶段：动态博弈 (Day 9-16)

### Day 9: 扩展式博弈基础

**总时间：2.5小时**

- [ ] 扩展式博弈的表示 (50分钟)
    - 博弈树
    - 信息集
    - 完美信息vs不完美信息
- [ ] 策略的概念 (50分钟)
    - 纯策略：完整的行动计划
    - 行为策略：在信息集上的条件概率分布
    - 混合策略：对纯策略的概率分布
- [ ] 练习：绘制博弈树 (40分钟)
- [ ] 复习Lecture 3开头部分 (20分钟)

**重点关注：** 策略vs行动的区别

---

### Day 10: 行为策略与混合策略

**总时间：3小时**

- [ ] Kuhn定理 (60分钟)
    - 完美记忆条件
    - 行为策略与混合策略的等价性
    - 证明思路
- [ ] 策略转换练习 (60分钟)
    - 混合策略转行为策略
    - 行为策略转混合策略
- [ ] 期望效用计算 (40分钟)
- [ ] 整理笔记 (20分钟)

**重点关注：** 两种策略表示的计算差异

---

### Day 11: 逆向归纳与子博弈完美均衡

**总时间：2.5小时**

- [ ] 子博弈的概念 (40分钟)
    - 子博弈的识别
    - 真子博弈vs整个博弈
- [ ] 逆向归纳法 (60分钟)
    - 算法步骤
    - 完美信息下的应用
    - 唯一性条件
- [ ] SPE定义 (30分钟)
    - 在所有子博弈中都是Nash均衡
    - 与Nash均衡的关系
- [ ] 练习：简单博弈树的SPE求解 (40分钟)

**重点关注：** 子博弈的准确识别

---

### Day 12: SPE深化与应用

**总时间：3小时**

- [ ] 复杂博弈树的SPE (70分钟)
    - 多阶段博弈
    - 不完美信息的处理
- [ ] 练习题 (80分钟)
    - 至少3道中等难度SPE题
    - 包含承诺问题的博弈
- [ ] 案例：市场进入阻止 (30分钟)
- [ ] 复习笔记 (20分钟)

**重点关注：** 可置信承诺vs不可置信威胁

---

### Day 13: 前向归纳

**总时间：2.5小时**

- [ ] 前向归纳的逻辑 (60分钟)
    - 理性参与者的信念推理
    - 与逆向归纳的对比
    - 应用条件
- [ ] 经典例子分析 (50分钟)
    - Battle of the Sexes with outside option
    - 信号传递博弈
- [ ] 练习：前向归纳的应用 (40分钟)
- [ ] 整理：两种归纳法的适用场景 (20分钟)

**重点关注：** 信念的理性更新

---

### Day 14: Stahl讨价还价

**总时间：2.5小时**

- [ ] Stahl讨价还价模型 (70分钟)
    - 固定轮次的设定
    - 逆向归纳求解
    - 边际分析
- [ ] 数值例子 (50分钟)
    - 2轮讨价还价
    - 3轮讨价还价
    - 贴现因子的影响
- [ ] 比较静态分析 (30分钟)
- [ ] 复习Lecture 4 (20分钟)

**重点关注：** 最后通牒效应

---

### Day 15: Rubinstein讨价还价

**总时间：3小时**

- [ ] Rubinstein无限期讨价还价 (80分钟)
    - 模型设定
    - 平稳性条件
    - SPE的推导：$u_1^* = \frac{1-\delta_2}{1-\delta_1\delta_2}$
- [ ] 贴现因子的经济含义 (40分钟)
    - 耐心程度与讨价还价力
    - 极限情况分析
- [ ] 练习：不同参数下的均衡 (40分钟)
- [ ] 对比Stahl vs Rubinstein (20分钟)

**重点关注：** 无限期与有限期的差异

---

### Day 16: 承诺与Hold-up问题

**总时间：2.5小时**

- [ ] 承诺的价值 (50分钟)
    - 事前最优vs事后最优
    - 承诺装置的类型
- [ ] Hold-up问题 (60分钟)
    - 专用性投资
    - 再谈判
    - 不完全契约
- [ ] 应用案例 (40分钟)
    - 银行贷款契约
    - 行为定价
- [ ] 复习动态博弈部分 (20分钟)

**重点关注：** 时间不一致性问题

---

## 第三阶段：重复博弈 (Day 17-20)

### Day 17: 无限期重复博弈基础

**总时间：2.5小时**

- [ ] 重复博弈框架 (60分钟)
    - 阶段博弈与总收益
    - 贴现因子的作用
    - 历史依赖策略
- [ ] 一次偏离原则 (50分钟)
    - 定理陈述与证明思路
    - 为什么只需检查一次偏离
- [ ] 简单触发策略 (30分钟)
    - Grim trigger
    - 惩罚阶段的设计
- [ ] 练习：验证策略组合是否为SPE (20分钟)

**重点关注：** 一次偏离原则的应用

---

### Day 18: Folk定理

**总时间：3小时**

- [ ] Nash Folk定理 (70分钟)
    - 个人理性约束
    - 可行收益集
    - 充分条件：$\delta$足够大
- [ ] Perfect Folk定理 (70分钟)
    - 更强的均衡概念
    - 子博弈完美的惩罚
- [ ] 几何直觉 (40分钟)
    - 收益集的图形表示
    - 可支持区域
- [ ] 复习Lecture 5 (20分钟)

**重点关注：** $\delta$的临界值计算

---

### Day 19: 重复博弈应用

**总时间：2.5小时**

- [ ] 囚徒困境中的合作 (50分钟)
    - 合作条件推导
    - 最优惩罚设计
- [ ] 寡头竞争中的合谋 (50分钟)
    - 价格合谋
    - 产量合谋
    - 市场分割
- [ ] 准双曲贴现模型 (40分钟)
    - $\beta\delta$模型
    - 现时偏好与时间不一致
- [ ] 行为定价应用 (20分钟)

**重点关注：** 现实中的重复互动

---

### Day 20: 博弈论阶段总结

**总时间：3小时**

- [ ] 系统复习Day 1-19所有内容 (80分钟)
    - 静态博弈→动态博弈→重复博弈的逻辑链
    - 均衡概念的演进
- [ ] 完成综合练习题 (90分钟)
    - 各类型博弈的混合练习
    - 重点：SPE和Folk定理
- [ ] 制作博弈论知识地图 (30分钟)

**重点关注：** 博弈论部分的薄弱环节

---

## 第四阶段：消费者理论 (Day 21-25)

### Day 21: 消费者最优化基础

**总时间：2.5小时**

- [ ] 效用最大化问题 (50分钟)
    - Marshallian需求：$x(p,w)$
    - 一阶条件与预算约束
    - MRS = 价格比
- [ ] 支出最小化问题 (50分钟)
    - Hicksian需求：$h(p,u)$
    - 补偿需求的概念
- [ ] 对偶关系初步 (40分钟)
    - $x(p,w) = h(p, v(p,w))$
    - 间接效用函数与支出函数
- [ ] 复习Lecture 6前半部分 (20分钟)

**重点关注：** Marshallian vs Hicksian的区别

---

### Day 22: 对偶理论深化

**总时间：3小时**

- [ ] 间接效用函数$v(p,w)$ (50分钟)
    - 性质：齐次性、单调性
    - Roy恒等式
- [ ] 支出函数$e(p,u)$ (50分钟)
    - 性质与Shephard引理
    - $\frac{\partial e}{\partial p_i} = h_i(p,u)$
- [ ] 对偶关系完整推导 (60分钟)
    - $e(p, v(p,w)) = w$
    - $v(p, e(p,u)) = u$
- [ ] 练习：对偶函数的计算 (20分钟)

**重点关注：** Shephard引理的应用

---

### Day 23: Slutsky方程

**总时间：2.5小时**

- [ ] Slutsky方程推导 (70分钟)
    - 替代效应与收入效应的分解
    - $$\frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial w}$$
    - 矩阵形式
- [ ] 经济直觉 (40分钟)
    - Giffen商品
    - 正常商品vs劣等商品
- [ ] 数值练习 (40分钟)
    - 给定效用函数，计算替代效应和收入效应
- [ ] 整理笔记 (20分钟)

**重点关注：** 替代效应的符号（负半定）

---

### Day 24: 需求理论的性质

**总时间：2.5小时**

- [ ] Walras法则 (40分钟)
    - $p \cdot x(p,w) = w$
    - 预算约束总是紧的
- [ ] 齐次性 (40分钟)
    - $x(\lambda p, \lambda w) = x(p,w)$
    - 无货币幻觉
- [ ] 需求的连续性与可微性 (40分钟)
- [ ] 应用案例分析 (40分钟)
    - 劳动供给决策
    - 跨期消费选择
- [ ] 复习Lecture 6完整内容 (20分钟)

**重点关注：** 各性质的证明思路

---

### Day 25: 消费者理论综合练习

**总时间：3小时**

- [ ] 完整问题求解 (90分钟)
    - 从效用函数到需求函数
    - 从需求函数到间接效用
    - Slutsky方程的完整应用
- [ ] 特殊效用函数练习 (60分钟)
    - Cobb-Douglas
    - CES
    - 准线性效用
- [ ] 错题整理 (30分钟)

**重点关注：** 计算的准确性和速度

---

## 第五阶段：竞争均衡 (Day 26-31)

### Day 26: 竞争均衡定义

**总时间：2.5小时**

- [ ] 交换经济框架 (50分钟)
    - $(N, e, u)$
    - 禀赋向量$e^j$
    - 消费者$j$的需求$x^j(p, p \cdot e^j)$
- [ ] 超额需求函数 (50分钟)
    - $z(p) = \sum_j x^j(p, p \cdot e^j) - e^j$
    - 市场出清条件：$z(p) = 0$
- [ ] 均衡的经济含义 (40分钟)
    - 价格机制的协调作用
    - 分散决策的聚合
- [ ] 复习Lecture 7基础部分 (20分钟)

**重点关注：** 一般均衡vs部分均衡

---

### Day 27: 均衡存在性定理

**总时间：3小时**

- [ ] Brouwer不动点定理 (60分钟)
    - 定理陈述
    - 直觉理解
- [ ] 存在性证明步骤 (80分钟)
    - 构造价格单纯形
    - 超额需求的连续性
    - 边界条件
    - 应用不动点定理
- [ ] 关键假设的作用 (40分钟)
    - 连续性
    - 凸性
    - 严格单调性（局部非餍足）
- [ ] 整理证明框架 (20分钟)

**重点关注：** 为什么需要这些假设

---

### Day 28: 均衡唯一性

**总时间：2.5小时**

- [ ] Gross替代性 (70分钟)
    - 定义：$\frac{\partial z_i}{\partial p_j} > 0$ for $i \neq j$
    - 经济直觉：商品之间的替代关系
    - 唯一性证明思路
- [ ] 严格拟凹性的作用 (50分钟)
    - 单峰偏好
    - 唯一最优解
- [ ] 反例构造 (30分钟)
    - 多重均衡的情况
- [ ] 复习笔记 (20分钟)

**重点关注：** Gross替代vs净替代的区别

---

### Day 29: 均衡的稳定性与计算

**总时间：2.5小时**

- [ ] Tatonnement过程 (60分钟)
    - 价格调整机制：$\dot{p}_i = z_i(p)$
    - 全局稳定性条件
    - Walras稳定性
- [ ] 均衡的计算方法 (60分钟)
    - 数值例子
    - 2×2交换经济
    - Edgeworth盒子分析
- [ ] 应用案例 (30分钟)
    - 劳动市场均衡
    - 特征价格模型

**重点关注：** 稳定性的经济含义

---

### Day 30: 竞争均衡应用

**总时间：2.5小时**

- [ ] 劳动市场均衡 (60分钟)
    - 劳动供给与需求
    - 工资决定
    - 均衡失业
- [ ] 特征价格（Hedonic Prices） (60分钟)
    - 商品特征的隐含价格
    - 房地产市场应用
- [ ] 综合练习 (30分钟)

**重点关注：** 理论与现实的联系

---

### Day 31: 竞争均衡阶段总结

**总时间：3小时**

- [ ] 系统复习Day 21-30 (70分钟)
    - 消费者理论→市场均衡的逻辑
    - 对偶理论的完整框架
- [ ] 完成Problem Set (90分钟)
    - 对偶问题计算
    - 均衡存在性和唯一性的判断
- [ ] 制作对比表格 (20分钟)

---

## 第六阶段：福利经济学 (Day 32-35)

### Day 32: Pareto效率

**总时间：2.5小时**

- [ ] Pareto效率的定义 (50分钟)
    - 没有帕累托改进
    - 与社会福利的关系
- [ ] 核（The Core） (50分钟)
    - 定义：无阻断联盟
    - 与Pareto效率的关系
- [ ] 识别Pareto有效配置 (40分钟)
    - 2人2商品的例子
    - Edgeworth盒子中的契约曲线
- [ ] 复习Lecture 8前半部分 (20分钟)

**重点关注：** Pareto效率的必要条件

---

### Day 33: 第一福利定理

**总时间：3小时**

- [ ] 定理陈述 (40分钟)
    - 竞争均衡→Pareto有效
    - 关键假设：局部非餍足性
- [ ] 证明步骤 (80分钟)
    - 反证法
    - 利用预算约束
    - 价格体系的作用
- [ ] 经济含义与政策启示 (50分钟)
    - 市场机制的效率
    - "看不见的手"
    - 局限性：外部性、公共品、信息不对称
- [ ] 练习：验证定理条件 (30分钟)

**重点关注：** 局部非餍足性为什么重要

---

### Day 34: 第二福利定理

**总时间：2.5小时**

- [ ] 定理陈述 (40分钟)
    - Pareto有效→竞争均衡（通过再分配）
    - 关键假设：凸性
- [ ] 证明思路 (70分钟)
    - 分离超平面定理
    - 价格向量的构造
    - 初始禀赋的调整
- [ ] 效率与公平的分离 (40分钟)
    - 政策含义
    - 一次性税vs扭曲性税收
- [ ] 对比两个福利定理 (20分钟)

**重点关注：** 凸性假设的作用

---

### Day 35: 福利经济学应用与丛林经济

**总时间：3小时**

- [ ] 税收理论 (70分钟)
    - 一次性税（Lump-sum tax）
    - 从量税和从价税
    - 超额负担（Deadweight loss）
- [ ] 丛林经济 (60分钟)
    - 强制与暴力的建模
    - 产权的重要性
    - 霍布斯式均衡
- [ ] 福利定理的现实局限 (40分钟)
    - 市场失灵的情况
    - 政府干预的理由
- [ ] 复习Lecture 8完整内容 (30分钟)

**重点关注：** 理论假设与现实的差距

---

## 第七阶段：综合复习 (Day 36-40)

### Day 36: 博弈论综合复习

**总时间：3小时**

- [ ] 静态博弈回顾 (60分钟)
    - Nash均衡及其精炼
    - 特殊博弈类别
- [ ] 动态博弈回顾 (60分钟)
    - SPE与逆向归纳
    - 讨价还价模型
- [ ] 重复博弈回顾 (50分钟)
    - Folk定理及应用
- [ ] 完成综合习题集 (30分钟)

---

### Day 37: 竞争均衡综合复习

**总时间：3小时**

- [ ] 消费者理论回顾 (60分钟)
    - 对偶理论
    - Slutsky方程
- [ ] 市场均衡回顾 (60分钟)
    - 存在性与唯一性
- [ ] 福利定理回顾 (50分钟)
    - 两个福利定理的证明
- [ ] 完成综合习题集 (30分钟)

---

### Day 38: 全真模拟考试（第一套）

**总时间：3小时**

- [ ] 严格计时完成模拟题 (150分钟)
- [ ] 初步检查答案 (30分钟)

**说明：** 尽量模拟真实考试环境

---

### Day 39: 模拟考试讲解与查漏补缺

**总时间：3小时**

- [ ] 详细分析错题 (90分钟)
    - 找出知识盲点
    - 总结解题方法
- [ ] 针对性复习薄弱环节 (80分钟)
- [ ] 整理易错点和公式表 (30分钟)

---

### Day 40: 考前最后冲刺

**总时间：2.5小时**

- [ ] 快速浏览所有笔记 (60分钟)
- [ ] 重点回顾核心定理 (50分钟)
    - Folk定理
    - 两个福利定理
    - 均衡存在性定理
- [ ] 记忆关键公式 (40分钟)
    - Rubinstein讨价还价解
    - Slutsky方程
    - 间接效用函数与支出函数的关系
- [ ] 心理准备与放松 (20分钟)

---

## 📝 重点公式速查表

### 博弈论部分

1. **Nash均衡条件:** $$u_i(\sigma_i^_, \sigma_{-i}^_) \geq u_i(\sigma_i, \sigma_{-i}^*), \forall \sigma_i, \forall i$$
    
2. **Nash讨价还价解:** $$\max_{(u_1, u_2)} (u_1 - d_1)(u_2 - d_2)$$
    
3. **Rubinstein讨价还价SPE:** $$u_1^* = \frac{1-\delta_2}{1-\delta_1\delta_2}, \quad u_2^* = \frac{\delta_2(1-\delta_1)}{1-\delta_1\delta_2}$$
    
4. **Folk定理的充分条件:** 贴现因子$\delta$足够接近1，且收益向量严格个人理性
    

### 竞争均衡部分

5. **Slutsky方程:** $$\frac{\partial x_i}{\partial p_j} = \frac{\partial h_i}{\partial p_j} - x_j \frac{\partial x_i}{\partial w}$$
    
6. **Roy恒等式:** $$x_i(p,w) = -\frac{\partial v/\partial p_i}{\partial v/\partial w}$$
    
7. **Shephard引理:** $$h_i(p,u) = \frac{\partial e(p,u)}{\partial p_i}$$
    
8. **Walras法则:** $$p \cdot z(p) = 0$$
    
9. **超额需求:** $$z(p) = \sum_{j=1}^N x^j(p, p \cdot e^j) - e^j$$
    

---

## 🎯 复习策略建议

### 每日学习最佳实践

1. **时间分配**
    
    - 上午（精力最好）：攻克难点、理解证明
    - 下午：练习计算题
    - 晚上：总结回顾、整理笔记
2. **学习方法**
    
    - 先理解概念，再做题
    - 重视证明的逻辑，不只是记结论
    - 每学完一个主题立即做练习题
3. **记忆技巧**
    
    - 理解经济直觉比死记公式更重要
    - 制作概念关系图
    - 用自己的话解释概念

### 重点难点标注

**⭐⭐⭐ 核心重点（必须掌握）**

- Nash均衡的计算（尤其是混合策略）
- SPE与逆向归纳
- Rubinstein讨价还价
- Folk定理
- 对偶理论（Marshallian vs Hicksian）
- Slutsky方程
- 两个福利定理

**⭐⭐ 重要内容（熟练掌握）**

- 均衡精炼概念
- 超模博弈和势博弈
- 前向归纳
- 均衡存在性和唯一性证明
- Pareto效率

**⭐ 了解内容（理解思路）**

- 相关均衡
- Tatonnement过程
- 丛林经济

---

## 📚 学习资源推荐

### 教材

- **主教材:** Osborne and Rubinstein, _A Course in Game Theory_
- **参考书:** Mas-Colell, Whinston and Green, _Microeconomic Theory_

### 练习来源

- 课程Problem Sets
- 往年考试真题
- 教材课后习题

### 学习小组

- 与同学组建学习小组，每周讨论1-2次
- 互相讲解难点，加深理解

---

## ✅ 复习检查清单

### 博弈论部分

- [ ] 能够快速求解2×2和3×3博弈的Nash均衡
- [ ] 熟练使用逆向归纳求解SPE
- [ ] 能够推导Rubinstein讨价还价解
- [ ] 理解Folk定理的条件和应用
- [ ] 能够识别超模博弈和势博弈

### 竞争均衡部分

- [ ] 熟练掌握对偶理论的计算
- [ ] 能够应用Slutsky方程分解价格效应
- [ ] 理解均衡存在性定理的证明框架
- [ ] 能够陈述并证明两个福利定理
- [ ] 理解Gross替代性的作用

### 综合能力

- [ ] 能够独立完成一套完整的Past Paper
- [ ] 证明题的逻辑清晰、步骤完整
- [ ] 计算题准确率达到90%以上

---

## 📌 注意事项

1. **灵活调整:** 如果某天学习进度落后，可以适当调整后续安排
2. **休息日:** 建议每周安排一天休息或轻松复习，避免过度疲劳
3. **身心健康:** 保证充足睡眠，适当运动，保持良好心态
4. **考试技巧:**
    - 先做会做的题，再攻克难题
    - 注意时间分配
    - 证明题要写清楚逻辑步骤

---

## 🌟 加油鼓励

你已经完成了三个月的艰苦学习，现在进入最后的冲刺阶段！记住：

✨ **系统复习 > 题海战术**  
✨ **理解原理 > 死记硬背**  
✨ **坚持到底 = 成功一半**

相信自己，你一定可以的！💪

---

**祝复习顺利，考试成功！🎓**

## Possible Test Point 

### Lecture 9

- [ ] How to draw [[Edgeworth Box]] 