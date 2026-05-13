# Ec484: Topic II ó Time-Series Econometrics, WT2026

# TIME-SERIES MODELS

latest version: 08apr26

# 1 New Technical Issues in using TS data

# 1.1 Autocorrelation- $>$ Serial Correlation

Autocorrelation in the stochastic error terms and/or observed series - specializes to *serial* correlation. This translates to:

$$
A 4: E (\epsilon \epsilon^ {\prime} | r e g r e s s o r s) = c ^ {2} \Omega \neq d i a g o n a l
$$

# 1.1.1 Endogeneity because of A2 and A4 interactions

time series among regressor variables: lagged dependent variables may be ìpredeterminedîvs ìendogenousî. Note: ìstrongly exogenousîis ruled out with TS lagged dependent variables as regressors.

Consider the linear regression model satisfying:

$$
A 2 l i n e a r: y _ {t} = w _ {t} ^ {\prime} \delta = \gamma y _ {t - 1} + x _ {t} ^ {\prime} \beta + \epsilon_ {t}
$$

Assuming $A 1 : r a n k ( W ) = k _ { w } = 1 + k _ { \beta }$ , then we can obtain the OLS estimator for $\delta = ( \rho , \beta ^ { \prime } ) ^ { \prime }$ as

$$
\hat {\delta} _ {o l s} = \left(W ^ {\prime} W\right) ^ {- 1} W ^ {\prime} y
$$

with sampling error vector:

$$
s e v (\hat {\delta} _ {o l s}) = \hat {\delta} _ {o l s} - \delta = (W ^ {\prime} W) ^ {- 1} W ^ {\prime} \epsilon
$$

The key consistency requirement is that:

$$
\frac {1}{T} W ^ {\prime} \epsilon \rightarrow E w _ {t} \epsilon_ {t} = E \left(\begin{array}{c}y _ {t - 1} \epsilon_ {t}\\x _ {t} \epsilon_ {t}\end{array}\right) = 0
$$

If $A 3$ stipulates that $x _ { t }$ is weakly exogenous w.r.t. the error term $\epsilon _ { t }$ , this means that $E x _ { t } \epsilon _ { t } = 0$ . But since $y _ { t - 1 }$ depends on $\epsilon _ { t }$ , then the $E y _ { t - 1 } \epsilon _ { t }$ will *not* equal 0 as long as the $\epsilon _ { t }$ is serially correlated. Hence, the whole $\hat { \delta } _ { o l s }$ vector will be inconsistent if $\epsilon _ { t }$ is serially correlated, whereas it will be consistent if $\epsilon _ { t }$ is not serially correlated. Therefore we see that the presence of a lagged dependent variable in A2linear interacts with the $A 4$ assumption about the VCov properties of $\epsilon _ { t }$ .

# 1.2 Forecasting models without any dynamic causal interpretation

In a static context, see the *CARTOON* for relation between Causation and Correlation.

***PICTURE APPROXIMATELY HERE***

With Time-Series data, we must note the Engineering ìblack-boxîapproach

Economists: sometimes rely on logical fallacy of "Post hoc ergo propter hoc" = "After it, therefore because of it". This is the title of a paper by the Nobel laureate James Tobin.

#

#

# 1.3 Dynamic causal e§ect analysis

This is both desirable and possible ó though di¢ cult.

A related attempt is by another Nobel Laureate, Clive Granger ó see below in Vector Autoregressions (VAR) section pioneered by Nobel Laureate Chris Sims. The concept is known as ìGranger-causality" and is the logical reverse of the "Post Hoc Ergo Propter Hoc" (PHEPH) fallacy: Granger relies on the idea that if lags of variable X do not have any measurable e§ect on the current or future levels of variable Y, then they cannot be driving/causing it. Though this logic may fail on occasion, it is not as patently false as the PHEPH claim.

In sum, if variable X does not Granger-cause Y, then it is unlikely that X causes Y in the real sense. But if X is found to Granger-cause Y, then if we argued that ìtherefore X must cause Y in the real senseî we would be committing the PHEPH fallacy.

# 1.4 Special Di¢ culties with ìRobustî VCov matrices and Standard errors

The Newey-West method for Autocorrelated errors, compared to Whiteís method for errors that exhibit Conditional Heteroskedasticity.

Suppose that data $( y , X )$ , sample denoted by $s = 1 , \cdots , S$ , satisfy the classic assumptions:

$$
\begin{array}{l} A 1: \operatorname {r a n k} (X) = k <   S \\ A 2 l i n e a r : y = X \beta + \epsilon , E \epsilon = 0 \\ A 3: X \text {w e a k l y e x o g e n o u s w . r . t .} \epsilon (E x _ {t} \epsilon_ {t} = 0) \\ A 4: E \left(\epsilon \epsilon^ {\prime} | X\right) = c ^ {2} \Omega \neq c ^ {2} I _ {T}. \\ \end{array}
$$

Then the

$$
\hat {\beta} _ {o l s} = \left(X ^ {\prime} X\right) ^ {- 1} X ^ {\prime} y
$$

will be Consistent, Uniformly Asymptotically Normal (CUAN), but it will *not* be Best Linear CUAN since $A 4$ violates the conditions of the (asymptotic) Gauss-Markov theorem. The correct VCov matrix for OLS will be

$$
V (\hat {\beta} _ {o l s} | X) = c ^ {2} (X ^ {\prime} X) ^ {- 1} X ^ {\prime} \Omega X (X ^ {\prime} X) ^ {- 1}
$$

instead of the formula $c ^ { 2 } ( X ^ { \prime } X ) ^ { - 1 }$ in the case of $A 4 G M : E ( \epsilon \epsilon ^ { \prime } | X ) = c ^ { 2 } I _ { T }$

Instead of trying to apply the GM estimator, which in this case will be the GLS that requires knowing the correct $\Omega$ matrix, a common suggestion is to proceed with OLS but obtain a ìRobustî estimator for the correct VCov matrix. At Örst glance, this would appear unwise since the VCov *also* depends on the correct $\Omega$ matrix.

But Halbert White (1982) proved that if the errors exhibit Heteroskedasticity conditional on the regressors, then a straightforward way exists to obtain consistent estimates of $V ( \hat { \beta } _ { o l s } | X )$ without knowing the exact $\Omega$ . SpeciÖcally, the White (1982) result is that in case of Conditional Heteroskedasticity of the form:

$$
A 4: E (\epsilon \epsilon^ {\prime} | X) = c ^ {2} \Omega = c ^ {2} d i a g \{\omega_ {1 1} ^ {2}, \dots , \omega_ {s s} ^ {2}, \dots \omega_ {S S} ^ {2} \}
$$

the the ìRobustîestimator for the OLS VCov is obtained from:

$$
\hat {V} = \left(\sum_ {s = 1} ^ {S} x _ {s} x _ {s} ^ {\prime}\right) ^ {- 1} \sum_ {s = 1} ^ {S} \hat {\epsilon} _ {s} ^ {2} x _ {s} x _ {s} ^ {\prime} \left(\sum_ {s = 1} ^ {S} x _ {s} x _ {s} ^ {\prime}\right) ^ {- 1}
$$

where $\hat { \epsilon } _ { s } ^ { 2 }$ is the square of the OLS residual.

The problem with Time-Series data is that $A 4$ would signify that $\Omega$ would be non-diagonal because of serial correlation. Whitney Newey and Kenneth West (1987) examined this problem and realized that the natural generalization of Whiteís method would not work. SpeciÖcally the analogous middle term:

$$
\sum_ {s = 1} ^ {S} \sum_ {q = 1} ^ {S} \hat {\epsilon} _ {s} \hat {\epsilon} _ {q} x _ {s} x _ {q} ^ {\prime}
$$

would not converge in general because $\epsilon _ { t }$ is highly correlated even with distant $\epsilon _ { q }$ . Their solution was to include a so-called ìBartlett kernelîthat discounts distant $( \hat { \epsilon } _ { s } , \hat { \epsilon } _ { q } )$ pairs.

# 1.5 Special properties of Time-Series Data

# 1.5.1 Weak stationarity and Strict Stationarity

Consider the time-series $\left\{ y _ { - \infty } , \cdot \cdot \cdot , y _ { 1 } , \cdot \cdot \cdot , y _ { T } , \cdot \cdot \cdot , y _ { \infty } \right\}$ and focus on any two members of this sequence, $y _ { t }$ and $y _ { t - \ell }$ The series is said to be ìstationaryî of a particular type if particular stochastic properties of $y _ { t }$ and $y _ { t - \ell }$ do not depend on $t$ and $t - \ell$ , their absolute location in the sequence, but only on $\ell$ , their relative time-separation in the sequence.

Two types of stationarity are usually deÖned:

(1) Strict stationarity is said to hold if the distributions of $y _ { t }$ and $y _ { t - \ell }$ , joint and marginal, do not depend on $t$ but only on $\ell$ , i.e., $f _ { y _ { t } } ( z ) = f _ { y _ { t - \ell } } ( z )$ for any $z$ in the support of the variables, and $f _ { y _ { t } , y _ { t - \ell } } ( z , w )$ depends only on $\ell$ and not on $t$ .   
(2) Weak or covariance stationarity holds when the Örst two moments of $y _ { t }$ and $y _ { t - \ell }$ depend possibly on $\ell$ but not on $t$ , i.e., $E y _ { t } = E y _ { t - \ell }$ and $v a r ( y _ { t } ) = v a r ( y _ { t - \ell } )$ for any $\ell$ , and c $o v ( y _ { t } , y _ { t - \ell } ) = E [ ( y _ { t } - E y _ { t } ) \cdot ( y _ { t - \ell } - E y _ { t - \ell } $ ) possibly on $\ell$ but not on $t$ .

Obviously if a process has Önite Örst two moments, strict stationarity implies weak stationarity but not vice versa. Note also that stationarity of either type implies that the $y _ { t }$ ís are homoskedastic.

We will adopt the common practice of using the term ìstationarityî without a qualiÖer to mean ìweak or covariance-stationarityî. Note that in case the $y$ ís are multivariate normally distributed (Gaussian) random variables, strict stationarity and weak stationarity are equivalent.

# 1.5.2 Ergodicity and Nonergodicity: An Explanation ó issues with LLNs

If a series $\{ X _ { t } \} _ { - \infty } ^ { + \infty }$ is weakly (covariance) stationary with Önite Örst two moments $E X _ { t } = a _ { X } < \infty$ , $E X _ { t } ^ { 2 } = b _ { X } < \infty$ and $E X _ { t } X _ { t - s } = c _ { X } ( s ) < \infty$ , ergodicity means that Weak Laws of Large Numbers will apply to the sample moments,

such that as $T \to \infty$ :

$$
p \lim {\frac {1}{T} \sum_ {t = 1} ^ {T} X _ {t}} = a _ {X}
$$

$$
p \lim  \frac {1}{T} \sum_ {t = 1} ^ {T} X _ {t} ^ {2} = b _ {X}
$$

$$
p \lim  \frac {1}{T} \sum_ {t = 1} ^ {T} X _ {t} X _ {t - s} = c _ {X} (s)
$$

The conditions for WLLNs to apply require that the series must not be ìtoo correlatedîacross its elements.

The following is an example of a stochastic process that is not ergodic, even though its elements are independently drawn (and hence uncorrelated):

DeÖne a stochastic process $\{ D _ { t } \} _ { - \infty } ^ { + \infty }$ by the following two step scheme:

Step 1: Select randomly one of two coins, the Örst being fair with probability of heads:tails=0.5:0.5, and the second having Heads on both sides, i.e., with probability of heads:tails=1.0:0.0.

Step 2: Consider the áips using the coin selected in Step 1. DeÖne Dt =  0 if Tails shows $D _ { t } = { \left\{ \begin{array} { l l } { 1 } \\ { 0 } \end{array} \right. }$ 1 if Heads shows

Unconditionally from the Step 1 outcome, the $D _ { t }$ series has expectation $E D _ { t } = 0 . 5 \times 0 . 5 + 0 . 5 \times 1 . 0 = 0 . 7 5$ , while given the Step 1 outcome, $E D _ { t } = 0 . 5$ OR $E D _ { t } = 1 . 0$ depending on which coin was randomly picked in Step 1. So the sample mean $\begin{array} { r } { \bar { D } = \frac { 1 } { T } \displaystyle \sum _ { t = 1 } ^ { T } D _ { t } } \end{array}$ will *never* converge to the population expectation of the process, which is $E D _ { t } = 0 . 7 5$ ó it will converge to *either* 0:5 if the fair coin was selected in Step 1, *or* to 1:0 if the unfair coin was selected in Step 1. Hence this series is non-ergodic. This behaviour is caused by the fact that $D _ { t }$ is the interaction of two random variables, the coin selection in Step 1, call it $C$ , and the random variable denoting the Step 2 áips, call it $F _ { C } ^ { \prime }$ . Thus we have:

$$
D _ {t} = C \times F _ {C = 1} + (1 - C) \times F _ {C = 0} \tag {1}
$$

Hence $D _ { t }$ is non-stationary (and non-ergodic) because it has a di§erent expectation depending on the $C$ outcome (which is the ìinitial conditionîof the series).

# 1.5.3 Extending (2.6.1-2.6.3): Distributions with UndeÖned/InÖnite Moments ó Strict Stationarity

Important for modelling Catastrophic Events:

(i.) Financial Econometrics: Financial Return Distributions;   
Value at Risk; and Financial Crises;   
(ii.) Econometrics of Climate Change Models; and   
(iii.) Epidemiological Catastrophies

The main results can be found in ìBimodal t-ratios: The Surprising Impact of Thick Tails on Statistical Inference,îby Carlo Fiorio, Vassilis Hajivassiliou and Peter Phillips, Econometrics Journal, pp.271-289, July 2010.

# 21B Some Facts about the Cauchy Distribution

<table><tr><td></td><td>CAUCHY</td><td></td></tr><tr><td>pdf(z)</td><td>cdf(z)</td><td>Inverse cdf(p)</td></tr><tr><td>f(z) = 1/πγ(1+(z-α0/γ)2)</td><td>F(z) = 1/π tan-1(z-α0/γ) + 1/2</td><td>z = α0 + γ tan (π (p - 1/2))</td></tr></table>

1. NB1: $\alpha _ { 0 } =$ median=mode6=mean (which is not Önite)   
2. NB2: $\gamma =$ scale=variance (which is not Önite)

<table><tr><td></td><td>GAUSSIAN</td><td></td></tr><tr><td>pdf(z)</td><td>cdf(z)</td><td>Inverse cdf(p)</td></tr><tr><td>f(z) = 1/√2πσ2 exp(−1/2 (z-μ)/σ)2 = 1/σφ(z-μ/σ)</td><td>F(z) = Φ(z-μ/σ)</td><td>z = μ + σΦ-1(p)</td></tr></table>

1. NB1: $\mu =$ median=mode=mean (Önite)   
2. NB2: $\sigma =$ scale=std.dev. (Önite)   
3. NB3: $\phi ( \cdot )$ denotes the $N ( 0 , 1 )$ pdf, while $\Phi \left( \cdot \right)$ denotes the $N ( 0 , 1 )$ cdf (which does not have a closed-form expression).

<table><tr><td>z</td><td>pdfGauss</td><td>pdfCauchy</td><td>cdfGauss</td><td>cdfCauchy</td></tr><tr><td>-1</td><td>0.24</td><td>0.16</td><td>0.16</td><td>0.25</td></tr><tr><td>-2</td><td>0.05</td><td>0.06</td><td>0.02</td><td>0.15</td></tr><tr><td>-3</td><td>0.004</td><td>0.03</td><td>0.001</td><td>0.07</td></tr><tr><td>-5</td><td>≈10-6</td><td>≈0.01</td><td>≈10-7</td><td>≈0.06</td></tr><tr><td>-9</td><td>≈10-18</td><td>≈0.004</td><td>≈10-19</td><td>≈0.04</td></tr><tr><td>-15</td><td>≈10-50</td><td>≈0.0001</td><td>≈10-51</td><td>≈0.02</td></tr><tr><td>-25</td><td>≈10-138</td><td>≈0.0005</td><td>≈10-138</td><td>≈0.013</td></tr></table>

<table><tr><td>p</td><td>Gaussian InvCdf</td><td>Cauchy InvCdf</td></tr><tr><td>10-1</td><td>-1.28</td><td>-3.08</td></tr><tr><td>10-2</td><td>-2.32</td><td>-3.2 × 10</td></tr><tr><td>10-3</td><td>-3.09</td><td>-3.2 × 102</td></tr><tr><td>10-6</td><td>-4.75</td><td>-3.2 × 105</td></tr><tr><td>10-9</td><td>-6.00</td><td>-3.2 × 108</td></tr></table>

# 1.6 Eleven Facts about Stationarity and Ergodicity

1. Strict S does not imply Weak S [e.g., Cauchy], nor is it necessary for Weak S [e.g., Örst two moments are Önite and time-invariant, but skewness and kurtosis are time-varying].   
2. Strict S plus at least Örst two moments Önite *does* = weak S.   
3. If the Time-Series has Örst two moments Önite and it is Weakly S, it will *not* necessarily be Strictly S.   
4. If a Time-Series is multivariate Gaussian, then Strict S $\Longleftrightarrow$ Weak S.   
5. Weak S implies Homoskedasticity and time-invariant mean, but it does not Öx the whole distribution since only Örst two moments determined by Weak S (unless it is multivariate Gaussian).   
6. Strict S plus Önite Örst two moments $\Longrightarrow$ Homoskedasticity and Time-invariant mean.   
7. For MSE convergence of Forecasts/Predictions, Weak S su¢ ces.   
8. For convergence in probability (plim) (and hence Weak Laws of Large Numbers), and for convergence in distribution (and hence for Asymptotic distributions/Centeral Limit Theorems), we need *strengthening* of Weak S in order to control/restrict the extent of Correlation/dependancy/long memory between separate elements of the series.

[In particular, we need to rule out very ìLong Memory" processes.] Processes that satisfy this ìlow/short memoryîconditions are called $^ *$ Mixing processes* (two speciÖc types: $\alpha$ -mixing and $\phi$ -mixing).

9. Weak S may *not* be su¢ cient for Ergodicity.

To illustrate this fact, suppose:

$$
W _ {t} = U _ {0} + \epsilon_ {t}
$$

where $U _ { 0 } \sim U [ - 1 , 1 ]$ is drawn once and is added to the mutually independent $\epsilon _ { t } \sim i . i . d . N ( 0 , \sigma _ { \epsilon } ^ { 2 } )$ .

Clearly, $W _ { t }$ is both Strictly S and Weakly S. But it is $^ *$ non-ergodic* because the sample average $W$ does *not* converge in probability to the ìensemble true averageî $E W _ { t } = 0$ . Instead, as ${ \cal I } ^ { \prime }  \infty$ , $\bar { W } = U _ { 0 } +$ $\begin{array} { r } { { \frac { 1 } { T } } \sum _ { t = 1 } ^ { T } \epsilon _ { t } \begin{array} { c } { { p } } \\ { { \longrightarrow } } \end{array} U _ { 0 } } \end{array}$

10. InÖnite First two moments has two implications: (a) Weak S does not hold and Ergodicity is meaningless; and (b) Strict S may hold, but Ergodicity does not hold or is meaningless.   
11. A series may be Strictly Nonstationary but Weakly S.

Illustrative example: epsilon(t) has E=0 and homoskedastic (same sigma) and independently drawn from all others (so WS). But the Örst ten epsilons might be from N(0,sigmasq), the next ten from Logistic(0,sigmasq), the next ten from Laplace(0,sigmasq) etc

# 1.7 Special Stochastic Processes for Time-Series: White Noise to ARMA(p,q) and Conditions for Stationarity

# 1.7.1 Stationarity of an Innovation or White Noise

Since we deÖne an innovation $\nu _ { t }$ to be a zero-mean process satisfying the Gauss-Markov assumptions of homoskedasticity and no serial correlation (our standard Assumption A4 before), this process is covariance-stationary because:

$$
E \nu_ {t} = 0 \quad \forall t, \qquad E \nu_ {t} ^ {2} = \sigma_ {\nu} ^ {2} \quad \forall t, \qquad E \nu_ {t} \nu_ {s} = 0 \quad \forall t \neq s.
$$

# 1.7.2 Stationarity of MA(q) Processes

A Moving-Average-of-order-q process is deÖned by:

$$
\epsilon_ {t} = \nu_ {t} + \lambda_ {1} \nu_ {t - 1} \dots + \lambda_ {q} \nu_ {t - q} \equiv (1 + \lambda_ {1} L + \dots + \lambda_ {q} L ^ {q}) \nu_ {t}
$$

where the $\nu$ ís are innovations. Thus we see that any MA(q) process with Önite $q$ must be stationary. These processes are known as $q$ -dependent processes because they are auto-correlated only up to $q$ lags ó for $\ell > q$ , $\epsilon _ { t }$ and $\epsilon _ { t - \ell }$ will be uncorrelated. This property is crucial in searching for valid instrumental variables in linear regressions with lagged dependent variables as regressors, as well as for identifying MA processes.1

# 1.7.3 Stationarity of AR(p) Processes

In contrast to the always covariance-stationary MA(q) process, the general Auto-Regressive process of order $p$ deÖned by:

$$
\epsilon_ {t} = \gamma_ {1} \epsilon_ {t - 1} + \dots + \gamma_ {p} \epsilon_ {t - p} + \nu_ {t} \tag {2}
$$

where $\nu _ { t }$ is an innovation, may or may not be covariance-stationary. This is determined by certain conditions on the $\gamma _ { 1 } , \cdots , \gamma _ { p }$ coe¢ cients. The general set of conditions can be stated in terms of the roots of the characteristic

polynomial corresponding to this stochastic di§erence equation of order $q$ to all lie outside the ìunit circle,î as discussed in the lectures. See problem set 9 for an illustration in the case of an AR(2) process.

As a Örst step, we derive the conditions for covariance stationarity of an AR(1) process, $\epsilon _ { t } = \gamma _ { 1 } \epsilon _ { t - 1 } + \nu _ { t }$ . By repeatedly lagging this equation, and substituting the lags of $\epsilon$ on the RHS, we obtain after $s$ such laggings and substitutions:

$$
\epsilon_ {t} = \nu_ {t} + \gamma_ {1} \nu_ {t - 1} + \gamma_ {1} ^ {2} \nu_ {t - 2} + \dots + \gamma_ {1} ^ {s} \nu_ {t - s} + \gamma_ {1} ^ {s + 1} \epsilon_ {t - s - 1} \tag {3}
$$

Recall that the innovations $\nu$ have equal variances for every $t$ and they are uncorrelated across di§erent $t$ ís. Since stationarity in general requires that the statistical properties of $\epsilon _ { t }$ not depend on $t$ but only on the distance $( \ell )$ from other $\epsilon _ { t - \ell }$ ís, this imposes the requirement that the last term $\gamma _ { 1 } ^ { s + 1 } \epsilon _ { t - s - 1 }$ , which is the only one depending on $t$ directly, must vanish as $s \longrightarrow \infty$ . The condition for this is $| \gamma _ { 1 } | < 1$ . Note that equality is not allowed in this case if $\gamma _ { 1 }$ were equal to 1, the series would involve an inÖnite non-convergent sum of terms and the last term would also not vanish. For $| \gamma _ { 1 } | < 1$ , the series is covariance-stationary with mean equal to the mean of (3):

$$
E \epsilon_ {t} = E \nu_ {t} + \gamma_ {1} E \nu_ {t - 1} + \gamma_ {1} ^ {2} E \nu_ {t - 2} + \dots = 0 (1 + \gamma_ {1} + \gamma_ {1} ^ {2} + \gamma_ {1} ^ {3} + \dots) = 0 \frac {1}{1 - \gamma_ {1} ^ {2}} = 0
$$

and variance equal to the variance of (3):

$$
E \epsilon_ {t} ^ {2} = \sigma_ {\nu} ^ {2} (1 + \gamma_ {1} ^ {2} + \gamma_ {1} ^ {4} + + \gamma_ {1} ^ {6} + \dots) = \sigma_ {\nu} ^ {2} \frac {1}{1 - \gamma_ {1} ^ {2}}
$$

Finally, the covariance between $\epsilon _ { t }$ and $\epsilon _ { t - 1 }$ is obtained by multiplying (2) by $\epsilon _ { t - 1 }$ and taking expectations:

$$
E \epsilon_ {t} \epsilon_ {t - 1} = \gamma_ {1} E \epsilon_ {t - 1} ^ {2} + E \nu_ {t} \epsilon_ {t - 1}
$$

Since $\epsilon _ { t - 1 }$ depends only on innovations from period $t - 1$ and earlier, the last term is 0 and the covariance equals $\gamma _ { 1 } v a r ( \epsilon )$ by stationarity ( $v a r ( \epsilon _ { t } ) = v a r ( \epsilon )$ for every $t$ ). Thus in general:

$$
E \epsilon_ {t} \epsilon_ {t - s} = \gamma_ {1} ^ {s} v a r (\epsilon) = \gamma_ {1} ^ {s} \sigma_ {\nu} ^ {2} \frac {1}{1 - \gamma_ {1} ^ {2}}
$$

# 1.8 Distributed Lags of the observed variables (y and X) ó NOT EXAMINABLE

$$
y _ {t} = A (L) y _ {t} + \beta [ 1 + B (L) ] x _ {t} + [ 1 + C (L) ] \nu_ {t}
$$

This can be written, subject to stationarity of $\left( 1 - A ( L ) \right)$ , as:

$$
y _ {t} = \frac {1 + B (L)}{1 - A (L)} x _ {t} + \frac {1 + C (L)}{1 - A (L)} \nu_ {t} \equiv (d _ {0} + D (L)) x _ {t} + u _ {t}
$$

where $u _ { t }$ is stationary. Note that $D ( L )$ may be inÖnite.

Multipliers: Impact, Interim, and Long-Run.

Mean lag, Median lag.

Typical parameterizations of $\left( d _ { 0 } + D ( L ) \right)$ : Rational lags, Almon lags.

# 1.9 Estimation and Testing in Linear and Nonlinear Regression Models with TS Data

See Topic 0 discussed already. The extensions to TS Data are straightforward ó special issues were discussed in the Introduction above.

# 2 Special Topics

See PS4, question 2 for deÖnitions and explanations of the examinable issues.

# 2.1 Vector Autoregressions

Beyond the scope of this course, except the DEFINITIONS below.

Consider the 3-variable, 2-lag VAR model:

$$
\left[ \begin{array}{l} X _ {t} \\ Y _ {t} \\ Z _ {t} \end{array} \right] = \left[ \begin{array}{l l l} \beta_ {x x} & \beta_ {x y} & \beta_ {x z} \\ \beta_ {y x} & \beta_ {y y} & \beta_ {y z} \\ \beta_ {z x} & \beta_ {z y} & \beta_ {z z} \end{array} \right] \left[ \begin{array}{l} X _ {t - 1} \\ Y _ {t - 1} \\ Z _ {t - 1} \end{array} \right] + \left[ \begin{array}{l l l} \gamma_ {x x} & \gamma_ {x y} & \gamma_ {x z} \\ \gamma_ {y x} & \gamma_ {y y} & \gamma_ {y z} \\ \gamma_ {z x} & \gamma_ {z y} & \gamma_ {z z} \end{array} \right] \left[ \begin{array}{l} X _ {t - 2} \\ Y _ {t - 2} \\ Z _ {t - 2} \end{array} \right] + \left[ \begin{array}{l} u _ {t} \\ v _ {t} \\ w _ {t} \end{array} \right]
$$

Consider the equation for the evolution of $X _ { t }$ ::

$$
X _ {t} = \beta_ {x x} X _ {t - 1} + \beta_ {x y} Y _ {t - 1} + \beta_ {x z} Z _ {t - 1} + \gamma_ {x x} X _ {t - 2} + \gamma_ {x y} Y _ {t - 2} + \gamma_ {x z} Z _ {t - 2} + u _ {t}
$$

# 2.2 Granger Causality

The basic DEFINITIONS and CONCEPTS are discussed here. Rest is beyond the scope of these lectures.

Definition 1: We say that variable $Y$ does not Granger-cause variable $X$ i§ the lags of $Y$ are not signiÖcant in the autoregressive equation for variable $X$ .

In this example, $Y$ goes not Granger-cause $X$ i§ $\beta _ { x y } = \gamma _ { x y } = 0$ .

Note that this deÖnition leaves open the possibility that the past of $Y$ *may* still have an ináuence on $X$ *indirectly* through another variable like $Z$ . To rule our such indirect e§ects, we introduce the following:

Definition 2: We say that variable $Y$ is not Granger Causally-Prior to variable $X$ i§ the lags of $Y$ are not signiÖcant in the autoregressive equation for variable $X$ *and $^ *$ also not signiÖcant in all other autoregressions in the VAR system.

In the example here, as long as lags of variable $Z$ appear in the $X$ autoregression, we must also require that in the autoregression for $Z$ all the lags of $Y$ are insigniÖcant. This is needed to ensure that lags of $Y$ do not have any signiÖcant impact on $X$ either directly on the RHS of the $X$ equation, or indirectly through the RHS of equation $Z$ .

# 2.3 Weak Nonstationarity, Types 0, I, and II

Consider the following taxonomy:

# 2.3.1 Type 0: Non-Constant but Finite Var-Cov Terms ó ARCH, GARCH, etc

This type refers to situations where the variances and/or the covariances of the process change over time, but all of them are Önite.

Heteroskedasticity and Time-Varying Heterogeneity For a time series $W _ { t }$ , any situation where:

$$
\operatorname {v a r} \left(W _ {t}\right) \text {v a r i e s o v e r t i m e - H e t e r o s k e d a s t i c i t y}
$$

and/or

$$
c o v a r \left(W _ {t}, W _ {t - s}\right) \text {d e p e n d s o n s a s w e l l a s o n t}
$$

Non-Stationary and Stationary ARCH and GARCH Processes ó SKIM. Details NOT EXAM-INABLE Simple AutoRegressive Conditionally Heteroskedastic (ARCH) Process:

$$
\sigma_ {t | t - 1} ^ {2} = E \epsilon_ {t} ^ {2} | \epsilon_ {t - 1} = \lambda_ {1} \epsilon_ {t - 1} ^ {2} + \lambda_ {0}
$$

A more general ARCH(q) Process:

$$
\sigma_ {t | t - 1, \dots , t - q} ^ {2} = E \epsilon_ {t} ^ {2} | \epsilon_ {t - 1}, \dots , \epsilon_ {t - q} = \lambda_ {1} \epsilon_ {t - 1} ^ {2} + \lambda_ {2} \epsilon_ {t - 2} ^ {2} + \dots + \lambda_ {q} \epsilon_ {t - q} ^ {2} + \lambda_ {0}
$$

These can be tested from the OLS residuals using the projection:

$$
\hat {\epsilon} _ {t} ^ {2} = c _ {1} \epsilon_ {t - 1} ^ {2} + c _ {2} \epsilon_ {t - 2} ^ {2} + \dots + c _ {q} \epsilon_ {t - q} ^ {2} + u _ {t}
$$

A Generalized AutoRegressive Conditionally Heteroskedastic GARCH(p,q) Process also adds a part that is autoregressive in the variances:

$$
\sigma_ {t} ^ {2} = \gamma_ {1} \sigma_ {t - 1} ^ {2} + \dots + \gamma_ {p} \sigma_ {t - p} ^ {2} + \lambda_ {1} \epsilon_ {t - 1} ^ {2} + \lambda_ {2} \epsilon_ {t - 2} ^ {2} + \dots + \lambda_ {q} \epsilon_ {t - q} ^ {2} + \lambda_ {0}
$$

Note 1: In all cases, the conditional variance of $\epsilon _ { t }$ varies over time. Hence, OLS will not be the best possible estimation but the appropriate GLS/MLE should be used for maximum e¢ ciency.

Note 2: Though ARCH and GARCH models of the error disturbance typically imply that A4GM is violated, it is still assumed that A3Rmi holds. In particular, $v a r ( \epsilon _ { t } | p a s t ) = f ( \epsilon _ { t - 1 } ^ { 2 } e t c . )$ does not imply that $\epsilon _ { t }$ is autocorrelated, nor that $\epsilon _ { t }$ is correlated with regressors. This conÖrms the usual point that A4 and A3 involve di§erent moments of the error distributions, and hence need to be assessed separately.

Note 3: In each case, there are conditions under which an ARCH/GARCH may be a stationary ARCH/GARCH, in the sense that the unconditional variances remain constant over time. For example, in the simple ARCH case, as long as is satis $| \lambda _ { 1 } | < 1$ , by taking expectations over S will be BLUE. But for full $\epsilon _ { t - 1 }$ $\begin{array} { r } { \sigma _ { \epsilon } ^ { 2 } = \frac { \lambda _ { 0 } } { 1 - \lambda _ { 1 } } } \end{array}$ for every hould use $t$ . Since in such cases our Assumption A4GMhe appropriate non-linear GLS/MLE, which will be BUE (i.e., asymptotically most e¢ cient unbiased estimator, linear or non-linear).

Note 4: Though ARCH and GARCH models may appear to o§er at best only second-order improvements in estimation e¢ ciency of regression parameters, nevertheless they can be critically important in improving the forecasting performance of these regression models, especially of volatility.

# 2.3.2 Type I: Strict Stationarity with InÖnite/UndeÖned Moments

See above Section with distributions with inÖnite or undeÖned moments: Cauchy or t-distribution with one degree of freedom; Symmetrized Pareto distribution; Zellner distribution.

# 2.3.3 Type II: Unit roots and Integrated Processes

DEFINITIONS of Unit Roots in ARMA and ARIMA. ó Details and other issues NOT EXAM-INABLE

c Vassilis Hajivassiliou, LSE 2026