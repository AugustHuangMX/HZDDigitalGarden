## Question 1

The NBA referee context offers three key advantages over traditional labor market settings:

### 1. Quasi-Random Assignment
- Referees are assigned to games independently of player characteristics
- Eliminates selection bias that plagues traditional labor market studies
- In traditional labor research, for example, the hiring market, employers and employees mutually select one another, resulting in an inseparable discriminatory effect.
- Evidence: Table I and Appendix show no correlation between referee race composition and team racial composition (p > 0.05)

### 2. Objective Performance Metrics
- Fouls, points, and other outcomes are clearly recorded
- Reduces omitted variable bias common in productivity measurements
- Enables placebo tests (e.g., free throw percentage as outcome unaffected by referee decisions)

These features address the core identification challenge in discrimination research: 
the violation of conditional independence assumption 
$E[ε|Black=1, X] ≠ E[ε|Black=0, X]$ in observational data.

## Question 2

There are two kinds of theories,

1. Taste-based discrimination
2. Statistical discrimination

### Theory 1: Taste-based Discrimination

**Core idea** (Lecture 2, p.47): Decision-makers have intrinsic prejudice and 
experience disutility from interacting with certain groups.

**NBA Application**: Referee utility function:
$$U = f(\text{Accurate calls}) - d \cdot I(\text{Call against opposite-race player})$$

where $d > 0$ is the discrimination parameter.

**Intuition**:
- Referees favor own-race players or disfavor opposite-race players
- Operates through **implicit biases** (unconscious associations like 
  "black = aggressive") in split-second decisions
- Discrimination is **unrelated to actual player behavior**

### Theory 2: Statistical Discrimination (Phelps, 1972; Arrow, 1973)

**Core idea** (Lecture 2, p.60): Decision-makers use group identity as 
a proxy for productivity due to imperfect information.

**NBA Application**: Referee's expected foul propensity:
$$E[\text{Foul}|\text{signal}, \text{race}] = (1-\beta)\bar{p}_{\text{race}} 
+ \beta \cdot \text{signal}_i$$

where $\beta = \frac{\sigma^2_g}{\sigma^2_g + \sigma^2_v}$ (Lecture 2, p.63).

**Intuition**:
- If referees believe one racial group is more aggressive (higher $\bar{p}$), 
  they call more fouls against that group even for identical behavior

## Question 3

### Key Distinction (Lecture 2, p.60)
- **Statistical**: Discrimination due to imperfect information about individual productivity
- **Taste-based**: Discrimination due to preferences/animus, unrelated to actual performance

### Evidence Supporting Taste-Based Interpretation

#### 1. Controlling for Playing Style (Table IV, Column 2)
- Authors control for 29 player style variables (height, position, historical 
  stats) interacted with %white refs
- Own-race bias remains: β = 0.203** (SE 0.072)
- **Implication**: Discrimination is NOT due to different playing styles between Black and White players

![[截屏2026-02-02 13.14.54.png|400]]
#### 2. Placebo Test: Free Throw Percentage (Table V)
- Free throw shooting is unaffected by referee decisions
- Result: β = 0.002 (p > 0.10) for FT%, but significant effects on fouls, 
  points, turnovers
- **Implication**: Effects operate through referee decisions, not player behavior changes

![[截屏2026-02-02 13.16.11.png|400]]

#### 3. Ruling Out Employer Discrimination (p.1861)
- NBA has strong monitoring: observers, video review, bi-weekly feedback
- Referee performance affects playoff assignments and compensation
- **Implication**: Discrimination stems from **individual referee implicit bias**

#### 4. All-White vs All-Black Referee Crews (Figure II)
- White referees (game-weighted avg): $\delta = +0.050$ (favor White players)
- Black referees (game-weighted avg):  $\delta= -0.009$ (favor Black players)
- Only 9/28 Black refs have stronger pro-White bias than average White ref
- **Implication**: If statistical discrimination, all refs should share same 
  prior beliefs. Systematic own-race patterns support taste-based explanation

## Question 4
### Why Random Assignment is Critical for Identification

**Core identification concern**: To causally interpret the coefficient on 
(Black × %White refs), we need:

$$E[\varepsilon_{it} | \text{Black}_i, \%\text{White refs}_g] = 0$$

**Threats if assignment is NOT random**:
- White refs assigned to more competitive games → fouls naturally higher
- Black refs assigned to home games with more Black players → confounds audience effects

**Role of random assignment** (Topic1 randomization logic):
- Ensures referee race orthogonal to other factors
- Enables **causal interpretation** of $\beta_{1}$, not just correlation

### How Authors Test Random Assignment

**Test logic** (analogous to Swedish lottery randomization test, Topic1):

If referee assignment is random conditional on year fixed effects:
$$\#\text{White referees}_g = \alpha + \gamma \cdot \text{Year}_g + \delta \cdot X_g + u_g$$

Should have  $\delta=0$ (all covariate coefficients zero).

**Empirical strategy** (Appendix table):
1. **Dependent variable**: # white referees per game (0-3)
2. **Covariates tested**:
   - black starters (home and away)
   - Attendance, out-of-contention indicator
   - Team fixed effects, year fixed effects
3. **Omnibus test**: Joint F-test of all covariates

### Interpretation of Results

**Key findings from Appendix**:

1. **Individual coefficients**: All insignificant (p > 0.05)
   -  black starters has no predictive power for referee race

2. **Omnibus F-tests**:
   - Column 1: p = 0.61 → Black starters jointly insignificant
   - Column 2: p = 0.63 → Still insignificant with game controls
   - Column 3: p = 0.89 → Still insignificant with team FE
   - Column 4: p = 1.00 → Fully random under strictest specification

3. **Adjusted R²**: Remains ~0.049-0.036 across specs
   - Covariates add negligible explanatory power beyond year FE

### Support for Identification Strategy

1. **Ruling out selection bias**: No evidence NBA systematically assigns 
   white refs to teams with fewer Black players

2. **Supporting causal interpretation**: Balance test passes → %White refs 
   is **exogenous** → Table IV's $\beta_{1}$ has causal meaning

3. **Ruling out confounders**: White refs not systematically assigned to 
   specific game types (e.g., playoff contention games)


## Question 5: Replicating Table IV

### Why Estimate These Regression Models

Table IV employs three progressively stringent specifications to identify 
causal own-race bias while ruling out confounders:

#### Column 1: Baseline + Three Types of Fixed Effects

**Motivation**:
- **Player FE**: Controls time-invariant player characteristics (height, 
  playing style)
- **Referee FE**: Controls baseline strictness of each referee
- **Year FE**: Controls rule changes (e.g., hand-checking enforcement)

**Identification**: Exploits **within-player variation** — how same player's 
foul rate varies with referee race composition

#### Column 2: Ruling Out "Playing Style" Confounds

**Why needed**: Statistical discrimination critique — maybe White/Black refs react differently to playing styles that correlate with race

**Solution**: Add 29 player style variables × %white refs interactions:
- Physical: height, weight, position
- Experience: age, NBA experience, all-star status
- Playing style: historical assists, blocks, steals, shooting percentages per 48 min


#### Column 3: Strictest Identification (Full FE)

**Includes**:
1. **Player × Year FE**: Controls each player's yearly form changes
2. **Team × Game FE**: Controls ALL game-level factors (opponent strength, stakes, referee crew overall style)
3. **Stadium × Player Race**: Controls home court effects on different races

**Identification source**: Only uses **within-game variation among teammates**
- Among teammates in same game, does Black vs White player's foul rate difference vary with referee race composition?

### Interpretation of Results

If  $\beta_{1} = 0.197^{* *}$ (SE = 0.061), black players earn 0.197 more fouls per 48 minutes under all-White vs all-Black crew


## Question 6: Three Robustness Checks

### (a) Player "Style" Controls

**Threat**: Statistical discrimination — maybe Black/White refs have different standards for playing styles that correlate with race, not race itself.

**Example**: If Black players are more physical and White refs call physical 
play more strictly → observed effect is style×referee interaction, not racial bias.

**Solution** (Table IV Column 2): Control for 29 style variables × %white refs:
- Physical: height, weight, position
- Performance: historical assists, blocks, shooting %

**Result**: $\beta_{1} = 0.203^{* *}$ (unchanged) → **Rules out style explanation**

### (b) Referee Experience Controls

**Threat**: Maybe Black/White refs differ in average experience, not race per se.

**Mechanism**: If Black refs are younger/less experienced, and experience affects foul-calling → racial effect is disguised experience effect.

**Test**: Add (Black × Avg Ref Experience) interaction.

**Result**: Experience interaction ≈ 0 and insignificant → **Rules out experience confound**

### (c) Game Fixed Effects

**Threat**: Game-level omitted variables simultaneously affect both referee 
composition and foul propensity.

**Examples**: Game intensity, team-specific reactions, home crowd pressure.

**Solution** (Table IV Column 3): Control **Team × Game FE**:
- Absorbs ALL game-level factors
- Identification only from **within-game variation among teammates**

**Why powerful**: Compares Black teammate A vs White teammate B in same game
- Same opponent, same stakes, same referee crew overall style
- Any game-level confounder cannot explain results

**Cost**: Larger SE (0.061→0.080) due to less identifying variation.

## Question 7

First we need to distinct those two differences:
- **One-way discrimination**: Only White refs discriminate against Black players
- **Own-race bias**: **Bidirectional** — White refs favor Whites, Black refs favor Blacks

### Evidence 1: Asymmetric Pattern in Table III

**Observed pattern**:
- **Black players**: Foul rate relatively stable (4.32-4.42) across referee compositions
- **White players**: Foul rate declines (5.25→4.90) as %White refs increases

**Why supports own-race bias**:
- If only White refs discriminate → expect Black foul rate to rise
- Actually: Black rate stable, White rate **falls** → White refs **favor White players**

### Evidence 2: Distribution in Figure II

![[截屏2026-02-02 13.46.40.png|400]]


### Why "Indirect"?

Cannot establish "no-discrimination baseline" to separately identify White vs Black ref bias. 

> Unfortunately, our framework is not well suited to sorting out whether these results are driven by the actions of black or white referees, because this would require establishing a “no discrimination” baseline.

## Question 8

### Main Findings

**Full sample**: $\beta$ (Black × %White × HighAttend) = 0.111 (p=0.574)
→ **Insignificant** — Attendance has no significant effect on own-race bias

**Home vs Away**:
- **Away games**: $\beta$ = -0.090 (bias slightly weaker, possibly insignificant)
- **Home games**: $\beta$ = +0.196 (bias stronger)

### Contrast with Parsons et al (2011)

**Baseball (QuesTec monitoring)**: Scrutiny **eliminates** umpire bias

**NBA (attendance)**: Scrutiny has **no significant effect**; may even 
**increase** bias in home games

### Possible Explanations

1. **Home crowd pressure mechanism**:
   - High attendance home games → stronger **group identity pressure**
   - Refs may favor groups aligned with home crowd preferences
   - Opposite of "rational monitoring"

2. **Stubbornness of implicit bias**:
   - Basketball calls more **subjective and rapid** (split-second decisions)
   - Harder to suppress via external pressure vs baseball judgments

## Question 9

1. **Referee diversity**: Increase Black ref % to ~80% to match players
   - Mechanism: Symmetric biases **cancel out**
2. **Implicit bias training**: IAT testing + high-pressure scenario training
3. **Tech assistance**: Expand instant replay, AI-aided calls

### Labor Market Lessons

**External validity**: If bias persists among highly monitored NBA refs 
→ Likely worse in police, judges, HR

**Diversity policy**: Increase diversity to cancel symmetric biases, 
BUT combine with blind review

## Question 10

### Timeline
- **May 2007**:  publishes findings → Stern calls research "flat-out wrong"
- **November 2010**: QJE publishes paper → NBA still rejects

### NBA's Counter-Study (Segal Company)
**Data advantage**: 148,000 calls (2004-2007), knows **which ref made each call**
**Conclusion**: "No evidence of racial bias"

### Authors' Response (Price & Wolfers 2012)
**After obtaining NBA data**: NBA used **wrong methodology**
**Re-analysis with correct method**: Actually **confirms original findings**

**Methodological defense**: Crew-level analysis sufficient — don't need 
individual call data to detect own-race bias

**Key paper**: *"Biased Referees? Reconciling Results with NBA's Analysis"* 
(Contemporary Economic Policy, 2012)

**Implication**: Awareness eliminates implicit bias + validates original findings