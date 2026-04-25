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


## Review

## Possible Test Point 

### Lecture 8

### Lecture 9

- [ ] How to draw [[Edgeworth Box]] 


## Question For Christopher

- For the proof of L8: $x \in \arg\max$ utilitarian welfare $\implies$ $x$ Pareto efficient, does it refer to Proposition 8.1 in the lecture notes? do we have to learn the $<=$ direction as well?
- where is L3: first-mover advantage in supermodular games / disadvantage in ZSG

---

Problem Sets 归纳

您好！我很高兴能为您提供复习协助。EC487《高级微观经济学》课程涵盖了博弈论和竞争性均衡两大核心主题。根据您上传的往年试卷、Problem Sets（PS）和讲义大纲，我已经完成了题目的归类和知识点定位。

本学期的课程大纲（来自您的讲义）分为两个主要部分：

- **第一部分：博弈论（Lecture 1-5）：** 涵盖纳什均衡、零和博弈、纳什议价、相关均衡、可理性化性、超模和势博弈、扩展式博弈（子博弈完美均衡、逆向归纳）、前向归纳、斯塔尔和鲁宾斯坦议价、承诺和重复博弈。
- **第二部分：竞争性均衡（Lecture 6-10）：** 涵盖消费者理论、竞争性均衡的（存在性、唯一性）、福利定理、丛林博弈、竞争性均衡的基础和去中心化匹配。

以下是基于您提供的材料的复习分析和归类表格。

---

## 复习重点和建议

基于您提供的材料和复习目标，以下是您应重点关注的方面：

### 1. 重点关注和重合度分析（需求 2、5、6）

您提供的 **Problem Sets (PS 1-9)** 覆盖了本学期所有的 **Lecture Slides (L1-L10)** 内容，因此它们是您复习的 **最高优先级**，代表了教授对每个主题深度和广度的要求。

|重点程度|类别|建议和说明（基于源文件）|
|:--|:--|:--|
|**最高**|**Problem Sets (PS 1-9)**|PS难度通常较高，因为有更充足的时间完成。它们涵盖了核心证明和应用，例如：零和博弈的 Minmax 定理；Nash 议价解的特性；可理性化性和严格劣势策略的迭代消除；势博弈；Cournot 和 Stackelberg 的比较；动态不一致和世代自我博弈；家庭中的竞争性均衡模型；Edgeworth Box 的存在性和唯一性；丛林博弈的制度比较。**这些题目是复习的基石。**|
|**高**|**核心证明题**|很多试卷中重复出现了理论基石的证明题，例如：**零和博弈中 Minmax=Maxmin** 的证明；**独立性公理（Independence Axiom）**；**风险厌恶与效用函数凹性等价**；**Nash 议价解的表示定理**；**福利定理**。|
|**中高**|**Auction Theory 和 Moral Hazard/Signaling**|尽管这些主题在 Lecture 大纲的标题中没有独立列出（多被包含在 L5 或应用中），但它们在所有近期的 Summer Exam (ST) 和部分 Winter Exam (LT) 中占据了很大的比重。这表明它们是课程应用的重点。特别是 **拍卖机制的对称贝叶斯纳什均衡 (BNE)** 求解和 **Moral Hazard/Signaling/Cheap Talk** 模型。|
|**中**|**年代久远的题目**|2018年以前的题目仍可用于练习核心概念，但可能包含与当前大纲重合度较低的主题。应优先处理与 PS/Lecture 紧密相关的部分，例如，2018年以前涉及 Nash/SPE/CE 基础概念的题目。|

### 2. 新冠疫情时期试卷难度（需求 4）

新冠疫情时期的试卷（主要指 **2020年夏季和2021年冬季/夏季**）允许学生在 **24小时** 内完成，因此这些试卷的难度可能更高，要求更深入的分析和计算。

- **2020年夏季考试 (ST 2020)**：涉及复杂拍卖机制（Q1）、带有严格限制的 Moral Hazard（Q2）和风险理论的完整证明（Q3），要求深入的理论推导。
- **2021年冬季考试 (LT 2021)**：包含一个复杂的 Auction + Stackelberg 扩展式博弈（Q2），以及需要详细计算的无限重复博弈中的 TIOLI 议价（Q3）和 Coase/Externality 模型（Q4）。

**建议：** 将这些 24小时考试的题目作为对您理解能力的终极测试。如果能解决这些问题，您对课程内容的掌握就非常扎实。

### 3. Problem Sets 与考试重合度（需求 3）

有几个 Problem Set 的练习直接出现在了往年的考试中，这表明这些知识点是必考的：

- **PS 1 Q3/Q4 (Zero-sum games with a star player)：** 几乎完整地出现在 LT 2022 Exercise 2 中。
- **PS 9 Q3/EC487LT_2023 Q2 (Walrasian bargaining)：** 几乎完整地重复出现，涉及 Walrasian 均衡、Nash 议价解和交替出价博弈。
- **PS 3 Q4/EC487LT_2022 Q2 (Bank Run Model/Potential Games)：** 银行挤兑模型被要求讨论其博弈论基础并证明其是势博弈。

---


How to review/prepare for WT

1. Do the pset again
2. No mock exams

