#LabourEcon 


# The Self-Sufficiency Project

The Self-Sufficiency Project (SSP) was a Canadian social experiment conducted in the 1990s to evaluate the impact of financial incentives on employment and welfare dependency among low-income single parents. The project aimed to encourage recipients of social assistance to enter the workforce by providing them with a guaranteed income supplement if they found employment.




# Data Lab 

Estimating Mincer Regression.

The basic regression we want to do is $y_{i} = \alpha + \beta S_{i} + X_{i} \delta + u_{i}$

We want to control for $X_{i}$ because of omitted variable bias. What is a good control? For example, age. What is a bad control? For example, Variables on the causal path from schooling to wages. 

The key concern to do the following regression is that **ability** as an omitted variable. And we overstate the returns to schooling (we could also say that the direction of the bias is upward bias).

Even when we conditional on the ability, still the age would have impact on wages, i.e., the experience.

```Stata
sum hrp1 hrp2
```

`sum` is short for `summarize`. It gives you summary statistics of the variables you input. Here, we are summarizing `hrp1` and `hrp2`.


---

How to understand "labour share"?

The labour share of income is the portion of national income that is paid to workers in the form of wages, salaries, and benefits. It is typically calculated as the ratio of total labour compensation to total national income or GDP.

$$
\text{Labour Share} = \frac{\text{Total Wages and Salaries}}{\text{GDP}}
$$



Why we use $age^2$ to proxy experience?

Because experience is typically measured as the number of years a person has been in the workforce, which is often approximated by subtracting the age at which they started working from their current age. However, this relationship is not linear, as the returns to experience tend to diminish over time. By including both age and age squared in the regression, we can capture this non-linear relationship more accurately. The coefficient on age squared allows us to model the diminishing returns to experience as individuals gain more years of work experience.


---

[[EC423 Essay]]


