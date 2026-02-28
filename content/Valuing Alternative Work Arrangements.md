## Question 1

In Table 1 of the paper, the authors demonstrate the **limitations of traditional approaches** to studying compensating differentials. As they note, "more pleasant work arrangements are correlated with higher wages" in observational data, which contradicts theoretical predictions.

This paradox arises from two primary econometric challenges:

1. **Omitted Variable Bias**: High-ability workers may simultaneously receive higher wages, better working environments, and more favorable work arrangements. Without controlling for unobserved worker quality and firm characteristics, we cannot distinguish whether wage premiums reflect compensation for amenities or selection effects.
2. **Measurement Error**: The actual quality of work arrangements is difficult to measure accurately in observational data, leading to attenuation bias in estimated compensating differentials.

To address these fundamental identification challenges, the authors implemented a **randomized field experiment** within an actual hiring process. This experimental design offers several key advantages:

- **Random assignment** of wage gaps and job characteristics eliminates endogeneity concerns
- **Explicit measurement and correction** of applicant inattention (approximately 25% of applicants)
- **Real market setting** with actual job seekers making consequential decisions, enhancing external validity and credibility of the estimates

## Question 2

In terms of field methodology, this paper's approach is related to Stern (2004).

### Similarities

1. **Real Market Setting**
	- Stern (2004) uses actual PhD job offers from universities. Mas & Pallais (2017) embed their experiment within a real call center hiring process.
2. **Revealed Preference Method**
    
    - Both studies infer preferences from actual choices rather than stated preferences. They estimate willingness to pay (WTP) by identifying the wage gap that makes workers indifferent between job alternatives.
### Differences

As the authors note:

> "Our paper estimates preferences both in the field and via the vignette method to get both the benefits of the flexibility and external validity of the vignette method and the more realistic environment from the natural field experiment."

1. **Experimental Design and Identification**
    - Mas & Pallais employ **randomization** of wage gaps and job characteristics, which eliminates selection bias and enables strong causal inference. In contrast, Stern's approach is **observational**, relying on naturally occurring variation in job offers, which may be subject to confounding factors.
2. **Sample Scope and Generalizability**
	- Stern's study focuses on a narrow population of PhD candidates in biology, limiting generalizability. Mas & Pallais examine a broader sample of call center applicants and validate their findings using a nationally representative survey (UAS), enhancing external validity.
3. **Source of Variation**
	- Stern exploits **within-person variation** by observing each candidate's choices across multiple job offers. Mas & Pallais use a **between-subjects design**, where each applicant evaluates a single randomized choice, but with a much larger sample size.
4. **Treatment of Inattention**
    - Mas & Pallais explicitly **measure and correct for applicant inattention** (approximately 25% of applicants), representing a methodological innovation in discrete choice experiments. Stern (2004) does not address this issue.

## Question 3

In the paper, the authors choose the dominated choice at large wage gap to estimate the inattention effect. The design is like: observe when wage gap $= \$ 5$, how many people still choose dominated position.

They Estimate linear regression for $\Delta w \in [2,5]$: $Y_{\Delta w} = \gamma + \beta \Delta w$, and calculate: $\hat{\alpha} = 1 - (\hat{\gamma} + 5\hat{\beta})$

---
###  Econometric Specification & Equation (1)

**Setup**:

- Job $A=1$ has amenity, $A=0$ does not
- Wage difference: $\Delta w = w_1 - w_0$
- Individual chooses $A=1$ if $WTP_i > -\Delta w$
- Define: $P_{\Delta w} \equiv \Pr(WTP_i > -\Delta w)$

**Key assumption**:

- Fraction $2\alpha$ are inattentive and choose **randomly** (50/50)

**Derivation**:

Attentive workers ($1-2\alpha$):

- Correctly choose based on $WTP_i$
- Contribution: $P_{\Delta w}(1-2\alpha)$

Inattentive workers ($2\alpha$):

- Half ($\alpha$) randomly choose $A=1$
- Half ($\alpha$) randomly choose $A=0$
- Contribution: $\alpha$

**Equation (1)** is: $$\Pr(A_i = 1|\Delta w) = P_{\Delta w}(1 - 2\alpha) + \alpha$$

Substituting $P_{\Delta w} = F(b\Delta w + c; \mu, \sigma)$: $$\Pr(A_i = 1|\Delta w) = F(b\Delta w + c; \mu, \sigma)(1 - 2\alpha) + \alpha$$

where $F(\cdot)$ is the CDF of $WTP$ (assumed logistic).

**Estimation**: Maximum likelihood with $\alpha$ fixed from dominated choice test.


## Question 4

### Assumption: Logistic Distribution for WTP

Following the paper's econometric framework (p. 3733), we assume that willingness to pay follows a **logistic distribution**:

$$WTP_i \sim \text{Logistic}(\mu, \sigma)$$

The CDF can be reparametrized as: $$F(b\Delta w + c) = \frac{1}{1 + \exp(-b\Delta w - c)}$$

where the parameters relate to the distribution moments as:

- $\mu = -c/b$ (mean willingness to pay)
- $\sigma = 1/(0.55b)$ (standard deviation)

Quantiles are calculated by inverting the CDF: $$q_p = \mu + \sigma \cdot \ln\left(\frac{p}{1-p}\right)$$
### Replication Results

| Treatment                | Mean    | SD     |
| ------------------------ | ------- | ------ |
| Flexible schedule        | $0.48   | $2.16  |
|                          | (0.48)  | (2.15) |
| Flexible number of hours | -$0.22  | $2.25  |
|                          | (-0.22) | (2.24) |


### Interpretation of Results

#### (1) Flexible Schedule

**The majority of workers do not value scheduling flexibility**. The mean WTP is only $0.48 per hour. More strikingly, the 25th percentile is negative, indicating that at least **25% of workers actually prefer a fixed schedule** and would require compensation to accept flexibility.

However, there exists **substantial heterogeneity**: the top 25% of workers are willing to pay at least $1.79 per hour (about 10.5% of wages) for the ability to set their own schedules. This right-tail heterogeneity allows for **sizable market compensating differentials** despite low average valuations.

#### (2) Flexible Number of Hours

The results are even more striking: the **mean WTP is negative** (-$0.22), suggesting that the average worker actually dislikes having the option to choose their hours. This finding reflects two factors:

1. **Most workers prefer 40 hours per week**. As shown in Table 6, the median worker is willing to pay $6 per hour for a 40-hour job relative to a 20-hour job.
    
2. **Self-control concerns**. Qualitative evidence from focus groups suggests workers worry that "if they could choose it would be difficult to force themselves to work their desired number of hours" (p. 3740).
    

Despite the negative mean, **heterogeneity persists**: the 75th percentile worker is willing to pay $1.14 per hour (6.7% of wages) for hours flexibility.


## Question 5

### The Surprising Finding

The paper's most counterintuitive result is that **most workers are not willing to pay for scheduling flexibility**. As shown in Table 5, the median WTP for both flexible scheduling and flexible number of hours is approximately zero or even negative. This contradicts the "well-established belief among human resource consultants that workplace flexibility policies help attract and retain employees".

### Additional Analyses to Rationalize This Result

The authors implement several supplementary analyses to understand this puzzle:

#### (1) Workers Strongly Prefer Working 40 Hours Per Week

The authors designed an **auxiliary experiment** comparing 20-hour versus 40-hour jobs at varying wage differentials. This directly tests whether the low valuation for hours flexibility reflects workers' preferences over the total number of hours worked.

**Replication of Table 6, Column 1:**

**Results:**

|Statistic|Estimate|Paper|Interpretation|
|---|---|---|---|
|Mean WTP|$5.44|$6.00|Workers willing to take substantial pay cut for 40-hour job|
|Shadow value of time|$5.12|$4.01|Value of time well below market wage ($16)|
|N|728|728|✓|

**Key finding**: The median worker is willing to take a **$6 per hour pay cut** to work 40 hours instead of 20 hours. This translates to a shadow value of time of only $4 per hour between hours 20 and 40—substantially below the predicted market wage of $16.

**Implication**: If workers overwhelmingly prefer working exactly 40 hours, then **flexibility in the number of hours offers little value**. The primary "benefit" of hours flexibility—the ability to work fewer hours—is precisely what most workers do not want.

#### (2) Self-Control and Commitment Mechanisms

The authors conducted a **Mechanical Turk focus group** to understand why some workers actually prefer fixed schedules. Qualitative responses revealed psychological factors beyond standard economic considerations:

> "Although being able to choose my hours would be nice, I would kind of have to force myself to work the 40 hours a week"

> "I like it when someone tells me how long I should work. That way there's an expectation that I can live up to"

This evidence suggests workers may **value external commitment devices**, consistent with findings in Kaur, Kremer, and Mullainathan (2015) on self-control at work. Workers recognize their own time-inconsistent preferences and prefer schedules that help them overcome self-control problems.

#### (3) Robustness: 20-Hour Jobs

To address the concern that workers dislike hours flexibility because they believe flexible jobs are less likely to come with benefits, the authors replicated the experiment using **20-hour positions** (Online Appendix Table 6).

**Result**: The median WTP remained very low ($0.55, SE = $0.50), confirming that benefit concerns do not drive the main finding.

## Question 6:

The UAS module presented nationally representative survey respondents with hypothetical job choices similar to the field experiment, eliciting preferences over flexible scheduling, work from home, and employer discretion.

### Key Complementarities

#### (1) **External Validity**

Field estimates generalize beyond call center applicants. UAS results closely match experimental findings (e.g., WTP for flexibility: 2.8% in field vs. 2.5% in survey), confirming representativeness (Table 8).

#### (2) **Richer Covariates**

UAS includes family information inappropriate for job applications. This reveals that women with young children value avoiding employer discretion much more (37.9% vs 29.8%, Table 11)—heterogeneity undetectable in the field.

#### (3) **Validates Vignette Methodology**

The close correspondence between field and survey estimates demonstrates that "properly designed choice experiments with vignettes elicit responses close to market choices".


## Question 7

**Work from home arrangements would show the largest changes** due to dramatic shifts in both employer costs (technology adoption) and worker valuations (demonstrated benefits). **Scheduling flexibility preferences would remain largely stable** because they are rooted in fundamental preferences over hours and coordination, which Covid did not alter. The Rosen model's sorting prediction continues to hold: high-valuation workers increasingly sort into WFH jobs as employer costs declined post-pandemic.

