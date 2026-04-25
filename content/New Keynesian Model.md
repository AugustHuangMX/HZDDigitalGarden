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

$$
\int_ {0} ^ {1} P _ {i, t} C _ {i, t} d i + Q _ {t} B _ {t} \leq B _ {t - 1} + W _ {t} L _ {t} + \text {Profits} _ {t}, \quad \text {and no - ponzi}
$$

-  $\int_ {0} ^ {1} P _ {i, t} C _ {i, t} d i$: since in the market there's continuum of varieties indexed by $[0,1]$. $C$ here is the quantity. Overall it means the total *expenditure* you spend on the goods in the market.

>  Why we don't construct it as discrete? It's because in this setting, each firm is a monopolistic competitor. Each firm produces a unique variety and has some *pricing power*, but it depends on the elasticity of substitution $\epsilon$. 

And people got utility from consuming this basket of goods, we have to introduce [[Constant Elasticity of Substitution]] (CES).

The optimality for household:

Optimal consumption and bond holdings (Euler):

$$ Q _ {t} = \beta \mathbb {E} _ {t} \left[ \frac {U _ {C , t + 1} ^ {\prime}}{U _ {C , t} ^ {\prime}} \frac {P _ {t}}{P _ {t + 1}} \right] $$

Static labor vs consumption optimization:

$$
-\frac {U _ {L , t} ^ {\prime}}{U _ {C , t} ^ {\prime}} = \frac {W _ {t}}{P _ {t}}
$$

Optimal expenditure allocation

$$
C _ {i, t} = \left(\frac {P _ {i , t}}{P _ {t}}\right) ^ {- \epsilon} C _ {t}
$$
This could also be considered as demand function with constant price elasticity.

> See derivation from the MN4.

#### Log Linearize

- **Why $i_{t} = -\log Q_{t}$ ?

The reason why we have $i_{t} = - \log Q_{t}$ is that, recall $Q_{t}$ means the price of a bond that pays 1 unit of money at maturity. If you pay $Q_{t}$ today, you get 1 tomorrow. So the nominal interest rate satisfies:

$$
\frac{1}{Q_{t}} = 1 + i_{t}
$$
By using the equation: $\log(1+i_{t}) \approx i_{t}$ for small rates, we have

$$
i_{t} \approx - \log Q_{t}
$$

Thus we have the new [[Euler Equation]]:

$$
c _ {t} = \mathbb {E} _ {t} \left(c _ {t + 1}\right) - \frac {1}{\sigma} \left(\underbrace {i _ {t}} _ {- \log Q _ {t}} - \underbrace {E _ {t} \left[ \pi_ {t + 1} \right]} _ {\log P _ {t + 1} / P _ {t}} - \underbrace {\rho} _ {- \log \beta}\right)
$$


### Firms 
- Produce differentiated goods, so there's no longer a representative firm: firm produce a **variety**
- Choose the price at which they sell their variety. 

>  A specific firm only produces identical good, but still faces [[Monopolistic Competition]]

Under this setting, all firms have same production function and same productivity:

$$
Y_{i,t} = A_{t} L_{i,t}^{1-\alpha}
$$

#### Flexible Prices

The sticky price applies here: firm can choose price only with some probability. ([[Calvo Price]])

Notice that firms. are owned by households, so they discount future profits using the households' stochastic discount factor.

$$
\begin{array} { r } { Q _ { t , t + 1 } = \beta \left[ \frac { U _ { C , t + 1 } ^ { \prime } } { U _ { C , t } ^ { \prime } } \frac { P _ { t } } { P _ { t + 1 } } \right] \Rightarrow Q _ { t , t + k } = \beta ^ { k } \left[ \frac { U _ { C , t + k } ^ { \prime } } { U _ { C , t } ^ { \prime } } \frac { P _ { t } } { P _ { t + k } } \right] } \end{array}
$$
> Here, $Q_{t, t+k}$ means: paying $Q_{t}$ today, got 1 dollar at $t+k$. 

Thus firms maximize the profit:

$$
\mathbb {E} _ {t} \sum_ {k = 0} ^ {\infty} Q _ {t, t + k} \left(P _ {i, t + k} Y _ {i, t + k} - W _ {t + k} L _ {i, t + k}\right)
$$

Finally we could get from symmetric equilibrium, we could only take the derivative of a representative firm $i$. We could get $P_{i,t} = P_{t}$.

$$
P _ {t} ^ {F L E X} = \frac {\epsilon}{\epsilon - 1} W _ {t} \left(\frac {1}{1 - \alpha}\right) \left(\frac {1}{A _ {t}}\right) ^ {\frac {1}{1 - \alpha}} C _ {t} ^ {\frac {\alpha}{1 - \alpha}}
$$

Price equals a constant *markup* $\frac {\epsilon}{\epsilon - 1}$ over the marginal cost. This is the standard [[Monopolistic Competition]] result. For example, as $\epsilon \to \infty$, the goods becomes perfect substitute, the markup goes down to $1$ so we are back to the [[Perfect Competition]].

#### Wages 

Recall

$$
P _ {t} = \frac {\epsilon}{\epsilon - 1} W _ {t} \left(\frac {1}{1 - \alpha}\right) \left(\frac {1}{A _ {t}}\right) ^ {\frac {1}{1 - \alpha}} C _ {t} ^ {\frac {\alpha}{1 - \alpha}}
$$

$$
\frac {W _ {t}}{P _ {t}} = \frac {\epsilon - 1}{\epsilon} \left(\underbrace {A _ {t} ^ {\frac {1}{1 - \alpha}} C _ {t} ^ {- \frac {\alpha}{1 - \alpha}} (1 - \alpha)} _ {M P L _ {t}}\right)
$$

So we could conclude wage is *marked down* because of market power in the production side. Lower wage reduces labor supply.

How about if price is not flexible, i.e., the [[Calvo Price]].






### Central Bank 

Set the nominal interest rate on
government bonds

## 

---

The following part would have further discussion on the NK model, and try to discuss some properties. One is the [[Heterogeneity in New Keynesian Model]]


