#LabourEcon 

# Presentation Script: Q9 & Q10 — Empirical Analysis

**Presenter:** Minxing Huang 

**Estimated Duration:** 10–15 minutes 

**Note:** Slide numbers refer to the current draft of AppliedPS3.pdf.

---

## Opening Transition (Slide 4 | ~1 min)

> Thank you Mingxue. So far, we have established the theoretical framework of the Rosen-Roback model and seen how productivity shocks and profit taxes shift the unit cost curve, affecting equilibrium wages and rents. As you can see Mingxue and My part focus on taking these theoretical predictions to the data — specifically, I will examine what drives the cross-area variation in wages after we control for rents, and whether we can empirically distinguish between the productivity channel and the amenity channel that the model predicts.

> Let me start by recalling the regression from Question 7. We estimated:
> 
> log w_c = β₀ + β₁ log r_c + Â_c
> 
> The key object here is the residual Â_c. Economically, it captures the component of local wages that rents cannot explain. In the Rosen-Roback framework, this residual should reflect two things: differences in local productivity Z, and differences in local amenities s — both of which affect the equilibrium wage-rent relationship but through different channels. The question is: can we tell them apart empirically?

---

## Part 1: Â_c vs. Hourly Wages (Slides 8–9 | ~3 min)

> Let us first look at the scatter plot of Â_c against hourly wages.

_[Show Slide 8 — Scatter plot of Â vs Hourly Wages]_

> We see a clear positive relationship. But before interpreting this, I want to flag that this positive correlation is partly mechanical. Since Â_c is the residual from regressing log wages on log rents, it is by construction the component of wages unexplained by rents. So higher-wage areas will naturally tend to have higher Â_c — this is a property of OLS, not an economic finding in itself.

> What is genuinely informative, however, is the dispersion around the best fit line.

_[Show Slide 9 — Interpretation]_

> States that lie above the best fit line — as Mingxue already discussed, such as New York and California — have wages that are unusually high even after accounting for their high rents. Within the Rosen-Roback framework, there are two possible explanations for this.

> The first is high productivity. This corresponds to Case 2 from the lecture slides, where a productivity increase shifts the unit cost curve outward, raising both wages and rents. If the productivity effect is strong enough — particularly in labour-intensive industries — wages may rise more than rents can fully capture, leaving a positive residual.

> The second explanation is low amenities. This corresponds to Case 1, where workers dislike a location and require higher wages as compensation. In such areas, rents are depressed but wages must be high to attract workers, again producing a high Â_c.

> Conversely, cities below the best fit line — think of areas with pleasant climates or good quality of life — are places where workers are willing to accept lower rent-adjusted wages because the amenities compensate them.

> The important takeaway here is that from this graph alone, we cannot distinguish whether a high Â_c reflects high productivity or low amenities. This is precisely what motivates our next analysis in Question 10.

---

## Part 2: Â_c vs. Population Share (Slides 6–7 | ~3 min)

> Now let us look at the same residual plotted against population share.

_[Show Slide 6 — Scatter plot of Â vs Population Share]_

> The pattern here is different. The best fit line is essentially flat — there is almost no relationship between Â_c and city size.

_[Show Slide 7 — Interpretation]_

> This is a meaningful result when we compare it with what we found in Question 6. There, the binscatter showed a clear positive correlation between wages and population share — larger cities pay higher wages. But once we control for rents, this relationship disappears.

> What does this tell us? It suggests that the wage premium of larger cities is almost entirely absorbed by higher rents. Workers in bigger cities earn more, but they also pay more for housing, and these two effects roughly cancel out in terms of the residual.

> This is fully consistent with one of the central results of the Rosen-Roback model. As shown on page 42 of the lecture slides, the total social value of amenities is completely capitalised into land rents — formally, dSV/ds = L·r'(s). So once we condition on rents, population size provides no additional information about the wage residual. The rent variable has already absorbed the amenity and productivity effects that attract people to larger cities.

> This also implies that the variation in Â_c across areas must be driven by factors that are not strongly correlated with city size — things like tax policy, climate, and other local characteristics. And that is exactly what we explore next.

---

## Part 3: Tax Variables (Slides 12–13 | ~3 min)

> In Question 10, we regress Â_c on three tax variables: state sales tax, corporate income tax, and average effective personal income tax.

_[Show Slide 12 — Tax regression table]_

> Let me walk you through the key results.

> First, the corporate tax. In the bivariate regression in column 2, the coefficient is negative and marginally significant. But in the multivariate specification in column 4, it becomes strongly significant at -0.00706. This negative sign directly echoes the theoretical analysis from Questions 4 and 5. There, we showed that a profit tax is equivalent to reducing effective productivity from Z to Z(1-τ). This shifts the unit cost curve inward, lowering equilibrium wages. So empirically, areas with higher corporate taxes do indeed have lower rent-adjusted wages — exactly as the model predicts.

> Second, the personal income tax. The coefficient is positive and significant — 0.0159 in column 4. At first glance, this seems counterintuitive: higher taxes should make an area less attractive, not more. But this almost certainly reflects reverse causality rather than a causal effect. High-wage states like California and New York have progressive income tax systems, so their effective tax rates are high precisely because wages are high. This is a classic endogeneity issue in cross-sectional analysis.

> Third, the sales tax is insignificant in both specifications, suggesting it has little systematic relationship with rent-adjusted wages.

> Finally, notice the R² of just 0.017 in column 4. Taxes explain less than 2% of the variation in Â_c. So while the corporate tax result is consistent with theory, taxes alone are far from sufficient to explain why some cities have high or low rent-adjusted wages.

#### Possible Reason of Why we have increase

Notice that the coefficients increase in absolute value in column 4 compared to the bivariate regressions. This is because the tax variables are positively correlated across states — for example, states with high corporate taxes tend to also have high income taxes. In the bivariate regressions, the omitted correlated tax variables bias each coefficient toward zero. Once we include all three, the omitted variable bias is removed and we recover the larger partial effects.

---

## Part 4: Amenity Variables (Slides 14–15 | ~2 min)

> Next, we look at amenity proxies — specifically, temperature and precipitation.

_[Show Slide 14 — Amenity regression table]_

> Both minimum and maximum temperature have strongly negative coefficients. This means warmer areas have lower Â_c — that is, lower wages relative to rents.

_[Show Slide 15 — Interpretation]_

> This maps perfectly onto Case 1 of the Rosen-Roback model from page 32–33 of the lecture slides. Good climate is an amenity that workers value. In spatial equilibrium, workers are willing to accept lower wages to live in pleasant areas, so Â_c is lower. No wage compensation is needed when the location is intrinsically attractive.

> Importantly, the R² values for the temperature variables — around 3% — are substantially larger than those for any individual tax variable, which were below 1%. This suggests that amenity differences are empirically more important than tax differences in explaining cross-area variation in rent-adjusted wages.

---

## Part 5: Full Model (Slides 16–17 | ~2 min)

> Finally, we put everything together in a single regression with all six variables.

_[Show Slide 16 — Full model table]_

_[Show Slide 17 — Interpretation]_

> The good news is that the key results are robust. Corporate tax remains negative and highly significant. Minimum temperature remains strongly negative. Personal income tax remains positive, consistent with the reverse causality interpretation.

> One interesting change is that the sales tax becomes positive and significant in the full model, which it was not in the bivariate regression. This likely reflects the correlation structure between tax variables and climate — once we control for amenities, the partial effect of sales tax changes. This is a reminder that omitted variable bias can affect cross-sectional results in both directions.

> The overall R² is 0.054. So even with six observable variables — three tax measures and three climate measures — we can explain only about 5% of the variation in Â_c. The remaining 95% is driven by unobserved amenities: school quality, public safety, healthcare access, social networks, cultural offerings, and so on.

> This is an important finding in itself. It highlights a fundamental challenge in the empirical study of spatial equilibrium: most of what makes a place attractive or unattractive to workers is difficult to measure. And this is precisely why the Rosen-Roback approach of using land rents to capitalise amenity values — as we discussed in the theory section — remains so valuable. Rents implicitly aggregate all these unobservable factors into a single price.

---

## Closing Summary (~30 sec)

> To summarise my section: the empirical analysis confirms the key predictions of the Rosen-Roback model. Corporate taxes reduce rent-adjusted wages, consistent with the profit tax analysis in Questions 4 and 5. Warm climates lower rent-adjusted wages, consistent with the amenity capitalisation result in Case 1. And the fact that observable variables explain only 5% of the residual underscores that most amenity variation is unobserved — which is why spatial equilibrium models that use price signals, rather than direct measurement, are so powerful.

> Thank you. I am happy to take any questions.

---

## Slide-to-Script Reference Table

|Script Section|Slides|Duration|
|---|---|---|
|Opening Transition|4|~1 min|
|Â_c vs. Hourly Wages|8–9|~3 min|
|Â_c vs. Population Share|6–7|~3 min|
|Tax Variables|12–13|~3 min|
|Amenity Variables|14–15|~2 min|
|Full Model|16–17|~2 min|
|Closing Summary|—|~30 sec|
|**Total**||**~14.5 min**|