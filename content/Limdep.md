# EC484: Econometric Analysis

# Limited Dependent Variables

# Taisuke Otsu

London School of Economics

2025/6

# Contents

1. Maximum likelihood   
2. Binary dependent variable   
3. Multinomial dependent variable   
4. Censored dependent variable   
5. Truncated dependent variable   
6. Sample selection   
$7 .$ Further topics

# 1. Maximum likelihood

# ML

• Advantage: Wide applicability (binary data, count data, panel data, duration models, etc.). ML can handle complicated data & economic models   
• Disadvantage: Strong distributional assumption (trade-off between efficiency & robustness. If the distribution is true, MLE is efficient. If not, MLE could be inconsistent)

• Joint pdf or pmf (mass function) for iid data $\mathbf { Z } = ( Z _ { 1 } , \ldots , Z _ { n } ) ^ { \prime }$ with parameters θ

$$
L (\mathbf {Z}, \theta) = \prod_ {i = 1} ^ {n} f (Z _ {i}, \theta)
$$

. Two interpretations of $L ( \mathbf { Z } , \theta )$

1. (Pdf or pmf) As a function of Z, $L ( \mathbf { Z } , \theta )$ describes the distribution form of Z   
2. (Likelihood) As a function of θ, $L ( \mathbf { Z } , \theta )$ is called likelihood telling which value of $\theta$ is likely given data

• Take the second interpretation. Log-likelihood function is

$$
Q _ {n} (\theta) = \frac {1}{n} \sum_ {i = 1} ^ {n} \log f (Z _ {i}, \theta)
$$

Maximum likelihood estimator is

$$
\hat {\theta} = \arg \max  _ {\theta} Q _ {n} (\theta) = \arg \max  _ {\theta} \frac {1}{n} \sum_ {i = 1} ^ {n} \log f (Z _ {i}, \theta)
$$

Note: $f ( Z _ { i } , \theta )$ can be conditional density $f ( Y _ { i } | X _ { i } , \theta )$

# Consistency

• Theorem: Suppose

(i) $\{ Z _ { i } \} _ { i = 1 } ^ { n }$ is iid with pdf $f ( z , \theta _ { 0 } )$   
For any $\theta \neq \theta _ { 0 }$ on $\Theta$ , f (z , θ) ̸= f (z , θ0)   
(ii) Θ is compact   
(iii) For almost every z, log $f ( z , \theta )$ is continuous at each θ ∈ Θ   
$\begin{array} { r } { \left( \mathfrak { i } \lor \right) \mathbb { E } [ \mathsf { s u p } _ { \theta \in \Theta } | \log f ( Z , \theta ) | ] < \infty } \end{array}$

Then

$$
\hat {\theta} \xrightarrow {p} \theta_ {0}
$$

# Asymptotic normality

• Theorem: Suppose Assumptions for Theorem (Consistency of MLE) are satisfied. Additionally assume

(i) $\theta _ { 0 } \in \mathrm { i n t } \Theta$   
(ii) For almost every $z$ , $f ( z , \theta )$ is twice continuously differentiable and $f ( z , \theta ) > 0$ in a neighborhood $\mathcal { N }$ of θ0   
(iii) $\begin{array} { r l } & { \mathbb { E } \left[ \left| \frac { \partial \log f ( Z , \theta _ { 0 } ) } { \partial \theta } \right| ^ { 2 } \right] < \infty \ \mathsf { a n d } } \\ & { \mathbb { E } \left[ \mathsf { s u p } _ { \theta \in \mathcal { N } } \left| \frac { \partial ^ { 2 } \log f ( Z , \theta ) } { \partial \theta \partial \theta ^ { \prime } } \right| \right] < \infty } \end{array}$ E   ∂ log f (Z ,θ 0 )∂ θ  2  < ∞ and   
$\begin{array} { r } { \mathrm { ( i v ) } ~ J = \mathbb { E } \left[ \frac { \partial \log f ( Z , \theta _ { 0 } ) } { \partial \theta } \frac { \partial \log f ( Z , \theta _ { 0 } ) } { \partial \theta ^ { \prime } } \right] } \end{array}$ is nonsingular

Then

$$
\sqrt {n} \left(\hat {\theta} - \theta_ {0}\right) \xrightarrow {d} \mathrm {N} \left(0, J ^ {- 1}\right)
$$

# Intuition

• Since $\begin{array} { r } { J = - H = - \mathbb { E } \left[ \frac { \partial ^ { 2 } \log f ( Z , \theta _ { 0 } ) } { \partial \theta \partial \theta ^ { \prime } } \right] } \end{array}$ (information matrix equality), asymptotic distribution may be written as

$$
\sqrt {n} (\hat {\theta} - \theta_ {0}) \stackrel {d} {\rightarrow} \mathrm {N} \left(0, - \mathbb {E} \left[ \frac {\partial^ {2} \log f (Z , \theta_ {0})}{\partial \theta \partial \theta^ {\prime}} \right] ^ {- 1}\right)
$$

Intuitively asymptotic variance of MLE is determined by expected curvature of likelihood function   
• More curvature around $\theta _ { 0 }$ yields smaller variance (likelihood is informative)   
• Less curvature around $\theta _ { 0 }$ yields larger variance (likelihood is not informative)

# Asymptotic variance estimation

Asymptotic variance estimator based on J

$$
\left(\frac {1}{n} \sum_ {i = 1} ^ {n} \frac {\partial \log f (Z _ {i} , \hat {\theta})}{\partial \theta} \frac {\partial \log f (Z _ {i} , \hat {\theta})}{\partial \theta^ {\prime}}\right) ^ {- 1}
$$

Asymptotic variance estimator based on H

$$
\left(- \frac {1}{n} \sum_ {i = 1} ^ {n} \frac {\partial^ {2} \log f (Z _ {i} , \hat {\theta})}{\partial \theta \partial \theta^ {\prime}}\right) ^ {- 1}
$$

• Usually the first estimator is employed because the second one tends to be singular

# Hypothesis testing

• Parameter hypotheses

$$
\mathbb {H} _ {0}: r \left(\theta_ {0}\right) = 0 \quad \text {v s .} \quad \mathbb {H} _ {1}: r \left(\theta_ {0}\right) \neq 0
$$

• Three test statistics

. Wald statistic   
Likelihood ratio statistic   
Score or Lagrange multiplier statistic

# Wald statistic

• Let

$$
\begin{array}{l} R (\theta) ^ {\prime} = \frac {\partial r (\theta)}{\partial \theta^ {\prime}} \\ J (\theta) = \frac {1}{n} \sum_ {i = 1} ^ {n} \frac {\partial \log f (Z _ {i} , \theta)}{\partial \theta} \frac {\partial \log f (Z _ {i} , \theta)}{\partial \theta^ {\prime}} \\ \end{array}
$$

• Wald statistic

$$
W = n r (\hat {\theta}) ^ {\prime} \left[ R (\hat {\theta}) ^ {\prime} J (\hat {\theta}) ^ {- 1} R (\hat {\theta}) \right] ^ {- 1} r (\hat {\theta})
$$

• J(θ) could be replaced with H(θ) = − 1n Pni=1 ∂2 log f (Zi ,θ)∂θ∂θ′ $\begin{array} { r } { H ( \theta ) = - \frac { 1 } { n } \sum _ { i = 1 } ^ { n } \frac { \partial ^ { 2 } \log f ( Z _ { i } , \theta ) } { \partial \theta \partial \theta ^ { \prime } } } \end{array}$

# Likelihood ratio & Score statistics

• Let

$$
\tilde {\theta} = \arg \max  _ {\theta} Q _ {n} (\theta) \quad \text {s . t .} r (\theta) = 0 \quad (\text {c o n s t r a i n e d M L E})
$$

Likelihood ratio statistic

$$
L R = 2 n \{Q _ {n} (\hat {\theta}) - Q _ {n} (\tilde {\theta}) \}
$$

• Score statistic

$$
S = n S (\tilde {\theta}) ^ {\prime} J (\tilde {\theta}) ^ {- 1} S (\tilde {\theta})
$$

where

$$
S (\theta) = \frac {\partial Q _ {n} (\theta)}{\partial \theta} = \frac {1}{n} \sum_ {i = 1} ^ {n} \frac {\partial \log f (Z _ {i} , \theta)}{\partial \theta} \quad \left(\text {c a l l e d s c o r e}\right)
$$

# Asymptotic properties

• Under H0

$$
W, S, L R \xrightarrow {d} \chi_ {\dim r} ^ {2}
$$

. Under H1

$$
W, S, L R \xrightarrow {p} + \infty
$$

• Also generally these statistics have same non-central $\chi ^ { 2 }$ distribution under local alternatives H $_ { 1 n } : r ( \theta _ { 0 } ) = c / \sqrt { n }$   
Thus these statistics are asymptotically equivalent

# Comparison of tests

• W needs θˆ (unrestricted estimator). S needs θ˜ (restricted estimator). LR needs both θˆ and θ˜. If it is difficult to compute $\hat { \theta }$ , S could be useful   
• When $r ( \cdot )$ is nonlinear, W is not invariant to its functional form. S and LR are invariant

# Asymptotic distribution under H0

• $W \stackrel { d } { \to } \chi _ { \sf d i m } ^ { 2 } r$ follows from same argument for Wald test of regression (see Sec. 5 & 6 of Regression slides)   
• Proof of $S \stackrel { d } { \to } \chi _ { \mathrm { d i m } r } ^ { 2 }$ can be found in e.g. Wooldridge (Econometric Analysis of Cross Section and Panel Data, Sec. 12.6.2)

# Asymptotic distribution of LR

Likelihood ratio statistic is

$$
\begin{array}{l} L R = 2 n \left\{Q _ {n} (\hat {\theta}) - Q _ {n} (\tilde {\theta}) \right\} \\ = - n (\tilde {\theta} - \hat {\theta}) ^ {\prime} H (\bar {\theta}) (\tilde {\theta} - \hat {\theta}) \\ \end{array}
$$

where 2nd equality follows from expansion of $Q _ { n } ( { \tilde { \theta } } )$ around θˆ and $\begin{array} { r } { \frac { \partial Q _ { n } ( \hat { \theta } ) } { \partial \theta } = 0 } \end{array}$ = 0 (FOC of MLE)

Also expansion of FOC ∂Qn(θˆ) = 0 around θ˜ yields $\begin{array} { r } { \frac { \partial Q _ { n } ( \hat { \theta } ) } { \partial \theta } = 0 } \end{array}$ $\tilde { \theta }$

$$
0 = S (\tilde {\theta}) + H (\dot {\theta}) (\hat {\theta} - \tilde {\theta})
$$

• Combining these results with information matrix equality H = −J,

$$
\begin{array}{l} L R = - n S (\tilde {\theta}) ^ {\prime} H (\dot {\theta}) ^ {- 1} H (\bar {\theta}) H (\dot {\theta}) ^ {- 1} S (\tilde {\theta}) \\ = n S (\tilde {\theta}) ^ {\prime} J (\tilde {\theta}) ^ {- 1} S (\tilde {\theta}) + o _ {p} (1) \\ \end{array}
$$

• Therefore, LR is asymptotically equivalent to S and

$$
L R = 2 n \left\{Q _ {n} (\hat {\theta}) - Q _ {n} (\tilde {\theta}) \right\} \xrightarrow {d} \chi_ {\dim r} ^ {2} \quad \text {u n d e r} \mathbb {H} _ {0}
$$

# Efficiency: Cram´er-Rao bound

• Variance matrix $J ^ { - 1 }$ emerges as smallest possible variance among unbiased estimators   
• Theorem: Assume model is correctly specified, support of X does not depend on θ, and $\theta _ { 0 } \in \mathrm { i n t } \Theta$ . If $\tilde { \theta }$ is unbiased, then

$$
\operatorname {v a r} [ \tilde {\theta} ] \geq (n J) ^ {- 1}
$$

• This is finite sample result (holds for each n). $( n J ) ^ { - 1 }$ is called Cram´er-Rao lower bound   
MLE attains the lower bound $J ^ { - 1 }$ in the limit

# Proof

• Let $\mathbf { x } = ( x _ { 1 } , \ldots , x _ { n } ) ^ { \prime }$ and X = (X1, . . . , Xn)′   
• Since $\tilde { \theta }$ is an estimator, it is a function of X and can be written as $\tilde { \theta } ( { \bf x } )$   
Since $\tilde { \theta } ( { \bf x } )$ is unbiased, it holds

$$
\theta = \int \tilde {\theta} (\mathbf {x}) f (\mathbf {x} | \theta) d \mathbf {x}
$$

for any θ

By taking derivative with respect to θ,

$$
\begin{array}{l} { I } { = } { \int \tilde { \theta } ( \mathbf { x } ) \frac { \partial f ( \mathbf { x } | \theta ) } { \partial \theta ^ { \prime } } d \mathbf { x } } \\ = \int \tilde {\theta} (\mathbf {x}) \frac {\partial \log f (\mathbf {x} | \theta)}{\partial \theta^ {\prime}} f (\mathbf {x} | \theta) d \mathbf {x} \\ \end{array}
$$

where I is unit matrix

• By evaluating this at $\theta _ { 0 }$ ,

$$
\begin{array}{l} I = \mathbb {E} \left[ \tilde {\theta} (\mathbf {X}) \frac {\partial \log f (\mathbf {X} | \theta_ {0})}{\partial \theta^ {\prime}} \right] \\ = \mathbb {E} \left[ \left\{\tilde {\theta} (\mathbf {X}) - \theta_ {0} \right\} \frac {\partial \log f (\mathbf {X} | \theta_ {0})}{\partial \theta^ {\prime}} \right] \\ \end{array}
$$

where 2nd equality follows from

$$
\mathbb {E} \left[ \frac {\partial \log f (\mathbf {X} | \theta_ {0})}{\partial \theta^ {\prime}} \right] = \int \frac {\partial f (\mathbf {x} | \theta_ {0})}{\partial \theta^ {\prime}} d \mathbf {x} = \frac {\partial}{\partial \theta^ {\prime}} \int f (\mathbf {x} | \theta_ {0}) d \mathbf {x} = 0
$$

• Thus

$$
\operatorname {v a r} \left( \begin{array}{c} \tilde {\theta} \\ \partial \log f (\mathbf {X} | \theta_ {0}) / \partial \theta^ {\prime} \end{array} \right) = \left( \begin{array}{c c} \operatorname {v a r} [ \tilde {\theta} ] & I \\ I & n J \end{array} \right)
$$

Since this matrix is positive semi-definite,

$$
A ^ {\prime} \left( \begin{array}{c c} \mathrm {v a r} [ \tilde {\theta} ] & I \\ I & n J \end{array} \right) A \geq 0
$$

for any matrix A

Now by setting $\begin{array} { r } { A = \binom { I } { - ( n J ) ^ { - 1 } } } \end{array}$ , we obtain conclusion as

$$
\operatorname {v a r} \left[ \tilde {\theta} \right] - (n J) ^ {- 1} \geq 0
$$

# 2. Binary dependent variable

# Examples

# Binary dummy data, such as

Employed or not   
Go to college or not   
Owner-occupied housing or rental housing   
• Use car or bus   
Loan application accepted or rejected

# Binary Y

• Binary dependent variable

$$
Y = 0 \text {o r} 1
$$

• We wish to explain behavior of Y by a vector of regressors X   
• Like regression, consider conditional mean $\mathbb { E } [ Y | X ]$ . For binary case,

$$
\begin{array}{l} \mathbb {E} [ Y | X ] = 1 \times \mathbb {P} [ Y = 1 | X ] + 0 \times \mathbb {P} [ Y = 0 | X ] \\ = \mathbb {P} [ Y = 1 | X ] \\ \end{array}
$$

i.e. modeling conditional mean $\mathbb { E } [ Y | X ]$ is equivalent to modeling conditional choice probability $\mathbb { P } [ Y = 1 | X ]$

# Index model

• Since it is probability, conditional mean must satisfy

$$
0 \leq \mathbb {E} [ Y | X ] = \mathbb {P} [ Y = 1 | X ] \leq 1
$$

• However, linear model $\mathbb { E } [ Y | X ] = X ^ { \prime } \beta$ can take values outside [0, 1]   
• Thus for choice probability, it is common to employ index model

$$
\mathbb {P} [ Y = 1 | X ] = G (X ^ {\prime} \beta)
$$

where G (·) is some known cdf (argument $X ^ { \prime } \beta$ is called index)

• By construction, $G ( X ^ { \prime } , \beta ) \in [ 0 , 1 ]$

# Latent variable model

Index model can be derived from latent variable model

$$
\begin{array}{l} Y = \mathbb {I} \{Y ^ {*} > 0 \} \\ Y ^ {*} = X ^ {\prime} \beta + e \quad e \sim G \\ \end{array}
$$

where e is independent of X , I{·} is indicator function and G is some known cdf

• We observe Y but do not observe $Y ^ { * }$   
• This model is useful for economic interpretation. $Y ^ { * }$ can be interpreted as latent utility. We observe $Y = 1$ if utility Y ∗ exceeds threshold 0

• Assume pdf of G is symmetric around zero. Then

$$
\begin{array}{l} \mathbb {P} [ Y = 1 | X ] = \mathbb {P} [ Y ^ {*} > 0 | X ] = \mathbb {P} [ e > - X ^ {\prime} \beta | X ] \\ = 1 - G \left(- X ^ {\prime} \beta\right) = G \left(X ^ {\prime} \beta\right) \\ \end{array}
$$

i.e. index model is implied

• To implement, need to specify functional form of G . Common choices are

$$
\begin{array}{l} \text {P r o b i t} \quad : \quad G (z) = \int_ {- \infty} ^ {z} \frac {1}{\sqrt {2 \pi}} e ^ {- \frac {a ^ {2}}{2}} d a \quad (\mathrm {N} (0, 1)) \\ \text {L o g i t}: \quad G (z) = \frac {\exp (z)}{1 + \exp (z)} \quad (\text {s t a n d a r d l o g i s t i c}) \\ \end{array}
$$

# Remark

• G cannot contain scale parameter   
• E.g. If $e = \sigma \varepsilon$ with $\varepsilon \sim \mathrm { N } ( 0 , 1 )$ , then for N(0, 1) cdf G

$$
\mathbb {P} [ Y = 1 | X ] = G \left(X ^ {\prime} \left(\frac {\beta}{\sigma}\right)\right)
$$

i.e. only ratio $\frac { \beta } { \sigma }$ is identified

• Same comment applies to logit

# ML

• Once we specify G , we can apply ML   
Index model says: for given X ,

$$
Y = \left\{ \begin{array}{l l} 1 & \text {w i t h p r o b a b i l i t y} G (X ^ {\prime} \beta) \\ 0 & \text {w i t h p r o b a b i l i t y} 1 - G (X ^ {\prime} \beta) \end{array} \right.
$$

• Conditional pmf of $Y | X = x$ is

$$
f (y | x, \beta) = G (x ^ {\prime} \beta) ^ {y} \{1 - G (x ^ {\prime} \beta) \} ^ {1 - y}
$$

• Thus, (conditional) log-likelihood function is

$$
Q _ {n} (\beta) = \frac {1}{n} \sum_ {i = 1} ^ {n} \left[ Y _ {i} \log G \left(X _ {i} ^ {\prime} \beta\right) + (1 - Y _ {i}) \log \left(1 - G \left(X _ {i} ^ {\prime} \beta\right)\right) \right]
$$

• By ML theory, $\hat { \beta } = \tt a r g m a x _ { \beta }  Q _ { n } ( \beta )$ $Q _ { n } ( \beta )$ is consistent and asymptotically normal

$$
\sqrt {n} \big (\hat {\beta} - \beta \big) \stackrel {d} {\to} \mathrm {N} (0, J ^ {- 1})
$$

where $\begin{array} { r } { J = \mathbb { E } \left[ \frac { g ( X ^ { \prime } \beta ) ^ { 2 } } { G ( X ^ { \prime } \beta ) \{ 1 - G ( X ^ { \prime } \beta ) \} } X X ^ { \prime } \right] } \end{array}$ and g is derivative of G

# Marginal effect

• Note: $\beta$ does not have a simple interpretation like regression models   
Marginal effect of $X _ { k }$ (k-th regressor) is

$$
\frac {\partial \mathbb {E} [ Y | X = x ]}{\partial x _ {k}} = \frac {\partial \mathbb {P} [ Y = 1 | X = x ]}{\partial x _ {k}} = g (x ^ {\prime} \beta) \beta_ {k}
$$

where $g ( \cdot )$ is pdf of G (·)

If $g ( \cdot ) > 0$ , sign of the marginal effect is same as sign of $\beta _ { k }$   
However, magnitude of marginal effect should be estimated by e.g. $g ( \bar { X } ^ { \prime } \hat { \beta } ) \hat { \beta } _ { k }$ or 1n Pni =1 g (X ′i βˆ)βˆk

# Semiparametric estimation

• To estimate index model, we need to specify G   
• However, economic theory is typically not informative enough to specify G . It is desirable to treat G as nonparametric   
Note that

$$
\mathbb {E} [ Y | X ^ {\prime} \beta = c ] = \mathbb {P} [ Y = 1 | X ^ {\prime} \beta = c ] = G (c)
$$

• Thus given $\beta$ , $G ( c )$ can be estimated by kernel regression from Y on $X ^ { \prime } \beta$

$$
\hat {G} (c) = \frac {\sum_ {j = 1} ^ {n} K \left(\frac {X _ {j} ^ {\prime} \beta - c}{h}\right) Y _ {j}}{\sum_ {j = 1} ^ {n} K \left(\frac {X _ {j} ^ {\prime} \beta - c}{h}\right)}
$$

• For each $i = 1 , \ldots , n$ , we can do kernel regression and estimate $\hat { G } ( X _ { 1 } ^ { \prime } \beta ) , \dots , \hat { G } ( X _ { n } ^ { \prime } \beta )$   
• Semiparametric likelihood function is

$$
Q _ {n} ^ {S P} (\beta) = \frac {1}{n} \sum_ {i = 1} ^ {n} \left[ Y _ {i} \log \hat {G} \left(X _ {i} ^ {\prime} \beta\right) + (1 - Y _ {i}) \log \left(1 - \hat {G} \left(X _ {i} ^ {\prime} \beta\right)\right) \right]
$$

• The semiparametric MLE is obtained as

$$
\tilde {\beta} = \arg \max  _ {\beta \in B} Q _ {n} ^ {S P} (\beta)
$$

where $B$ is some normalized parameter space (e.g. β1 = 1)

• $\tilde { \beta }$ is consistent and asymptotically normal (see Klein & Spady, 1993)

# Endogenous regressor

• Consider latent variable model for binary Y1

$$
{Y _ {1}} = {\mathbb {I} \{Y _ {1} ^ {*} > 0 \}}
$$

$$
{Y _ {1} ^ {*}} = {X ^ {\prime} \beta_ {1} + Y _ {2} \beta_ {2} + e _ {1}}
$$

where Y2 is continuous endogenous regressor generated by

$$
Y _ {2} = X ^ {\prime} \gamma_ {1} + Z ^ {\prime} \gamma_ {2} + e _ {2}
$$

• Assume: $( e _ { 1 } , e _ { 2 } )$ is independent of $( X , Z )$ and

$$
\left( \begin{array}{l} e _ {1} \\ e _ {2} \end{array} \right) \sim \mathrm {N} \left(\left( \begin{array}{l} 0 \\ 0 \end{array} \right), \left( \begin{array}{l l} 1 & \sigma_ {1 2} \\ \sigma_ {1 2} & \sigma_ {2} ^ {2} \end{array} \right)\right)
$$

• Y2 is endogenous if $\sigma _ { 1 2 } \neq 0$ . So, probit from Y1 on (X , Y2) is inconsistent   
• Key: Decompose e1 into two parts, projection onto e2 (endogenous component) and its error (exogenous component)   
• Due to normality, we can write

$$
e _ {1} = \rho e _ {2} + \epsilon
$$

where $\rho = \sigma _ { 1 2 } / \sigma _ { 2 } ^ { 2 }$ is projection coefficient and $\epsilon \sim \mathrm { N } ( 0 , \sigma _ { \epsilon } ^ { 2 } )$ with $\sigma _ { \epsilon } ^ { 2 } = 1 - \sigma _ { 1 2 } ^ { 2 } / \sigma _ { 2 } ^ { 2 }$

• Note: ϵ is independent of $( X , Z )$ AND e2 (and therefore of Y2)

By plugging in this expression

$$
Y _ {1} ^ {*} = \mu (W, \theta) + \epsilon
$$

where $W = ( Y _ { 2 } , X , Z ) , \theta = ( \beta _ { 1 } , \beta _ { 2 } , \gamma _ { 1 } , \gamma _ { 2 } , \rho )$ $W = ( Y _ { 2 } , X , Z )$ $\theta = ( \beta _ { 1 } , \beta _ { 2 } , \gamma _ { 1 } , \gamma _ { 2 } , \rho )$ and

$$
\mu (W, \theta) = X ^ {\prime} \beta_ {1} + Y _ {2} \beta_ {2} + \rho (Y _ {2} - X ^ {\prime} \gamma_ {1} - Z ^ {\prime} \gamma_ {2})
$$

• Joint pdf $f ( Y _ { 1 } , Y _ { 2 } | X , Z ) = f _ { 1 } ( Y _ { 1 } | Y _ { 2 } , X , Z ) f _ { 2 } ( Y _ { 2 } | X$ , Z ) is

$$
\begin{array}{l} \Phi \left(\frac {\mu (W , \theta)}{\sigma_ {\epsilon}}\right) ^ {Y _ {1}} \left(1 - \Phi \left(\frac {\mu (W , \theta)}{\sigma_ {\epsilon}}\right)\right) ^ {1 - Y _ {1}} \\ \times \frac {1}{\sigma_ {2}} \phi \left(\frac {Y _ {2} - X ^ {\prime} \gamma_ {1} - Z ^ {\prime} \gamma_ {2}}{\sigma_ {2}}\right) \\ \end{array}
$$

Apply ML theory

# Notation: Normal cdf and pdf

• Define

$$
\phi (a) = \frac {1}{\sqrt {2 \pi}} e ^ {- \frac {a ^ {2}}{2}} \quad (\mathrm {N} (0, 1) \mathrm {p d f})
$$

$$
\Phi (a) = \int_ {- \infty} ^ {a} \frac {1}{\sqrt {2 \pi}} e ^ {- \frac {b ^ {2}}{2}} d b \quad (\mathrm {N} (0, 1) \mathrm {c d f})
$$

• Then $\mathrm { N } ( \mu , \sigma ^ { 2 } )$ pdf is written as

$$
\frac {1}{\sigma} \phi \left(\frac {\boldsymbol {a} - \boldsymbol {\mu}}{\sigma}\right)
$$

# 3. Multinomial dependent variable

# Ordered data

Values of Y have some meaning

$$
\begin{array}{l} Y = \left\{ \begin{array}{l l} 1 & \text {s p e n d s l e s s t h a n $ 2 , 0 0 0} \\ 2 & \text {s p e n d s m o r e t h a n $ 2 , 0 0 0 b u t l e s s t h a n $ 4 , 0 0 0} \\ 3 & \text {s p e n d s m o r e t h a n $ 4 , 0 0 0} \end{array} \right. \\ Y = \left\{ \begin{array}{l l} 1 & \text {d i s l i k e} \\ 2 & \text {n e u t r a l} \\ 3 & \text {l i k e} \end{array} \right. \\ Y = \left\{ \begin{array}{l l} 1 & \text {c o m p l e t e d h i g h s c h o o l b u t n o t c o l l e g e} \\ 2 & \text {c o m p l e t e d c o l l e g e b u t n o t a h i g h e r d e g r e e} \\ 3 & \text {c o m p l e t e d h i g h e r d e g r e e} \end{array} \right. \\ \end{array}
$$

# Unordered data

Values of Y are simply labels and can be exchanged

$$
Y = \left\{ \begin{array}{l l} 1 & \text {u s e b u s} \\ 2 & \text {u s e t r a i n} \\ 3 & \text {u s e c a r} \end{array} \right.
$$

$$
Y = \left\{ \begin{array}{l l} 1 & \text {o c c u p a t i o n i s l a w y e r} \\ 2 & \text {o c c u p a t i o n i s t e a c h e r} \\ 3 & \text {o c c u p a t i o n i s d o c t o r} \end{array} \right.
$$

$$
Y = \left\{ \begin{array}{l l} 1 & \text {m a j o r i n m a c r o} \\ 2 & \text {m a j o r i n m i c r o} \\ 3 & \text {m a j o r i n m e t r i c s} \end{array} \right.
$$

Which category to use is determined by research interest

# Ordered probit & logit

• Ordered multinomial data

$$
Y = 1, 2 \text {o r} 3 \quad (\text {c a n b e l a r g e r t h a n} 3)
$$

• Consider latent variable model

$$
U ^ {*} = X ^ {\prime} \beta + \epsilon , \qquad \epsilon \sim G
$$

where X has no intercept and G is some known cdf (with symmetric pdf)

• $U ^ { * }$ is unobservable. Instead we observe

$$
Y = \left\{ \begin{array}{l l} 1 & \text {i f} U ^ {*} \leq \alpha_ {1} \\ 2 & \text {i f} \alpha_ {1} <   U ^ {*} \leq \alpha_ {2} \\ 3 & \text {i f} \alpha_ {2} <   U ^ {*} \end{array} \right.
$$

Estimate parameters $\theta = ( \beta ^ { \prime } , \alpha _ { 1 } , \alpha _ { 2 } ) ^ { \prime }$ by observables Y , X   
• To construct likelihood, need to find $\mathbb { P } [ Y = 1 | X ] , \mathbb { P } [ Y = 2 | X ]$ $\mathbb { P } [ Y = 1 | X ]$ and $\mathbb { P } [ Y = 3 | X ]$   
• By latent variable model,

$$
\begin{array}{l} \mathbb {P} [ Y = 1 | X ] = \mathbb {P} [ U ^ {*} \leq \alpha_ {1} | X ] \\ = \mathbb {P} \left[ X ^ {\prime} \beta + e \leq \alpha_ {1} | X \right] = G \left(\alpha_ {1} - X ^ {\prime} \beta\right) \\ \end{array}
$$

$$
\begin{array}{l} \mathbb {P} [ Y = 3 | X ] = \mathbb {P} [ \alpha_ {2} <   U ^ {*} | X ] \\ = \mathbb {P} [ \alpha_ {2} <   X ^ {\prime} \beta + e | X ] = G \left(X ^ {\prime} \beta - \alpha_ {2}\right) \\ \end{array}
$$

$$
\begin{array}{l} \mathbb {P} [ Y = 2 | X ] = 1 - \mathbb {P} [ Y = 1 | X ] - \mathbb {P} [ Y = 3 | X ] \\ = G \left(\alpha_ {2} - X ^ {\prime} \beta\right) - G \left(\alpha_ {1} - X ^ {\prime} \beta\right) \\ \end{array}
$$

• Log-likelihood is

$$
\begin{array}{l} Q _ {n} (\theta) = \frac {1}{n} \sum_ {i: Y _ {i} = 1} \log \mathbb {P} \left[ Y _ {i} = 1 \mid X _ {i} \right] \\ + \frac {1}{n} \sum_ {i: Y _ {i} = 2} \log \mathbb {P} \left[ Y _ {i} = 2 \mid X _ {i} \right] \\ + \frac {1}{n} \sum_ {i: Y _ {i} = 3} \log \mathbb {P} \left[ Y _ {i} = 3 \mid X _ {i} \right] \\ = \frac {1}{n} \sum_ {i: Y _ {i} = 1} \log G \left(\alpha_ {1} - X _ {i} ^ {\prime} \beta\right) \\ + \frac {1}{n} \sum_ {i: Y _ {i} = 2} \log \left\{G \left(\alpha_ {2} - X _ {i} ^ {\prime} \beta\right) - G \left(\alpha_ {1} - X _ {i} ^ {\prime} \beta\right) \right\} \\ + \frac {1}{n} \sum_ {i: Y _ {i} = 3} \log G \left(X _ {i} ^ {\prime} \beta - \alpha_ {2}\right) \\ \end{array}
$$

• G is e.g. normal or logistic. Apply ML theory

# Marginal effect

Be careful to find marginal effect

$$
\begin{array}{l} \frac {\partial \mathbb {P} [ Y = 1 | X ]}{\partial X _ {k}} = - \beta_ {k} g \left(\alpha_ {1} - X ^ {\prime} \beta\right) \\ \frac {\partial \mathbb {P} [ Y = 2 | X ]}{\partial X _ {k}} = \beta_ {k} \left\{g \left(\alpha_ {1} - X ^ {\prime} \beta\right) - g \left(\alpha_ {2} - X ^ {\prime} \beta\right) \right\} \\ \frac {\partial \mathbb {P} [ Y = 3 | X ]}{\partial X _ {k}} = \beta_ {k} g \left(\alpha_ {2} - X ^ {\prime} \beta\right) \\ \end{array}
$$

• Sign of $\beta _ { k }$ determines signs of $\frac { \partial \mathbb { P } [ Y = 1 | X ] } { \partial X _ { k } }$ and $\frac { \partial \mathbb { P } [ Y = 3 | X ] } { \partial X _ { k } }$ , but does not determine $\frac { \partial \mathbb { P } [ Y = 2 | X ] } { \partial X _ { k } }$

# Unordered data: Multinomial logit

When Y is unordered, we directly specify choice probabilities   
• Multinomial logit choice probability for individual i choose j-th option

$$
\mathbb {P} [ Y _ {i} = j | W _ {i}, X _ {i} ] = \frac {\exp (W _ {i} ^ {\prime} \beta_ {j} + X _ {i j} ^ {\prime} \gamma)}{\sum_ {\ell = 1} ^ {J} \exp (W _ {i} ^ {\prime} \beta_ {\ell} + X _ {i \ell} ^ {\prime} \gamma)}, \qquad j = 1, \ldots , J
$$

where Wi are choice invariant regressors and $X _ { i } = ( X _ { i 1 } , \ldots , X _ { i J } )$ are choice specific regressors

Set $\beta _ { J } = 0$ for base choice $J$ for identification

For example

$$
Y _ {i} = \left\{ \begin{array}{l l} 1 & \text {u s e t r a i n} \\ 2 & \text {u s e a i r} \\ 3 & \text {u s e b u s} \\ 4 & \text {u s e c a r} \end{array} \right.
$$

$$
W _ {i} = (\text {i n c o m e}, \text {d e m o g r a p h i c c h a r a c t e r i s t i c s})
$$

$$
X _ {i j} = (\text {c o s t f o r} j, \text {t r a v e l t i m e f o r} j)
$$

# Latent variable model

Logit choice probability is derived from latent variable model

$$
U _ {i j} ^ {*} = W _ {i} ^ {\prime} \beta_ {j} + X _ {i j} ^ {\prime} \gamma + \epsilon_ {i j}, \qquad j = 1, \dots , J
$$

$$
\left(\epsilon_ {i 1}, \dots , \epsilon_ {i J}\right) \sim_ {\text {i d}} F
$$

where $F ( a ) = \exp ( { - \exp ( - a ) } )$ is type I extreme value cdf

• $U _ { i j } ^ { * }$ is utility of $i$ from choosing $j$ (unobservable). We only observe choice maximizing utility

$$
Y _ {i} = \arg \max  _ {k} U _ {i k} ^ {*}
$$

or

$$
Y _ {i} = j \Longleftrightarrow U _ {i j} ^ {*} > U _ {i k} ^ {*} \quad \text {f o r a l l} k \neq j
$$

• Type I extreme $F$ is crucial to obtain logit form for $\mathbb { P } [ Y _ { i } = j | W _ { i } , X _ { i } ] = \mathbb { P } [ U _ { i j } ^ { * } \geq U _ { i k } ^ { * }$ for all $k \neq j | W _ { i } , X _ { i } ]$   
• Multinomial logit log-likelihood is

$$
Q _ {n} (\theta) = \frac {1}{n} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {J} \mathbb {I} \{Y _ {i} = j \} \log \mathbb {P} [ Y _ {i} = j | W _ {i}, X _ {i} ]
$$

Apply ML theory

# IIA property

Although logit choice probability seems reasonable, it implies

$$
\frac {\mathbb {P} [ Y _ {i} = j | W _ {i} , X _ {i} ]}{\mathbb {P} [ Y _ {i} = \ell | W _ {i} , X _ {i} ]} = \frac {\exp (W _ {i} ^ {\prime} \beta_ {j} + X _ {i j} ^ {\prime} \gamma)}{\exp (W _ {i} ^ {\prime} \beta_ {\ell} + X _ {i \ell} ^ {\prime} \gamma)}
$$

• Thus, ratio of choice probabilities for $j$ and $\ell$ is independent of regressors for other choices $X _ { i k }$ with $k \neq j , \ell$   
• This restrictive feature of multinomial logit is called independence of irrelevant alternatives (IIA) property   
• IIA property is often implausible (unless all choices are equally substitutable)   
• E.g. IIA requires cheaper airfare should not change P(train)/P(car) (less plausible if air & train are close substitutes)

# Mixed logit

• Again consider latent variable model

$$
U _ {i j} ^ {*} = W _ {i} ^ {\prime} \beta_ {j} + X _ {i j} ^ {\prime} \eta_ {i} + \epsilon_ {i j}, \qquad j = 1, \dots , J
$$

$$
\left(\epsilon_ {i 1}, \dots , \epsilon_ {i J}\right) \sim_ {\mathrm {i i d}} F
$$

where $F ( a ) = \exp ( { - \exp ( - a ) } )$ is type I extreme value cdf

• Now $\eta _ { i }$ is individual specific random coefficient, say

$$
\eta_ {i} \sim \mathrm {N} (\gamma , \Sigma)
$$

• Model can be written as

$$
U _ {i j} ^ {*} = W _ {i} ^ {\prime} \beta_ {j} + X _ {i j} ^ {\prime} \gamma + V _ {i j}
$$

where $V _ { i j } = X _ { i j } ^ { \prime } ( \eta _ { i } - \gamma ) + \epsilon _ { i j }$ can be correlated for difference choices (desirable flexibility)

Now let us construct likelihood. Conditional on ηi

$$
\mathbb {P} [ Y _ {i} = j | W _ {i}, X _ {i}, \eta_ {i} ] = \frac {\exp (W _ {i} ^ {\prime} \beta_ {j} + X _ {i j} ^ {\prime} \eta_ {i})}{\sum_ {\ell = 1} ^ {J} \exp (W _ {i} ^ {\prime} \beta_ {\ell} + X _ {i \ell} ^ {\prime} \eta_ {i})}
$$

• To make it unconditional for ηi , we integrate-out

$$
\begin{array}{l} \mathbb {P} \left[ Y _ {i} = j \mid W _ {i}, X _ {i} \right] = \int \mathbb {P} \left[ Y _ {i} = j \mid W _ {i}, X _ {i}, \eta \right] f (\eta | \gamma , \Sigma) d \eta \\ = \int \frac {\exp \left(W _ {i} ^ {\prime} \beta_ {j} + X _ {i j} ^ {\prime} \eta\right)}{\sum_ {\ell = 1} ^ {J} \exp \left(W _ {i} ^ {\prime} \beta_ {\ell} + X _ {i \ell} ^ {\prime} \eta\right)} f (\eta | \gamma , \Sigma) d \eta \\ \end{array}
$$

where $f ( \eta | \gamma , \Sigma )$ is pdf of $\mathrm { N } ( \gamma , \Sigma )$

• Mixed logit log-likelihood for $\theta = ( \beta _ { 1 } , \dots , \beta _ { J - 1 } , \gamma , \Sigma )$ is

$$
Q _ {n} (\theta) = \frac {1}{n} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {J} \mathbb {I} \{Y _ {i} = j \} \log \mathbb {P} [ Y _ {i} = j | W _ {i}, X _ {i} ]
$$

Apply ML theory

# Multinomial probit

• One way to avoid IIA property is to simply change distribution assumption   
• Latent variable model is

$$
U _ {i j} ^ {*} = W _ {i} ^ {\prime} \beta_ {j} + X _ {i j} ^ {\prime} \gamma + \epsilon_ {i j}, \qquad j = 1, \dots , J
$$

$$
\left(\epsilon_ {i 1}, \dots , \epsilon_ {i J}\right) \sim \mathrm {N} (0, \Sigma)
$$

Although $U _ { i j } ^ { * }$ is unobservable, we observe

$$
Y _ {i} = \arg \max  _ {k} U _ {i k} ^ {*}
$$

In this case, choice probability is

$$
\begin{array}{l} \mathbb {P} \left[ Y _ {i} = j \mid W _ {i}, X _ {i} \right] \\ = \int_ {\epsilon_ {1}} \dots \int_ {\epsilon_ {J}} \mathbb {I} \left\{ \begin{array}{c} W _ {i} ^ {\prime} \beta_ {j} + X _ {i j} ^ {\prime} \gamma + \epsilon_ {i j} > W _ {i} ^ {\prime} \beta_ {k} + X _ {i k} ^ {\prime} \gamma + \epsilon_ {i k} \\ \text {f o r a l l} k \neq j \end{array} \right\} \\ \times f \left(\epsilon_ {1}, \dots , \epsilon_ {J} | \Sigma\right) d \epsilon_ {1} \dots d \epsilon_ {J} \\ \equiv \quad P _ {j} (W _ {i}, X _ {i}, \theta) \\ \end{array}
$$

where $f ( \cdot | \Sigma )$ is pdf of $\mathrm { N } ( 0 , \Sigma )$ and $\theta = ( \beta _ { 1 } , \dots , \beta _ { J - 1 } , \gamma , \Sigma )$

• This choice probability is free from IIA property

• If we can evaluate $P _ { j } ( W _ { i } , X _ { i } , \theta )$ , multinomial probit log-likelihood is

$$
Q _ {n} (\theta) = \frac {1}{n} \sum_ {i = 1} ^ {n} \sum_ {j = 1} ^ {J} \mathbb {I} \left\{Y _ {i} = j \right\} \log P _ {j} \left(W _ {i}, X _ {i}, \theta\right)
$$

• ML theory applies   
• Issue: How to evaluate J multiple integral $P _ { j } ( W _ { i } , X _ { i } , \theta )$   
Note: Logit has explicit integral form but probit doesn’t

• When J is small, numerical integral such as Gaussian quadrature method is possible   
In general, it is common to employ simulation-based method   
• Basic idea: Fix θ and draw $\epsilon ^ { ( r ) } \sim \mathrm { N } ( 0 , \Sigma )$ for $r = 1 , \ldots , R .$ . Then estimate choice probability $P _ { j } ( W _ { i } , X _ { i } , \theta )$ at $\theta$ as

$$
\begin{array}{l} \tilde {P} _ {j} (W _ {i}, X _ {i}, \theta) \\ = \frac {1}{R} \sum_ {r = 1} ^ {R} \mathbb {I} \left\{ \begin{array}{c} W _ {i} ^ {\prime} \beta_ {j} + X _ {i j} ^ {\prime} \gamma + \epsilon_ {i j} ^ {(r)} > W _ {i} ^ {\prime} \beta_ {k} + X _ {i k} ^ {\prime} \gamma + \epsilon_ {i k} ^ {(r)} \\ \text {f o r a l l} k \neq j \end{array} \right\} \\ \end{array}
$$

# Simulated maximum likelihood

• This method is called simulated maximum likelihood   
• Need to modify ML theory to deal with randomness caused by simulation and discontinuous likelihood function (due to I{·} in $\tilde { P } _ { j } ( W _ { i } , X _ { i } , \theta ) )$   
• Also discontinuity of $\tilde { P } _ { j } ( W _ { i } , X _ { i } , \theta )$ (called simulator) makes difficult to find simulated MLE θˆ = arg maxθ $Q _ { n } ( \theta )$ . Several smooth (in θ) simulators are proposed (e.g. GHK simulator) so that Quasi-Newton method can be applied to find $\hat { \theta }$   
• See Hajivassiliou and Ruud (1994) Ch. 40, vol. IV, Handbook of Econometrics

# 4. Censored dependent variable

# Examples

Expenditure for durable goods (Y > 0 and many Y = 0)   
• Top coding of wealth data (Y < $200, 000 and many Y = $200, 000)   
Hours worked (Y ≥ 0 and many Y = 0)

# Tobit model

• Latent variable model

$$
Y ^ {*} = X ^ {\prime} \beta + e, \qquad e | X \sim \mathrm {N} (0, \sigma^ {2})
$$

• However $Y ^ { * }$ is unobservable. Instead we observe

$$
Y = \max  \{0, Y ^ {*} \} = \left\{ \begin{array}{c l} Y ^ {*} & \text {i f} Y ^ {*} > 0 \\ 0 & \text {i f} Y ^ {*} \leq 0 \end{array} \right.
$$

X is always observed

• Look at conditional mean

$$
\mathbb {E} \left[ Y ^ {*} \mid X \right] = X ^ {\prime} \beta
$$

so if $Y ^ { * }$ is observable, OLS from Y ∗ on X consistently estimates $\beta$

• However (see Hansen Ch. 5)

$$
\mathbb {E} [ Y | X ] = X ^ {\prime} \beta \Phi \left(\frac {X ^ {\prime} \beta}{\sigma}\right) + \sigma \phi \left(\frac {X ^ {\prime} \beta}{\sigma}\right)
$$

so OLS from Y on X is inconsistent for $\beta$

Even if we discard censored data

$$
Y ^ {\#} = \left\{ \begin{array}{c l} Y & \text {i f} Y > 0 \\ \text {m i s s i n g} & \text {i f} Y = 0 \end{array} \right.,
$$

$$
\mathbb {E} [ Y ^ {\#} | X ] = X ^ {\prime} \beta + \sigma \frac {\phi (X ^ {\prime} \beta / \sigma)}{\Phi (X ^ {\prime} \beta / \sigma)}
$$

# ML

• Conditional density of $Y | X = x$ is

$$
f (y | x) = \left\{ \begin{array}{c l} \Phi \left(- \frac {x ^ {\prime} \beta}{\sigma}\right) & \text {a t} y = 0 \\ \frac {1}{\sigma} \phi \left(\frac {y - x ^ {\prime} \beta}{\sigma}\right) & \text {f o r} y > 0 \end{array} \right.
$$

• Log-likelihood is

$$
\begin{array}{l} Q _ {n} (\theta) = \sum_ {i = 1} ^ {n} \log f \left(Y _ {i} | X _ {i}\right) \\ = \sum_ {i: Y _ {i} = 0} \log \Phi \left(- \frac {X _ {i} ^ {\prime} \beta}{\sigma}\right) + \sum_ {i: Y _ {i} > 0} \log \left(\frac {1}{\sigma} \phi \left(\frac {Y _ {i} - X _ {i} ^ {\prime} \beta}{\sigma}\right)\right) \\ \end{array}
$$

• ML theory applies

# Censored LAD

• Proposed by Powell (1984). Again dependent variable is censored

$$
Y = \max  \{0, Y ^ {*} \} = \left\{ \begin{array}{l l} Y ^ {*} & \text {i f} Y ^ {*} > 0 \\ 0 & \text {i f} Y ^ {*} \leq 0 \end{array} \right.
$$

• Consider latent variable model

$$
Y ^ {*} = X ^ {\prime} \beta + e, \qquad \operatorname {M e d} (e | X) = 0
$$

• Median restriction is much weaker than Tobit case (i.e. $e | X \sim \mathrm { N } ( 0 , \sigma ^ { 2 } ) )$

• We know

$$
\operatorname {M e d} \left(Y ^ {*} | X\right) = X ^ {\prime} \beta
$$

but we do not observe Y ∗

Is there any relationship between Med(Y ∗|X ) and Med(Y |X )?

$Y = \mathsf { m a x } \{ 0 , Y ^ { * } \} = \left\{ \begin{array} { c l } { Y ^ { * } } & { \mathrm { i f ~ } Y ^ { * } > 0 } \\ { 0 } & { \mathrm { i f ~ } Y ^ { * } \leq 0 } \end{array} \right.$   
So, if $\begin{array} { r } { \mathbb { P } [ Y ^ { * } \leq 0 | X ] < \frac { 1 } { 2 } } \end{array}$ , then we have

$$
\operatorname {M e d} (Y | X) = \operatorname {M e d} (Y ^ {*} | X) > 0
$$

• Also, if $\begin{array} { r } { \mathbb { P } [ Y ^ { * } \leq 0 | X ] \geq \frac { 1 } { 2 } } \end{array}$ , then we have

$$
\operatorname {M e d} (Y | X) = 0
$$

Combining these results

$$
\operatorname {M e d} (Y | X) = \max  \{0, \operatorname {M e d} (Y ^ {*} | X) \} = \max  \{0, X ^ {\prime} \beta \}
$$

• Given this, we consider nonlinear median regression model

$$
Y = \max  \{0, X ^ {\prime} \beta \} + \epsilon , \quad \operatorname {M e d} (\epsilon | X) = 0
$$

• Censored LAD estimator is

$$
\hat {\beta} = \arg \min  _ {\beta} \sum_ {i = 1} ^ {n} | Y _ {i} - \max  \{0, X _ {i} ^ {\prime} \beta \} |
$$

• Under mild conditions, $\hat { \beta }$ is consistent and asymptotically normal

# 5. Truncated dependent variable

# Truncated data

• Latent variable model

$$
Y ^ {*} = X ^ {\prime} \beta + e, \quad e | X \sim \mathrm {N} (0, \sigma^ {2})
$$

• In contrast to censored case, we observe $( Y , X ) = ( Y ^ { * } , X )$ only if $Y ^ { * } > 0$   
• When $Y ^ { * } \leq 0$ , we observe no $( Y , X )$   
Relation between $Y$ and $Y ^ { * }$ is

$$
Y = \left\{ \begin{array}{c l} Y ^ {*} & \text {i f} Y ^ {*} > 0 \\ \text {u n o b s e r v e d} & \text {i f} Y ^ {*} \leq 0 \end{array} \right.
$$

• Similar to censored case $\mathbb { E } [ Y | X ] \neq X ^ { \prime } \beta$ , OLS from Y on X is inconsistent for $\beta$   
• When $Y ^ { * } > 0$ (Y is observed), density of Y is proportional to density of $Y ^ { * }$ . Otherwise density of $Y$ is zero   
• Conditional density of $Y | X = x$ is

$$
f (y | x) = \left\{ \begin{array}{c l} 0 & \text {f o r} y \leq 0 \\ \frac {\frac {1}{\sigma} \phi \left(\frac {y - x ^ {\prime} \beta}{\sigma}\right)}{\mathbb {P} [ Y ^ {*} \geq 0 | X = x ]} & \text {f o r} y > 0 \end{array} \right.
$$

$$
\text {w h e r e} \mathbb {P} [ Y ^ {*} \geq 0 | X = x ] = \Phi \left(\frac {x ^ {\prime} \beta}{\sigma}\right)
$$

Log-likelihood is

$$
\begin{array}{l} Q _ {n} (\theta) = \sum_ {i = 1} ^ {n} \log f (Y _ {i} | X _ {i}) \\ = \sum_ {i = 1} ^ {n} \log \left(\frac {1}{\sigma} \phi \left(\frac {Y _ {i} - X _ {i} ^ {\prime} \beta}{\sigma}\right)\right) - \sum_ {i = 1} ^ {n} \log \Phi \left(\frac {X _ {i} ^ {\prime} \beta}{\sigma}\right) \\ \end{array}
$$

ML theory applies

# 6. Sample selection

# Sample selection

• Sample is gathered non-randomly and its selection may be endogenous   
• Wage data are observable only for people who actually enter labor force   
. Effect of social programs (outcomes are observable only for people who volunteer to participate)   
. Survey or rating (outcomes are observable only for people who decide to complete and return)

# Sample selection bias

• To fix idea, consider two-stage process. In 1st stage, $( Y , X )$ is drawn. In 2nd stage, this pair is either selected into sample $( S = 1 )$ ) or unobserved $( S = 0 )$   
• Suppose $Y = X ^ { \prime } { \boldsymbol { \beta } } + e$ with $\mathbb { E } [ e | X ] = 0$ . Conditional mean for observed (selected) sample is

$$
\mathbb {E} [ Y | X, S = 1 ] = X ^ {\prime} \beta + \mathbb {E} [ e | X, S = 1 ]
$$

• Selection bias occurs if second term is not zero

# Sample selection model

• Consider latent variable model

$$
Y ^ {*} = X ^ {\prime} \beta + e
$$

$$
S ^ {*} = Z ^ {\prime} \gamma + u
$$

where (e, u) is independent of $( X , Z )$ and

$$
u \sim \mathrm {N} (0, 1)
$$

$$
\mathbb {E} [ e | u ] = \theta u
$$

Instead of $( Y ^ { * } , S ^ { * } )$ , we observe

$$
Y = \left\{ \begin{array}{l l} Y ^ {*} & \text {i f} S = 1 \\ \text {u n o b s e r v e d} & \text {i f} S = 0 \end{array} \right.
$$

$$
S = \left\{ \begin{array}{l l} 1 & \text {i f} S ^ {*} > 0 \\ 0 & \text {i f} S ^ {*} \leq 0 \end{array} \right.
$$

• $W = ( X , Z )$ is always observed   
. E.g. Y =wage, S =dummy for labor force participation

# Conditional mean for estimation

• Since $Y ^ { * }$ is observed only when $S = 1$ , what we can hope to estimate is E $_ { \parallel } \lvert Y ^ { * } \rvert W , S = 1 ]$   
First, note that

$$
\begin{array}{l} \mathbb {E} \left[ Y ^ {*} \mid W, u \right] = X ^ {\prime} \beta + \mathbb {E} [ e \mid W, u ] = X ^ {\prime} \beta + \mathbb {E} [ e \mid u ] \\ = X ^ {\prime} \beta + \theta u \\ \end{array}
$$

• Then

$$
\begin{array}{l} \mathbb {E} \left[ Y ^ {*} \mid W, S \right] = \mathbb {E} \left[ \mathbb {E} \left[ Y ^ {*} \mid W, u, S \right] \mid W, S \right] \\ = \mathbb {E} [ \mathbb {E} [ Y ^ {*} | W, u ] | W, S ] \\ = X ^ {\prime} \beta + \theta \mathbb {E} [ u | W, S ] \\ \end{array}
$$

• If $\theta = 0$ , OLS from Y on X (using only selected sample) can consistently estimate $\beta$   
• For $\theta \neq 0$ , our model is

$$
\mathbb {E} [ Y | W, S = 1 ] = X ^ {\prime} \beta + \theta h (W)
$$

where $h ( W ) = \mathbb { E } [ u | W , S = 1 ]$

• If we know $h ( W )$ , OLS from Y on $X$ and $h ( W )$ (using only selected sample) can consistently estimate $\beta$ and θ

• By formula

$$
\mathbb {E} [ u | u > c ] = \frac {\phi (c)}{1 - \Phi (c)}
$$

for $u \sim N ( 0 , 1 )$ , we get

$$
h (W) = \mathbb {E} [ u | W, u \geq - Z ^ {\prime} \gamma ] = \frac {\phi \left(Z ^ {\prime} \gamma\right)}{\Phi \left(Z ^ {\prime} \gamma\right)}
$$

and model used for estimation is

$$
\mathbb {E} [ Y | W, S = 1 ] = X ^ {\prime} \beta + \theta \frac {\phi (Z ^ {\prime} \gamma)}{\Phi (Z ^ {\prime} \gamma)}
$$

# Estimation

• We can do NLLS (using only selected sample)

$$
\min _ {\beta , \theta , \gamma} \sum_ {i = 1} ^ {n} \left\{Y _ {i} - X _ {i} ^ {\prime} \beta - \theta \frac {\phi (Z _ {i} ^ {\prime} \gamma)}{\Phi (Z _ {i} ^ {\prime} \gamma)} \right\} ^ {2}
$$

Alternatively, we can do two-step estimation

1. Do probit from S on Z to get estimator $\hat { \gamma }$   
2. Estimate $\beta$ and θ by OLS from Y on X and $\frac { \phi ( Z ^ { \prime } \hat { \gamma } ) } { \Phi ( Z ^ { \prime } \hat { \gamma } ) }$

In this case, standard error by default OLS package is invalid. Need to take into account estimation error $\hat { \gamma } - \gamma$

# ML

For ML, we further assume

$$
\left( \begin{array}{c} e \\ u \end{array} \right) \Bigg | W \sim \mathrm {N} \left(0, \left( \begin{array}{c c} \sigma^ {2} & \rho \sigma \\ \rho \sigma & 1 \end{array} \right)\right)
$$

• If $S = 0$ , we cannot observe Y and likelihood contribution is $\mathbb { P } [ S = 0 | W ]$   
. If $S = 1$ , we observe Y and likelihood contribution is $f ( y | S = 1 , W ) \mathbb { P } [ S = 1 | W ]$

# Likelihood

• Log-likelihood is (see Hansen-A Ch. 27.10 for derivation)

$$
\begin{array}{l} Q _ {n} (\theta) \\ = \frac {1}{n} \sum_ {i: S _ {i} = 0} \log \mathbb {P} \left[ S _ {i} = 0 \mid W _ {i} \right] \\ + \frac {1}{n} \sum_ {i: S _ {i} = 1} \log \left\{f \left(Y _ {i} \mid S _ {i} = 1, W _ {i}\right) \mathbb {P} \left[ S _ {i} = 1 \mid W _ {i} \right] \right\} \\ = \frac {1}{n} \sum_ {i: S _ {i} = 0} \log \Phi \left(- Z _ {i} ^ {\prime} \gamma\right) \\ + \frac {1}{n} \sum_ {i: S _ {i} = 1} \log \left\{\frac {1}{\sigma} \phi \left(\frac {Y _ {i} - X _ {i} ^ {\prime} \beta}{\sigma}\right) \Phi \left(\frac {Z _ {i} ^ {\prime} \gamma + \frac {\rho}{\sigma} (Y _ {i} - X _ {i} ^ {\prime} \beta)}{\sqrt {1 - \rho^ {2}}}\right) \right\} \\ \end{array}
$$

• ML theory applies

# 7. Further topics

# Topic 1: BLP demand model

• Berry, Levinsohn & Pakes (1995) Aggregate market demand estimation   
Utility for consumer buying good j

$$
U _ {j} ^ {*} = X _ {j} ^ {\prime} \eta + \xi_ {j} + \epsilon_ {j}, \qquad j = 1, \ldots , J
$$

where $X _ { j }$ includes price and characteristics of good j

$$
\eta \sim \mathrm {N} (\gamma , \Sigma) \quad (\text {i n d i v i s u a l ' s r a n d o m c o e f})
$$

$$
\begin{array}{r c l} \xi_ {j} & = & \text {m a r k e t l e v e l e r r o r} \end{array}
$$

$$
\left(\epsilon_ {1}, \dots \epsilon_ {J}\right) \sim \text {i d t y p e I}
$$

• ξj may be interpreted as unobservable product characteristics and can be correlated with Xj

Like mixed logit, conditional on $\boldsymbol { \delta } = ( \delta _ { 1 } , \dots , \delta _ { J } )$ with $\delta _ { j } = X _ { j } ^ { \prime } \gamma + \xi _ { j }$ , probability for choosing $j$ is

$$
P _ {j} (\delta , \Sigma) = \int \frac {\exp \left(\delta_ {j} + X _ {j} ^ {\prime} v\right)}{\sum_ {\ell = 1} ^ {J} \exp \left(\delta_ {\ell} + X _ {\ell} ^ {\prime} v\right)} f (v | \Sigma) d v
$$

where $f ( \cdot | \Sigma )$ is pdf of $\mathrm { N } ( 0 , \Sigma )$

Typically $P _ { j } ( \delta , \Sigma )$ is evaluated by simulation like

$$
\tilde {P} _ {j} (\delta , \Sigma) = \frac {1}{R} \sum_ {r = 1} ^ {R} \frac {\exp \left(\delta_ {j} + X _ {j} ^ {\prime} V ^ {(r)}\right)}{\sum_ {\ell = 1} ^ {J} \exp \left(\delta_ {\ell} + X _ {\ell} ^ {\prime} V ^ {(r)}\right)}
$$

with $v ^ { ( r ) } \sim \mathrm { N } ( 0 , \Sigma )$ for $r = 1 , \ldots , R$

# Econometric problem

• Now consider our econometric problem. For each market $t = 1 , \dots , T$ , we observe

$$
X _ {j t} = \text {o b s e r v a b l e c h a r a c t e r i s t i c s o f g o o d} j
$$

$$
S _ {j t} = \text {s h a r e} j
$$

$$
Z _ {j t} = \text {v a r i a b l e s u n c o r r e l a t e d w i t h} \xi_ {j t}
$$

• Zjt must satisfy

$$
\mathbb {E} [ Z _ {j t} \xi_ {j t} ] = 0
$$

Meaning of “market” is flexible, such as year or city   
• Large literature on choice of Z , such as non-price characteristics or prices in other markets (see survey by Ackerberg, Benkard, Berry & Pakes, 2007)

• If ξjt = δjt − X ′jt γ (or δjt ) is written as function of observables and parameters, we can do GMM estimation   
If numbers of consumers are large enough, then we can use equalities for $\delta _ { t } = \left( \delta _ { 1 t } , \ldots , \delta _ { J t } \right)$

$$
\tilde {P} _ {j t} \left(\delta_ {t}, \Sigma\right) = S _ {j t} \quad \text {f o r} j = 1, \dots , J
$$

• Letting $\delta _ { j t } ( S _ { t } , \Sigma )$ be its solution, moment condition for parameters $( \gamma , \Sigma )$ is

$$
\mathbb {E} \left[ Z _ {j t} \left\{\delta_ {j t} \left(S _ {t}, \Sigma\right) - X _ {j t} ^ {\prime} \gamma \right\} \right] = 0
$$

# Topic 2: Estimation of 2 × 2 game

Ciliberto and Tamer (2009)   
• Suppose we observe $\{ Y _ { 1 } , X _ { 1 } , Y _ { 2 } , X _ { 2 } \}$ across markets with binary Y1 and Y2   
• Y1 is Player 1’s decision (say, entry/exit in airline market t by American) and Y2 is Player 2’s decision (say, entry/exit by Delta). $X _ { 1 }$ and $X _ { 2 }$ are regressors for Players 1 & 2   
They play $2 \times 2$ static game with payoff

<table><tr><td rowspan="2" colspan="2"></td><td colspan="2">Y2</td></tr><tr><td>0</td><td>1</td></tr><tr><td rowspan="2">Y1</td><td>0</td><td>0, 0</td><td>0, X2′β2 + u2</td></tr><tr><td>1</td><td>X1′β1 + u1, 0</td><td>X1′β1 - Δ1 + u1, X2′β2 - Δ2 + u2</td></tr></table>

• Wish to conduct inference on parameters $\theta = ( \beta _ { 1 } , \Delta _ { 1 } , \beta _ { 2 } , \Delta _ { 2 } )$ by sample of $\{ Y _ { 1 } , X _ { 1 } , Y _ { 2 } , X _ { 2 } \}$ . Assume $\Delta _ { 1 } > 0$ and $\Delta _ { 2 } > 0$   
• How can we proceed? Maybe set up latent variables models

$$
Y _ {1} = \left\{ \begin{array}{l l} 1 & \text {i f} \quad Y _ {1} ^ {*} \geq 0 \\ 0 & \text {i f} \quad Y _ {1} ^ {*} <   0 \end{array} \right. \qquad Y _ {2} = \left\{ \begin{array}{l l} 1 & \text {i f} \quad Y _ {2} ^ {*} \geq 0 \\ 0 & \text {i f} \quad Y _ {2} ^ {*} <   0 \end{array} \right.
$$

for some $Y _ { 1 } ^ { * }$ and $Y _ { 2 } ^ { * }$

• Then express outcome probabilities $\mathbb { P } [ ( 0 , 0 ) | X ]$ , P[(0, 1)|X ], $\mathbb { P } [ ( 1 , 0 ) | X ]$ and $\mathbb { P } [ ( 1 , 1 ) | X ]$ . Something strange will happen

# Topic 3: Nonparametric bound analysis

. Blundell, Gosling, Ichimura & Meghir (2007)   
• Notation

$$
Y = \text {e q u i l i b r i u m w a g e}
$$

$$
X = \text {c o v a r i a t e s} (\text {g e n d e r}, \text {a g e}, \dots)
$$

$$
E = \left\{ \begin{array}{l l} 1 & \text {e m p l o y e d} \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

• Interest

$$
F (y | x) = \mathbb {P} [ Y \leq y | X = x ]
$$

• Data

i Ei Yi Xi   
1 1 obs obs   
2 1 obs obs   
3 0 n.a. obs

If $E _ { i } = 0$ , then Yi is missing

# Issue

• Note that

$$
F (y | x) = F (y | x, E = 1) \mathbb {P} [ E = 1 | x ] + F (y | x, E = 0) \mathbb {P} [ E = 0 | x ]
$$

• We can nonparametrically estimate $F ( y | x , E = 1 )$ , P[E = 1|x ] and $\mathbb { P } [ E = 0 | x ]$ by relative frequency or kernel regression (these objects are written as conditional means by using indicator)

In other words, if $n$ is infinity, we know these objects   
• However, even if $n$ is infinity, we never know $\cdot$ so we never know $F ( y | x )$

# Bound analysis

• Even though we never know $F ( y | x )$ , we can still say something about bounds of $F ( y | x )$   
For example, at least we know that

$$
0 \leq F (y | x, E = 0) \leq 1
$$

which is called worst case bounds

• Then (worst-case) bonds of $F ( y | x )$ are

$$
\begin{array}{l} F (y | x, E = 1) \mathbb {P} [ E = 1 | x ] \\ \leq F (y | x) \\ \leq F (y | x, E = 1) \mathbb {P} [ E = 1 | x ] + \mathbb {P} [ E = 0 | x ] \\ \end{array}
$$

In bound analysis, avoid or minimize parametric assumptions and report different bounds under different scenario or economic information   
• By comparing the bounds, we can evaluate identifying power of such information   
• If bounds are crossing, then we can reject the information

# Example: Positive selection

• Suppose

$$
(*) \quad \mathbb {P} [ E = 1 | Y \leq y, x ] \leq \mathbb {P} [ E = 1 | Y > y, x ]
$$

(if wage offer is high, people tend to work)

• Use this information to refine the bounds of $F ( y | x , E = 0 )$ ) or F (y |x)

• By Bayes theorem

$$
\mathbb {P} [ E = 1 | Y \leq y, x ] = \frac {F (y | E = 1 , x) \mathbb {P} [ E = 1 | x ]}{F (y | x)}
$$

$$
\mathbb {P} [ E = 1 | Y > y, x ] = \frac {\{1 - F (y | E = 1 , x) \} \mathbb {P} [ E = 1 | x ]}{1 - F (y | x)}
$$

• Thus $( * )$ implies

$$
F (y | E = 1, x) \leq F (y | x)
$$

• So the bounds are refined as

$$
\begin{array}{l} F (y | x, E = 1) \\ \leq F (y | x) \\ \leq F (y | x, E = 1) \mathbb {P} [ E = 1 | x ] + \mathbb {P} [ E = 0 | x ] \\ \end{array}
$$

# Example: IV (or exclusion restriction)

• Suppose we have extra data on Z satisfying

$$
(*) \quad Y \perp Z | X
$$

i.e. conditionally on $X = x$ , Y and Z are independent (e.g. Z =out-of-work income)

$\bullet \ ( \ast \ast )$ means

$$
F (y | x, z) = F (y | x)
$$

for all $( y , x , z )$

• Worst-case bonds of $F ( y | x , z )$ are

$$
\begin{array}{l} F (y | x, E = 1, z) \mathbb {P} [ E = 1 | x, z ] \\ \leq F (y | x, z) \\ \leq F (y | x, E = 1, z) \mathbb {P} [ E = 1 | x, z ] + \mathbb {P} [ E = 0 | x, z ] \\ \end{array}
$$

By $( ^ { * * } )$ , we have

$$
\begin{array}{l} F (y | x, E = 1, z) \mathbb {P} [ E = 1 | x, z ] \\ \leq F (y | x) \\ \leq F (y | x, E = 1, z) \mathbb {P} [ E = 1 | x, z ] + \mathbb {P} [ E = 0 | x, z ] \\ \end{array}
$$

for all z

• Thus bounds of $F ( y | x )$ under $( ^ { * * } )$ are

$$
\begin{array}{l} \max  _ {z} \left\{F (y | x, E = 1, z) \mathbb {P} [ E = 1 | x, z ] \right\} \\ \leq F (y | x) \\ \leq \min  _ {z} \left\{F (y | x, E = 1, z) \mathbb {P} [ E = 1 | x, z ] + \mathbb {P} [ E = 0 | x, z ] \right\} \\ \end{array}
$$