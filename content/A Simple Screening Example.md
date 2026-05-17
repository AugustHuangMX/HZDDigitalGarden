#Econ/Micro #LSE/EC487_Advanced_Microeconomics 

## Background

See [[Asymmetric Information]] and [[Mechanism Design]] .

---

How should a seller sell to a buyer with an unknown marginal willingness to pay?

Suppose the buyer has the preferences

$$
\theta q-p
$$

where $\theta > 0$ is the buyer’s marginal value, $q \geqslant 0$ is the quantity purchased, and $p$ is the total price paid. The type $\theta$ is the buyer’s private information.

The seller has costs given by the increasing convex function $c ( q )$ , satisfying $c ^ { \prime } ( 0 ) = 0$ , $c ^ { \prime \prime } \geqslant 0$ and $\begin{array} { r } { \operatorname* { l i m } _ { q \to \infty } c ^ { \prime } ( q ) = \infty } \end{array}$ .

>  Benchmark: If the seller **knew** the value of $\theta$ , then he would set exactly $p = \theta q$ and choose a certain $q$ (or $p$ ) to maximize $p - c(q)$ .

But how if seller **doesn't know** the value of $\theta$ ? We need to involve expectation. And that's where we introduce **virtual value**.

## A Binary case

先考虑一个最简单的情形：假设 agent 的 type 只可能有 $\theta_{L}$ 和 $\theta_{H}$ .成为 $\theta_{H}$ 的可能性是 $\alpha_{H}$。

对于卖家来说，它想要完成的是：

$$
\max_{q_{H},q_{L},p_{H},p_{L}} \alpha_L (p_{L}-c(q_{L})) + \alpha_{H} (p_{H} - c(q_{H}))
$$

subject to

$$
\begin{align}
\theta_{L} q_{L} - p_{L}  & \geq \theta_{L}q_{H} - p_{H} \quad (IC_{L}) \\
\theta_{H} q_{H} - p_{H}  & \geq \theta_{H}q_{L} - p_{L} \quad (IC_{H}) \\
\theta_{L} q_{L} - p_{L}  & \geq 0  \quad (IR_{L}) \\
\theta_{H} q_{H} - p_{H}  & \geq 0 \quad (IR_{H})
\end{align}
$$







$1-F(\theta)$ measures the amount people who are above the $\theta$ . And $f(\theta)$ measures the weight (how many "me" here in the market). This is an inevitable distortion compared with the *First-best objective*.