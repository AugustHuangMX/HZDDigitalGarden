Ec484: Topic I ó Panel Data Econometrics, WT2026

# PANEL DATA MODELS

(or Longitudinal or Time-Series/Cross-Section)

latest version: 26mar26

# 1 Preliminary Issues:

# 1.1 At least double-indexed data

Panel or Longitudinal or Time-series/Cross-section Data are such where a unit of observation $s$ subsumes at least two indices/dimensions of sampling. E.g.,

$$
s = 1, \dots , S
$$

$y _ { s }$ $x _ { s } ^ { \prime }$ $\epsilon _ { s }$ $s = i t$

NB: Throughout our discussion, we will focus on ìLarge N, small Tî asymptotics with $N  \infty$ while $\operatorname* { m a x } _ { i } T _ { i } \approx$ small and Önite.

We will start with the basic static linear model:

$$
y _ {i t} = x _ {i t} ^ {\prime} \beta + \epsilon_ {i t}, \quad i = 1, \dots , N, \quad t = 1, \dots , T _ {i} \tag {1}
$$

Typically $N$ is very large (several hundreds or even thousands) while $T _ { i }$ is quite small (ranging from $2 - 1 0$ in most cases, and very rarely exceeding 20). If $T _ { i } = T$ for every $i$ , the panel data set is said to be ìbalancedîó otherwise it is ìunbalanced.î

1.2 Organization of the data ó Stacking of Vectors and Matrices ó three alternatives with two dimensions:

1.2.1 t ìfastestî:

$$
\left\{y _ {s} \right\} = \left( \begin{array}{c} y _ {1} \\ \vdots \\ y _ {s} \\ \vdots \\ y _ {S} \end{array} \right) = \left( \begin{array}{c} y _ {1 1} \\ \vdots \\ y _ {i t} \\ \vdots \\ y _ {N T _ {N}} \end{array} \right) = \left( \begin{array}{c} y _ {1 1} \\ y _ {1 2} \\ \vdots \\ y _ {1 t} \\ \vdots \\ y _ {1 T _ {1}} \\ - - - \\ y _ {2 1} \\ y _ {2 2} \\ \vdots \\ y _ {2 t} \\ \vdots \\ y _ {2 T _ {2}} \\ - - - \\ \vdots \\ y _ {N 1} \\ \vdots \\ y _ {N T _ {N}} \end{array} \right) \dots \left( \begin{array}{c} I I D \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdot & \end{array} \right) \dots \left( \begin{array}{c} T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D & \end{array} \right)
$$

# 1.2.2 i ìfastestî:

$$
\left\{y _ {s} \right\} = \left( \begin{array}{c} y _ {1} \\ \vdots \\ y _ {s} \\ \vdots \\ y _ {S} \end{array} \right) = \left( \begin{array}{c} y _ {1 1} \\ \vdots \\ y _ {i t} \\ \vdots \\ y _ {N T _ {N}} \end{array} \right) = \left( \begin{array}{c} y _ {1 1} \\ y _ {2 1} \\ \vdots \\ y _ {i 1} \\ \vdots \\ y _ {N 1} \\ - - - - \\ y _ {1 2} \\ y _ {2 2} \\ \vdots \\ y _ {i 2} \\ \vdots \\ y _ {N 2} \\ - - - - \\ \vdots \\ y _ {N 1} \\ \vdots \\ y _ {N T _ {N}} \end{array} \right) \dots \left( \begin{array}{c} I I D \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdots \\ \vdot & \end{array} \right) \dots \left( \begin{array}{c} T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D \\ \vdots \\ T I D & \end{array} \right)
$$

# 1.2.3 data organized as they come but double-indexed ID variables:

$$
\begin{array}{l} \left\{y _ {s} \right\} = \left( \begin{array}{c} y _ {1} \\ \vdots \\ y _ {s} \\ \vdots \\ y _ {S} \end{array} \right) \dots \left( \begin{array}{c} i i d (1) \\ \vdots \\ i i d (s) \\ \vdots \\ i i d (S) \end{array} \right) \dots \left( \begin{array}{c} t i d (1) \\ \vdots \\ t i d (s) \\ \vdots \\ t i d (S) \end{array} \right) \\ = \text {S x 1 v e c t o r} y \dots \text {S x 1 v e c t o r I I D} \dots \text {S x 1 v e c t o r T I D} \\ \end{array}
$$

# 1.3 (3) Balanced ( $T _ { i } = T$ ) vs. Unbalanced Data Sets ( $T _ { i }$ varies with i)

Balanced: $S = N \times T$ :

$$
\left( \begin{array}{c} y _ {1} \\ \vdots \\ y _ {s} \\ \vdots \\ y _ {S} \end{array} \right) = \left( \begin{array}{c} y _ {1 1} \\ y _ {1 2} \\ \vdots \\ y _ {1 t} \\ \vdots \\ y _ {1 T} \\ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - + \\ y _ {2 1} \\ y _ {2 2} \\ \vdots \\ y _ {2 t} \\ \vdots \\ y _ {2 T} \\ - - - - - & \vdots \\ y _ {N 1} \\ \vdots \\ y _ {N T} \end{array} \right)
$$

Unbalanced: $\begin{array} { r } { S = \sum _ { i = 1 } ^ { N } T _ { i } } \end{array}$

$$
\left( \begin{array}{c} y _ {1} \\ \vdots \\ y _ {s} \\ \vdots \\ y _ {S} \end{array} \right) = \left( \begin{array}{c} y _ {1 1} \\ y _ {1 2} \\ \vdots \\ y _ {1 t} \\ \vdots \\ y _ {1 T _ {1}} \\ - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - + \\ y _ {2 1} \\ y _ {2 2} \\ \vdots \\ y _ {2 t} \\ \vdots \\ y _ {2 T _ {2}} \\ - - - - - & \vdots \\ y _ {N 1} \\ \vdots \\ y _ {N T _ {N}} \end{array} \right)
$$

1.3.1 (3b) (related issue) Use PADDING with Missing Data Code (MDC) ó Then every Unbalanced PDS becomes Balanced

New single constant $T = \operatorname* { m a x } _ { i } T _ { i } ^ { \prime }$ .

1.3.2 (3c) (related issue) DROP OBSERVATIONS to make Balanced

Example: new single constant $T = \operatorname* { m i n } _ { i } T _ { i }$ .

# 1.4 (4) Lagged variables in Panel Data

$$
L A G 1 \left( \begin{array}{c} y _ {0} \\ \vdots \\ y _ {s - 1} \\ \vdots \\ y _ {S - 1} \end{array} \right) = \left( \begin{array}{c} y _ {1 0} \\ y _ {1 1} \\ \vdots \\ y _ {1, t - 1} \\ \vdots \\ y _ {1, T _ {1} - 1} \\ - - - \\ y _ {1 T _ {1}} \\ y _ {2 1} \\ \vdots \\ y _ {2, t - 1} \\ \vdots \\ y _ {2, T _ {2} - 1} \\ - - - \\ \vdots \\ y _ {N - 1, T _ {N}} \\ \vdots \\ y _ {N, T _ {N} - 1} \end{array} \right) = \left( \begin{array}{c} M D C \\ y _ {1 1} \\ \vdots \\ y _ {1, t - 1} \\ \vdots \\ y _ {1, T _ {1} - 1} \\ - - - \\ y _ {1 T _ {1}} \\ y _ {2 2} \\ \vdots \\ y _ {2, t - 1} \\ \vdots \\ y _ {2, T _ {2} - 1} \\ - - - \\ \vdots \\ y _ {N - 1, T _ {N}} \\ \vdots \\ y _ {N, T _ {N} - 1} \end{array} \right) \quad \text {v s . X T L A G 1} \left( \begin{array}{c} y _ {0} \\ \vdots \\ y _ {s - 1} \\ \vdots \\ y _ {S - 1} \end{array} \right) = \left( \begin{array}{c} y _ {1 0} \\ y _ {1 1} \\ \vdots \\ y _ {1 t} \\ \vdots \\ y _ {1, T _ {1} - 1} \\ - - - \\ y _ {2 0} \\ y _ {2 2} \\ \vdots \\ y _ {2, t - 1} \\ \vdots \\ y _ {2, T _ {2} - 1} \\- - - \\ \vdots \\ - - - \\ y _ {N 0} \\ \vdots \\ y _ {N, T _ {N} - 1} \end{array} \right) = \left( \begin{array}{c} M D C \\ y _ {1 1} \\ \vdots \\ y _ {1 t} \\ \vdots \\ y _ {1, T _ {1} - 1} \\- - - \\ M D C \\ \vdots \\ y _ {N, T _ {N} - 1} \end{array} \right)
$$

In sum, the LAG1 variable will contain a single Missing Value, whereas the XTLAG1 variable will contain $N$ Mising Values.

# 1.5 (5) Linear vs. Nonlinear models (additive vs nonadditive, index vs general)

Linear

Additively Nonlinear Index

Additively Nonlinear

Non-additively Nonlinear

$$
s = 1, \dots , S
$$

$$
y _ {s} = x _ {s} ^ {\prime} \beta + \epsilon_ {s}
$$

$$
y _ {s} = f \left(x _ {s} ^ {\prime} \beta\right) + \epsilon_ {s}
$$

$$
y _ {s} = g \left(x _ {s} ^ {\prime}, \beta\right) + \epsilon_ {s}
$$

$$
y _ {s} = h \left(x _ {s} ^ {\prime}, \beta , \epsilon_ {s}\right)
$$

$$
i = 1, \dots , N \text {a n d} t = 1, \dots , T _ {i}
$$

$$
y _ {i t} = x _ {i t} ^ {\prime} \beta + \epsilon_ {i t}
$$

$$
y _ {i t} = f \left(x _ {i t} ^ {\prime} \beta\right) + \epsilon_ {i t}
$$

$$
y _ {i t} = g \left(x _ {i t} ^ {\prime}, \beta\right) + \epsilon_ {i t}
$$

$$
y _ {i t} = h \left(x _ {i t} ^ {\prime}, \beta , \epsilon_ {i t}\right)
$$

# 1.6 (6) Combination of (1) and (3): Endogenous vs. Exogenous Data Availability

An important issue to determine at the outset is whether a panel data set is unbalanced due to endogenous causes, i.e., causes related to the economic mechanism we are trying to model. For example, if $y _ { i t }$ is earnings and the richer people are more likely to drop out of the sample as time goes by because the value of their time is higher than othersí, that would be a case of an endogenously unbalanced data set. In such a case, though the basic model we are trying to Öt is the linear regression (1), to take correct account of the fact that in such a case the relevant expression would be the conditional expectation

$$
E (y _ {i t} | x _ {i t} \mathrm {a n d i n d i v i d u a l i s t a y s i n t h e s a m p l e a t p e r i o d t})
$$

we would need non-linear sample-selectivity methods. In other words, we would need to model the discrete mechanism characterizing the dummy variable:

$$
d _ {i t} = \left\{ \begin{array}{l l} 1 & \text {i f i n d i v i d u a l i i s i n t h e s a m p l e i n p e r i o d t} \\ 0 & \text {o t h e r w i s e} \end{array} \right.
$$

and the joint linear conditional model:

$$
y _ {i t} = x _ {i t} ^ {\prime} \beta + \epsilon_ {i t} \quad \mathrm {o b s e r v e d i f f} d _ {i t} = 1.
$$

NB: even an apparently Linear model is in fact Nonlinear if Endogenous Data Availability ó Distinction between Latent and (observed) Limited Dependent Variables.

Modelling Framework: Sample Selection or Selectivity or Endogenous Data Availability or Endogenous Attrition Two-equation Latent variables model:

$$
y _ {i t} ^ {*} = x _ {i t} ^ {\prime} \beta + \epsilon_ {i t}
$$

$$
d _ {i t} ^ {*} = z _ {i t} ^ {\prime} \gamma + u _ {i t}
$$

Observation LDV Rule:

$$
D _ {i t} = \left\{ \begin{array}{l l} 1 & i f f d _ {i t} ^ {*} = z _ {i t} ^ {\prime} \gamma + u _ {i t} > 0 \\ 0 & i f f d _ {i t} ^ {*} = z _ {i t} ^ {\prime} \gamma + u _ {i t} \leq 0 \end{array} \right. \text {a n d}
$$

$$
y _ {i t} = \left\{ \begin{array}{c c c} y _ {i t} ^ {*} & i f f & d _ {i t} ^ {*} = z _ {i t} ^ {\prime} \gamma + u _ {i t} > 0 \\ M D C & i f f & d _ {i t} ^ {*} = z _ {i t} ^ {\prime} \gamma + u _ {i t} \leq 0 \end{array} \right.
$$

NB: Distinction between Censored Selectivity and Truncated Selectivity:

Selectivity with Censoring

$$
y _ {i t} = \left\{ \begin{array}{c c c} y _ {i t} ^ {*} & i f f & D _ {i t} = 1 \\ M D C & i f f & D _ {i t} = 0 \end{array} \right. \text {a n d}
$$

$$
D _ {i t}, x _ {i t}, \text {a n d} z _ {i t} \text {a l w a y s o b s e r v e d}
$$

Selectivity with Truncation

$$
y _ {i t} = \left\{ \begin{array}{l l} y _ {i t} ^ {*} & i f f D _ {i t} = 1 \quad \text {a n d} \end{array} \right.
$$

$$
D _ {i t}, x _ {i t}, \text {a n d} z _ {i t} \text {o b s e r v e d * o n l y * w h e n} D _ {i t} = 1
$$

NB: Fundamental Point: If $u _ { i t } \& \epsilon _ { i t }$ are *not* *independent*, then

$$
E (y _ {i t} | X) \neq x _ {i t} ^ {\prime} \beta \text {a n d} E (y _ {i t} | X, Z) \neq x _ {i t} ^ {\prime} \beta * B U T ^ {*}
$$

$$
E (y _ {i t} | X, Z) = g \left(x _ {i t} ^ {\prime}, z _ {i t} ^ {\prime}, \delta\right)
$$

where the parameter vector $\delta$ is related to $\beta , \gamma , \sigma _ { \epsilon } ^ { 2 } , \sigma _ { u } ^ { 2 }$ , and $\rho _ { \epsilon u }$

# 1.7 (7) Types of variables w.r.t. $i$ and $t$ indices:

The set of explanatory variables $x _ { i t }$ may include:

1. variables that vary across individuals and time periods, e.g., wage, age, and years of experience;   
2. variables that are time-invariant, i.e., vary only across individuals, e.g., race and sex; and   
3. variables that vary only over time but not across individuals, e.g., economy-wide unemployment, minimumwage level, and other macroeconomic factors

$$
\begin{array}{c c c c c} x _ {s} ^ {j} = x _ {i t} ^ {j} & v s. & z _ {s} ^ {j} = z _ {i} ^ {j} & v s. & w _ {s} ^ {j} = w _ {t} ^ {j} \\ \text {d e f a u l t} & & \text {t i m e - i n v a r i a n t} & & \text {i n d i v i d u a l - i n v a r i a n t (e . g . , e c o n o m y - w i d e / m a c r o)} \end{array}
$$

1.8 (8) Error-Components/Factor-Analytic structures:   
1.8.1 Error-components with single time-invariant factor:

$$
\epsilon_ {s} = \epsilon_ {i t} = \alpha_ {i} + \nu_ {i t} = \alpha_ {s} + \nu_ {s}
$$

NOTE: $\alpha _ { i }$ is termed the ìunobserved persistent heterogeneityî.

Basic assumptions:

$$
\begin{array}{c} \alpha_ {i} \qquad \sim \qquad ? (0, \sigma_ {\alpha} ^ {2}) \\ i i d \text {o v e r} i \end{array}
$$

$$
\begin{array}{c} \nu_ {i t} \quad \sim \quad ? (0 \\ i i d \text {o v e r} i \text {a n d} t \end{array}
$$

and $\alpha _ { i } , \nu _ { \ell t }$ independent/uncorrelated for all $i , \ell , t$

NB: Key conclusion: $V C o v ( \epsilon | r e g r e s s o r s )$ is a Block-Diagonal matrix with Diagonal blocks equal to:

$$
\left( \begin{array}{c c c c} \sigma_ {\alpha} ^ {2} + \sigma_ {\nu} ^ {2} & \sigma_ {\alpha} ^ {2} & \dots & \sigma_ {\alpha} ^ {2} \\ & \sigma_ {\alpha} ^ {2} + \sigma_ {\nu} ^ {2} & \ddots & \vdots \\ & & \ddots & \sigma_ {\alpha} ^ {2} \\ & & & \sigma_ {\alpha} ^ {2} + \sigma_ {\nu} ^ {2} \end{array} \right)
$$

and O§-Diagonal blocks between individuals $i$ and $n$ equal to $0 _ { T _ { i } \times T _ { n } }$ . This is called the ìequi-correlatedî error components model.

Error-components with two factors (one time-, one individual-invariant):

$$
\epsilon_ {s} = \epsilon_ {i t} = \alpha_ {i} + \zeta_ {t} + \nu_ {i t} = \alpha_ {s} + \zeta_ {s} + \nu_ {s}
$$

.where

$$
\alpha_ {i} \quad \sim \quad ? (0, \sigma_ {\alpha} ^ {2})
$$

iid over i

$$
\nu_ {i t} \quad \sim \quad ? (0, \sigma_ {\nu} ^ {2})
$$

iid over $i$ and $t$

$$
\zeta_ {t} \qquad \sim \qquad ? (0, \sigma_ {\zeta} ^ {2})
$$

iid over $t$

and i,`t,q mutually independent/uncorrelated for all $i , \ell , t , q$

The $V C o v ( \epsilon | r e g r e s s o r s )$ matrix has a similar block structure with $\sigma _ { \alpha } ^ { 2 } + \sigma _ { \nu } ^ { 2 } + \sigma _ { \zeta } ^ { 2 }$ on the main diagonal, and either $\sigma _ { \alpha } ^ { 2 }$ , $\sigma _ { \zeta } ^ { 2 }$ , or $\sigma _ { \alpha } ^ { 2 } + \sigma _ { \zeta } ^ { 2 }$ in the elements of the o§-diagonal blocks depending on the values of $i , \ell , t$ .

CONCLUSION: Error-components structures in general will imply violations of $\mathrm { A } 4 { : } E \epsilon \epsilon = \sigma ^ { 2 } I$ in the form of (at least) serial correlation in the error terms. Hence OLS estimation in such models will not be BLUE and will have a variance-covariance matrix not equal to $\sigma ^ { 2 } ( X ^ { \prime } X ) ^ { - 1 } .$ ..

# 2 REVIEW: Random E§ect ìvs.î Fixed E§ects

Common misconception: the approaches are frequently thought of as *alternative* DGPs. A much more appropriate framework is to think of them as the *same* DGP, but alternative Estimation Approaches

Common DGP with one-factor error-components model as in (1.8) above:

$$
y _ {i t} = x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \epsilon_ {i t} = x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i} + \nu_ {i t}
$$

RE Approaches: in *RED*: [.]+[.]

$$
y _ {i t} = x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \epsilon_ {i t} = [ x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma ] + [ \alpha_ {i} + \nu_ {i t} ]
$$

RE-type Estimator 1 (RE-E1): Pooled OLS

RE-type Estimator 2 (RE-E2): GLS - *The* normal RE estimator.

FE Approaches in *BLACK*: (.) + (.)

$$
y _ {i t} = x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \epsilon_ {i t} = (x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i}) + (\nu_ {i t})
$$

FE-type Estimator 1 (FE-E1): First Di§erencing Estimator

FE-type Estimator 2 (FE-E2): Within or Time-di§erencing Estimator ó *The* normal FE estimator.

# 2.1 Axiomatic Analysis of RE-type and FE-type Estimation

RE-[RED]: The four classic regression assumptions A1, A2, A3, A4 take the form:

A1 no perfect multicollinearity among the regressors $X$ and $Z$ rank(X; Z) = kx + kz

A2 linear additive model y = X + Z + 

A3 regressor exogeneity $X$ and Z exogenous w.r.t. 

A4 V Cov(errorjregressors) $V C o v ( \epsilon | X , Z )$

FE-(BLACK): Now the four classic regression assumptions A1, A2, A3, A4 take the form: ( $D$ is the full set of $N$ variable intercepts dummies, one for each individual)

rank(X; D) = kx + kz + N A1 no perfect multicollinearity among the regressors $X$ and $D$ NB : Z is dropped

since perfectly collinear with $D$

A2 linear additive model y = X + Z +  = X + D + 

A3 regressor exogeneity $X$ and $D$ exogenous w.r.t.  (no Z regressors)

A4 $V C o v ( e r r o r | r e g r e s s o r s )$ V Cov(jX; D)

# 2.2 Inference Aims of FE-TYPE estimators

NB: the $\alpha _ { i }$ ís are eliminated through suitable transformation or conditioned upon or estimated through su¢ cient statistics

Key conclusion: Parameters estimated (either explicitly or implicitly): $\beta$ ( $k _ { x }$ ) and $a _ { 1 } , \cdots , a _ { N }$ (N), $\sigma _ { \nu } ^ { 2 }$ (1)

# 2.2.1 FE1: FD

***Apply OLS on FD model:

$$
\begin{array}{l} \Delta y _ {i t} = \Delta x _ {i t} ^ {\prime} \beta + \Delta z _ {i} ^ {\prime} \gamma + \Delta \alpha_ {i} + \Delta \nu_ {i t} \\ = \Delta x _ {i t} ^ {\prime} \beta + 0 + 0 + \Delta v _ {i t} \\ \end{array}
$$

NB1: No estimates of $\gamma$ are possible by the approach since $Z$ has dropped out.

NB2: $\Delta \nu _ { i t }$ is a non-invertible MA(1) process, with known parameter $- 1$ . Hence OLS will not be BLUE and we will need to calculate Robust SEs/VCovs

# 2.2.2 FE2: Quasi-di§erencing/Within

***Apply OLS on Quasi-Di§erenced model:

$$
\begin{array}{l} Q y = Q X \beta + Q Z \gamma + Q \alpha + Q \nu \\ = Q X \beta + 0 + 0 + Q \nu \\ = Q X \beta + Q \nu \\ \end{array}
$$

where $Q y$ has typical element

$$
\{Q y \} _ {i t} = y _ {i t} - \bar {y} _ {i}. \equiv y _ {i t} - \frac {1}{T _ {i}} \sum_ {t = 1} ^ {T _ {i}} y _ {i t}
$$

Consequently, the $Q$ transformation eliminates all time-invariant terms ó in particular $\alpha$ and $Z$ .

NB1: No estimates of $\gamma$ are possible by the approach since $Z$ has dropped out.

NB2: The transformation $Q$ is idempotent (and symmetric, hence a projection matrix). Therefore, the

$$
V C o v (\nu | X) = Q \sigma_ {\nu} ^ {2} I _ {N T} Q ^ {\prime} = \sigma_ {\nu} ^ {2} Q \neq \sigma_ {\nu} ^ {2} I _ {S}
$$

which is $^ *$ singular $^ *$ (it has deÖcient rank). Recall that $S = \textstyle \sum _ { i } T _ { i }$ (which simpliÖes to $N T$ for a balanced PDS). Therefore its generalized inverse will be *itself* and so the GLS estimator to take into account the non-spherical distribution of $\nu$ will be *identical $^ *$ to plain OLS! To see this formally:

$$
\begin{array}{l} \text {p l a i n O L S}: \quad \hat {\beta} _ {F E 2} = \hat {\beta} _ {W} = \left(\left(Q X\right) ^ {\prime} (Q X)\right) ^ {- 1} (Q X) ^ {\prime} (Q y) \\ \text {G L S}: \quad \left((Q X) ^ {\prime} (V C o v (\nu | X)) ^ {g e n i n v} (Q X)\right) ^ {- 1} (Q X) ^ {\prime} (V C o v (\nu | X)) ^ {g e n i n v} (Q y) \\ = \left((Q X) ^ {\prime} Q (Q X)\right) ^ {- 1} (Q X) ^ {\prime} Q (Q y) = \hat {\beta} _ {F E 2} = \hat {\beta} _ {W} \\ \end{array}
$$

NB3: The FE2 model is *numerically* *identical* to the Variable Intercepts OLS model:

$$
y = X \beta + D \alpha + \nu
$$

because by the Frisch-Waugh-Lovell theorem, linear regression partitioning gives that:

$$
\begin{array}{l} \hat {\beta} _ {V I o l s} = \left(\left(M _ {D} X\right) ^ {\prime} \left(M _ {D} X\right)\right) ^ {- 1} \left(M _ {D} X\right) ^ {\prime} \left(M _ {D} y\right): M _ {D} \equiv I _ {N T} - D \left(D ^ {\prime} D\right) ^ {- 1} D ^ {\prime} = Q \\ = \left(\left(Q X\right) ^ {\prime} (Q X)\right) ^ {- 1} (Q X) ^ {\prime} (Q y) = \hat {\beta} _ {F E 2} = \hat {\beta} _ {W} \\ \end{array}
$$

$$
\left\{\hat {\alpha} _ {V I o l s} \right\} _ {i} = \bar {y} _ {i}. - \bar {x} _ {i}. ^ {\prime} \hat {\beta} _ {F E 2}
$$

# 2.3 Inference Aims of RE-TYPE estimators:

Key fact: Parameters estimated: $\beta$ (kx),  (kz), $\sigma _ { \alpha } ^ { 2 }$ (1), and $\sigma _ { \nu } ^ { 2 }$ (1)

Consider model

$$
y = [ X \beta + Z \gamma ] + [ \alpha + \nu ] = [ X \beta + Z \gamma ] + [ \epsilon ] \equiv W \theta + \epsilon
$$

RE1: pooled OLS

$$
\hat {\theta} _ {R E 1} = \left( \begin{array}{c} \hat {\beta} _ {R E 1} \\ \hat {\gamma} _ {R E 1} \end{array} \right) = (W ^ {\prime} W) ^ {- 1} W ^ {\prime} y
$$

NB: This will *not* be BLUE and its *Robust* SEs/VCov must be calculated to allow for the Clustering exhibited by the *block-diagonal* $V C o v ( \epsilon | X , Z ) \equiv \sigma _ { \epsilon } ^ { 2 } \Omega$ .

RE2: "the RE"-GLS estimator

$$
\begin{array}{l} \begin{array}{r l r} \hat {\theta} _ {R E 2} & = & \hat {\theta} _ {R E g l s} = \left( \begin{array}{c} \hat {\beta} _ {R E g l s} \\ \hat {\gamma} _ {R E g l s} \end{array} \right) \end{array} \\ = \left(W ^ {\prime} \Omega^ {- 1} W\right) ^ {- 1} W ^ {\prime} \Omega^ {- 1} y \\ = \left(\left[ W ^ {\prime} \Omega^ {- 1 / 2} \right] \left[ \Omega^ {- 1 / 2 \prime} W \right]\right) ^ {- 1} \left[ W ^ {\prime} \Omega^ {- 1 / 2} \right] \left[ \Omega^ {- 1 / 2 \prime} y \right] \\ = \left(\left[ \Omega^ {- 1 / 2 ^ {\prime}} W \right] ^ {\prime} \left[ \Omega^ {- 1 / 2 ^ {\prime}} W \right]\right) ^ {- 1} \left[ \Omega^ {- 1 / 2 ^ {\prime}} W \right] \left[ \Omega^ {- 1 / 2 ^ {\prime}} y \right] \\ \end{array}
$$

NB1: This estimator will be BLUE and will have the correct SEs/VCov.

NB2: In 1972, Fuller and Battese showed that calculating $\Omega ^ { - 1 }$ , which is computationally burdensome, can be avoided. Instead, the rotation $\Omega ^ { - 1 / 2 \prime }$ yields the equivalent very straightforward expressions:

$$
\begin{array}{l} \Omega^ {- 1 / 2 ^ {\prime}} y = \left\{y _ {i t} - \lambda_ {i} \bar {y} _ {i.} \right\} \\ \Omega^ {- 1 / 2 \prime} X = \left\{x _ {i t} - \lambda_ {i} \bar {x} _ {i.} \right\} \\ \Omega^ {- 1 / 2 ^ {\prime}} Z = \left\{\left(1 - \lambda_ {i}\right) z _ {i} \right\} \\ \mathrm {w h e r e} \lambda_ {i} = 1 - \sqrt {\frac {\sigma_ {\nu} ^ {2}}{\sigma_ {\nu} ^ {2} + T _ {i} \sigma_ {\alpha} ^ {2}}} \\ \end{array}
$$

Hence the RE2-GLS estimator can be obtained by applying plain OLS on the $\Omega ^ { - 1 / 2 \prime }$ -transformed variables.

# 3 Some Key Issues and Extensions ó Static Models:

(Issue 1) RE methods more e¢ cient in general, but $^ *$ inconsistent* if A3 violated ó check exogeneity of regressors $X$ and $Z$ w.r.t. the composite error $\epsilon _ { i t } = \alpha _ { i } + \nu _ { i t }$ . You should be able to prove this statement by writing out the Sampling Error Vectors of RE-E1 (pooled OLS) and of RE-E2 (gls RE) and examining their asymptotic properties.   
(Issue 2) FE methods less e¢ cient in general, but consistent even if $X$ s endogenous w.r.t. $\alpha _ { i }$ ( $E ( \alpha _ { i } X , Z ) \neq 0 ,$ ) ó since the s are now part of regressors, and hence are allowed to be correlated between themselves. You should be able to prove this statement by writing out the SEV of FE-E1 (Örst di§erenced data) and of FE-E2 (withing or standard FE) and examining their asymptotic properties.   
(Issue 3) FE methods cannot estimate $\gamma$ s in general, since all time-invariant terms are eliminated/conditioned upon. You should be able to prove this by considering the e§ects of the Örst-di§erencing $\Delta$ and within di§erencing $Q$ transformations or by considering the FE-E2 as the full set of variable intercept model with regressors $X$ , $Z$ , and $\boldsymbol { D }$ .   
(Issue 4) Wu-Hausman SpeciÖcation Tests ñRE and FE compared. When one of the two estimators is consistent under the null hypothesis, the Rao-Blackwell theorem useful in calculating the asymptotic *cross-coveriances* matrix between the two estimators. You should be able to prove this by following the answers to PS1, Question on Variable Intercepts PD model.   
(Issue 5) FE-type and RE-type methods pose distinct challenges to generalize to Observable Dynamics in PDS models. We will see why this is so in the next lectures.   
(Issue 6) FE-type methods are harder/impossible to generalize to Nonlinear PDS models. We will see why this is so in the next lectures.   
 (Issue 7) FE-type methods are less robust/more likely to be seriously inconsistent in the presence of Regressors with Measurement Errors. We will analyze this conclusion in the next lectures.

# 3.1 Extensions and Improvements

# 3.1.1 Make RE more robust to endogeneity ó the "ModiÖed RE" estimator. Chamberlain/Mundlak/Hajivassiliou

See URL: <https://eprints.lse.ac.uk/102843/> Section 2

To summarize:

$$
\begin{array}{l} {y _ {i t}} = {x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i} + \nu_ {i t}} \\ = x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \nu_ {i t} + \alpha_ {i} ^ {*} + \bar {x} _ {i} ^ {\prime} \xi + z _ {i} ^ {\prime} \zeta \\ = x _ {i t} ^ {\prime} \beta + \bar {x} _ {i} ^ {\prime} \xi + z _ {i} ^ {\prime} (\gamma + \zeta) + \alpha_ {i} ^ {*} + \nu_ {i t} \\ \end{array}
$$

by using the following arguments: the key issue is that $X$ and $Z$ are potentially endogenous w.r.t. $\alpha _ { i }$ , which means that any RE-type estimator will be $^ *$ inconsistent $^ *$ in that case for $\beta$ and $\gamma$ . We formulate that as:

$$
0 \neq E (\alpha_ {i} | X, Z) = g (X, Z) =
$$

$$
= \bar {x} _ {i} ^ {\prime} \xi + z _ {i} ^ {\prime} \zeta
$$

Thus, we deÖne:

$$
\alpha_ {i} ^ {*} \equiv \alpha_ {i} - E (\alpha_ {i} | X, Z) = \alpha_ {i} - \bar {x} _ {i.} ^ {\prime} \xi + z _ {i} ^ {\prime} \zeta
$$

Therefore, the redeÖned regression equation:

$$
y _ {i t} = x _ {i t} ^ {\prime} \beta + \bar {x} _ {i}. \xi + z _ {i} ^ {\prime} (\gamma + \zeta) + \alpha_ {i} ^ {*} + \nu_ {i t}
$$

is well-speciÖed and does not su§er from regressor-endogeneity w.r.t. $\alpha _ { i } ^ { * }$ . Hence, RE-type estimators applied to it will be consistent (and possibly e¢ cient).

# 3.1.2 Make FE able to estimate gammas also ó the "ModiÖed FE" estimator. FE+IVE. Hausman-Taylor 1981 approach

$$
\begin{array}{l} y _ {i t} = x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i} + \nu_ {i t} \\ = (x _ {i t} ^ {G o o d} | x _ {i t} ^ {B a d}) ^ {\prime} \left( \begin{array}{c} \beta^ {G o o d} \\ \beta^ {B a d} \end{array} \right) + (z _ {i} ^ {G o o d} | z _ {i} ^ {B a d}) ^ {\prime} \left( \begin{array}{c} \gamma^ {G o o d} \\ \gamma^ {B a d} \end{array} \right) + \alpha_ {i} + \nu_ {i t} \\ \end{array}
$$

The regressor dimensionalities are $k _ { x } ^ { G } , k _ { x } ^ { B } , k _ { z } ^ { G } , k _ { z } ^ { B }$ respectively, with $k _ { x } = k _ { x } ^ { G } + k _ { x } ^ { B }$ and $k _ { z } = k _ { z } ^ { G } + k _ { z } ^ { B }$

The following two steps achieve FE-type of estimation that produce also consistent $\gamma$ estimates:

Step 1: Obtain $\hat { \boldsymbol { \beta } } _ { F E 2 } = \hat { \boldsymbol { \beta } } _ { W }$ using the $Q$ -transformed data $Q y = \{ y _ { i t } - \bar { y } _ { i \cdot } \}$ etc. This will be $^ *$ consisten $^ *$ for both $\beta ^ { G o o d }$ and $\beta ^ { B a d }$ F E2  since the $\alpha _ { i }$ fhas been eliminated from the equation.

Step 2: DeÖne:

$$
\begin{array}{l} d _ {i} = \bar {y} _ {i}. - \bar {x} _ {i}. ^ {\prime} \beta = z _ {i} ^ {G o o d t} \gamma^ {G o o d} + z _ {i} ^ {B a d t} \gamma^ {B a d} + \alpha_ {i} + \bar {\nu} _ {i} \\ \hat {d} _ {i} = \bar {y} _ {i.} - \bar {x} _ {i.} ^ {\prime} \hat {\beta} _ {F E 2} = z _ {i} ^ {G o o d \prime} \gamma^ {G o o d} + z _ {i} ^ {B a d \prime} \gamma^ {B a d} + \alpha_ {i} + \bar {\nu} _ {i.} - \bar {x} _ {i.} ^ {\prime} (\hat {\beta} _ {F E 2} - \beta) \\ \end{array}
$$

Regressing $\hat { d } _ { i }$ on $z _ { i } ^ { G o o d }$ and $z _ { i } ^ { B a d }$ by OLS would be *inconsistent* because $z _ { i } ^ { B a d }$ are endogenous regressors w.r.t. $\alpha _ { i }$ . The Hausman-Taylor solution is to use Instrumental Variables estimator using $X ^ { G o o d }$ to instrument for $Z ^ { B a d }$ , which are *valid $^ *$ (uncorrelated from the errors) and *relevant $^ *$ (correlated with $Z ^ { B a d }$ ) instruments. The necessary condition for this is that:

$$
\mathrm {N u m b e r o f} X ^ {G o o d} \geq \mathrm {N u m b e r o f} Z ^ {B a d}
$$

[Note: the presence of the estimation error term $( \hat { \boldsymbol { \beta } } _ { F E 2 } - \boldsymbol { \beta } )$ a§ects only the second-order (VCov(.)) properties of the estimators, because it converges to 0 as $N  \infty$ .)

# 4 Extensions to Models with Observable Dynamics ó Linear Models:

# 4.1 *single or more lagged DV*

Consider the linear dynamic balanced panel data model:

$$
y _ {i t} = \delta y _ {i, t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i} + \nu_ {i t}, \qquad i = 1, \dots , N, \quad t = 1, \dots , T
$$

with: $k _ { x }$ time-varying regressors, $k _ { z }$ time-invariant regressors, $a _ { i }$ an unobservable error i.i.d. over $i$ , with unconditional zero mean and variance $\sigma _ { \alpha } ^ { 2 } < \infty$ , $\nu _ { i t }$ an error independent of all as and i.i.d. over both $i$ and $t$ with unconditional mean zero and variance $\sigma _ { \nu } ^ { 2 } < \infty$ .

# 4.2 *RE1&2: Problems with OLS/GLS

RE1=pooled OLS: the error $\epsilon _ { i t } = \alpha _ { i } + \nu _ { i t }$ and the regressor $y _ { i , t - 1 }$ depends on the error $\epsilon _ { i , t - 1 } = \alpha _ { i } + \nu _ { i , t - 1 }$ . Hence the regressor $y _ { i , t - 1 }$ is endogenous w.r.t. the error $\epsilon _ { i t }$ since they both contain the $\alpha _ { i }$ persistent heterogeneity term. This will cause inconsistency.

RE2=GLS: this estimator corresponds to applying OLS to the quasi-di§erenced model with dependent variable $\Omega ^ { - 1 / 2 \prime } y = \left\{ y _ { i t } - \lambda _ { i } \bar { y } _ { i \cdot } \right\}$ and error $\Omega ^ { - 1 / 2 \prime } \epsilon = \left\{ \epsilon _ { i t } - \lambda _ { i } \bar { \epsilon } _ { i \cdot } \right\}$ . In this case, the transformed lagged term is: $\Omega ^ { - 1 / 2 \prime } y _ { - 1 } =$ $\left\{ y _ { i , t - 1 } - \lambda _ { i } { \bar { y } } _ { i \cdot } \right\}$ which is clearly correlated with the transformed error term for *two* reasons: they both contain the heterogeneity term $\alpha _ { i }$ directly as well as through the time-averaged terms $y _ { i }$ and $\epsilon _ { i }$ . Therefore, RE2=GLS will also be inconsistent.

# 4.3 *FE-type:

# 4.3.1 *FE1: Problems with First Di§erencing

The Örst di§erencing transformation $\Delta$ will eliminate all time-invariant terms such as $\alpha _ { i }$ But it will also eliminate the time-invariant regressors $z _ { i }$ and hence the $\gamma$ parameters cannot be estimated. However the i.i.d. part of the errror will become a (non-invertible) MA(1) process $\nu _ { i t } - \nu _ { i , t - 1 }$ . Given the lagged dependent variable will be still present (transformed but not eliminated), the FE1 estimator will be inconsistent.

# 4.3.2 *FE2/Within: Problems with Within/Quasi-Di§erencing

The FE2/Within method applies the quasi-di§erencing transformation $Q$ which subtracts the time-average of a variable. Hence, it will also eliminate all time-invariant terms such as $\alpha _ { i }$ It will also eliminate the time-invariant regressors $z _ { i }$ and hence the $\gamma$ parameters cannot be estimated. In addition, the i.i.d. part of the errror will become autocorrelated because it subtracts the time-average: $\nu _ { i t } - { \bar { \nu } } _ { i } .$ . Given the lagged dependent variable will be still present (transformed but not eliminated), the FE2 estimator will be inconsistent too.

# 4.4 Solutions to FE-Type Estimators in Models with Observable Dynamics:

Arellano-Bond: Delta/FD + IVE

Applying Örst di§erencing to the original model gives:

$$
\Delta y _ {i t} = \delta \Delta y _ {i, t - 1} + \Delta x _ {i t} ^ {\prime} \beta + \Delta \nu_ {i t}, \qquad i = 1, \dots , N, \quad t = 2, \dots , T
$$

Since the error term $\Delta \nu _ { i t }$ is a MA(1) with known parameter $^ { - 1 }$ , valid instrumental variables for the lagged dependent variable term are: $\Delta y _ { i , t - m }$ and $y _ { i , t - m }$ for $m \geq 2$ . Note that there is a triangular structure in the set of optimal instruments, since the further along one moves in time, the greater the number of valid instruments.

NB: the regular $y _ { i t } - y _ { i }$  transformation is not useful for this model since in that case, no valid instruments can be obtained by lagging the ys and ys any number of times, because $y _ { i , t - 1 } - y _ { i }$  and the implied error $\nu _ { i , t - 1 } - \nu _ { i }$  are serially correlated with $y _ { i s }$ and $\Delta y _ { i s }$ for every s.

# 4.5 Solutions to RE-Type Estimators in Models with Observable Dynamics:

Bhargava-Sargan: System Estimation (2SLS, 3SLS, FIML). See link: URL: <https://eprints.lse.ac.uk/102843/>, Section 2 .

The Bargava and Sargan approach:

Step 1 ñwrite out explicitly as a separate equation for each $t$ , so a cross-section on a System of $T$ equations for the $T$ endogenous variables $y _ { 1 } , y _ { 2 } , \cdots , y _ { T }$ and the exogenous variables $x _ { i T } , x _ { i , T - 1 } , \cdot \cdot \cdot , x _ { i 1 } , z _ { i }$

Step 2 ñwrite out a linear quasi-reduced form equation for $y _ { i 1 }$ in terms of full exogenous information available to the econometrician (but not actually available to the economic agents at time $t = 1$ ):

$$
\begin{array}{l} y _ {i T} = \delta y _ {i, T - 1} + x _ {i T} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i} + \nu_ {i T} \\ y _ {i, T - 1} = \delta y _ {i, T - 2} + x _ {i, T - 1} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i} + \nu_ {i, T - 1} \\ \vdots \qquad \vdots \qquad \qquad \qquad \qquad \qquad \qquad \qquad \qquad i = 1, \dots , N \\ y _ {i 2} = \delta y _ {i 1} + x _ {i 2} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i} + \nu_ {i 2} \\ y _ {i 1} = x _ {i 1} ^ {\prime} \theta_ {1} + x _ {i 2} ^ {\prime} \theta_ {2} + \dots + x _ {i T} ^ {\prime} \theta_ {T} + z _ {i} ^ {\prime} \zeta + u _ {i 1} \\ \end{array}
$$

Optimal estimation assuming normality of the errors is achieved through Full Information MLE of $( \delta , \beta ^ { \prime } , \gamma ^ { \prime } , \theta _ { 1 } ^ { \prime } , \cdot \cdot \cdot , \theta _ { T } ^ { \prime } , \zeta ^ { \prime } ) ^ { \prime }$ and $( \sigma _ { \alpha } ^ { 2 } , \sigma _ { \nu } ^ { 2 } , \sigma _ { 0 } ^ { 2 } )$ implied by the cross-equation restrictions of the above system and the variance-covariance restrictions of the structure:

$$
\left( \begin{array}{c c c c c c} \omega_ {T} ^ {2} & \omega_ {T, T - 1} & \omega_ {T, T - 2} & \dots & \omega_ {T 2} & \omega_ {T 1} \\ \omega_ {T - 1, T} & \omega_ {T - 1} ^ {2} & \omega_ {T - 1, T - 2} & \dots & \omega_ {T - 1, 2} & \omega_ {T - 1, 1} \\ \omega_ {T - 2, T} & \omega_ {T - 2, T - 1} & \ddots & \vdots & \vdots & \vdots \\ \vdots & \ddots & \ddots & \ddots & \omega_ {3 2} & \omega_ {3 1} \\ \omega_ {2 T} & \omega_ {2, T - 1} & \dots & \omega_ {2 3} & \omega_ {2} ^ {2} & \omega_ {2 1} \\ \omega_ {1 T} & \omega_ {1, T - 1} & \dots & \omega_ {1 3} & \omega_ {1 2} & \omega_ {1} ^ {2} \end{array} \right) =
$$

$$
\left( \begin{array}{c c c c c c} \sigma_ {\nu} ^ {2} + \sigma_ {\alpha} ^ {2} & \sigma_ {\alpha} ^ {2} & \sigma_ {\alpha} ^ {2} & \dots & \sigma_ {\alpha} ^ {2} & A \\ \sigma_ {\alpha} ^ {2} & \sigma_ {\nu} ^ {2} + \sigma_ {\alpha} ^ {2} & \sigma_ {\alpha} ^ {2} & \dots & \sigma_ {\alpha} ^ {2} & A \\ \sigma_ {\alpha} ^ {2} & \sigma_ {\alpha} ^ {2} & \ddots & \vdots & \vdots & \vdots \\ \vdots & \vdots & \ddots & \ddots & \sigma_ {\alpha} ^ {2} & A \\ \sigma_ {\alpha} ^ {2} & \sigma_ {\alpha} ^ {2} & \dots & \sigma_ {\alpha} ^ {2} & \sigma_ {\nu} ^ {2} + \sigma_ {\alpha} ^ {2} & A \\ A & A & \dots & A & A & B \end{array} \right)
$$

where $\begin{array} { r } { A = \frac { \sigma _ { \alpha } ^ { 2 } } { 1 - \delta } } \end{array}$  2 and $\begin{array} { r } { B = \frac { \sigma _ { \alpha } ^ { 2 } } { ( 1 - \delta ) ^ { 2 } } + \frac { \sigma _ { \nu } ^ { 2 } } { 1 - \delta ^ { 2 } } + \sigma _ { 0 } ^ { 2 } } \end{array}$  2 1 2  2 .

Without assuming normality, the optimal linear system estimator is $3 S L S$

1. If one wants to test the one-factor analytic structure, one can carry out FIML $( \delta , \beta ^ { \prime } , \gamma ^ { \prime } , \theta _ { 1 } ^ { \prime } , \cdot \cdot \cdot , \theta _ { T } ^ { \prime } , \zeta ^ { \prime } ) ^ { \prime }$ with an unrestricted $\Omega$ cross-equation variance-covariance, and compare the results to those of the Örst FIML through, say, a Likelihood Ratio statistic.   
2. If one believes that the initial condition $y _ { i 1 }$ is exogenous, then one applies $F I M L$ (under Normality) or $3 S L S$ (without Normality) on the system with $T - 1$ equations in the $T - 1$ endogenous variables $y _ { 2 } , \cdots , y _ { T }$ and the exogenous variables $y _ { 1 } , x _ { i T } , x _ { i , T - 1 } , \cdot \cdot \cdot , x _ { i 1 } , z _ { i }$ . To test the exogeneity of $y _ { i 1 }$ , one would need to carry out a non-nested test, since the null hypothesis that $y _ { i 1 }$ is exogenous implies $A = B = 0$ simultaneously.

# 4.6 Various Extensions to PDMs: Static and Dynamic

# 4.6.1 General Endogeneity in Time-varying regressors w.r.t. disturbances

1. One of the $x _ { i t }$ regressors is correlated with $\nu _ { i t }$   
2. All of the $x _ { i t }$ regressors are correlated with $\alpha _ { i }$

# 4.6.2 Regressor Endogeneity because of Measurement Errors

1. One of the $x _ { i t }$ regressors is measured with error, $\xi _ { i t }$   
2. One of the $z _ { i }$ regressors is measured with error, $\zeta _ { i }$   
3. Disturbances follow more complicated Autocorrelated Processes

Consider the dynamic linear regression model for balanced data:

$$
y _ {i t} = \delta y _ {i, t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \epsilon_ {i t}, i = 1, \dots , N, t = 1, \dots , T
$$

where $\epsilon _ { i t }$ follows the one factor error components model: $\epsilon _ { i t } = \alpha _ { i } + \nu _ { i t }$ with $\alpha _ { i }$ modelling individual unobserved persistent heterogeneity. Two more complicated error components models are:

(a) $\nu _ { i t } = \xi _ { i t } + \lambda \xi _ { i , t - 1 }$ with $\xi _ { i t } \sim N ( 0 , \sigma _ { \xi } ^ { 2 } )$ i.i.d. over both $i$ and $t$ ;

Now valid instruments for $A B$ are values of $y _ { i , t - q }$ , $q \geq 3$ .

(b) $\nu _ { i t } = \rho \nu _ { i , t - 1 } + \xi _ { i t }$ with $| \rho | < 1$ and $\xi _ { i t } \sim N ( 0 , \sigma _ { \xi } ^ { 2 } )$ i.i.d. over both $i$ and $t$ .

AB will not provide consistent estimates since no valid instruments exist in this case: The variables $y _ { i , t - q }$ are correlated with the regressor $y _ { i , t - 1 }$ for $^ * { a n y } ^ { * } \mathrm { ~ } q$ .

In all three cases (i)-(iii), the B-S approach remains valid, since the system estimation approach used (3SLS or FIML) allows for *any* valid correlation structure among the equation errors

$$
\left(u _ {i 1}, \epsilon_ {i 2}, \epsilon_ {i 3}, \dots , \epsilon_ {i t}, \dots , \epsilon_ {i T}\right) ^ {\prime}
$$

Hence in fact the particular error structures (i)-(iii) can be *tested* using classical tests (Wald, LR, LM), with the Restricted model imposing the particular correlation structure in the estimation vs. the Unrestricted model with allowing 3SLS or FIML to estimate the variance-cov structure of the errors..

# 5 Further Extensions to PD Modelling: Nonlinearities

Nonlinear PDMs: See link: URL: <https://eprints.lse.ac.uk/102843/>, Section 3.

# 5.1 A. Additive Errors ó Index Models and General Models

Consider the general model:

$$
y _ {i t} = g \left(x _ {i t}, \beta , z _ {i}, \gamma\right) + \delta y _ {i, t - 1} + \epsilon_ {i t} \tag {Model1}
$$

where the non-linear function $g ( . )$ is known up to parameter vectors $\beta$ and $\gamma$ ;

1. Case 1 ó No lagged dynamics ( $\delta = 0$ ):

This model is additive in the errors, so it can be analysed completely analogously by combining RE and FE or $\Delta$ transformations with NLLS instead of OLS, or GMM in place of IV as necesary. Key thing to remember: the FE and RE operators must be applied to the non-linear function exp(:) and *not* the non-linear function evaluated at the FE- or RE-transformed data.

(a) I.e., using $g ( ( x _ { i t } - \lambda _ { i } \bar { x } _ { i \cdot } ) ^ { \prime } \beta + ( 1 - \lambda _ { i } ) z _ { i } ^ { \prime } \gamma )$ would be wrong for RE, while we should use instead:

$g ( x _ { i t } ^ { \prime } \beta + z _ { i } ^ { \prime } \gamma ) - \lambda _ { i } g ( x _ { i , t - 1 } ^ { \prime } \beta + z _ { i } ^ { \prime } \gamma )$ for the non-linear term.

Now consider:

(A): FE-Type Estimators

FE1: Delta/FD

FE2: Within/Quasi-Di§erencing

(B): RE-Type Estimators

RE1: OLSñ $>$ NLLS

RE2: GLS $>$ WNLL

2. Case 2 ó with lagged dynamics ( $\delta \neq 0$ ):

Since model now contains the additive dynamic term $+ \delta y _ { i , t - 1 }$ it is not appropriate to combine the usual RE or FE transformations together with NLLS to account for the presence of the g(.) term, just like the linear case where OLS to the transformed models would lead to inconsistency because of the endogeneity of all transformations of the $+ \delta y _ { i , t - 1 }$ term. For example, applying Örst di§erencing to eliminate the alpha term, gives:

$$
y _ {i t} - y _ {i, t - 1} = g (x _ {i t}, \beta , z _ {i}, \gamma) - g (x _ {i, t - 1}, \beta , z _ {i}, \gamma) + \delta (y _ {i, t - 1} - y _ {i, t - 2}) + \nu_ {i t} - \nu_ {i, t - 1}
$$

Hence, one cannot apply NLLS to this model because of the MA(1) of the resulting error term. Instead, one should use NLIV/GMM based on $y _ { i , t - 2 } , y _ { i , t - 3 } , .$ :: terms as valid instrumental variables.

# 5.2 B. Additive Errors, Dynamic Term Inside NL regression function

$$
y _ {i t} = g \left(x _ {i t}, \beta , z _ {i}, \gamma , y _ {i, t - 1}, \delta\right) + \epsilon_ {i t} \tag {Model2}
$$

In Model 2, there is a very signiÖcant additional complication: the non-linearity encompasses also the yi;t 1 part. The presence of the lagged term under the non-linear function makes this model non-additive in the error term (at least with the $\alpha _ { i }$ present in all periods). Hence RE- or FE- plus NLLS will *not* work for this model, but we need to use instead MLE that takes into account correctly the non-trivial Jacobian of the y  error transformation.

Another possibility for estimating this model consistently (though not e¢ ciently, as is the case of MLE) would be as follows: assuming, as with MLE, that the regressors are *strongly* exogenous w.r.t. the error term, implies that lagged Xs are valid instruments for the (endogenous) lagged ys that appear as regressors. Hence NLIV/GMM could be used instead.

# 5.3 C. Nonadditive Errors

Now consider the nonadditive model:

$$
y _ {i t} = h \left(x _ {i t}, \beta , z _ {i}, \gamma , \delta y _ {i, t - 1}, \epsilon_ {i t}\right) \tag {Model3}
$$

and where the non-linear function $h ( . )$ is known up to parameter vectors $\beta$ and $\gamma$ and parameter $\delta$ :

Model 3 has the very signiÖcant complications compared to model 2 in that the non-linearities encompass $^ { * } a l l ^ { * }$ regressors, $_ { x }$ , $z$ , *and $^ *$ the $y _ { i , t - 1 }$ part. Hence RE- or FE- plus NLLS will *not* work for this model, but we need to use instead MLE that takes into account correctly the non-trivial Jacobian of the y  ! error transformation.

# 6 Major Di¢ culties with Nonadditive Errors ó special class of models: LDV

# 6.1 Di¢ culty 1:

FD/Delta, Within di§erencing, GLS quasi-di§erencing transformations do not achieve anything special or useful all these transformations cannot pass under the nonlinear function and reach the non-spherical error term inside.

# 6.2 Di¢ culty 2:

Fe-type alternative idea of introducing N intercepts/dummies leads to ìInÖnite Incidental Parametersîproblem. In dynamic models, a similar problem arises because there are $N  \infty$ initial conditions $y _ { i 0 }$ to handle along with the other unknown parameters.

# 6.3 Di¢ culty 3:

The epsilonñ>y transformation is analytically and computationally not manageable, because the Jacobian of this transformation is not constant, but it depends on data and unknown parameters.

NB: A particularly interesting class of models that exhibit Nonadditive Nonlinearity is the Limited Dependent Variables class of models (LDV). Leading cases are Binary and Discrete Response models (like Probit and Logit); regression models with Censoring or Truncation (like Tobit); and models with Sample Selection or Selectivity (e.g., Heckmanís Search and Participation models and Unemployment spells models).

# 6.4 Di¢ culty 4:

Suppose the behaviour of individual $i$ is observed to be correlated across $M _ { i }$ dimensions. For example, in a PD setting an individual is observed over $T _ { i }$ periods and the individualís behaviour is correlated over time. It could also be that at a given point in time, the individualís behavour is correlated across $J _ { i }$ dimensions. For example, the

individual selects among a list of $J _ { i }$ options in a rational way. In this situation, the behaviour of individual $i$ is correlated across $M _ { i } = \boldsymbol { T } _ { i } ^ { \intercal } \times \boldsymbol { J } _ { i }$ dimensions. Hence, to characterize correctly the probability the indivitual makes a particular set of choices, one would typically need to evaluate $M _ { i }$ -dimensional integrals. In models I have estimated in published research, I was working with about $N = 1 0 , 0 0 0$ individuals, and the dimension of integrals $M _ { i }$ that characterized the behaviour of each individual ranged between 60 and 180!

These numbers clearly render completely infeasible the application of classical estimation methods like GMM and MLE.

# 7 Can PD LDV Models with high dimensional integrals be rendered feasible with Classical Methods?

To illustrate the estimation issues with these models, we can consider the basic ìPD Binary Probit model with State Dependenceî given by:

$$
y _ {i t} = \left\{ \begin{array}{l l} 1 & i f \quad \delta y _ {i, t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \epsilon_ {i t} > 0 \\ 0 & i f \quad \delta y _ {i, t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \epsilon_ {i t} \leq 0 \end{array} \right.
$$

For simplicity, let us assume a $^ *$ balanced* PD set. For individual $i$ , the sequence of binary outcomes that is observerd is: $( y _ { i 1 } , y _ { i 2 } , \cdots , y _ { i T } ) ^ { \prime }$ . Assuming (reasonably) that the errors of an individual are mutually independently distributed from the errors of any other individual, we can consider each sequence of an individual as independent of any otherís sequence. Since each $y _ { i t }$ equals 1 or 0 depending on the sign of the expression $( x _ { i t } ^ { \prime } \beta + z _ { i } ^ { \prime } \gamma + \epsilon _ { i t } )$ , as long as the errors of an individual $( \epsilon _ { i 1 } , \epsilon _ { i 2 } , \cdot \cdot \cdot , \epsilon _ { i T } ) ^ { \prime }$ are correlated between them, then we would need to evaluate the $* _ { \mathrm { j o i n t } ^ { * } }$ probablity of a sequence of outcomes $( y _ { i 1 } , y _ { i 2 } , \cdots , y _ { i T } ) ^ { \prime }$ as a $T$ -dimensional integral over the signs of each element of $( \epsilon _ { i 1 } , \epsilon _ { i 2 } , \cdot \cdot \cdot , \epsilon _ { i T } ) ^ { \prime }$ .

In general, it is clear that classical estimation methods are completely infeasible since the probabilty of all the $y _ { i t }$ for all individuals and all time-periods would be $N$ integrals, each of which being of dimension $T$ .

There are three solutions that have been proposed over the years that render Classical estimation methods tractable:

# 7.1 Simple PD LDV version 0: $\epsilon _ { i t }$ is i.i.d.

Assume that $\epsilon _ { i t }$ is i.i.d. for *every* $i$ and *every* $t$ with $\epsilon _ { i t } \sim N ( 0 , \sigma ^ { 2 } )$ . Denote by $\Phi ( q )$ the c.d.f. of the standard normal random variable $w \sim N ( 0 , 1 )$ . Then it follows that the binary outcome probabilities:

$$
\Pr \left(y _ {i t} = 1 | X, Z\right) = \Pr \left(\delta y _ {i, t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \epsilon_ {i t} > 0\right) = \Phi \left(\frac {\delta y _ {i , t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma}{\sigma}\right)
$$

$$
\Pr \left(y _ {i t} = 0 | X, Z\right) = \Pr \left(\delta y _ {i, t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \epsilon_ {i t} \leq 0\right) = 1 - \Phi \left(\frac {\delta y _ {i , t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma}{\sigma}\right)
$$

Given the symmetry of the standard normal distribution around 0, it then follows that:

$$
\Pr (y _ {i t} | X, Z) = \Phi \left((2 y _ {i t} - 1) \cdot \frac {\delta y _ {i , t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma}{\sigma}\right)
$$

Consequently, under this simplifying (and usually highly unrealistic) assumption, the likelihood function for the complete $( y _ { 1 1 } , y _ { 1 2 } , \cdot \cdot \cdot , y _ { i t } , \cdot \cdot \cdot , y _ { N , T - 1 } , y _ { N T } )$ equals:

$$
\operatorname * {P r} (y _ {1 1}, y _ {1 2}, \dots , y _ {i t}, \dots , y _ {N, T - 1}, y _ {N T}) = \prod_ {i =} ^ {N} \prod_ {t = 1} ^ {T} \Phi \left((2 y _ {i t} - 1) \cdot \frac {\delta y _ {i , t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma}{\sigma}\right)
$$

No high-dimensional integrals appear in this likelihood function, and classical estimation can proceed without problem.

# 7.2 Simple PD LDV version $\mathsf { . . } \epsilon _ { i t } { = } \alpha _ { i } + \nu _ { i t }$

Multiperiod Binary Probit Model (Heckman 1981 and 1981b) with a one-factor error components structure.

In those two papers, Heckman considers both the case when $\delta \ = \ 0$ and the case when $\delta \neq 0$ . Under his speciÖcation, Heckman noted that $^ *$ conditionally on the heterogeneity error $\alpha _ { i }$ , the outcome probabilities become:

$$
\Pr \left(y _ {i t} = 1 \mid \alpha_ {i}, X, Z\right) = \Pr \left(\delta y _ {i, t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i} + \nu_ {i t} > 0\right) = \Phi \left(\frac {\delta y _ {i , t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i}}{\sigma_ {\nu}}\right)
$$

$$
\Pr \big (y _ {i t} = 0 | \alpha_ {i}, X, Z \big) = \Pr \big (\delta y _ {i, t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i} + \nu_ {i t} \leq 0 \big) = 1 - \Phi \big (\frac {\delta y _ {i , t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i}}{\sigma_ {\nu}} \big)
$$

This is because conditionally on $\alpha _ { i }$ , the only error left is $\nu _ { i t } \sim N ( 0 , \sigma _ { \nu } ^ { 2 } )$ . As before, this can be summarized by:

$$
\operatorname * {P r} (y _ {i t} | \alpha_ {i}, X, Z) = \Phi \left((2 y _ {i t} - 1) \cdot \frac {\delta y _ {i , t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i}}{\sigma_ {\nu}}\right)
$$

But now since the $\nu _ { i t }$ errors are i.i.d., the probabilities can be multiplied together to get:

$$
\operatorname * {P r} (y _ {i 1}, \dots , y _ {i t}, \dots , y _ {i T} | \alpha_ {i}, X, Z) = \prod_ {t = 1} ^ {T} \Phi \left((2 y _ {i t} - 1) \cdot \frac {\delta y _ {i , t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i}}{\sigma_ {\nu}}\right)
$$

Finally, to obtain the probability of individual $i$ ís outcomes $^ *$ unconditionally $^ *$ from $\alpha _ { i }$ , we multiply this expression by the density of $\alpha _ { i }$ and integrate it out:

$$
\operatorname * {P r} (y _ {i 1}, \dots , y _ {i t}, \dots , y _ {i T} | X, Z) = \int_ {- \infty} ^ {+ \infty} \frac {1}{\sigma_ {\alpha}} \phi (\frac {\alpha_ {i}}{\sigma_ {\alpha}}) \left\{\prod_ {t = 1} ^ {T} \Phi ((2 y _ {i t} - 1) \cdot \frac {\delta y _ {i , t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma + \alpha_ {i}}{\sigma_ {\nu}}) \right\} d \alpha_ {i}
$$

Since we are assuming that the errors of individuals are *independent* over $i$ , the likelihood function for all the observations is simply the product of all these probabilities over all individuals. Consequently, this modelling simpliÖcation once again makes classical MLE feasible, because the likelihood function is the product of $N$ univariate integrals ó instead of originally $N$ integrals that were each $T$ -dimensional.

# 7.3 Simple PD LDV version 2:

Multiperiod Binary Probit Model (Avery, Hansen, and Hotz 1983)

Recognizing the di¢ culties with ML estimation, AHH propose instead GMM for the estimation of the Panel Data of success given by Binary Probit model. Since by assumption each $\begin{array} { r } { \Phi \big ( \frac { \delta y _ { i , t - 1 } + x _ { i t } ^ { \prime } \beta + z _ { i } ^ { \prime } \gamma } { \sigma } \big ) } \end{array}$ , they propose to use as the population orthogonality condition: $y _ { i t }$ outcome is a Bernoulli (1,0) random variable with Probability

$$
g (X) \cdot (y _ {i t} - E (y _ {i t} | X, Z)) = g (X) \cdot \left(y _ {i t} - \Phi (\frac {\delta y _ {i , t - 1} + x _ {i t} ^ {\prime} \beta + z _ {i} ^ {\prime} \gamma}{\sigma})\right) = 0
$$

The problem with these orthogonality conditions is that the Expectation is taken only over the distribution of $\epsilon _ { i t }$ and not over the distribution of the whole set of correlated errors for individual $i$ . Whether or not this renders the orthogonality conditions invalid depends on various assumptions about the correlation structure of the model over time and the true functional form of the error distribution.

Assuming that the necessary assumptions are satisÖed for the OCs to be valid, then GMM can proceed and take into account the second order (VCov) properties of the OCs. The resulting AHH GMM approach can be shown to be CUAN, though it will not achieve the CRLB that full MLE would reach instead.

Final conclusion:

If *none* of these three proposals apply or if they all rely on totally unacceptable assumptions, then one needs to resort to Simulation-Based Inference ó a topic that has been a key focus of my research over many years. If anyone is interested in exploring this topic further, please get in touch with me.