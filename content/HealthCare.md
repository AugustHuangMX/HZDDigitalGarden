What do we learn from this chart about the presence of either adverse selection or moral hazard in the market for medical insurance? 


---

[[HealthCare->Seminar1]]


---

# Papers

## Paper 1: Finkelstein et al (2012)

Question: Do people incur higher health expenditures if they have medical insurance?

Problem is that we could not just compare the health spending across those with and without insurance. The groups are fundamentally different. That is, the less healthy people more likely 

1. To be insured.
2. Spend more on health.

Another reason is related to [[Moral Hazard]]. We consider the **Insurance Policy** will lead to **More medical spending**. And due to [[Adverse Selection]], The things become opposite.

And people himself could have [[Endogeneity Issue]].

![[截屏2024-02-20 19.15.44.png|400]]

[[Econometrics]] thinking, suppose we decided to just compare people with and without insurance, like a [[Simple Linear Regression]]. "Randomized control trial" designs: 

$HealthSpend_{i}= \beta_{0}+\beta_{1}Insurance_{i}+\beta_{2}X_{i}+u_{i}$

So that if unhealthy people more likely to have insurance, the bias $\beta_{1}$ would increase. ($X_i$ stands for  other possible effects: like age, gender, etc.)

The empirical approach concludes a lottery: 90,000 people signed up for 10,000 slots. This breaks the [[Endogeneity Issue]] among these people.

**Question**: why is it different from difference-in-difference (DID)?

With Randomized control trial (RCT), we don't need such strong assumptions. The significance difference in DiD is that we have to *assume the trend in the treatment and control group would have been the same in absence of treatment* => counterfactual estimate.

### Limits

[[Spillover]]: might control group behave differently than they would have otherwise?

Maybe [[Causal Effect]] of insurance on spending is different for these group, a dn we don't know about them from this setting. And is also **true** for other empirical design too. What about [[Difference in Difference]]?



*It simulates a randomized control trial*. 

The **idea** is compare [[HealthCare]] utilisation of treatment group against the control group. (so that people are considered as the same, excluding whether he is chosen.)

**Potential Problem**: not everyone selected by the lottery goes on to get insurance (in fact, only 60% who won applied to this)

## Analysis 1: Intention to treat 

$y = \beta_{0}+\beta_{i}Lottery +X \beta_{2}+V\beta_{3}+\epsilon$

$Lottery = 1$ if won the lottery, 0 otherwise.

We **Only** focus on $\beta_1$, this can break the independence between $u_i$ and $Insurance_i$

![[截屏2024-02-21 09.47.37.png|500]]

In this example, the **ITT effect** is $10,000: difference in average spending between those who won the lottery and those who did not.

What about the local average treatment effect? (LATE)

|  | Average Spend | $Pr(Insured)$ |
| ---- | ---- | ---- |
| Lottery Winners | $30,000 | 2/3 |
| Lottery Losers | $20,000 | 0 |
| Difference | $10,000 | 2/3 |

So the $LATE = 10,000/(2/3)=15,000$

The difference between LATE and ATE is that ATE includes the person who did not apply to the lottery even he won, but LATE is the effect of insurance among those **only** induced to getting insurance by lottery

## Analysis 2: [[Two Stage Least Squares]]

Estimate the *first stage equation*:

$INSURED = \pi_{0}+\pi_{i}Lottery +X \pi_{2}+V\pi_{3}+v$

And rescale by $\pi_1$: causal effect of winning lottery on getting insurance.

## Main Findings:

Winning lottery => More likely to be insured, higher [[HealthCare]]  utilization, better health, lower medical bills after around 1 year.


## Paper 2: Olivella and and Vera-Hernandez (2013)

Notes: main empirical challenge in testing for [[Adverse Selection]].

If would have still spend more than those without insurance, we could say that there exists [[Adverse Selection]].

Authors identify 3 possible risks:

### Discussion

#### The Finkelstein et al paper:

Providing health insurance to lower-income people without insurance in Oregon increases utilization of health services.

#### What do we learn about likely [[Moral Hazard]] in the NHS?

| External Validity | Internal Validity |
| ---- | ---- |
| What are estimates relevant for -> LATE -> Question if [[Moral Hazard]] is greater or less for ones | Randomized control trial -> Internally valid -> needs true randomization -> no spillover -> DiD |
| Short run v.s. Long run |  |
| Different institution between UK and US ? => **Profit Incentives** (Jhonson Paper (read it if needed)) |  |

#### Testing for AS in the US?

1. Different composition of groups: whether the employer who buys the PHI have fundamentally higher risk than the people who don't.
2. Different coverage if have employer provided 

#### What are the key assumptions 

1. No difference in health between those with and without insurance from work
2. No difference in generosity of employer-provided and market purchased insurance 
3. No difference in preventive care if employer-provided insurance



[[CourseWork 1]]

