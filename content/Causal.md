# EC484: Econometric Analysis

# Causal Inference

Taisuke Otsu

London School of Economics

2025/6

# Contents

1. Treatment effect   
2. Difference in differences   
3. Regression discontinuity   
4. Weak IV

# 1. Treatment effect

# Setup

• Define

$$
W = \left\{ \begin{array}{l l} 1 & \text {i f t r e a t e d} \\ 0 & \text {i f u n t r e a t e d} \end{array} \right.
$$

$$
Y _ {0} = \text {o u t c o m e w i t h o u t t r e a t m e n t}
$$

$$
Y _ {1} = \text {o u t c o m e w i t h t r e a t m e n t}
$$

We observe W and

$$
Y = \left\{ \begin{array}{l l} Y _ {1} & \text {i f} W = 1 \\ Y _ {0} & \text {i f} W = 0 \end{array} \right. = W Y _ {1} + (1 - W) Y _ {0}
$$

• We observe either $Y _ { 1 }$ or $Y _ { 0 }$ , not both

# ATE

• Interested in effect of treatment $Y _ { 1 } - Y _ { 0 }$   
• Popular object of interest is average treatment effect (ATE)

$$
\theta_ {\mathrm {A T E}} = \mathbb {E} \left[ Y _ {1} - Y _ {0} \right]
$$

• We wish to estimate θATE by observables $\{ Y _ { i } , W _ { i } \} _ { i = 1 } ^ { n }$   
• Assume that $\{ Y _ { 0 i } , Y _ { 1 i } , W _ { i } \} _ { i = 1 } ^ { n }$ is iid (this may be strong assumption: treatment on i does not affect on $j \neq i )$

# Approach 1: Randomization

• Initial thought may suggest to compare averages for treated and untreated groups

$$
\begin{array}{l} \mathbb {E} [ Y | W = 1 ] - \mathbb {E} [ Y | W = 0 ] \\ = \quad \mathbb {E} [ Y _ {1} | W = 1 ] - \mathbb {E} [ Y _ {0} | W = 0 ] \\ = \text {??} \quad \mathbb {E} [ Y _ {1} ] - \mathbb {E} [ Y _ {0} ] \\ \end{array}
$$

• One sufficient condition to validate this approach is

$$
\begin{array}{l} (R) \quad \mathbb {E} [ Y _ {1} | W ] = \mathbb {E} [ Y _ {1} ] \\ \mathbb {E} \left[ Y _ {0} \mid W \right] = \mathbb {E} \left[ Y _ {0} \right] \\ \end{array}
$$

For example, (R) is satisfied if

$$
\left(Y _ {0}, Y _ {1}\right) \text {i s i n d e p e n d e n t} W
$$

i.e. treatment W is randomly assigned to agents

If we can do randomization, we can stop here and estimate θATE by difference of sample averages for treated and untreated groups   
. But if there is self-selection (e.g. agent’s decision on W may be related to $Y _ { 1 } - Y _ { 0 } )$ , how can we estimate θ ?

# Approach 2: Conditional independence

. See also Hansen’s note (Sec. 2.30)   
• Suppose we have covariates X rich enough to make W independent

$$
\left(\operatorname {C l}\right) \quad \mathbb {E} \left[ Y _ {1} \mid X, W \right] = \mathbb {E} \left[ Y _ {1} \mid X \right]
$$

$$
\mathbb {E} [ Y _ {0} | X, W ] = \mathbb {E} [ Y _ {0} | X ]
$$

• Loosely, even though $( Y _ { 0 } , Y _ { 1 } )$ and W might be correlated, they are uncorrelated once we partial out X

Under (CI)

$$
\begin{array}{l} \mathbb {E} [ Y | X, W = 1 ] - \mathbb {E} [ Y | X, W = 0 ] \\ = \mathbb {E} [ Y _ {1} | X, W = 1 ] - \mathbb {E} [ Y _ {0} | X, W = 0 ] \\ = \mathbb {E} [ Y _ {1} | X ] - \mathbb {E} [ Y _ {0} | X ] \\ \end{array}
$$

We can estimate $m _ { 1 } ( x ) = \mathbb { E } [ Y | X = x , W = 1$ ] and m0(x) = E[Y |X = x, W = 0] by parametric or nonparametric regression

To identify $\theta _ { \mathrm { A T E } }$ , add one more assumption (called overlap assumption)

$$
0 <   \mathbb {P} [ W = 1 | X = x ] <   1 \text {f o r a l l} x
$$

i.e. for any x, we need to observe both W = 1 and 0

Under (O), we can apply law of iterated expectations and

$$
\begin{array}{l} \theta_ {\mathrm {A T E}} = \mathbb {E} \left[ \mathbb {E} \left[ Y _ {1} | X \right] - \mathbb {E} \left[ Y _ {0} | X \right] \right] \\ = \mathbb {E} [ m _ {1} (X) - m _ {0} (X) ] \\ \end{array}
$$

So, θATE is estimated by

$$
\frac {1}{n} \sum_ {i = 1} ^ {n} \left\{\hat {m} _ {1} \left(X _ {i}\right) - \hat {m} _ {0} \left(X _ {i}\right) \right\}
$$

where $\hat { m } _ { 1 } ( \cdot )$ and $\hat { m } _ { 0 } ( \cdot )$ are estimators of $m _ { 1 } ( \cdot )$ and $m _ { 0 } ( \cdot )$

For example, if we assume m1 and m0 are linear

$$
m _ {1} (x) = \mathbb {E} [ Y | X = x, W = 1 ] = \alpha_ {1} + x ^ {\prime} \beta_ {1}
$$

$$
m _ {0} (x) = \mathbb {E} [ Y | X = x, W = 0 ] = \alpha_ {0} + x ^ {\prime} \beta_ {0}
$$

• Then run OLS from Y on $X$ for treated and untreated groups separately and estimate $\theta _ { \mathrm { A T E } }$ by

$$
\begin{array}{l} \frac {1}{n} \sum_ {i = 1} ^ {n} \{\hat {m} _ {1} (X _ {i}) - \hat {m} _ {0} (X _ {i}) \} \\ { = } { \left( \hat { \alpha } _ { 1 } + \bar { X } ^ { \prime } \hat { \beta } _ { 1 } \right) - \left( \hat { \alpha } _ { 0 } + \bar { X } ^ { \prime } \hat { \beta } _ { 0 } \right) } \\ \end{array}
$$

# Alternative strategy: Inverse propensity score weighting

• Again, assume (CI) and (O). There is another way to identify and estimate $\theta _ { \mathrm { A T E } }$   
Let $p ( x ) = \mathbb { P } [ W = 1 | X = x ]$ (called propensity score) and look at

$$
\begin{array}{l} \mathbb {E} \left[ \frac {W Y}{p (X)} \mid X \right] = \mathbb {E} \left[ \frac {W Y _ {1}}{p (X)} \mid X \right] \quad (\text {b y}) \\ = \mathbb {E} \left[ \mathbb {E} \left[ \frac {W Y _ {1}}{p (X)} \mid X, W \right] \mid X \right] \quad (\text {b y L I E}) \\ = \mathbb {E} \left[ \frac {W \mathbb {E} \left[ Y _ {1} \mid X , W \right]}{p (X)} \mid X \right] \\ = \mathbb {E} \left[ \frac {W \mathbb {E} [ Y _ {1} | X ]}{p (X)} \mid X \right] \quad (\text {b y} (\mathrm {C l})) \\ = \mathbb {E} \left[ \frac {W}{p (X)} \mid X \right] \mathbb {E} [ Y _ {1} | X ] \\ = \mathbb {E} [ Y _ {1} | X ] \quad (\text {b y} \mathbb {E} [ W | X ] = \mathbb {P} [ W = 1 | X ]) \\ \end{array}
$$

• Similarly we can get

$$
\mathbb {E} \left[ \left. \frac {(1 - W) Y}{1 - p (X)} \right| X \right] = \mathbb {E} [ Y _ {0} | X ]
$$

Under (O), we can apply law of iterated expectations and

$$
\begin{array}{l} \theta_ {\text {A T E}} = \mathbb {E} \left[ \mathbb {E} \left[ Y _ {1} | X \right] - \mathbb {E} \left[ Y _ {0} | X \right] \right] \\ = \mathbb {E} \left[ \mathbb {E} \left[ \frac {W Y}{p (X)} \mid X \right] - \mathbb {E} \left[ \frac {(1 - W) Y}{1 - p (X)} \mid X \right] \right] \\ = \mathbb {E} \left[ \frac {\{W - p (X) \} Y}{p (X) \{1 - p (X) \}} \right] \\ \end{array}
$$

• To estimate $\theta _ { \mathrm { A T E } }$ , we first implement binary regression from w on x (probit, logit, nonparametric, etc.) to get $\hat { p } _ { i } = \hat { p } ( X _ { i } )$ for $i = 1 , \ldots , n$ . Then $\theta _ { \mathrm { A T E } }$ is estimated by

$$
\frac {1}{n} \sum_ {i = 1} ^ {n} \frac {\{W _ {i} - \hat {p} _ {i} \} Y _ {i}}{\hat {p} _ {i} \{1 - \hat {p} _ {i} \}}
$$

# Approach 3: Conditional independence via propensity score

• If dimension of $X$ is large, nonparametric estimation of m1(x) and $m _ { 0 } ( x )$ are difficult (curse of dimensionality)   
• Any way to reduce the dimension? Indeed propensity score $p ( x ) = \mathbb { P } [ W = 1 | X = x ]$ plays such a role   
Theorem: Assume (O) and

$$
\left(\operatorname {C I} ^ {*}\right) \quad \left(Y _ {0}, Y _ {1}\right) \perp W | X
$$

i.e. conditionally on ${ \sf X } , ( { \sf Y } _ { 0 } , { \sf Y } _ { 1 } )$ and W are independent. Then

$$
\begin{array}{l} (\operatorname {C I P}) \quad \mathbb {E} [ Y _ {1} | p (X), W ] = \mathbb {E} [ Y _ {1} | p (X) ] \\ \mathbb {E} \left[ Y _ {0} | p (X), W \right] = \mathbb {E} \left[ Y _ {0} | p (X) \right] \\ \end{array}
$$

# Proof

• Enough to show that given $p ( X )$ , (Y0, Y1) and W are independent   
• To this end, since W is binary, it is enough to show

$$
\mathbb {P} [ W = 1 | Y _ {1}, Y _ {0}, p (X) ] = \mathbb {P} [ W = 1 | p (X) ]
$$

or equivalently

$$
\mathbb {E} \left[ W \mid Y _ {1}, Y _ {0}, p (X) \right] = \mathbb {E} \left[ W \mid p (X) \right]
$$

• Now note that

$$
\begin{array}{l} \mathbb {E} \left[ W \mid Y _ {1}, Y _ {0}, p (X) \right] \\ = \mathbb {E} [ \mathbb {E} [ W | Y _ {1}, Y _ {0}, X ] | Y _ {1}, Y _ {0}, p (X) ] \\ = \mathbb {E} [ p (X) | Y _ {1}, Y _ {0}, p (X) ] \\ = p (X) \\ \end{array}
$$

where 1st equality follows from law of iterated expectations and 2nd equality follows from $\bigl ( \mathsf { C l ^ { * } } \bigr )$

• Since ${ \mathbb E } [ W | Y _ { 1 } , Y _ { 0 } , p ( X ) ]$ depends only on $p ( X )$ , we obtain conclusion

# ATE estimator

• Based on this theorem, θATE is identified as

$$
\theta_ {\mathrm {A T E}} = \mathbb {E} \left[ \mathbb {E} [ Y | p (X), W = 1 ] - \mathbb {E} [ Y | p (X), W = 0 ] \right]
$$

To estimate $\theta _ { \mathrm { A T E } }$ , we first implement binary regression from W on X (probit, logit, nonparametric, etc.) to get $\hat { p } _ { i } = \hat { p } ( X _ { i } )$ for $i = 1 , \ldots , n$   
• Then we run parametric or nonparametric regression from Yi on $\hat { p } _ { i }$ for treated and untreated groups separately to get ˆm1(·) and $\hat { m } _ { 0 } ( \cdot )$   
• $\theta _ { \mathrm { A T E } }$ is estimated by

$$
\frac {1}{n} \sum_ {i = 1} ^ {n} \left\{\hat {m} _ {1} (\hat {p} _ {i}) - \hat {m} _ {0} (\hat {p} _ {i}) \right\}
$$

# Approach 4: Matching

• By using $X$ , we can do imputation for Y1 and Y0   
• Take i -th person. If $W _ { i } = 1$ , then we observe $Y _ { i } = Y _ { 1 i }$ . To estimate Y0i , we find similar people to i in untreated group based on the value of $X _ { j }$ . Then impute

$$
\hat {Y} _ {0 i} = \text {a v e r a g e o f Y} _ {j} \text {s i n u n t r e a t e d g r o u p w i t h} \| X _ {i} - X _ {j} \| \leq \epsilon
$$

Similarly, if $W _ { j } = 0$ , we observe Y0j and impute

$$
\hat {Y} _ {1 j} = \text {a v e r a g e o f Y} _ {i} \text {s i n t r e a t e d g r o u p w i t h} \| X _ {j} - X _ {i} \| \leq \epsilon
$$

• θATE is estimated by

$$
\frac {1}{n} \left[ \sum_ {i: W _ {i} = 1} \left(Y _ {1 i} - \hat {Y} _ {0 i}\right) + \sum_ {j: W _ {j} = 0} \left(\hat {Y} _ {1 j} - Y _ {0 j}\right) \right]
$$

# Approach 5: IV

• If (CI) does not hold (i.e. even if we condition on X , W and $( Y _ { 0 } , Y _ { 1 } )$ still correlate), we typically need some IV   
• Let $\mu _ { 1 } = \mathbb { E } [ Y _ { 1 } ]$ and $\mu _ { 0 } = \mathbb { E } [ Y _ { 0 } ]$ . Look at

$$
\begin{array}{l} Y = W Y _ {1} + (1 - W) Y _ {0} = Y _ {0} + W \left(Y _ {1} - Y _ {0}\right) \\ = \mu_ {0} + W \left(\mu_ {1} - \mu_ {0}\right) + \left(Y _ {0} - \mu_ {0}\right) \\ + W \left\{\left(Y _ {1} - \mu_ {1}\right) - \left(Y _ {0} - \mu_ {0}\right) \right\} \\ = \mu_ {0} + \theta_ {\mathrm {A T E}} W + U _ {0} + W \left(U _ {1} - U _ {0}\right) \\ \end{array}
$$

where $U _ { 0 } = Y _ { 0 } - \mu _ { 0 }$ and $U _ { 1 } = Y _ { 1 } - \mu _ { 1 }$

• Assume

$$
\text {(I V)} \quad U _ {1} = U _ {0}
$$

$$
\mathbb {E} \left[ U _ {0} | X, Z \right] = \mathbb {E} \left[ U _ {0} | X \right] = X ^ {\prime} \gamma
$$

$$
\mathbb {E} [ W | X, Z ] \neq E [ W | X ]
$$

where Z is vector of instruments

Under these assumptions

$$
\begin{array}{l} Y = \mu_ {0} + \theta_ {\mathrm {A T E}} W + U _ {0} \\ = \mu_ {0} + \theta_ {\mathrm {A T E}} W + X ^ {\prime} \gamma + V \\ \end{array}
$$

where $V = U _ { 0 } - X ^ { \prime } \gamma$ and satisfies

$$
\mathbb {E} [ V | X, Z ] = \mathbb {E} [ U _ {0} | X, Z ] - X ^ {\prime} \gamma = 0
$$

• Thus we can do GMM or optimal IV-GMM. Coefficient of W estimates θATE

# Local average treatment effect (LATE): Background

• Consider the model

$$
Y = \mu + \theta W + V
$$

where Y is continuous and $W \in \{ 0 , 1 \}$ is binary treatment. We worry about correlation between W and V

• Suppose we have a binary IV $Z \in \{ 0 , 1 \}$ . It is tempting to run IV regression by moment condition

$$
\mathbb {E} \left[ \left( \begin{array}{c} 1 \\ Z \end{array} \right) V \right] = 0
$$

and get θˆIV

• Question: What are we estimating by θˆIV in treatment effect terminology?

# Notation

Make sure notation

$$
W = \left\{ \begin{array}{l l} 1 & \text {i f t r e a t e d} \\ 0 & \text {i f u n t r e a t e d} \end{array} \right.
$$

$$
Y _ {0} = \text {o u t c o m e w i t h o u t t r a t m e n t}
$$

$$
Y _ {1} = \text {o u t c o m e w i t h t r e a t m e n t}
$$

We observe W and

$$
Y = \left\{ \begin{array}{l l} Y _ {1} & \text {i f} W = 1 \\ Y _ {0} & \text {i f} W = 0 \end{array} \right. = W Y _ {1} + (1 - W) Y _ {0}
$$

• Y1 and $Y _ { 0 }$ are counterfactual outcomes

• Now we introduce counterfactual treatment

$$
Z = \left\{ \begin{array}{l} 1 \\ 0 \end{array} \right.
$$

$$
W _ {0} = \text {t r e a t m e n t s t a t u s i f Z = 0}
$$

$$
W _ {1} = \text {t r e a t m e n t s t a t u s i f Z = 1}
$$

We observe W and

$$
W = \left\{ \begin{array}{l l} W _ {1} & \text {i f} Z = 1 \\ W _ {0} & \text {i f} Z = 0 \end{array} \right. = Z W _ {1} + (1 - Z) W _ {0}
$$

• Combining these equations

$$
Y = Y _ {0} + W \left(Y _ {1} - Y _ {0}\right) = Y _ {0} + W _ {0} \left(Y _ {1} - Y _ {0}\right) + Z \left(W _ {1} - W _ {0}\right) \left(Y _ {1} - Y _ {0}\right)
$$

# Examples

Evans-Schwab (1995) Y =test score

$$
W = \left\{ \begin{array}{l l} 1 & \text {a t t e n d C a t h o l i c h i g h s c h o o l} \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

$$
Z = \left\{ \begin{array}{l l} 1 & \text {s t u d e n t i s C a t h o l i c} \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

Angrist (1989) Y =earnings

$$
W = \left\{ \begin{array}{l l} 1 & \text {v e t e r a n} \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

$$
Z = \left\{ \begin{array}{l l} 1 & \text {V i e t n a m e r a d r a f t l o t t e r y} \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

Otsu (2026) Y =earnings

$$
W = \left\{ \begin{array}{l l} 1 & \text {t a k e E C 4 8 4} \\ 0 & \text {o t h e r w i s e} \end{array} \right. \qquad Z = \left\{ \begin{array}{l l} 1 & \text {a d m i t t e d t o E M E} \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

# Assumption: Independence of Z

• Assume

$$
\left(\text {I N D}\right) \quad Z \perp \left(Y _ {0}, Y _ {1}, W _ {0}, W _ {1}\right)
$$

i.e. Z is assigned independently from (Y0, Y1, W0, W1)

• Under (IND), we get

$$
\begin{array}{l} \mathbb {E} [ Y | Z = 1 ] = \mathbb {E} [ Y _ {0} ] + \mathbb {E} [ W _ {0} (Y _ {1} - Y _ {0}) ] \\ + \mathbb {E} \left[ \left(W _ {1} - W _ {0}\right) \left(Y _ {1} - Y _ {0}\right) \right] \\ \end{array}
$$

$$
\mathbb {E} [ Y | Z = 0 ] = \mathbb {E} [ Y _ {0} ] + \mathbb {E} [ W _ {0} (Y _ {1} - Y _ {0}) ]
$$

• By taking difference and law of iterated expectation

$$
\begin{array}{l} \mathbb {E} [ Y | Z = 1 ] - \mathbb {E} [ Y | Z = 0 ] \\ = \mathbb {E} \left[ \left(W _ {1} - W _ {0}\right) \left(Y _ {1} - Y _ {0}\right) \right] \\ = 1 \cdot \mathbb {E} \left[ Y _ {1} - Y _ {0} \mid W _ {1} - W _ {0} = 1 \right] \mathbb {P} \left[ W _ {1} - W _ {0} = 1 \right] \\ + 0 \cdot \mathbb {E} \left[ Y _ {1} - Y _ {0} \mid W _ {1} - W _ {0} = 0 \right] \mathbb {P} \left[ W _ {1} - W _ {0} = 0 \right] \\ + (- 1) \cdot \mathbb {E} [ Y _ {1} - Y _ {0} | W _ {1} - W _ {0} = - 1 ] \mathbb {P} [ W _ {1} - W _ {0} = - 1 ] \\ = \mathbb {E} [ Y _ {1} - Y _ {0} | W _ {1} - W _ {0} = 1 ] \mathbb {P} [ W _ {1} - W _ {0} = 1 ] \\ - \mathbb {E} \left[ Y _ {1} - Y _ {0} \mid W _ {1} - W _ {0} = - 1 \right] \mathbb {P} \left[ W _ {1} - W _ {0} = - 1 \right] \\ \end{array}
$$

Note: we can estimate LHS by averages

# Assumption: Monotonicity

Assume

$$
\begin{array}{c c} \text {(M)} & W _ {1} \geq W _ {0} \end{array}
$$

i.e. the pair $W _ { 1 } = 0$ and $W _ { 0 } = 1$ never happens, or equivalently

$$
\mathbb {P} \left[ W _ {1} - W _ {0} = - 1 \right] = 0
$$

• So, under (IND) and (M), difference in previous page becomes

$$
\mathbb {E} [ Y | Z = 1 ] - \mathbb {E} [ Y | Z = 0 ] = \mathbb {E} [ Y _ {1} - Y _ {0} | W _ {1} - W _ {0} = 1 ] \mathbb {P} [ W _ {1} - W _ {0} = 1 ]
$$

• Seems we are getting closer to object

$$
\mathbb {E} \left[ Y _ {1} - Y _ {0} \mid W _ {1} - W _ {0} = 1 \right]
$$

# Terminology

• We often call

$$
(W _ {0}, W _ {1}) = \left\{ \begin{array}{l l} (0, 0) & \text {n e v e r - t a k e r} \\ (1, 1) & \text {a l w a y s - t a k e r} \\ (0, 1) & \text {c o m p l i e r} \\ (1, 0) & \text {d e f i e r} \end{array} \right.
$$

• (M) excludes defiers in population   
W1 − W0 = 1 means compliers

# LATE

• Object $\theta _ { L A T E } = \mathbb { E } [ Y _ { 1 } - Y _ { 0 } | W _ { 1 } - W _ { 0 } = 1 ]$ is called local average treatment effect (LATE)   
• θLATE is interpreted as ATE for compliers, i.e. ATE for those who would be induced to participate by changing Z from 0 to 1   
• Economic interpretation of θLATE totally depends on Z   
• E.g. For Catholic example, θLATE is average effect on test scores for the people who choose Catholic school because they are Catholic

# Identify LATE

Go back to the expression

$$
\begin{array}{l} \mathbb {E} [ Y | Z = 1 ] - \mathbb {E} [ Y | Z = 0 ] \\ = \mathbb {E} [ Y _ {1} - Y _ {0} | W _ {1} - W _ {0} = 1 ] \mathbb {P} [ W _ {1} - W _ {0} = 1 ] \\ = \theta_ {\text {L A T E}} \mathbb {P} \left(W _ {1} - W _ {0} = 1\right) \\ \end{array}
$$

• Since we can estimate LHS, it remains to check whether we can estimate $\mathbb { P } [ W _ { 1 } - W _ { 0 } = 1 ]$   
• Under (M), $( W _ { 1 } - W _ { 0 } )$ can take 0 or 1. So

$$
\begin{array}{l} \mathbb {P} \left[ W _ {1} - W _ {0} = 1 \right] = \mathbb {E} \left[ W _ {1} - W _ {0} \right] \\ = \mathbb {E} [ W | Z = 1 ] - \mathbb {E} [ W | Z = 0 ] \\ = \mathbb {P} [ W = 1 | Z = 1 ] - \mathbb {P} [ W = 1 | Z = 0 ] \\ \end{array}
$$

• Therefore, if we assume

$$
(P) \quad \mathbb {P} [ W = 1 | Z = 1 ] \neq \mathbb {P} [ W = 1 | Z = 0 ]
$$

θLATE is identified as

$$
\theta_ {\mathrm {L A T E}} = \frac {\mathbb {E} [ Y | Z = 1 ] - \mathbb {E} [ Y | Z = 0 ]}{\mathbb {P} [ W = 1 | Z = 1 ] - \mathbb {P} [ W = 1 | Z = 0 ]}
$$

• θLATE can be estimated by

$$
\hat {\theta} _ {\mathrm {L A T E}} = \frac {\bar {Y} _ {1} - \bar {Y} _ {0}}{\bar {W} _ {1} - \bar {W} _ {0}}
$$

where $\bar { Y } _ { z }$ and $\bar { \boldsymbol { W } } _ { z }$ are averages of Y ’s and W ’s with $Z = z$ respectively

# Remark on ˆθLATE

. Indeed the estimator θˆLATE coincides with IV regression estimator $ { \hat { \theta } } _ { \mathrm { I V } }$ by (see PS)

$$
Y = \mu + \theta W + V
$$

using

$$
\mathbb {E} \left[ \left( \begin{array}{c} 1 \\ Z \end{array} \right) V \right] = 0
$$

# 2. Difference in differences

# DID

• Observe outcome of individual in two groups: Control (C) and Treatment (T)   
• Observe outcome at two different time periods: Pre (0) and Post (1)   
• Treatment group receives treatment between time 0 and 1   
• Goal: Estimate causal effect of treatment   
• E.g. Health intervention (sanitary water provision in some villages), Public policy (minimum wage increase in some states), so on

# Example: Increase of minimum wage

• Card and Krueger (1994): Study on impact of increase of minimum hourly wage from $4.25 to $5.05 at New Jersey in 1992   
Average employment at fast food restaurants

<table><tr><td></td><td>NJ (Treatment)</td><td>PA (Control)</td><td>Difference</td></tr><tr><td>Pre</td><td>20.43</td><td>23.38</td><td>2.95</td></tr><tr><td>Post</td><td>20.94</td><td>21.10</td><td>0.20</td></tr><tr><td>Difference</td><td>0.47</td><td>-2.28</td><td>2.75</td></tr></table>

• Difference estimate is 0.47 but less plausible as evidence of counterfactual   
• DID estimate provides more plausible estimate by comparing change in treatment sample (NJ) with comparable change in control sample (in this case PA, where minimum wage was constant at $4.25)   
DID estimate is 0.47 − (−2.28) = 2.75

# $\mathsf { S i m p l e \ D } | \mathsf { D \ e s t i m a t o r }$

• Estimator $( \bar { Y } _ { g t }$ average outcome of group $g \in \{ T , C \}$ at time $t \in \{ 0 , 1 \} )$

$$
\hat {\theta} = \left(\bar {Y} _ {T 1} - \bar {Y} _ {T 0}\right) - \left(\bar {Y} _ {C 1} - \bar {Y} _ {C 0}\right)
$$

Suppose expected value is decomposed like

$$
\begin{array}{l} \mathbb {E} [ \hat {\theta} ] = (\mathbb {E} [ \bar {Y} _ {T 1} ] - \mathbb {E} [ \bar {Y} _ {T 0} ]) - (\mathbb {E} [ \bar {Y} _ {C 1} ] - \mathbb {E} [ \bar {Y} _ {C 0} ]) \\ = \left(\left[ \theta + \delta \tau_ {1} + \beta \tau \right] - \beta \tau\right) - \left(\left[ \delta c _ {1} + \beta c \right] - \beta c\right) \\ \end{array}
$$

$$
\begin{array}{l} \beta_ {T}, \beta_ {C} = \text {b a s e l i n e m e a n s i n T a n d C} \\ \delta_ {C 1} = \text {c h a n g e i n m e a n i n C b / w t i m e 0 a n d 1} \\ \begin{array}{r c l} \delta_ {T 1} & = & \text {c h a n g e i n m e a n i n T b / w t i m e 0 a n d 1} \\ & & \text {i n a b s e n c e o f t r e t a m t e n t} \end{array} \\ \theta = \text {t r e a t m e n t} \\ \end{array}
$$

• Then we get

$$
\mathbb {E} [ \hat {\theta} ] = \theta + (\delta_ {T 1} - \delta_ {C 1})
$$

• Under common trends assumption $\delta _ { T 1 } = \delta _ { C 1 }$ (i.e. T and C groups are trended same way in absence of treatment), DID estimator $\hat { \theta }$ is unbiased for treatment effect θ

• Allows for quite general initial difference between groups (βT , βC )

# Preparation: Two-way error components model

• To understand DID in regression framework, consider two-way error component model for panel data

$$
\left\{Y _ {i t}, X _ {i t}: i = 1, \dots , N, t = 1, \dots , T \right\}
$$

$$
Y _ {i t} = X _ {i t} ^ {\prime} \beta + \nu_ {t} + u _ {i} + \varepsilon_ {i t}
$$

where $u _ { j }$ is unobservable individual-specific effect and $\nu _ { t }$ is unobservable time-specific effect

• You will see detailed discussion on panel data in Weeks 8-11   
• Component $\nu _ { t } + u _ { i }$ can be eliminated by two-way within transform

$$
\ddot {Y} _ {i t} = Y _ {i t} - \bar {Y} _ {i} - \tilde {Y} _ {t} + \bar {Y}
$$

where $\begin{array} { r } { \bar { Y } _ { i } = \frac { 1 } { T } \sum _ { t = 1 } ^ { T } Y _ { i t } , \ \tilde { Y } _ { t } = \frac { 1 } { N } \sum _ { i = 1 } ^ { N } Y _ { i t } \ ; } \end{array}$

$$
\bar {Y} = \frac {1}{N T} \sum_ {i = 1} ^ {N} \sum_ {t = 1} ^ {T} Y _ {i t}
$$

Indeed

$$
\ddot {Y} _ {i t} = \ddot {X} _ {i t} ^ {\prime} \beta + \ddot {\varepsilon} _ {i t}
$$

• To see this, letting $e _ { i t } = \nu _ { t } + u _ { i } + \varepsilon _ { i t }$ , we have

$$
\begin{array}{l} \ddot {e} _ {i t} = \nu_ {t} + u _ {i} + \varepsilon_ {i t} - (\bar {\nu} + u _ {i} + \bar {\varepsilon} _ {i}) - (\nu_ {t} + \bar {u} + \tilde {\varepsilon} _ {t}) + (\bar {\nu} + \bar {u} + \bar {\varepsilon}) \\ = \varepsilon_ {i t} - \bar {\varepsilon} _ {i} - \tilde {\varepsilon} _ {t} + \bar {\varepsilon} = \ddot {\varepsilon} _ {i t} \\ \end{array}
$$

• Fixed effect estimator for $\beta$ is given by OLS for regressing Y¨it on X¨it

# Regression formulation

• Numbers in above table can be obtained by dummy regression

$$
Y _ {i t} = \beta_ {0} + \beta_ {1} \text {S t a t e} _ {i} + \beta_ {2} \text {T i m e} _ {t} + \theta D _ {i t} + \varepsilon_ {i t}
$$

Yit = employment at restaurant i at time t

Statei = 1 for NJ, 0 for PA

Timet = 1 for after change, 0 for before change

Dit = Statei · Timet (1 if min wage is $5.05, 0 if $4.25)

which implies conditional mean table

<table><tr><td></td><td>NJ (Treatment)</td><td>PA (Control)</td><td>Difference</td></tr><tr><td>Pre</td><td>β0 + β1</td><td>β0</td><td>β1</td></tr><tr><td>Post</td><td>β0 + β1 + β2 + θ</td><td>β0 + β2</td><td>β1 + θ</td></tr><tr><td>Difference</td><td>β2 + θ</td><td>β2</td><td>θ</td></tr></table>

• If we run OLS for Yit on (Statei , Timet , Dit ), we get exactly same estimate for θ

$$
\hat {Y} _ {i t} = \begin{array}{l l l l l l l l l} 2 3. 4 & - & 2. 9 & S t a t e _ {i} - & 2. 3 & T i m e _ {t} + & 2. 7 5 \\ (1. 4) & & (1. 5) & & (1. 2) \end{array} D _ {i t}
$$

• Also exactly same estimate for $D _ { i t }$ can be obtained based on two-way within transform

$$
\hat {\dot {Y}} _ {i t} = \begin{array}{l} 2. 7 5 \\ (1. 3 4) \end{array} \ddot {D} _ {i t}
$$

Regression formulation facilitates inference

# Two-way fixed effect formulation

• Since Statei is time invariant and Timet are individual invariant, θ can be estimated by two-way model

$$
Y _ {i t} = \theta D _ {i t} + u _ {i} + \nu_ {t} + \varepsilon_ {i t}
$$

• This formulation is useful to generalize for multiple states and time periods   
More generally

$$
Y _ {i t} = \theta D _ {i t} + X _ {i t} ^ {\prime} \beta + u _ {i} + \nu_ {t} + \varepsilon_ {i t}
$$

with controls Xit

# Identification of causal effect

If potential outcomes are given by this model:

$$
Y _ {i t} (1) = \theta \cdot 1 + X _ {i t} ^ {\prime} \beta + u _ {i} + \nu_ {t} + \varepsilon_ {i t}
$$

$$
Y _ {i t} (0) = \theta \cdot 0 + X _ {i t} ^ {\prime} \beta + u _ {i} + \nu_ {t} + \varepsilon_ {i t}
$$

then θ is causal effect of $D _ { i t }$

• To estimate θ, consider two-way within transform

$$
\ddot {Y} _ {i t} = \theta \ddot {D} _ {i t} + \ddot {X} _ {i t} ^ {\prime} \beta + \ddot {\varepsilon} _ {i t}
$$

. Let $\pmb { \mathsf { X } } _ { i } = ( X _ { i 1 } , \ldots , X _ { i T } )$ . For identification of θ (in other words, for OLS to be consistent estimator of θ), we assume

(i) E[εit |Xi ] = 0 for all t   
(ii) conditional on Xi , $D _ { i t }$ and εis are independent for all t, s

• These assumptions guarantee

$$
\mathbb {E} [ \ddot {\varepsilon} _ {i t} | \ddot {D} _ {i t}, \ddot {X} _ {i t} ] = \mathbb {E} [ \ddot {\varepsilon} _ {i t} | \ddot {X} _ {i t} ] = 0
$$

so that $\mathbb { E } [ \ddot { Y } _ { i t } | \ddot { D } _ { i t } , \ddot { X } _ { i t } ] = \theta \ddot { D } _ { i t } + \ddot { X } _ { i t } ^ { \prime } \beta$ and OLS for $\ddot { Y } _ { i t }$ on $( \ddot { D } _ { i t } , \ddot { X } _ { i t } )$ yields unbiased estimator of causal effect θ

# Key condition

• Like identification of ATE, key condition is conditional independence of $D$ and ε given X   
• Even though D is typically interaction of dummies, it is more insightful to recognize $D$ as treatment   
In min wage example, $D _ { i t } = S t a t e _ { i } \times T i m e _ { t }$ , which is treatment of minimum wage increase   
• Conditional independence of $D$ and $\varepsilon$ given $X$ implies e.g.

other changes in NJ coincident with minimum wage change has no effect on employment $( \mathrm { C o v } ( D _ { i t } , \varepsilon _ { i t } ) = 0$ for $i \in \mathbb { N } \mathrm { { J } }$ )   
policy is not enacted in response to knowledge about future or past employment $( \mathrm { C o v } ( D _ { i t } , \varepsilon _ { i s } ) = 0$ for $i \in \mathsf { N J }$ , $t \neq s )$

# 3. Regression discontinuity

# RDD

• In some cases, treatment is determined by threshold crossing rule   
• E.g. Political incumbent (vote share exceeds threshold), college admission (exam score exceeds threshold)   
• In RDD analysis, treatment is viewed as randomly assigned for individuals near threshold   
• Sharp RDD: Treatment is discontinuous deterministic rule, say $D = \mathbb { I } \{ X \geq c \}$   
• Fuzzy RDD: Treatment probability $\mathbb { P } [ D = 1 | X = x ]$ is discontinuous at c

# Sharp RDD

• Treatment $D = \mathbb { I } \{ X \geq c \}$ (X is called running variable, known constant $c$ is called cut-off)   
E.g. Head Start funding (U.S. federal anti-poverty program): Y =county mortality rate, X =county poverty rate, $c = 5 9$ (at which 300 counties with poverty rates equal or above), D =grant-writing assistance   
• Outcome

$$
Y = D Y _ {1} + (1 - D) Y _ {0} = \mathbb {I} \{X \geq c \} Y _ {1} + \mathbb {I} \{X <   c \} Y _ {0}
$$

Interest: Conditional ATE $\theta ( x ) = \mathbb { E } [ Y _ { 1 } - Y _ { 0 } | X = x ]$ at x = c

• Indeed $\theta ( c )$ is identified under very mild conditions   
• Let

$$
\begin{array}{l} m (x) = \mathbb {E} [ Y | X = x ] \\ m _ {1} (x) = \mathbb {E} [ Y _ {1} | X = x ], \quad m _ {0} (x) = \mathbb {E} [ Y _ {0} | X = x ] \\ \end{array}
$$

• If $m _ { 1 } ( x )$ and $m _ { 0 } ( x )$ are continuous at $x = c$ , then $\theta ( c )$ is identified as

$$
\theta (c) = \lim_{x\downarrow c}m(x) - \lim_{x\uparrow c}m(x)
$$

• This can be seen by taking limits for

$$
m (x) = \mathbb {I} \{x \geq c \} m _ {1} (x) + \mathbb {I} \{x <   c \} m _ {0} (x)
$$

# Estimation

• Based on iid sample $\{ Y _ { i } , X _ { i } \} _ { i = 1 } ^ { n }$ , estimate $\mathsf { I i m } _ { x \downarrow c } m ( x )$ and limx↑c m(x )   
• Due to its desirable property for boundary estimation (see Hansen Ch. 19.10), local linear estimation is commonly applied

$$
\hat {m} (c +) = \hat {b} _ {0} \text {o f} \min  _ {b _ {0}, b _ {1}} \sum_ {i: X _ {i} \geq c} K \left(\frac {X _ {i} - c}{h}\right) \left\{Y _ {i} - b _ {0} - b _ {1} \left(X _ {i} - c\right) \right\} ^ {2}
$$

$$
\hat {m} (c -) = \hat {b} _ {0} \text {o f} \min  _ {b _ {0}, b _ {1}} \sum_ {i: X _ {i} <   c} K \left(\frac {X _ {i} - c}{h}\right) \left\{Y _ {i} - b _ {0} - b _ {1} \left(X _ {i} - c\right) \right\} ^ {2}
$$

θ(c) is estimated by $\hat { \theta } ( c ) = \hat { m } ( c + ) - \hat { m } ( c - )$

# Fuzzy RDD

• Let $p ( x ) = \mathbb { P } [ D = 1 | X = x ]$ . Fuzzy RDD applies when treatment probability is discontinuous at $x = c$ :

$$
\lim_{x\downarrow c}p(x)\neq \lim_{x\uparrow c}p(x)
$$

In this case, if $m _ { 1 } ( x )$ and $m _ { 0 } ( x )$ are continuous at $x = c$ and $D \perp ( Y _ { 1 } - Y _ { 0 } ) | X = x$ for all x in a neighborhood of $c$ , then $\theta ( c ) = \mathbb { E } [ Y _ { 1 } - Y _ { 0 } | X = c ]$ is identified as

$$
\theta (c) = \frac {\lim  _ {x \downarrow c} m (x) - \lim  _ {x \uparrow c} m (x)}{\lim  _ {x \downarrow c} p (x) - \lim  _ {x \uparrow c} p (x)}
$$

• Proof: Taking conditional expectation for

Y = DY1 + (1 − D)Y0 = Y0 + D(Y1 − Y0) in a neighborhood of c ,

$$
\begin{array}{l} m (x) = m _ {0} (x) + \mathbb {E} \left[ D \left(Y _ {1} - Y _ {0}\right) \mid X = x \right] \\ = m _ {0} (x) + p (x) \theta (x) \quad (\text {b y} D \perp (Y _ {1} - Y _ {0}) | X = x) \\ \end{array}
$$

• Then conclusion follows by

$$
\lim  _ {x \downarrow c} m (x) = m _ {0} (c) + \theta (c) \lim  _ {x \downarrow c} p (x)
$$

$$
\lim  _ {x \uparrow c} m (x) = m _ {0} (c) + \theta (c) \lim  _ {x \uparrow c} p (x)
$$

# Estimation

• Based on iid sample $\{ Y _ { i } , D _ { i } , X _ { i } \} _ { i = 1 } ^ { n }$ , estimate limx↓c m(x), limx↑c m(x), $\mathfrak { i m } _ { x \downarrow c } p ( x )$ and limx↑c p(x)   
• Similar to $\hat { m } ( \cdot )$ , we apply local linear estimation

$$
\hat {p} (c +) = \hat {b} _ {0} \text {o f} \min  _ {b _ {0}, b _ {1}} \sum_ {i: X _ {i} \geq c} K \left(\frac {X _ {i} - c}{h}\right) \left\{D _ {i} - b _ {0} - b _ {1} \left(X _ {i} - c\right) \right\} ^ {2}
$$

$$
\hat {p} (c -) = \hat {b} _ {0} \text {o f} \min  _ {b _ {0}, b _ {1}} \sum_ {i: X _ {i} <   c} K \left(\frac {X _ {i} - c}{h}\right) \left\{D _ {i} - b _ {0} - b _ {1} (X _ {i} - c) \right\} ^ {2}
$$

θ(c) is estimated by

$$
\hat {\theta} (c) = \frac {\hat {m} (c +) - \hat {m} (c -)}{\hat {p} (c +) - \hat {p} (c -)}
$$

# 4. Weak IV

# Simulation

IV regression

$$
Y _ {i} = X _ {i} \beta + e _ {i}
$$

$$
X _ {i} = Z _ {i} \gamma + u _ {i}
$$

$$
Z _ {i} \sim \mathrm {N} (0, 1)
$$

$$
\left( \begin{array}{c} e _ {i} \\ u _ {i} \end{array} \right) \sim \mathrm {N} \left(0, \left( \begin{array}{c c} 1 & 0. 9 \\ 0. 9 & 1 \end{array} \right)\right)
$$

For structural parameter, set $\beta = 1$ . For reduced form parameter, consider two cases

$$
\gamma = \left\{ \begin{array}{c c} 1 & (\text {s t r o n g I V}) \\ . 0 1 & (\text {w e a k I V}) \end{array} \right.
$$

Moment restriction for $\beta$

$$
\mathbb {E} [ g (W _ {i}, \beta) ] = \mathbb {E} [ Z _ {i} (Y _ {i} - X _ {i} \beta) ] = 0
$$

. This is just-identified model (one moment restriction for one parameter). Thus we can apply method of moments

$$
\frac {1}{n} \sum_ {i = 1} ^ {n} Z _ {i} \left(Y _ {i} - X _ {i} \hat {\beta}\right) = 0
$$

$$
\hat {\beta} = \left(\sum_ {i = 1} ^ {n} Z _ {i} X _ {i}\right) ^ {- 1} \left(\sum_ {i = 1} ^ {n} Z _ {i} Y _ {i}\right)
$$

# Result by 10,000 replications

• Case I: $\gamma = 1$ and $n = 1 0 0$

<table><tr><td></td><td>Bias</td><td>St.Dev</td><td>√MSE</td></tr><tr><td>β</td><td>-.009</td><td>.105</td><td>.105</td></tr></table>

<table><tr><td colspan="2">Frequency of {β∉CI}</td></tr><tr><td>95% Wald CI</td><td>.062</td></tr></table>

βˆ precisely estimates $\beta$ and Wald CI based on asymptotic normality of $\hat { \beta }$ works well

• Case II: γ = .01 and $n = 1 0 0$ . Trim estimates with |βˆ − β| > 10

<table><tr><td></td><td>Bias</td><td>St.Dev</td><td>√MSE</td></tr><tr><td>β</td><td>.203</td><td>1.937</td><td>1.948</td></tr></table>

<table><tr><td colspan="2">Frequency of {β∉CI}</td></tr><tr><td>95% Wald CI</td><td>.280</td></tr></table>

Large estimation errors in $\hat { \beta }$ and Wald CI does not work well   
• As far as $\gamma \neq 0$ , $\hat { \beta }$ should be asymptotically normal. So this is a finite sample problem

• Case III: γ = .01 and $n = 1 0$ , 000. Trim estimates with |βˆ − β| > 10

![](images/8d12694e8f74a4feb31a08de5bc0aeb1f026eb574f828a517932bdf418b8acb1.jpg)

![](images/148420f00610f2ceecd399a625401d89df02bd1b87afe01877caacd951db1d6c.jpg)

• n = 10, 000 is not large enough to apply asymptotic approximation

# Weak IV asymptotics

• If $\gamma \approx 0$ , then conventional asymptotic theory is not precise to explain finite sample properties   
• To understand behaviors of $\hat { \beta }$ and t-value, consider the following model

$$
Y _ {i} = X _ {i} \beta + e _ {i}
$$

$$
X _ {i} = Z _ {i} \gamma_ {0 n} + u _ {i}
$$

where

$$
\gamma_ {0 n} = \frac {c}{\sqrt {n}} \quad \text {f o r s o m e} c \neq 0
$$

# Local asymptotics

• This kind of local asymptotic approximation is common in statistics   
• Example: Local alternative hypothesis to evaluate power of tests on $H _ { 0 } : \beta = a$ vs. $\begin{array} { r } { H _ { 1 } : \beta \neq \mathsf { a } , } \end{array}$ , that is

$$
H _ {1 n}: \beta = a + \frac {c}{\sqrt {n}} \quad \text {f o r s o m e} c \neq 0
$$

Example: Local to unity asymptotics for autoregression

$$
Y _ {t} = \rho_ {T} Y _ {t - 1} + u _ {t}
$$

where

$$
\rho_ {T} = 1 - \frac {c}{T} \quad \text {f o r s o m e} c > 0
$$

# Distribution of βˆ

Note that

$$
\begin{array}{l} \hat {\beta} = \frac {\sum_ {i = 1} ^ {n} Z _ {i} Y _ {i}}{\sum_ {i = 1} ^ {n} Z _ {i} X _ {i}} = \beta + \frac {\sum_ {i = 1} ^ {n} Z _ {i} e _ {i}}{\sum_ {i = 1} ^ {n} Z _ {i} X _ {i}} \\ = \beta + \frac {\frac {1}{\sqrt {n}} \sum_ {i = 1} ^ {n} Z _ {i} e _ {i}}{\frac {1}{\sqrt {n}} \sum_ {i = 1} ^ {n} Z _ {i} \left(Z _ {i} c / \sqrt {n} + u _ {i}\right)} \\ = \beta + \frac {\frac {1}{\sqrt {n}} \sum_ {i = 1} ^ {n} Z _ {i} e _ {i}}{\frac {c}{n} \sum_ {i = 1} ^ {n} Z _ {i} ^ {2} + \frac {1}{\sqrt {n}} \sum_ {i = 1} ^ {n} Z _ {i} u _ {i}} \\ \stackrel {d} {\rightarrow} \beta + \frac {\xi_ {1}}{c \mathbb {E} [ Z ^ {2} ] + \xi_ {2}} \\ \end{array}
$$

where

$$
\left( \begin{array}{l} \xi_ {1} \\ \xi_ {2} \end{array} \right) \sim \mathrm {N} \left(\left( \begin{array}{l} 0 \\ 0 \end{array} \right), \left( \begin{array}{l l} \mathbb {E} [ Z ^ {2} e ^ {2} ] & \mathbb {E} [ Z ^ {2} e u ] \\ \mathbb {E} [ Z ^ {2} e u ] & \mathbb {E} [ Z ^ {2} u ^ {2} ] \end{array} \right)\right)
$$

• Under weak IV asymptotics, $\hat { \beta }$ does not converge to $\beta$ (inconsistent) and has a random limit   
• Generally it is impossible to estimate $\beta$ consistently under weak IV asymptotics   
Similar result holds for over-identified case   
• Only one weak IV is enough to cause this inconsistency   
. Since $\hat { \beta }$ has above distribution, t-statistic and Wald confidence interval based on asymptotic normality of $\sqrt { n } ( \hat { \beta } - \beta )$ is misleading

# Weak identification

Stock & Wright (an EME graduate) (2000)   
• Notion of weak IV can be extended to general possibly nonlinear GMM setting

$$
\mathbb {E} [ g (W, \beta) ] = 0
$$

Key: Look at Jacobian

$$
\mathbb {E} \left[ \frac {\partial g (W , \beta)}{\partial \beta^ {\prime}} \right]
$$

For IV regression with $g ( W , \beta ) = Z ( Y - X \beta )$

$$
\mathbb {E} \left[ \frac {\partial g (W , \beta)}{\partial \beta^ {\prime}} \right] = - \mathbb {E} [ Z X ] = - \mathbb {E} [ Z ^ {2} ] \gamma \approx 0
$$

Weak identification asymptotics

$$
\mathbb {E} \left[ \frac {\partial g (W , \beta)}{\partial \beta^ {\prime}} \right] = \frac {1}{\sqrt {n}} C
$$

for some non-zero matrix C

• Under this asymptotics, there is no consistent estimator for $\beta$ in general   
• Intuition: GMM objective function $\bar { g } ( b ) ^ { \prime } W _ { n } \bar { g } ( b )$ is flat around $\beta$ . So estimator cannot converge to $\beta$

# Valid test

• Give up point estimation of $\beta$   
• Instead let us consider simple parameter hypothesis testing

$$
\mathbb {H} _ {0}: \beta = c \quad \mathsf {v s .} \quad \mathbb {H} _ {1}: \beta \neq c
$$

• We cannot use t-value based on $\hat { \beta }$ because $\hat { \beta }$ is not asymptotically normal under weak identification   
• Also we cannot use the GMM distance or LR-type statistic $L R = J ( c ) - J ( \hat { \beta } )$ because it contains $\hat { \beta }$   
Key: Construct test statistic which does not contain βˆ

# S-statistic

• Look at the following object

$$
S (\beta) = n \bar {g} (\beta) ^ {\prime} \hat {\Omega} (\beta) ^ {- 1} \bar {g} (\beta)
$$

where

$$
\hat {\Omega} (\beta) = \frac {1}{n} \sum_ {i = 1} ^ {n} g (W _ {i}, \beta) g (W _ {i}, \beta) ^ {\prime}
$$

$S ( b )$ is the objective function of CU-GMM   
• Caution: we cannot use two-step GMM objective function $n \bar { g } ( \beta ) ^ { \prime } \hat { \Omega } ( \hat { \beta } _ { W } ) ^ { - 1 } \bar { g } ( \beta )$ because it contains estimator $\hat { \beta } _ { W }$

• Regardless of identification status, it holds

$$
\sqrt {n} \bar {g} (\beta) \stackrel {{d}} {{\to}} \mathrm {N} (0, \Omega)
$$

$$
\hat {\Omega} (\beta) \stackrel {p} {\to} \Omega
$$

because these results are derived without assumptions on E h ∂g (W ,β) i ∂β′

• Therefore, regardless of identification status

$$
\begin{array}{l} S (\beta) = \{\sqrt {n} \bar {g} (\beta) \} ^ {\prime} \hat {\Omega} (\beta) ^ {- 1} \{\sqrt {n} \bar {g} (\beta) \} \\ \stackrel {d} {\rightarrow} \chi_ {\dim g} ^ {2} (\dim g) \\ \end{array}
$$

• Based on this, we can test H0 : $\beta = c$ by

$$
S (c) \leqslant \chi_ {\alpha} ^ {2} (\dim g)
$$

• If we can do testing for H0 : $\beta = c$ , inversion of this statistic yields valid confidence interval for $\beta$ as

$$
\{c: S (c) \leq \chi_ {\alpha} ^ {2} (\dim g) \}
$$

# Simulation

• Case I: $\gamma = 1$ and $n = 1 0 0$

<table><tr><td></td><td>Frequency of {β∉CI}</td></tr><tr><td>95% Wald CI</td><td>.062</td></tr><tr><td>S(c)</td><td>.053</td></tr></table>

Case II: $\gamma = . 0 1$ and n = 100

<table><tr><td></td><td>Frequency of {β∉CI}</td></tr><tr><td>95% Wald CI</td><td>.280</td></tr><tr><td>S(c)</td><td>.054</td></tr></table>

• Case III: $\gamma = . 0 1$ and $n = 1 0$ , 000

<table><tr><td></td><td>Frequency of {β∉CI}</td></tr><tr><td>95% Wald CI</td><td>.164</td></tr><tr><td>S(c)</td><td>.050</td></tr></table>

S(c) works very well

# Drawback of S-statistic

• Critical values of test and confidence interval based on S-statistic is $\chi _ { \alpha } ^ { 2 } \big ( \mathsf { d i m } \boldsymbol { g } \big )$ $\chi _ { \alpha } ^ { 2 }$ . Thus

$$
\dim g \uparrow \Rightarrow \chi_ {\alpha} ^ {2} (\dim g) \uparrow
$$

even though dim $\beta$ is fixed

• For example, 95% critical values are

$$
\chi_ {\alpha} ^ {2} (1) = 3. 8 4
$$

$$
\chi_ {\alpha} ^ {2} (5) = 1 1. 0 7
$$

$$
\chi_ {\alpha} ^ {2} (1 0) = 1 8. 3 1
$$

$$
\chi_ {\alpha} ^ {2} (2 0) = 3 1. 4 1
$$

If dim g is high, test based on $S ( c )$ is less powerful and confidence interval based on $S ( c )$ gets wider