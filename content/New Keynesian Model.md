#Econ/Macro 

Compared with [[Real Business Cycle]], the [[New Keynesian Model]] adds [[Nominal Rigidity]] to the RBC model (other remain the same). This directly leads to the situation that output and employment are not at the optimal level. This model allows for [[Involuntary Unemployment]].

## Model 

The model is very similar to [[Real Business Cycle]], and also other similar models in [[Macroeconomics]]. It includes **household, firms, and central bank**.

Some assumptions:

### Household
- consume baskets of goods and supply labour to firms
- save risk-free government **bond** (not capital here)
- owns firms and receive **dividends** (if they make profits)

#### Problem 

$$ \max _ {C _ {t}, N _ {t}, B _ {t}} \quad \mathbb {E} _ {0} \sum_ {t = 0} ^ {\infty} \beta^ {t} U (C _ {t}, L _ {t}), $$

subject to

$$ \int_ {0} ^ {1} P _ {i, t} C _ {i, t} d i + Q _ {t} B _ {t} \leq B _ {t - 1} + W _ {t} L _ {t} + \text {Profits} _ {t}, \quad \text {and no - ponzi} $$
-  $\int_ {0} ^ {1} P _ {i, t} C _ {i, t} d i$: since in the market there's continuum of varieties indexed by $[0,1]$. $C$ here is the quantity. Overall it means the total *expenditure* you spend on the goods in the market.

>  Why we don't construct it as discrete? It's because in this setting, each firm is a monopolistic competitor. Each firm produces a unique variety and has some *pricing power*, but it depends on the elasticity of substitution $\epsilon$. 

And people got utility from consuming this basket of goods, we have to introduce [[Constant Elasticity of Substitution]] (CES).

The optimality for household:

Optimal consumption and bond holdings (Euler):

$$ Q _ {t} = \beta \mathbb {E} _ {t} \left[ \frac {U _ {C , t + 1} ^ {\prime}}{U _ {C , t} ^ {\prime}} \frac {P _ {t}}{P _ {t + 1}} \right] $$

Static labor vs consumption optimization:

$$

- \frac {U _ {L , t} ^ {\prime}}{U _ {C , t} ^ {\prime}} = \frac {W _ {t}}{P _ {t}} $$

Optimal expenditure allocation

$$ C _ {i, t} = \left(\frac {P _ {i , t}}{P _ {t}}\right) ^ {- \epsilon} C _ {t} $$


> See derivation from the MN4.




### Firms 
- Produce differentiated goods 
- Choose the price at which they sell their variety. 
>  A specific firm only produces identical good, but still faces [[Monopolistic Competition]]

### Central Bank 

Set the nominal interest rate on government bonds

## 


