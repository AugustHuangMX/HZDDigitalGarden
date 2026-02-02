[[Asymmetric Information]]

#Econ/Micro #LSE/EC487_Advanced_Microeconomics 



## Bayesian Updating

The procedure is like this: 

1. Receiver has a prior $p(\theta)$
2. Sender chooses his action $a_{1}$
3. Receiver based on this action $a_{1}$, use [[Bayesian Inference]] to update his belief to the posterior $\mu(\theta|a_{1})$
4. Receiver base on this $\mu(\theta|a_{1})$, chooses optimal $a_{2}$.

>  The key here is that, indeed sender would have rational anticipation of what the receiver would do.



---

# Signalling Games 预习框架

## 1. 核心框架（5分钟速览）

**主要研究问题**（第3-4页）： 当信息不对称时，informed player（sender）如何通过行动向 uninformed player（receiver）传递私人信息？

**核心模型结构**（第4页）：

- Player 1（sender）：知道自己的类型 $\theta$，选择行动 $a_1$（signal）
- Player 2（receiver）：观察到 $a_1$ 后选择 $a_2$
- 关键：Player 1 的行动本身可以传递关于 $\theta$ 的信息

**关键结论**（第13、22页）：

- **多重均衡问题**：因为 off-path beliefs 可以任意设定，存在大量均衡
- **均衡精炼的必要性**：需要通过 Intuitive Criterion 和 D1 Criterion 排除"不合理"的均衡
- **单调交叉条件**：$\frac{\partial^2 c(e,\theta)}{\partial e \partial \theta} < 0$ 确保分离均衡存在

## 2. 技术细节

### Perfect Bayesian Equilibrium（第5页）

**定义的两个核心要求**：

1. **策略最优**：给定信念，各类型选择最优策略 $$\sigma_1 (\cdot|\theta) \in \arg\max {\sigma_1} \sum {a_1, a_2} \sigma_1(a_1|\theta)\sigma_2 (a_2|a_1)u_1(a_1,a_2,\theta)$$
    
2. **信念一致**：在均衡路径上必须用 Bayes 法则 $$\mu(\theta|a_1) = \frac{p(\theta)\sigma_1 (a_1|\theta)}{\sum {\theta'} p(\theta')\sigma_1 (a_1|\theta')}$$
    

**关键 intuition**（第6页）：

- "Perfect" = 每个子博弈都理性
- "Weak" = off-path beliefs 不受约束

### Spence Signalling 的分离均衡（第16-18页）

**Incentive Compatibility 条件**：

- 低类型不模仿高类型：$\theta_L - 0 \geq \theta_H - c(e_H, \theta_L)$
- 高类型不模仿低类型：$\theta_H - c(e_H, \theta_H) \geq \theta_L - 0$

合并得到： $$c(e_H, \theta_L) \geq \theta_H - \theta_L \geq c(e_H, \theta_H)$$

**Intuition**：

- 教育成本对低类型更高 → 高类型愿意用高教育"筛选"自己
- 单调交叉条件保证存在 $e_H$ 满足上述不等式

### 均衡精炼的核心逻辑

**Intuitive Criterion**（第24-26页）：

关键概念：

- **Equilibrium dominated**：即使在"最好情况"下偏离也不划算
- **Reasonable beliefs**：不应该认为会有"equilibrium dominated types"偏离

**应用于 Beer-Quiche**（第27-28页）：

- Beer pooling 均衡：quiche 是 type $s$ 的 equilibrium dominated action → 合理信念只能是 $\mu(w|q)=1$ → 均衡成立
- Quiche pooling 均衡：beer 是 type $w$ 的 equilibrium dominated action → 但这导致 type $s$ 想偏离 → 均衡被排除

**D1 Criterion**（第36-38页）：

更严格的要求：只保留那些"从偏离中获益最多"的类型。

比较（第39页）：

- Intuitive Criterion：至少存在某个 best response 让该类型偏离
- D1：该类型从偏离中获益的 best responses 集合最大
- D1 ⊂ Intuitive Criterion（更严格）

## 3. 概念连接

**与 Lecture 1 的联系**：

Lecture 1（第11-15页）介绍了 Bayesian Nash Equilibrium，这是静态不完全信息博弈的解概念。Signalling game 是**动态**不完全信息博弈，因此：

- 需要 Perfect Bayesian Equilibrium 而非简单的 BNE
- 增加了"信念更新"的动态维度
- Off-path 信念的处理成为新问题

**Single Crossing 与分离均衡**（第19页）：

这个条件在 Lecture 1 的 Cournot 例子中也隐含存在：不同类型对同一行动的边际收益不同，才能通过行动分离类型。

**Riley Outcome 的地位**（第34页）：

最小成本分离均衡 $c(e_H, \theta_L) = \theta_H - \theta_L$ 是唯一通过 Intuitive Criterion 的均衡，这与 Lecture 1 中"dominant strategy"思想类似——最"自然"、最"稳健"的均衡。

---

**预习重点**：

1. 理解 off-path beliefs 为何导致多重均衡
2. 掌握 Intuitive Criterion 的"equilibrium dominated"逻辑
3. 记住单调交叉条件的作用

