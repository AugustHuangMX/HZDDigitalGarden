#LSE/EC417_Macroeconomics 

Start from a very simple question: why we need B-K condition?

from a [[Euler Equation]] in the RBC model: 

$$
c_{t}^{-1} = \beta \mathbb{E}_{t}[(1+r_{t+1}-\delta) c_{t+1}^{-1}]
$$

The intuition of this equation is your decision today relies on your expectation of tomorrow. The problem is given $c_{0}$, there could be infinitely many solutions. The [[Blanchard Kahn Condition]] allows us to find the **unique non-explosive** path.

How to understand $p_{i}$ and $\lambda_{i}$?

- $\lambda$: 各个变量独自的变化率
- $p$: 可以理解为类似于权重

计算特征值可以通过 $\det(D-\lambda I) = 0$ 这个公式进行分解