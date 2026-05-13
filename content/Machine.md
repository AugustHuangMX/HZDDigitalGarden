# EC484: Econometric Analysis

# Machine Learning

Taisuke Otsu

London School of Economics

2025/6

# Contents

1. Model selection   
2. Ridge regression   
3. Lasso   
4. Econometric applications

# Reference

• Hansen-B, Ch. 28.1-18, 28.26-31, and Ch. 29

# 1. Model selection

# Model selection

• In practice we may have many candidate models (different model assumptions, covariates, functional forms, so on)   
• Several model selection methods are available. Basically they are derived from bias-variance trade-off consideration: Removing too many regressors can cause bias while adding too many regressors can cause larger variance

# Bias-variance trade-off

• For intuition, consider two estimators for K -dimensional parameters θ:   
• 1. θˆ with $\mathbb { E } [ \hat { \theta } ] = \theta$ and var[θˆ] = V   
• 2. θ˜ = 0   
• θˆ is unbiased but has some variance V. θ˜ has zero variance but is biased (unless $\theta = 0 ^ { \cdot }$ )   
• To compare accuracy, consider weighted MSE with weight V−1

$$
\begin{array}{l} \operatorname {w m s e} (\hat {\theta}) = \mathbb {E} [ (\hat {\theta} - \theta) ^ {\prime} \mathbf {V} ^ {- 1} (\hat {\theta} - \theta) ] = K \\ \operatorname {w m s e} (\tilde {\theta}) = \theta^ {\prime} \mathbf {V} ^ {- 1} \theta \equiv \lambda \\ \end{array}
$$

• So, if $\lambda < K$ (i.e. θ is close enough to 0), then $\tilde { \theta }$ has smaller wmse   
• λ is unknown but can be estimated by $\widehat { \lambda } = \widehat { \theta } ^ { \prime } \mathbf { v } ^ { - 1 } \widehat { \theta }$   
However, $\hat { \lambda }$ is biased estimator for $\lambda$ because (see PS)

$$
\mathbb {E} [ \hat {\lambda} ] = \mathbb {E} [ \hat {\theta} ^ {\prime} \mathbf {V} ^ {- 1} \hat {\theta} ] = \lambda + K
$$

which suggests unbiased estimator $\tilde { \lambda } = \hat { \lambda } - K$

• Feasible selection rule would be

use θˆ if $\hat { \lambda } > 2 K$ and use θ˜ otherwise

• Comparing MSE of different estimators typically involves bias-variance trade-off   
• More complicated models exhibit less bias but increased estimation variance   
Actual trade-off is unknown because bias depends on unknown true parameters. By estimating bias, we obtain empirical estimates of MSE or empirical model selection rules

# Akaike information criterion (AIC)

Let $\hat { \boldsymbol f } ( \boldsymbol y )$ be estimator for unknown true density g(y)   
• AIC estimates distance between $\hat { \boldsymbol { f } }$ and g based on Kullback-Leibler divergence (KLIC)

$$
\begin{array}{l} \operatorname {K L I C} (g, \hat {f}) = \int \log \left(\frac {g (y)}{\hat {f} (y)}\right) g (y) d y \\ = \int \log (g (y)) g (y) d y - \int \log (\hat {f} (y)) g (y) d y \\ \end{array}
$$

• $\mathrm { K L I C } ( g , { \hat { f } } ) = 0$ if $\boldsymbol { g } = \hat { \boldsymbol { f } }$ . Also Jensen’s inequality yields $\mathrm { K L I C } ( g , { \hat { f } } ) \geq 0$

• Minimizing KLIC is equivalent to minimizing $\begin{array} { r } { - 2 \int \log ( \hat { \hat { f } } ( y ) ) g ( y ) d y } \end{array}$ , which is random   
• Suppose $\hat { \boldsymbol f } ( \boldsymbol y )$ is given by some parametric model $f ( y ; { \hat { \theta } } )$ where $\hat { \boldsymbol { \theta } } = \arg \operatorname* { m i n } _ { \boldsymbol { \theta } } \boldsymbol { \ell } ( \boldsymbol { \theta } )$ is MLE with $\begin{array} { r } { \ell ( \theta ) = { \frac { 1 } { n } } \sum _ { i = 1 } ^ { n } \log f ( y ; \theta ) } \end{array}$   
• AIC is estimator of −2E hR log(fˆ(y ))g (y )dy i, that is

$$
\mathrm {A I C} = - 2 \ell (\hat {\theta}) + 2 K
$$

• Another popular rule is BIC (Bayesian information criterion) which minimizes

$$
\mathrm {B I C} = - 2 \ell (\hat {\theta}) + K \log n
$$

2nd terms are interpreted as over-parametrization penalties

# Cross validation criterion

• Alternative idea is cross validation, which leaves one observation out   
• Again for linear regression, let $\hat { \beta } _ { ( - i ) }$ is OLS estimator computed omitting i-th observation   
• Then prediction error for i -th observation is ˜ei = Yi − X ′i βˆ(−i). Cross validation estimates MSFE as

$$
\mathrm {C V} = \frac {1}{n} \sum_ {i = 1} ^ {n} \tilde {e} _ {i} ^ {2}
$$

# K -fold cross validation

• CV requires to compute estimator n times. Also CV tends to have large variance due to high correlation of ˜ei’s   
• Modification of CV is K-fold cross validation (typically K = 5 or 10)   
• 1. Randomly split data into K-folds with equal size. Let $I _ { k }$ be observations in fold $k$ of size $n _ { k }$   
2. For each $k = 1 , \ldots , K$ , exclude $I _ { k }$ and compute $\hat { \beta } _ { ( - k ) }$ . Then compute prediction errors $\tilde { \pmb { e } } _ { i } = Y _ { i } - X _ { i } ^ { \prime } \hat { \beta } _ { ( - k ) }$ for i ∈ Ik   
• 3. Compute $\begin{array} { r } { \mathrm { C V } _ { k } = n _ { k } ^ { - 1 } \sum _ { i \in I _ { k } } \tilde { e } _ { i } ^ { 2 } } \end{array}$ and aggregate

$$
\mathrm {C V} = \frac {1}{K} \sum_ {k = 1} ^ {K} \mathrm {C V} _ {k}
$$

# Example: Return to experience

• CPS dataset, subsample of Asian women with $n = 1 1 4 9$ . Y = log(wage). All include indicator for married and three indicators for region. Models range in complexity of education and experience

<table><tr><td></td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td></tr><tr><td>Return</td><td>13%</td><td>22%</td><td>20%</td><td>29%</td><td>40%</td></tr><tr><td>se</td><td>7</td><td>8</td><td>7</td><td>11</td><td>11</td></tr><tr><td>BIC</td><td>956</td><td>907</td><td>924</td><td>964</td><td>913</td></tr><tr><td>AIC</td><td>915</td><td>861</td><td>858</td><td>914</td><td>858</td></tr><tr><td>CV</td><td>405</td><td>387</td><td>386</td><td>405</td><td>385</td></tr><tr><td>Educ</td><td>college</td><td>spline</td><td>dummy</td><td>college</td><td>spline</td></tr><tr><td>Exper</td><td>2</td><td>2</td><td>2</td><td>4</td><td>4</td></tr></table>

• college means single dummy, dummy means six dummies, exper includes up to power 2, 4 and 6

<table><tr><td></td><td>6</td><td>7</td><td>8</td><td>9</td></tr><tr><td>Return</td><td>37%</td><td>33%</td><td>47%</td><td>45%</td></tr><tr><td>se</td><td>11</td><td>17</td><td>18</td><td>17</td></tr><tr><td>BIC</td><td>931</td><td>977</td><td>925</td><td>943</td></tr><tr><td>AIC</td><td>855</td><td>916</td><td>860</td><td>857</td></tr><tr><td>CV</td><td>385</td><td>406</td><td>387</td><td>386</td></tr><tr><td>Educ</td><td>dummy</td><td>college</td><td>spline</td><td>dummy</td></tr><tr><td>Exper</td><td>4</td><td>6</td><td>6</td><td>6</td></tr></table>

• Estimates vary meaningfully (from 13% to 47%). Useful to examine different criteria. BIC picks smaller model and AIC & CV pick larger one

# Post-selection inference

• Consider two models

$$
M _ {1}: Y = X _ {1} \beta_ {1} + X _ {2} \beta_ {2} + e
$$

$$
M _ {2} \quad : \quad Y = X _ {1} \beta_ {1} + e
$$

where $\left( \begin{array} { l } { X _ { 1 } } \\ { X _ { 2 } } \end{array} \right) \sim \mathrm { N } \left( \left( \begin{array} { l } { 0 } \\ { 0 } \end{array} \right) , \left( \begin{array} { l l } { 1 } & { \rho } \\ { \rho } & { 1 } \end{array} \right) \right) \mathrm { ~ a n c }$ d e ∼ N(0, 1)

• Conduct inference on $\beta _ { 1 }$ based on two-step procedure   
• 1. Do t-test for H0 : β2 = 0 by M1 at 5% significance level   
• 2. If rejected, compute $9 5 \%$ confidence interval for $\beta _ { 1 }$ by $M _ { 1 }$ Otherwise do it by $M _ { 2 }$

• See Hansen-B, Ch. 28.17 for simulation results on coverage probabilities for $n = 3 0$ and different values of $\rho$ and $\beta _ { 2 }$   
• When $\rho$ is large and $\beta _ { 2 }$ takes intermediate values, coverage is severely distorted. For $\rho = . 5$ , coverage falls to $8 8 \%$ . For $\rho = . 8$ , falls to 62%   
• Intuitively for intermediate values of $\beta _ { 2 }$ , t-value selects both models with meaningful probability and this selection decision $\mathbb { I } \{ | t _ { \hat { \beta } _ { 2 } } | > 1 . 9 6 \}$ is correlated with t-value $t _ { \hat { \beta } _ { 1 } }$ for $\beta _ { 1 }$   
• In this example, selection was made by t-value but same issue applies to other model selection criteria

# 2. Ridge regression

# High dimensional regression

• Consider linear regression model

$$
Y = X ^ {\prime} \beta + e
$$

where $X$ is $p \times 1$ . Methods so far are mainly designed for relatively small number of regressors in the sense that $p < n$

• Now let us consider high dimensional regression where $p$ could be much larger than n   
• If $p > n$ , X′X is not invertible and OLS estimator is not defined

# Notation: p-norms

• For vector $\pmb { a } = ( a _ { 1 } , \ldots , a _ { k } ) ^ { \prime }$ , p-norm is defined as

$$
\left\| a \right\| _ {p} = \left(\sum_ {j = 1} \left| a _ {j} \right| ^ {p}\right) ^ {1 / p}
$$

• Let

$$
\left\| a \right\| _ {1} = \sum_ {j = 1} ^ {k} | a _ {j} | \quad (1 - \text {n o r m})
$$

$$
\left\| \boldsymbol {a} \right\| _ {2} = \left(\sum_ {j = 1} ^ {k} a _ {j} ^ {2}\right) ^ {1 / 2} \quad (2 - \text {n o r m})
$$

$$
\| a \| _ {\infty} = \max  _ {1 \leq j \leq k} | a _ {j} | \quad (\sup  - \text {n o r m})
$$

$$
\| a \| _ {0} = \sum_ {j = 1} ^ {k} \mathbb {I} \{a _ {j} \neq 0 \} \quad (0 - \text {n o r m})
$$

# Ridge estimator

• One way to estimate $\beta$ when X′X is singular (due to $p > n \}$ ) or nearly singular (due to high multicollinearity) is to use ridge estimator

$$
\hat {\beta} _ {R} = \left(\mathbf {X} ^ {\prime} \mathbf {X} + \lambda \mathbf {I} _ {p}\right) ^ {- 1} \mathbf {X} ^ {\prime} \mathbf {Y}
$$

where $\lambda > 0$ is called ridge parameter

• $\hat { \beta } _ { R }$ is well-defined even if X′X is singular (because eigenvalues of ${ \pmb { \mathrm { X } } } ^ { \prime } { \pmb { \mathrm { X } } } + \lambda { \pmb { \mathrm { I } } } _ { p }$ are eigenvalues of X′X plus λ)   
Note that $\hat { \beta } _ { R }$ is derived from penalized least squares by 2-norm

$$
\min  _ {\beta} \| \mathbf {Y} - \mathbf {X} \boldsymbol {\beta} \| _ {2} + \lambda \| \boldsymbol {\beta} \| _ {2}
$$

• Penalization regularizes estimates not too large or erratic

• Also $\hat { \beta } _ { R }$ is derived from constrained least squares

$$
\min  _ {\beta^ {\prime} \beta \leq \tau} \| \mathbf {Y} - \mathbf {X} \boldsymbol {\beta} \| _ {2}
$$

for some $\tau > 0$ (because FOC by Lagrangean will be same)

• λ may be chosen by cross validation, i.e. minimize $\Sigma _ { i = 1 } ^ { n } \tilde { e } _ { i } ( \lambda ) ^ { 2 }$ with $\tilde { e } _ { i } ( \lambda ) = Y _ { i } - X _ { i } ^ { \prime } \hat { \beta } _ { R ( - i ) } ( \lambda )$ , where ${ \hat { \beta } } _ { R ( - i ) } ( \lambda )$ is ridge estimator at $\lambda$ omitting i-th observation

# Property of ridge estimator

• Consider linear regression model

$$
Y = X ^ {\prime} \beta + e, \qquad \mathbb {E} [ e | X ] = 0
$$

• Since

$$
\hat {\beta} _ {R} = \left(\mathbf {X} ^ {\prime} \mathbf {X} + \lambda \mathbf {I} _ {p}\right) ^ {- 1} \mathbf {X} ^ {\prime} \mathbf {X} \boldsymbol {\beta} + \left(\mathbf {X} ^ {\prime} \mathbf {X} + \lambda \mathbf {I} _ {p}\right) ^ {- 1} \mathbf {X} ^ {\prime} \mathbf {e}
$$

bias is

$$
\mathbb {E} [ \hat {\beta} _ {R} | \mathbf {X} ] - \beta = - \lambda (\mathbf {X} ^ {\prime} \mathbf {X} + \lambda \mathbf {I} _ {p}) ^ {- 1} \beta
$$

and variance is

$$
\mathrm {v a r} [ \hat {\beta} _ {R} | \mathbf {X} ] = (\mathbf {X} ^ {\prime} \mathbf {X} + \lambda \mathbf {I} _ {p}) ^ {- 1} \mathbf {X} ^ {\prime} \mathbf {D} \mathbf {X} (\mathbf {X} ^ {\prime} \mathbf {X} + \lambda \mathbf {I} _ {p}) ^ {- 1}
$$

with $\mathbf { D } = \mathrm { d i a g } ( \sigma ^ { 2 } ( X _ { 1 } ) , \ldots , \sigma ^ { 2 } ( X _ { n } ) )$ and $\sigma ^ { 2 } ( X ) = \mathbb { E } [ e ^ { 2 } | X ]$

• Indeed we can compare MSE

$\mathrm { m s e } ( { \hat { \beta } } | \mathbf { X } ) = \mathbb { E } [ ( { \hat { \beta } } - \beta ) ( { \hat { \beta } } - \beta ) ^ { \prime } | \mathbf { X } ]$ for OLS and ridge

• Theorem: If $0 < \lambda < 2 \operatorname* { m i n } _ { x } \sigma ^ { 2 } ( x ) / \beta ^ { \prime } \beta$ , then

$$
\operatorname {m s e} \left(\hat {\beta} _ {R} | \mathbf {X}\right) <   \operatorname {m s e} \left(\hat {\beta} _ {\mathrm {o l s}} | \mathbf {X}\right)
$$

(see PS for proof)

# 3. Lasso

# Lasso

• Ridge uses 2-norm penalization   
• On the other hand, model selection (e.g. AIC or BIC) basically uses 0-norm   
Intermediate case uses 1-norm, i.e.

$$
\hat {\beta} _ {L} = \arg \min  _ {\boldsymbol {\beta}} \| \mathbf {Y} - \mathbf {X} \boldsymbol {\beta} \| _ {2} + \lambda \| \boldsymbol {\beta} \| _ {1}
$$

which is called Lasso (least absolute shrinkage and selection operator)

• $\hat { \beta } _ { L }$ is well-defined even for $p > n$ but has no explicit solution in general

• Lasso is also obtained by dual problem

$$
\min_{\| \boldsymbol {\beta}\|_{1}\leq \tau}\| \mathbf{Y} - \mathbf{X}\boldsymbol {\beta}\|_{2}
$$

• Both minimizations yield same FOC

$$
- 2 \mathbf {X} _ {j} ^ {\prime} (\mathbf {Y} - \mathbf {X} \hat {\beta} _ {L}) + \lambda \mathrm {s g n} (\hat {\beta} _ {L, j}) = 0
$$

for $j = 1 , \dotsc , p$

• In contrast to ridge, Lasso typically sets some coefficients at 0 (draw figure for intuition)

# Special case

When $\mathbf { X } ^ { \prime } \mathbf { X } = \mathbf { I } _ { p }$ , FOC simplifies to

$$
- 2 (\hat {\beta} _ {O L S, j} - \hat {\beta} _ {L, j}) + \lambda \mathrm {s g n} (\hat {\beta} _ {L, j}) = 0
$$

which has explicit solution

$$
\hat {\beta} _ {L, j} = \left\{ \begin{array}{c l} \hat {\beta} _ {O L S, j} - \lambda / 2 & \text {i f} \hat {\beta} _ {O L S, j} > \lambda / 2 \\ 0 & \text {i f} | \hat {\beta} _ {O L S, j} | \leq \lambda / 2 \\ \hat {\beta} _ {O L S, j} + \lambda / 2 & \text {i f} \hat {\beta} _ {O L S, j} <   - \lambda / 2 \end{array} \right.
$$

• In contrast

$$
\hat {\beta} _ {R} = (1 + \lambda) ^ {- 1} \hat {\beta} _ {O L S}, \quad \hat {\beta} _ {S, j} = \mathbb {I} \{\left| \hat {\beta} _ {O L S, j} \right| > c \} \hat {\beta} _ {O L S, j}
$$

• Draw figure to compare and get intuition (Lasso is soft thresholding)

# Computation of Lasso

• For Lasso, penalty $\lambda$ is commonly chosen by K-fold cross validation   
• For computation, lasso and lassopack are available in Stata, and glmnet is available in R

# Property of Lasso

• Consider projection model

$$
Y = X ^ {\prime} \beta + e, \qquad \mathbb {E} [ X e ] = 0
$$

• Under certain conditions (see Ch. 29.11, Hansen-B) with $\lambda = C \sqrt { n \log p }$ , for some D

$$
\left\| \hat {\beta} _ {L} - \beta \right\| _ {1} \leq D \left\| \beta \right\| _ {0} \sqrt {\frac {\log p}{n}}
$$

with probability arbitrarily close to 1

Note that $\| \beta \| _ { 0 }$ is number of non-zero coefficients   
• If $\| \beta \| _ { 0 }$ is finite, 

βˆL − β

 p→ 0 even if $p$ is exponentially large (as far as p = o(exp n))   
Moreover even for growing $\| \beta \| _ { 0 }$ , as far as its growth rate is sufficiently slow relative to $p$ (called sparsity condition), we can allow $p$ much larger than $^ { n }$

# 4. Econometric applications

# Lasso IV

• Consider IV regression model

$$
Y = X ^ {\prime} \beta + e, \quad \mathbb {E} [ e | Z ] = 0
$$

with reduced form

$$
X = \Gamma^ {\prime} Z + U, \qquad \mathbb {E} [ U | Z ] = 0
$$

. X is $k \times 1$ and $k$ is fixed. On the other hand we have many IVs, i.e. $Z$ is $p \times 1$ and $p$ could be much larger than n

• Lasso IV estimator replaces 1st stage regression with Lasso   
• For each $X _ { j } = \gamma _ { j } ^ { \prime } Z + U _ { j }$ , do Lasso regression. Then we get fitted values

$$
\hat {\mathbf {X}} _ {L} = \mathbf {Z} \hat {\Gamma} _ {L}
$$

• Lasso IV estimator is

$$
\hat {\beta} _ {L I V} = \left(\hat {\mathbf {X}} _ {L} ^ {\prime} \mathbf {X}\right) ^ {- 1} \left(\hat {\mathbf {X}} _ {L} ^ {\prime} \mathbf {Y}\right)
$$

Under certain conditions including

$$
\| \Gamma \| _ {0} \frac {\log p}{\sqrt {n}} \rightarrow 0
$$

this estimator is consistent and asymptotically normal

$$
\left(\mathbf {Q} ^ {- 1} \Omega \mathbf {Q} ^ {- 1}\right) \sqrt {n} \left(\hat {\beta} _ {L I V} - \beta\right) \xrightarrow {d} N (0, \mathbf {I} _ {k})
$$

where Q = Γ′E[ZZ′]Γ and Ω = Γ′E[e2ZZ′]Γ

• If Γ is sparse (i.e. ∥Γ∥0 grows slowly), $p$ can be much larger than n   
See Hansen-B, Ch. 29.23 for detail

# Inference on low-dimensional parameter

• Consider regression model

$$
Y = D \theta + X ^ {\prime} \beta + e, \quad \mathbb {E} [ e | D, X ] = 0
$$

where $D$ is scalar and $X$ is $p \times 1$ . θ is parameter of interest and $X$ are high dimensional controls

• If X is low-dimension, we can do OLS. Note that $\hat { \theta } _ { O L S }$ is given by residual regression (Frisch-Waugh-Lovell theorem)   
• We can do something similar by Lasso and indeed it gives us good estimator for θ

• To proceed, we introduce additional regression model for D

$$
D = X ^ {\prime} \gamma + V, \qquad \mathbb {E} [ V | X ] = 0
$$

By inserting this into original regression

$$
\begin{array}{l} Y = X ^ {\prime} (\gamma \theta + \beta) + e + V \theta \\ \equiv X ^ {\prime} \eta + U, \quad \mathbb {E} [ U | X ] = 0 \\ \end{array}
$$

where $\eta = \gamma \theta + \beta$ and $U = e + V \theta$

• Take E[·|X ] for both sides of $Y = D \theta + X ^ { \prime } \beta +$ e and subtract. Then

$$
(Y - \mathbb {E} [ Y | X ]) = (D - \mathbb {E} [ D | X ]) \theta + e
$$

or

$$
(Y - X ^ {\prime} \eta) = (D - X ^ {\prime} \gamma) \theta + e
$$

• So if we know $\eta$ and $\gamma$ , $\theta$ can be simply estimated by OLS from $( Y - X ^ { \prime } \eta )$ on $( D - X ^ { \prime } \gamma )$ (say θˆideal)   
• Partialling-out Lasso estimator is obtained by estimating $\eta$ and $\gamma$ by Lasso

# Partialling-out Lasso

• 1. Do Lasso regression from D on X , and get residual Vˆi = Di − X ′i γˆL   
• 2. Do Lasso regression from Y on X , and get residual $\hat { U } _ { i } = Y _ { i } - X _ { i } ^ { \prime } \hat { \eta } _ { L }$   
3. Do OLS from Uˆi on $\hat { V } _ { i }$ to get partialling-out Lasso estimator θˆP   
• 4. Compute conventional standard error for θˆP

• Under certain conditions including

$$
\left(\| \beta \| _ {0} + \| \gamma \| _ {0}\right) \frac {\log p}{\sqrt {n}} \rightarrow 0
$$

indeed $\hat { \theta } _ { P }$ has same asymptotic distribution as infeasible version θˆideal, i.e.

$$
\sqrt {n} \left(\hat {\theta} _ {P} - \theta\right) \xrightarrow {d} N \left(0, \mathbb {E} \left[ V ^ {2} \right] ^ {- 2} \mathbb {E} \left[ e ^ {2} V ^ {2} \right]\right)
$$

In this sense, estimation errors of Lasso estimators $\hat { \gamma } _ { L }$ and ˆηL are asymptotically negligible   
See Hansen-B, Ch. 29.23 for detail

# Intuition

• To get intuition for this remarkable result, compare moment condition for original regression

$$
0 = \mathbb {E} [ D (Y - D \theta - X ^ {\prime} \beta) ] \equiv m (\theta , \beta)
$$

and partialling-out version

$$
\begin{array}{l} 0 = \mathbb {E} \left[ \left(D - X ^ {\prime} \gamma\right) \left\{\left(Y - X ^ {\prime} \eta\right) - \left(D - X ^ {\prime} \gamma\right) \theta \right\} \right] \\ = \mathbb {E} \left[ (D - X ^ {\prime} \gamma) \left\{\left(Y - D \theta - X ^ {\prime} \beta \right\} \right] \equiv m _ {P} (\theta , \beta) \right. \\ \end{array}
$$

Impact of inclusion/exclusion of $X$ caused by Lasso may be analyzed by derivative with respect to $\beta$   
Although original moment is sensitive in sense of $\partial m ( \theta , \beta ) / \partial \beta ^ { \prime } = - \mathbb { E } [ D X ^ { \prime } ] \neq 0$ , partialling-out version is not because

$$
\frac {\partial m _ {P} (\theta , \beta)}{\partial \beta^ {\prime}} = - \mathbb {E} [ V X ^ {\prime} ] = 0
$$