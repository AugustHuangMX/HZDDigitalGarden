## Background

Think of a **continuous** criterion for treatment.

---

### Sharp Regression Discontinuity

It occurs when treatment is a deterministic and discontinuous function of covariate $x_{i}$ .

For example, $D_{i}$ (whether or not being treated) = $1$ if $x_{i}\geq x_{0}$ . $0$ otherwise.

An example would be the National Merit Scholarship in US awarded to students on a GPA-like basis ( $x_{i}$ ).  The core assumption here is that, those around the threshold $x_{0}$ should have similar outcomes, except that those above $x_{0}$ received the scholarship.

The lack of this setting is that we could never observe two different treatment for the same covariate $x_{i}$ . Thus we could only need to extrapolate for $x_{i}$ , do causal inference around (near) the threshold $x_{0}$ . Because by taking the limit we could find the approximation. 

Identification Assumption: Thus we need the covariate to be **continuous**!

Consider the function that we regress:

$$
Y_{i} = \alpha + \beta x_{i} + \rho D_{i} + \eta_{i}
$$

The only thing to be cared is that the relationship btw $x_{i}$ and $D_{i}$ . Here $D_{i}$ is not only correlated with $x_{i}$ , it is a deterministic function of $x_{i}$ .

除了用线性模型去拟合以外，我们还可以用非线性的模型去拟合，但是这个问题的缺陷就在于，如果你采取了一种没有那么灵活的策略去拟合，那就会带来**模型的 misspecification 可能在阈值处产生一个假的"跳跃"**，被你误认为是 treatment effect。

## Parametric RDD

最常见的错误就是只写了一个普通的 OLS 回归：

$$
Y_{i} = \alpha +\gamma D_{i} + X'\beta +\epsilon_{i}
$$

这缺少了 running variable 多项式，导致它只是一个普通的 [[Dummy Variable]] regression.

正确的 specification 应该是：

$$
Y_{i} = \alpha + \rho D_{i} + \sum_{k=1}^p \gamma_{k} \tilde{R}_{i}^k + \sum_{k=1}^p\delta_{k} D_{i} \cdot \tilde{R}_{i}^k + \epsilon_{i}
$$



Also see [[Nonparametric RDD]]


- [[Manipulation in RDD]]


---

## Reference

 这条笔记主要会使用 `EC423 Topic 2` 作为参考资料。