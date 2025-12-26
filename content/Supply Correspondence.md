#LSE/EC487_Advanced_Microeconomics 

[[Supply Correspondence]] is a more general concept of Supply function.

> 本质上是一种对应关系

Mathematically,

- Function: $y^s: \mathbb{R}_+ \to \mathbb{R}_+$
- Correspondence: $y^s: \mathbb{R}_+ \rightrightarrows \mathbb{R}_+$

**为什么需要correspondence?**

- 当利润函数不是严格凹时，可能有多个最优解
- 例如constant returns to scale时，任何产量都可能是最优的

## 二、第(i)题：确定$\beta$的值

### **Cost function的性质**

一个合理的cost function必须满足：

1. **对input prices一次齐次（Homogeneous of degree 1）**: $$c(\lambda w_1, \lambda w_2, y) = \lambda c(w_1, w_2, y), \quad \forall \lambda > 0$$
    
    **经济直觉**: 如果所有要素价格翻倍，总成本也应该翻倍
    
2. **对output非递减**: $\frac{\partial c}{\partial y} \geq 0$
    
3. **对input prices非递减**: $\frac{\partial c}{\partial w_i} \geq 0$
    

### **验证齐次性**

给定 $c(w_1, w_2, y) = \beta w_1^\beta w_2^\beta y^4$

计算： $$c(\lambda w_1, \lambda w_2, y) = \beta (\lambda w_1)^\beta (\lambda w_2)^\beta y^4 = \beta \lambda^{\beta + \beta} w_1^\beta w_2^\beta y^4$$

要使其等于 $\lambda c(w_1, w_2, y) = \lambda \beta w_1^\beta w_2^\beta y^4$，必须：

$$\boxed{2\beta = 1 \Rightarrow \beta = \frac{1}{2}}$$

所以cost function变为： $$c(w_1, w_2, y) = \frac{1}{2} \sqrt{w_1 w_2} \cdot y^4$$

## 三、第(ii)题：单个生产者的Supply Correspondence

### **完全竞争市场的利润最大化**

在perfectly competitive market中，生产者是**price taker**，利润最大化问题为：

$$\max_{y \geq 0} \pi(y) = p \cdot y - c(w_1, w_2, y)$$

其中 $p$ 是output price（外生给定）。

### **一阶条件（FOC）**

$$\frac{\partial \pi}{\partial y} = p - \frac{\partial c}{\partial y} = 0$$

即：**价格等于边际成本**

$$\boxed{p = MC(y) = \frac{\partial c}{\partial y}}$$

### **计算边际成本**

$$\frac{\partial c}{\partial y} = \frac{\partial}{\partial y}\left[\frac{1}{2}\sqrt{w_1 w_2} \cdot y^4\right] = \frac{1}{2}\sqrt{w_1 w_2} \cdot 4y^3 = 2\sqrt{w_1 w_2} \cdot y^3$$

### **求解supply correspondence**

由FOC： $$p = 2\sqrt{w_1 w_2} \cdot y^3$$

解出 $y$: $$y^3 = \frac{p}{2\sqrt{w_1 w_2}}$$

$$\boxed{y^s(p, w_1, w_2) = \left(\frac{p}{2\sqrt{w_1 w_2}}\right)^{1/3}}$$

### **验证二阶条件（SOC）**

$$\frac{\partial^2 \pi}{\partial y^2} = -\frac{\partial^2 c}{\partial y^2} = -6\sqrt{w_1 w_2} \cdot y^2 < 0$$

SOC满足！这说明这是最大值，而且是**唯一**的，所以是supply **function**而不只是correspondence。

### **完整的Supply Correspondence**

严格来说，supply correspondence应该考虑corner solution：

$$y^s(p, w_1, w_2) = \begin{cases} \left(\frac{p}{2\sqrt{w_1 w_2}}\right)^{1/3} & \text{if } p > 0 \ [0, +\infty) & \text{if } p = 0 \end{cases}$$

但在 $p > 0$ 时，supply就是唯一确定的function。

## 四、第(iii)题：Aggregate Supply Correspondence

### **定义**

有 $n$ 个**相同**的生产者，aggregate supply就是所有individual supply的总和：

$$Y^s(p, w_1, w_2) = n \cdot y^s(p, w_1, w_2)$$

### **计算**

$$\boxed{Y^s(p, w_1, w_2) = n \left(\frac{p}{2\sqrt{w_1 w_2}}\right)^{1/3}}$$

### **性质分析**

1. **对价格递增**: $$\frac{\partial Y^s}{\partial p} = n \cdot \frac{1}{3}\left(\frac{p}{2\sqrt{w_1 w_2}}\right)^{-2/3} \cdot \frac{1}{2\sqrt{w_1 w_2}} > 0$$
    
2. **对input prices递减**:
    
    - 要素价格上升 $\Rightarrow$ 边际成本上升 $\Rightarrow$ 供给下降
3. **Homogeneity**: $$Y^s(\lambda p, \lambda w_1, \lambda w_2) = n\left(\frac{\lambda p}{2\sqrt{\lambda w_1 \cdot \lambda w_2}}\right)^{1/3} = n\left(\frac{p}{2\sqrt{w_1 w_2}}\right)^{1/3} = Y^s(p, w_1, w_2)$$
    
    Supply对**所有价格**零次齐次（货币中性）
    

## 六、与Consumer Theory的对比

| **Producer Theory**    | **Consumer Theory**           |
| ---------------------- | ----------------------------- |
| Profit maximization    | Utility maximization          |
| $\max py - c(w,y)$     | $\max u(x)$ s.t. $px \leq w$  |
| FOC: $p = MC$          | FOC: $MRS = p_1/p_2$          |
| Supply function        | Demand function               |
| Cost function $c(w,y)$ | Expenditure function $e(p,u)$ |

**Shephard's Lemma的对偶**:

- Consumer: $\frac{\partial e(p,u)}{\partial p_\ell} = h_\ell(p,u)$ （Hicksian demand）
- Producer: $\frac{\partial c(w,y)}{\partial w_i} = x_i(w,y)$ （Conditional factor demand）

## 总结

**第(ii)题答案**: $$y^s(p, w_1, w_2) = \left(\frac{p}{2\sqrt{w_1 w_2}}\right)^{1/3}$$

**第(iii)题答案**: $$Y^s(p, w_1, w_2) = n\left(\frac{p}{2\sqrt{w_1 w_2}}\right)^{1/3}$$

**核心思路**:

1. 利润最大化 $\Rightarrow$ 价格等于边际成本
2. 解出optimal output
3. 相同生产者 $\Rightarrow$ 总供给 = $n$ 倍个人供给


$$\begin{cases} x_1^A + x_2^A = \bar{x} & \text{（A的预算约束）} \\ x_1^B + x_2^B = \bar{x} & \text{（B的预算约束）} \\ x_1^A + x_1^B = \bar{x} & \text{（市场出清：商品1）} \\ x_2^A + x_2^B = \bar{x} & \text{（市场出清：商品2）} \end{cases}$$