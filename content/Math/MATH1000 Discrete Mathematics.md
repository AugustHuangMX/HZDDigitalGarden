[[Prime]]

[[Graph]]

[[Tree]]

# Chapter 6 Sets

## 知识点

- $B-A$ 的意思是，$x \in B, x \notin A$ 

## 常见题型

### 证明子集

具体的，证明一个集合是另一个集合的子集的办法（最基本的）就是 Element Argument

证明步骤：

1. Let $x$ is particular but arbitrarily given
2. Show that $x$ is an element of $Y$

通常可以通过构造一个函数来实现（肉眼观测）

如果要找到一个集合不是另一个集合的子集，则可以通过找 counter example 的方式

### 证明集合相同

也就是证明$A=B$，具体的，其实只需要证明 A 是 B 的子集以及 B 是 Adele 子集，也就是证明两遍

Tips: 如果有笛卡尔积的情况存在，比如要求证明：

$$
A \times (B\cap C)=(A \times B) \cap (A \times C)
$$
在构造一个元素的时候，应该这样写：

$(x,y) \in A \times (B \cap C)$


# Chapter 7
## 常见题型

### 证明 one-to-one

方法：direct proof

Suppose $x_{1}$ and $x_{2}$ are elements of $X$ such that $f(x_{1})=f(x_{2})$, and we need to show that $x_{1} = x_{2}$

如果要证明不是 one-to-one，可以找到一个 counter example

### 证明 onto 

证明 onto 也就是需要证明是满射 

可以构造一个函数，看能不能让它射回来。

要证伪的话，也是给出 counter example 即可。
- 对于给定的y值
- 直接构造出对应的x值
- 验证f(x)=y

Cardinality，基数的意思

整数集是一个可数集，因此我们可以构造一个和正整数之间的双射。
# Chapter 9 Counting

鸽笼原理 (The Pigeonhole Principle) 是一个非常重要的计数原理，让我详细解析：

1. 基本定义：
- 如果有 n 个物品要放入 m 个容器中
- 当 n > m 时
- 至少有一个容器中包含至少⌈n/m⌉个物品
- 通俗理解：如果 10 只鸽子要放入 9 个鸽笼，至少有一个鸽笼要放两只鸽子

2. 基本形式：
- 简单形式：n + 1 个物品放入 n 个容器，必有一个容器至少含 2 个物品
- 一般形式：n 个物品放入 m 个容器，至少有一个容器包含⌈n/m⌉个物品

3. 从课件中的例题分析（9.4.32）：
```
设A是6个小于13的正整数集合，证明必存在两个不同的子集，其元素之和相等。

解析：
1) 任意子集和的最大可能值是57(=12+11+10+9+8+7)
2) 非空子集的数量是2⁶-1=63
3) 由于63>57，根据鸽笼原理
4) 必然存在两个不同子集和相等
```

4. 应用技巧：
A) 确定"鸽子"（要放置的元素）
B) 确定"鸽笼"（可用的位置/类别）
C) 计算鸽子和鸽笼的数量
D) 应用原理得出结论

5. 常见应用场景：
- 证明存在性问题
- 找最小值问题
- 序列问题
- 周期性问题

6. 进阶应用：
- 广义鸽笼原理
- 多维鸽笼原理
- 带权重的鸽笼原理

7. 解题步骤示例：
1) 分析问题中的元素总数（鸽子）
2) 确定可能的取值范围（鸽笼）
3) 比较两个数量
4) 得出必然存在的结论

8. 典型例题类型：
- 证明至少存在某种情况
- 证明必然存在重复
- 求最小数量问题
- 序列中的性质证明

9. 注意事项：
- 正确识别"鸽子"和"鸽笼"
- 准确计算数量
- 考虑是否需要更精细的分类
- 检查结论的必然性

需要我用更多具体的例题来说明这些概念吗？或者详细解释其中的某个方面？

# Chapter 10

Note that we skip the *section 6*.

Chapter 6 7 9 10 Only before section 3

Directly related to the chapters (could include in chapters before midterm (like mathematical induction))

7 questions, challenging.

