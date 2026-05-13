# EC484: Econometric Analysis

# Bootstrap

# Taisuke Otsu

London School of Economics

2025/6

# Contents

1. Basic idea (Hansen Ch. 10.6-8)   
2. Bootstrap theory (Hansen Ch. 10.9-13, 16, 19, 21)   
3. Bootstrap for OLS and GMM (Hansen Ch. 10.27)

# 1. Basic idea

# Example

• Consider wage equation estimated by CPS subsample

$$
\log (w a g e) = \begin{array}{l} 0. 6 9 8 \\ (0. 4 9 3) \end{array} + \begin{array}{l} 0. 1 5 5 e d u c \\ (0. 0 3 1) \end{array} + \hat {e}
$$

$$
\hat {\sigma} ^ {2} = \underset {(0. 0 4 3)} {0. 1 4 4}, \qquad n = 2 0
$$

$\bullet \ | { \mathfrak { f } } \ e | e d u c \sim N ( 0 , \sigma ^ { 2 } )$

$$
\mu = \mathbb {E} [ \text {w a g e} | \text {e d u c} = 1 6 ] = \exp \left(\beta_ {0} + 1 6 \beta_ {1} + \sigma^ {2} / 2\right)
$$

By delta method

$$
\hat {\mu} = 2 5. 8 0 \tag {2.29}
$$

t-test or CI for $\beta _ { 1 }$ or $\mu$ is based on asymptotic approximation   
Bootstrap provides alternative se and CI

# Bootstrap algorithm

• Original sample for Y = log(wage) and X = educ

<table><tr><td>i</td><td>1</td><td>2</td><td>3</td><td>4</td><td>5</td><td></td><td>18</td><td>19</td><td>20</td></tr><tr><td>Yi</td><td>3.64</td><td>3.71</td><td>2.65</td><td>2.82</td><td>3.50</td><td>···</td><td>3.18</td><td>3.59</td><td>3.14</td></tr><tr><td>Xi</td><td>18</td><td>18</td><td>13</td><td>16</td><td>16</td><td>···</td><td>16</td><td>18</td><td>16</td></tr></table>

• Bootstrap (re)sample is constructed by randomly drawing integers of size $n = 2 0$ from $\{ 1 , 2 , \ldots , 2 0 \}$ with replacement

. E.g. If we draw, {16, 5, 17, 20, 20, . . . , 7, 1, 8}, then bootstrap sample is (same unit can appear)

$$
\begin{array}{c c c c c c c c c c} i & 1 & 2 & 3 & 4 & 5 & & 1 8 & 1 9 & 2 0 \\ Y _ {i} ^ {*} & Y _ {1 6} & Y _ {5} & Y _ {1 7} & Y _ {2 0} & Y _ {2 0} & \dots & Y _ {7} & Y _ {1} & Y _ {8} \\ X _ {i} ^ {*} & X _ {1 6} & X _ {5} & X _ {1 7} & X _ {2 0} & X _ {2 0} & \dots & X _ {7} & X _ {1} & X _ {8} \end{array}
$$

By $\{ Y _ { i } ^ { * } , X _ { i } ^ { * } : i = 1 , \ldots , n \}$ , we can compute $\hat { \beta } _ { 1 } ^ { * }$ and $\hat { \mu } ^ { * }$ , say   
• We can repeat this process as many as we want to get $\{ \hat { \beta } _ { 1 b } ^ { * } , \hat { \mu } _ { b } ^ { * } : b = 1 , \dots , B \}$

# Bootstrap variance and se

• Generally consider estimator θˆ and its bootstrap counterparts $\{ \hat { \theta } _ { b } ^ { * } : b = 1 , \dots , B \}$   
• Bootstrap variance estimator of $\hat { \theta }$ is

$$
\hat {\mathbf {V}} _ {\hat {\theta}} ^ {\mathrm {b o o t}} = \frac {1}{B - 1} \sum_ {b = 1} ^ {B} (\hat {\theta} _ {b} ^ {*} - \overline {{\hat {\theta} ^ {*}}}) (\hat {\theta} _ {b} ^ {*} - \overline {{\hat {\theta} ^ {*}}}) ^ {\prime}
$$

$$
w h e r e \overline {{\hat {\theta} ^ {*}}} = \frac {1}{B} \sum_ {b = 1} ^ {B} \hat {\theta} _ {b} ^ {*}
$$

If θˆ is scalar, bootstrap standard error is

$$
\boldsymbol {s} _ {\hat {\boldsymbol {\theta}}} ^ {\mathrm {b o o t}} = \sqrt {\hat {\mathbf {V}} _ {\hat {\boldsymbol {\theta}}} ^ {\mathrm {b o o t}}}
$$

and normal-approximation bootstrap CI is

$$
\mathrm {C} ^ {\mathrm {n b}} = [ \hat {\theta} - z _ {1 - \alpha / 2} s _ {\hat {\theta}} ^ {\mathrm {b o o t}}, \hat {\theta} + z _ {1 - \alpha / 2} s _ {\hat {\theta}} ^ {\mathrm {b o o t}} ]
$$

# Percentile CI

Again $\hat { \theta }$ is scalar. Several ways to construct CI   
• Based on $\{ \hat { \theta } _ { b } ^ { * } : b = 1 , \dots , B \}$ , compute its sample quantiles $q _ { \alpha } ^ { * }$ . Percentile bootstrap CI for $\theta$ is

$$
\mathrm {C} ^ {\mathrm {p c}} = [ q _ {\alpha / 2} ^ {*}, q _ {1 - \alpha / 2} ^ {*} ]
$$

• This CI is transformation respecting, i.e. for any monotone transform $m ( \theta )$ , its CI is given by

$$
[ m (q _ {\alpha / 2} ^ {*}), m (q _ {1 - \alpha / 2} ^ {*}) ]
$$

# 2. Bootstrap theory

# Bootstrap

• Consider iid sample $\{ Z _ { 1 } , \ldots , Z _ { n } \}$ from population distribution function F   
• Consider scalar estimator $\hat { \theta }$ with cdf

$$
G _ {n} (u, F) = \mathbb {P} [ \hat {\theta} \leq u | F ]
$$

• Usually $G _ { n } ( u , F )$ is very complicated function depending on n, so need some approximation   
Asymptotic approximation to $G _ { n } ( u , F )$ is

$$
G (u, F) = \lim  _ {n \rightarrow \infty} G _ {n} (u, F)
$$

• Bootstrap provides an alternative approximation to $G _ { n } ( u , F )$ , that is

$$
G _ {n} ^ {*} (u) = G _ {n} (u, F _ {n})
$$

where $F _ { n }$ is empirical distribution function (EDF)

• $G _ { n } ^ { * } ( u )$ is called bootstrap distribution and bootstrap conducts inference based on $G _ { n } ^ { * } ( u )$   
• Note: If $\{ Z _ { 1 } ^ { * } , \ldots , Z _ { n } ^ { * } \}$ is iid sample from $F _ { n }$ , then ${ \hat { \theta } } ^ { * }$ satisfies

$$
G _ {n} ^ {*} (u) = \mathbb {P} \left[ T _ {n} ^ {*} \leq u \mid F _ {n} \right]
$$

i.e. in ”bootstrap world”, $F _ { n }$ plays role of population

# Empirical distribution

• Popular choice for $F _ { n }$ is empirical distribution function (EDF)

$$
F _ {n} (u) = \frac {1}{n} \sum_ {i = 1} ^ {n} \mathbb {I} \{Z _ {i} ^ {(1)} \leq u ^ {(1)} \} \dots \mathbb {I} \{Z _ {i} ^ {(d)} \leq u ^ {(d)} \}
$$

which is consistent and asymptotically normal

$$
\sqrt {n} (F _ {n} (u) - F (u)) \stackrel {d} {\rightarrow} N (0, F (u) (1 - F (u)))
$$

for each $u \in \mathbb { R } ^ { d }$

• From EDF $F _ { n }$ , bootstrap sample $\{ Z _ { 1 } ^ { * } , \ldots , Z _ { n } ^ { * } \}$ is obtained by drawing from observed sample $\{ Z _ { 1 } , \ldots , Z _ { n } \}$ with equal 1/n weights (with replacement)

# Distribution of bootstrap observations

• Let $Z ^ { \ast }$ be (scalar) random draw from EDF $F _ { n }$ by original sample $\{ Z _ { 1 } , \ldots , Z _ { n } \}$   
• How can we think about distribution of $Z ^ { \ast } ?$ There are two randomness: (i) randomness for resampling from $F _ { n }$ and (ii) randomness of original sample $\{ Z _ { 1 } , \ldots , Z _ { n } \}$   
• To separate these randomness, introduce conditional probability and mean given $F _ { n }$

$$
\mathbb {P} ^ {*} [ Z ^ {*} \leq c ] = \mathbb {P} [ Z ^ {*} \leq c | F _ {n} ]
$$

$$
\mathbb {E} ^ {*} [ Z ^ {*} ] = \mathbb {E} [ Z ^ {*} | F _ {n} ]
$$

• Note: conditional distribution $Z ^ { * } | F _ { n }$ is always discrete (with support $\{ Z _ { 1 } , \ldots , Z _ { n } \} )$

# Conditional mean and variance

• Conditional mean of $Z ^ { \ast }$ is

$$
\begin{array}{l} \mathbb {E} ^ {*} [ Z ^ {*} ] = \sum_ {i = 1} ^ {n} Z _ {i} \mathbb {P} ^ {*} [ Z ^ {*} = Z _ {i} ] \\ = \sum_ {i = 1} ^ {n} Z _ {i} \frac {1}{n} = \bar {Z} \\ \end{array}
$$

• Conditional variance of $Z ^ { * }$ is

$$
\begin{array}{l} \operatorname {v a r} ^ {*} [ Z ^ {*} ] = \mathbb {E} ^ {*} [ Z ^ {* 2} ] - (\mathbb {E} ^ {*} [ Z ^ {*} ]) ^ {2} \\ = \sum_ {i = 1} ^ {n} Z _ {i} ^ {2} \mathbb {P} ^ {*} [ Z ^ {*} = Z _ {i} ] - \bar {Z} ^ {2} \\ = \sum_ {i = 1} ^ {n} Z _ {i} ^ {2} \frac {1}{n} - \bar {Z} ^ {2} \equiv \hat {\sigma} ^ {2} \\ \end{array}
$$

Similarly for $\begin{array} { r } { \bar { Z } ^ { * } = \frac { 1 } { n } \sum _ { i = 1 } ^ { n } Z _ { i } ^ { * } } \end{array}$

$$
\mathbb {E} ^ {*} [ \bar {Z} ^ {*} ] = \frac {1}{n} \sum_ {i = 1} ^ {n} \mathbb {E} ^ {*} [ Z _ {i} ^ {*} ] = \bar {Z}
$$

and

$$
\mathrm {v a r} ^ {*} [ \bar {Z} ^ {*} ] = \frac {1}{n ^ {2}} \sum_ {i = 1} ^ {n} \mathrm {v a r} ^ {*} [ Z _ {i} ^ {*} ] = \frac {1}{n} \hat {\sigma} ^ {2}
$$

# Convergence for bootstrap statistics

• How can we think about convergence or asymptotic distribution for $\bar { Z } ^ { * } ?$   
• Definition: Bootstrap statistic $W _ { n } ^ { * }$ converges in bootstrap probability to W as $n \to \infty$ (denoted by $W _ { n } ^ { * } \stackrel { p ^ { * } } {  } W )$ if

$$
\mathbb {P} ^ {*} \left[ \left| W _ {n} ^ {*} - W \right| > \epsilon \right] \xrightarrow {p} 0 \quad \text {f o r e a c h} \epsilon > 0
$$

. Note: “ p→” is (standard) convergence in probability for original sample $\{ Z _ { 1 } , \ldots , Z _ { n } \}$   
Property: If $W _ { n } \stackrel { p } {  } W$ , then $W _ { n } \stackrel { p ^ { * } } {  } W$

# Bootstrap WLLN

• Theorem: If $\{ Z _ { 1 } , \ldots , Z _ { n } \}$ is iid and $\mathbb { E } [ | Z _ { i } | ^ { 2 } ] < \infty$ , then

$$
\bar {Z} ^ {*} - \bar {Z} \stackrel {p ^ {*}} {\rightarrow} 0
$$

$$
\bar {Z} ^ {*} \stackrel {{p ^ {*}}} {{\rightarrow}} \mu = \mathbb {E} [ Z _ {i} ]
$$

• Proof: Since $\bar { Z } \stackrel { p } {  } \mu$ implies $\bar { Z } \stackrel { p ^ { * } } {  } \mu$ , it is enough to show the first statement

Pick any ϵ > 0. By Markov inequality

$$
\begin{array}{l} \mathbb {P} ^ {*} \left[ \left| \bar {Z} ^ {*} - \bar {Z} \right| > \epsilon \right] \leq \epsilon^ {- 2} \mathbb {E} ^ {*} \left[ \left(\bar {Z} ^ {*} - \bar {Z}\right) ^ {2} \right] = \epsilon^ {- 2} \operatorname {v a r} ^ {*} \left[ \bar {Z} ^ {*} \right] \\ = \epsilon^ {- 2} \frac {1}{n ^ {2}} \sum_ {i = 1} ^ {n} \operatorname {v a r} ^ {*} \left[ Z _ {i} ^ {*} \right] \\ = \epsilon^ {- 2} \frac {1}{n} \hat {\sigma} ^ {2} \xrightarrow {\rho} 0 \\ \end{array}
$$

where $\begin{array} { r } { \hat { \sigma } ^ { 2 } = \frac { 1 } { n } \sum _ { i = 1 } ^ { n } ( Z _ { i } - \bar { Z } ) ^ { 2 } } \end{array}$ (sample var) satisfying σˆ2 p→ var[Zi ]

# Asymptotic distribution

• For asymptotic distribution of ${ \bar { Z } } ^ { * }$ , we need bootstrap version of convergence in distribution   
• Definition: Bootstrap statistic $W _ { n } ^ { * }$ converges in bootstrap distribution to W as $n \to \infty$ (denoted by $W _ { n } ^ { * } \stackrel { d ^ { * } } {  } W )$ if

$$
\mathbb {P} ^ {*} \left[ W _ {n} ^ {*} \leq u \right] \xrightarrow {p} \mathbb {P} \left[ W \leq u \right]
$$

for each u at which $\mathbb { P } [ W \leq u ]$ is continuous

# Bootstrap CLT

• Theorem: If $\{ Z _ { 1 } , \ldots , Z _ { n } \}$ is iid and $\mathbb { E } [ | Z _ { i } | ^ { 4 } ] < \infty$ , then

$$
\sqrt {n} \left(\bar {Z} ^ {*} - \bar {Z}\right) \xrightarrow {d ^ {*}} \mathrm {N} \left(0, \sigma^ {2}\right)
$$

where $\sigma ^ { 2 } = \operatorname { v a r } [ Z _ { i } ]$

• Proof follows by applying Lindeberg-Feller CLT under conditional distribution given $F _ { n }$ . We cannot use Lindeberg-Levy because conditional distribution varies with n   
See Hansen, Ch. 10.14 for detail

# Bootstrap CMT

• Theorem: If $W _ { n } ^ { * } \stackrel { p ^ { * } } {  } c$ and $g ( \cdot )$ is continuous at c, then

$$
g \big (W _ {n} ^ {*} \big) \stackrel {p ^ {*}} {\rightarrow} g (c)
$$

• Theorem: If $W _ { n } ^ { * } \stackrel { d ^ { * } } {  } W$ and $g ( \cdot )$ has set of discontinuity points $D _ { g }$ such that $\mathbb { P } ^ { * } [ Z ^ { * } \in D _ { g } ] = 0$ , then

$$
g \left(W _ {n} ^ {*}\right) \stackrel {d ^ {*}} {\rightarrow} g (c)
$$

# Consistency of bootstrap variance estimator

• Based on above tools, now consider bootstrap variance estimator of θˆ. Since $\hat { \theta }$ itself typically does not have limiting distribution, suppose

$$
\begin{array}{l} Z _ {n} = a _ {n} (\hat {\theta} - \theta) \xrightarrow {d} \xi \\ Z _ {n} ^ {*} = a _ {n} \left(\hat {\theta} ^ {*} - \hat {\theta}\right) \xrightarrow {d ^ {*}} \xi \\ \end{array}
$$

for some sequence $a _ { n }$ (typically $\sqrt { n } )$ and distribution ξ (typically normal)

• Three variance concepts

$$
\mathbf {V} _ {\theta} = \operatorname {v a r} [ \xi ] \quad (\text {t a r g e t})
$$

$$
\hat {\mathbf {V}} _ {\theta} ^ {\text {b o o t}} = \operatorname {v a r} ^ {*} \left[ Z _ {n} ^ {*} \right] \quad (\text {c o n c e p t u a l b o o t v a r})
$$

$$
\hat {\mathbf {V}} _ {\theta , B} ^ {\mathrm {b o o t}} = \frac {1}{B - 1} \sum_ {b = 1} ^ {B} \left(Z _ {n, b} ^ {*} - \overline {{Z _ {n} ^ {*}}}\right) \left(Z _ {n, b} ^ {*} - \overline {{Z _ {n} ^ {*}}}\right) ^ {\prime} \quad \text {(a c t u a l b o o t v a r)}
$$

Under certain conditions (see Theorem 10.9 of Hansen-B)

$$
\hat {\mathbf {V}} _ {\theta , B} ^ {\mathrm {b o o t}} \stackrel {p ^ {*}} {\rightarrow} \hat {\mathbf {V}} _ {\theta} ^ {\mathrm {b o o t}} \qquad \mathrm {a s} B \rightarrow \infty
$$

$$
\hat {\mathbf {V}} _ {\theta} ^ {\mathrm {b o o t}} \xrightarrow {p ^ {*}} \operatorname {v a r} [ \xi ]
$$

# Consistency of bootstrap percentile CI

• For percentile CI, suppose

$$
\begin{array}{l} Z _ {n} = a _ {n} (\hat {\theta} - \theta) \xrightarrow {d} \xi \\ Z _ {n} ^ {*} = a _ {n} \left(\hat {\theta} ^ {*} - \hat {\theta}\right) \xrightarrow {d ^ {*}} \xi \\ \end{array}
$$

where pdf ξ is symmetric around zero

• Then

$$
\mathbb {P} [ \theta \in \mathrm {C} ^ {\mathrm {p c}} ] = \mathbb {P} [ q _ {\alpha / 2} ^ {*} \leq \theta \leq q _ {1 - \alpha / 2} ^ {*} ] \to 1 - \alpha
$$

where $q _ { \alpha } ^ { * }$ is $\alpha$ -th quantile of ${ \hat { \theta } } ^ { * }$

• Sketch: Let $H ( \cdot )$ be cdf of $\xi$ . Since $\alpha / 2$ -th quantile of $a _ { n } ( { \hat { \theta } } ^ { * } - { \hat { \theta } } )$ is $a _ { n } \big ( q _ { \alpha / 2 } ^ { * } - \hat { \theta } \big )$ , we can show

$$
a _ {n} \left(q _ {\alpha / 2} ^ {*} - \hat {\theta}\right) \stackrel {{P}} {{\rightarrow}} q _ {\alpha / 2} ^ {\xi} \quad \left(\alpha / 2 \text {- t h q u a n t i l e o f} \xi\right)
$$

Thus

$$
\begin{array}{l} \mathbb {P} [ \theta \in \mathrm {C} ^ {\mathrm {p c}} ] \\ = \mathbb {P} \left[ - a _ {n} \left(q _ {\alpha / 2} ^ {*} - \hat {\theta}\right) \geq a _ {n} (\hat {\theta} - \theta) \geq - a _ {n} \left(q _ {1 - \alpha / 2} ^ {*} - \hat {\theta}\right) \right] \\ \rightarrow \mathbb {P} \left[ - q _ {\alpha / 2} ^ {\xi} \geq \xi \geq - q _ {1 - \alpha / 2} ^ {\xi} \right] \\ = H \left(- q _ {\alpha / 2} ^ {\xi}\right) - H \left(- q _ {1 - \alpha / 2} ^ {\xi}\right) \\ = H \left(q _ {1 - \alpha / 2} ^ {\xi}\right) - H \left(q _ {\alpha / 2} ^ {\xi}\right) \quad (\text {b y}) \\ = 1 - \alpha \\ \end{array}
$$

# Percentile-t interval

• We can make better CI than Cpc which does not require symmetry and theoretically more accurate   
• Consider t-statistic

$$
T = \frac {\hat {\theta} - \theta}{s (\hat {\theta})}
$$

Let $\boldsymbol { q } _ { n , \alpha } ^ { T }$ be the $\alpha \mathrm { . }$ -th quantile of $\begin{array} { r } { T = \frac { \hat { \theta } - \theta } { s ( \hat { \theta } ) } } \end{array}$   
• If we know $\boldsymbol { q } _ { n , \alpha } ^ { T }$ , then

$$
\begin{array}{l} 1 - \alpha = \mathbb {P} \left[ q _ {n, \alpha / 2} ^ {T} \leq T \leq q _ {n, 1 - \alpha / 2} ^ {T} \right] \\ = \mathbb {P} \left[ q _ {n, \alpha / 2} ^ {T} \leq \frac {\hat {\theta} - \theta}{s (\hat {\theta})} \leq q _ {n, 1 - \alpha / 2} ^ {T} \right] \\ = \mathbb {P} [ \hat {\theta} - s (\hat {\theta}) q _ {n, \alpha / 2} ^ {T} \geq \theta \geq \hat {\theta} - s (\hat {\theta}) q _ {n, 1 - \alpha / 2} ^ {T} ] \\ \end{array}
$$

• Thus (infeasible) exact CI is given by

$$
\mathrm {C} ^ {\mathrm {i d e a l}} = [ \hat {\theta} - s (\hat {\theta}) q _ {n, 1 - \alpha / 2} ^ {T}, \hat {\theta} - s (\hat {\theta}) q _ {n, \alpha / 2} ^ {T} ]
$$

Estimate $\boldsymbol { q } _ { n , \alpha } ^ { T }$ by $q _ { n , \alpha } ^ { T * }$ , which is $\alpha \mathrm { . }$

$$
T _ {(1)} ^ {*} \leq T _ {(2)} ^ {*} \leq \dots \leq T _ {(B)} ^ {*}
$$

where $\begin{array} { r } { T _ { b } ^ { * } = \frac { \hat { \theta } _ { b } ^ { * } - \hat { \theta } } { s ( \hat { \theta } _ { b } ^ { * } ) } \left( s ( \hat { \theta } _ { b } ^ { * } ) \right. } \end{array}$ is s.e. of $\hat { \theta } _ { b } ^ { * }$ computed by b-th resample)

Then percentile-t bootstrap CI is

$$
\mathrm {C} ^ {\mathrm {p t}} = [ \hat {\theta} - s (\hat {\theta}) q _ {n, 1 - \alpha / 2} ^ {T *} \mathrm {,} \hat {\theta} - s (\hat {\theta}) q _ {n, \alpha / 2} ^ {T *} ]
$$

which does not require symmetry of ξ

# Remark: Higher order refinement

• Indeed percentile-t CI, Cpt, is more accurate than other methods in the sense that

$$
\mathbb {P} [ \theta \in \mathrm {C} ^ {\mathrm {p t}} ] = 1 - \alpha + O (n ^ {- 1})
$$

• In contrast, percentile CI, $\mathrm { C ^ { p c } }$ , or asymptotic CI (say Casy) exhibit

$$
\mathbb {P} [ \theta \in \mathrm {C} ^ {\mathrm {p c}} ] = 1 - \alpha + O \left(n ^ {- 1 / 2}\right)
$$

$$
\mathbb {P} [ \theta \in C ^ {\text {a s y}} ] = 1 - \alpha + O \left(n ^ {- 1 / 2}\right)
$$

• All CIs are asymptotically valid (in the sense of ${ \mathsf { P r } } [ \theta \in \mathrm { C } \cdot ]  1 - \alpha )$ but approximation error of $\mathrm { C ^ { p t } }$ has smaller order   
See Hansen, Ch. 10.20 for detail

# Bootstrap test

• Consider testing H0 : θ = c against H1 : $\theta \neq c$ for scalar θ   
For t-statistic $\begin{array} { r } { T = \frac { \hat { \theta } - c } { s ( \hat { \theta } ) } } \end{array}$ , bootstrap counterpart is

$$
T ^ {*} = \frac {\hat {\theta} ^ {*} - \hat {\theta}}{s (\hat {\theta} ^ {*})}
$$

• Note: $T ^ { * }$ should be centered at $\hat { \theta }$ , not c. Because θˆ is true value in bootstrap world   
• Bootstrap estimate for critical value is obtained by $( 1 - \alpha ) \cdot$ -th quantile $q _ { 1 - \alpha } ^ { * }$ of $| T ^ { * } | _ { ( 1 ) } \leq \cdots \leq | T ^ { * } | _ { ( B ) }$   
Reject H0 if $| \tau | \geq q _ { 1 - \alpha } ^ { * }$

# Bootstrap p-value

We can also estimate p-value by bootstrap   
• Recall that p-value is defined as

$$
p = 1 - G _ {n} (| T |)
$$

where $G _ { n } ( \cdot )$ is null distribution of |T |

Thus bootstrap estimate for p is

$$
p ^ {*} = 1 - G _ {n} ^ {*} (| T |)
$$

where $G _ { n } ^ { * } ( \cdot )$ is bootstrap distribution of $\lvert T ^ { * } \rvert$

• By bootstrap algorithm $p ^ { * }$ is obtained as

$$
p _ {B} ^ {*} = \frac {1}{B} \sum_ {b = 1} ^ {B} \mathbb {I} \{| T _ {b} ^ {*} | > | T | \}
$$

# Bootstrap bias estimation

• Let $\hat { \theta }$ be an estimator of θ. We are interested in evaluation of bias $\mathbb { E } [ \hat { \theta } - \theta ]$   
• Let $T _ { n } = \hat { \theta } - \theta$ . Then bias is written as E[Tn]   
• Bootstrap counterpart of $T _ { n }$ is

$$
T _ {n} ^ {*} = \hat {\theta} ^ {*} - \hat {\theta}
$$

and bootstrap counterpart of E[Tn] is

$$
\mathbb {E} ^ {*} \left[ T _ {n} ^ {*} \right]
$$

• Based on $\hat { \theta } _ { b } ^ { * }$ for $b = 1 , \dots , B , \mathbb { E } ^ { * } [ T _ { n } ^ { * } ]$ $\mathbb { E } ^ { * } [ T _ { n } ^ { * } ]$ can be estimated by

$$
\frac {1}{B} \sum_ {b = 1} ^ {B} T _ {n b} ^ {*} = \frac {1}{B} \sum_ {b = 1} ^ {B} \hat {\theta} _ {b} ^ {*} - \hat {\theta} \equiv \overline {{\hat {\theta} ^ {*}}} - \hat {\theta}
$$

• Given the estimated bias $\overline { { { \hat { \theta } } ^ { * } } } - \hat { \theta }$ , bias corrected estimator is obtained as

$$
\hat {\theta} - (\overline {{\hat {\theta} ^ {*}}} - \hat {\theta}) = 2 \hat {\theta} - \overline {{\hat {\theta} ^ {*}}}
$$

# Bootstrap MSE estimation

• Similarly MSE $\mathbb { E } [ ( \hat { \theta } - \theta ] ) ]$ of θˆ can be estimated by

$$
\mathbb {E} ^ {*} [ (\hat {\theta} ^ {*} - \hat {\theta}) ^ {2} ]
$$

which is estimated by simulation as

$$
\frac {1}{B - 1} \sum_ {b = 1} ^ {B} (\hat {\theta} _ {b} ^ {*} - \hat {\theta}) ^ {2}
$$

# 3. Bootstrap for OLS and GMM

# Bootstrap

• Consider projection model

$$
Y = X ^ {\prime} \beta + e, \qquad \mathbb {E} [ X e ] = 0
$$

• Projection coefficient $\beta = \mathbb { E } [ X X ^ { \prime } ] ^ { - 1 } \mathbb { E } [ X Y ]$ is estimated by OLS

$$
\hat {\beta} = \left(\sum_ {i = 1} ^ {n} X _ {i} X _ {i} ^ {\prime}\right) ^ {- 1} \left(\sum_ {i = 1} ^ {n} X _ {i} Y _ {i}\right)
$$

• Based on bootstrap sample $\{ ( Y _ { i } ^ { * } , X _ { i } ^ { * } ) : i = 1 , \ldots , n \} ,$ , bootstrap counterpart of $\hat { \beta }$ is given by (called pairs bootstrap)

$$
\hat {\beta} ^ {*} = \left(\sum_ {i = 1} ^ {n} X _ {i} ^ {*} X _ {i} ^ {* \prime}\right) ^ {- 1} \left(\sum_ {i = 1} ^ {n} X _ {i} ^ {*} Y _ {i} ^ {*}\right)
$$

Bootstrap CI and test are applicable

# Bootstrap for OLS: Regression model

• Consider regression model

$$
Y = X ^ {\prime} \beta + e, \qquad \mathbb {E} [ e | X ] = 0
$$

• Pairs bootstrap is still valid. But to improve precision, want to impose conditional moment restriction $\mathbb { E } [ e | X ] = 0$ in the bootstrap world   
• One way is to hold Xi fixed and draw $e _ { i } ^ { * }$ to satisfy conditional moment restriction, that is

$$
Y _ {i} ^ {*} = X _ {i} ^ {\prime} \hat {\beta} + e _ {i} ^ {*}
$$

$$
e _ {i} ^ {*} = \hat {e} _ {i} \xi_ {i} ^ {*}
$$

where ˆei is OLS residual and $\xi _ { j } ^ { * }$ is iid draws (by computer) with $\mathbb { E } [ \xi _ { i } ] = 0$ and var[ξi ] = 1

It satisfies $\mathbb { E } ^ { * } [ e _ { i } ^ { * } | X _ { i } ] = 0 \ \mathrm { a n d } \ \mathbb { E } ^ { * } [ e _ { i } ^ { * 2 } | X _ { i } ] = \hat { e } _ { i } ^ { 2 }$ $\mathbb { E } ^ { * } [ e _ { i } ^ { * } | X _ { i } ] = 0$

# Bootstrap for GMM

• Consider moment restriction model

$$
\mathbb {E} [ g (Z, \theta_ {0}) ] = 0
$$

• For just identified case (dim g = dim θ), all results above apply   
• For over identified case (dim g > dim θ), there is some issue   
• In bootstrap world, empirical distribution $F _ { n }$ plays role of population, so bootstrap counterpart of $\mathbb { E } [ g ( Z , \theta _ { 0 } ) ]$ is

$$
\bar {g} (\hat {\theta}) = \frac {1}{n} \sum_ {i = 1} ^ {n} g (Z _ {i}, \hat {\theta})
$$

where θˆ is GMM estimator, but generally $\bar { g } ( \hat { \theta } ) \neq 0$

# Confidence interval

Let $\{ Z _ { i } ^ { * } \} _ { i = 1 } ^ { n }$ be bootstrap resample from $F _ { n }$ . Bootstrap counterpart of GMM estimator $\hat { \theta }$ is

$$
\hat {\theta} ^ {*} = \arg \min  _ {\theta} \bar {g} ^ {*} (\theta) ^ {\prime} \hat {\Omega} ^ {* - 1} \bar {g} ^ {*} (\theta)
$$

where $\begin{array} { r } { \bar { g } ^ { * } ( \theta ) = \frac { 1 } { n } \sum _ { i = 1 } ^ { n } g ( Z _ { i } ^ { * } , \theta ) } \end{array}$ and $\hat { \Omega } ^ { * - 1 }$ is optimal weight based on $\{ Z _ { i } ^ { * } \} _ { i = 1 } ^ { n }$

• All methods based on ${ \hat { \theta } } ^ { * }$ are asymptotically valid   
• However, in order to achieve higher-order refinement, we need to modify bootstrap method

# Recentered bootstrap

• Hall & Horowitz (1996) suggested to compute bootstrap counterpart of $\hat { \theta }$ by

$$
\hat {\theta} _ {r} ^ {*} = \arg \min _ {\theta} \{\bar {g} ^ {*} (\theta) - \bar {g} (\hat {\theta}) \} ^ {\prime} \hat {\Omega} ^ {* - 1} \{\bar {g} ^ {*} (\theta) - \bar {g} (\hat {\theta}) \} ^ {\prime}
$$

i.e. use “recentered” moments $\{ g ( Z _ { i } ^ { * } , \theta ) - \bar { g } ( \hat { \theta } ) \}$ to do GMM

• Percentile-t CI based on $\hat { \theta } _ { r } ^ { * }$ achieves higher-order refinement

# Specification test

• Test validity of overidentified moment restrictions

$$
\mathbb {H} _ {0}: \mathbb {E} [ g (Z, \theta) ] = 0 \quad \text {f o r s o m e} \theta \in \Theta
$$

$$
\mathbb {H} _ {1}: \mathbb {E} [ g (Z, \theta) ] \neq 0 \quad \text {f o r a l l} \theta \in \Theta
$$

. Test statistic (called J-statistic)

$$
\begin{array}{l} J = n \min  _ {\theta \in \Theta} \bar {g} (\theta) ^ {\prime} \hat {\Omega} ^ {- 1} \bar {g} (\theta) \\ { = } { n \bar { g } ( \hat { \theta } ) ^ { \prime } \hat { \Omega } ^ { - 1 } \bar { g } ( \hat { \theta } ) } \\ \end{array}
$$

• To approximate distribution of J by bootstrap, we should use

$$
J ^ {*} = n \min _ {\theta \in \Theta} \{\bar {g} ^ {*} (\theta) - \bar {g} (\hat {\theta}) \} ^ {\prime} \hat {\Omega} ^ {* - 1} \{\bar {g} ^ {*} (\theta) - \bar {g} (\hat {\theta}) \}
$$

If we use $J ^ { * }$ without recentering, it fails to approximate distribution of $J$ under H0