# Chapter 1 Introduction and Review of Probability Theory

1. Describe the definition of Cumulative Distribution Function (CDF)
2. The definition of mode, median
3. The expectation of a random variable $X$ is the ___ of all its possible outcomes 
4. For a continuous random variable $X$ with probability density function $f(x)$, what is the expectation of $X$ is defined as?
5. The drawback of the mean.
6. When could mode = median = mean?
7. How to calculate $E(g(X))$ ?
8. Recall the Question 7, suppose $E(X) = 5$, $Z=-3X+15$, calculate $E(Z)$.
9. Definition of *Variance*
10. Formula of variance in discrete case and continuous case
11. $Var(X)=5$ , $Z=-3X+15$, what is $Var(Z)$
12. How to prove $Var(X)=E(X^2)-E(X)^2$
13. What is the standard deviation $\sigma _X$ 
14. Moments
15. What is an estimate?
16. What is an estimator?
17. 

# Chapter 2 

1. What is sample mean?
2. What is sample variance?
3. What is sample covariance?
4. What is sample correlation?
5. What does LLN ([[Law of Large Numbers]]) mean?
6. 

# Chapter 3 

1. What does consistency in OLS mean?
2. The OLS Estimator of the slope for the simple regression model is
3. Why we can't use  $\sum(Y_i - \hat \beta_0 -\hat \beta_1 X_i)$ min to make the model more precise?
4. 

# Chapter 4

1. What does [[VIF]] maen?


# Chapter 5 Time Series Analysis

1. What is lagged value?
2. What is forward value?
3. Why we use logarithms to analysis the problem?
4. The standard deviation of the logarithm of the series is approximately ___ .
5. 

# Chapter 6 Instrumental Variables Regression




# TA 课

1. 关注每个**Recap Question**!
2. 无偏（1-4）
3. 效率（5-6）
4. OVB Multicollinearity (Recap)
5. 2022 年 T 3 **Iterative Resubstitution** 超级重要
6. 内生性问题，超级重要
7. Omitted Variable 定义？如何解决？OLS，
8. [[Instrumental Variable]] 2 SLS（尤其重要，这两步分别在做什么？）
9. 不太可能会在选择题出现 table 直接开始分析
10. 关注 $J-test$
11. Measurement Error 指在收集过程中就已经出错了，（sample 本身有问题）（在火车上统计春运买到票的）

## 关于 Computation Question

1. 会和 Assignment 比较像
2. Confidence Interval 必考
3. 如何判断是否显著？1. 查 t 表，括号里是 error，拿着自己的 sample size 去看自己是否
4. Clustered Standard Error
5. 稳健？

# 关于考试本身
1. 今年考试难度不会超过这个
2. 分数会给的很松
3. OLS Consistency / Esimation





# Answer 

# Chapter 5

1. $Y_{t-j}$ is called the jth lagged value
2. $Y_{t+j}$ is called the jth forward value
3. Logarithm of the series grows approximately linearly. Another reason is that the standard deviation of many economic time series is approximately proportional to its level; that is, the standard deviation is well expressed as a percentage of the level of the series.
4. Constant



OLS Estimation of general time series
P 16 页 ADL 这个 model ADL 有啥用
P 17 页 optimization RSS 是啥（估计误差平方和？
P 36 oracle forecast 是啥该怎么用的
P 39 那两个 MSFE 的方法 RSS 是什么
P 42 dynamic causal effect
P 46 这个 dynamic effect 和 immediate effect 分不清该怎么解释 coefficient
P 50 这个 variance 怎么来的啊前面估计了贝塔1
P 51 Naive estimator
P 52 Newey-west robust standard error 完全看不懂在干嘛