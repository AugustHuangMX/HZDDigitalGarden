#Econ/Macro 

$$ C _ {t} = \left[ \int_ {0} ^ {1} C _ {i, t} ^ {\frac {\epsilon - 1}{\epsilon}} d i \right] ^ {\frac {\epsilon}{\epsilon - 1}} $$

> elasticity $\epsilon > 1$.

It defines the **total consumption** when there are many differentiated varieties. It defines how households value *diversity*.

This gives us intuition that households don't just care about the total expenditure $C_{t}$, but also the allocations of goods.

- If $\epsilon \to \infty$, The goods are *perfect substitutes*, the household only cares about total quantity and would consume the cheapest good.
- If $\epsilon \to 1$, The goods are very *complementary*, the household strongly prefers a balanced basket. (like [[Cobb-Douglas Production Function]])

Generally the household faces an cost-minimization problem, suppose the target is $C_{t}$, how to reach to it as cheaply as possible?

$$ \mathfrak {L} = \int_ {0} ^ {1} P _ {i, t} C _ {i, t} d i - \lambda \left(\left[ \int_ {0} ^ {1} C _ {i, t} ^ {1 - 1 / \epsilon} d i \right] ^ {\frac {\epsilon}{\epsilon - 1}} - C _ {t}\right) $$

$$ \begin{array}{l} \frac {\partial \mathfrak {L}}{\partial C _ {i , t}} = P _ {i, t} - \lambda \left(\frac {\epsilon - 1}{\epsilon} \frac {\epsilon}{\epsilon - 1} C _ {i, t} ^ {- 1 / \epsilon}\right) \left[ \int_ {0} ^ {1} C _ {i, t} ^ {1 - 1 / \epsilon} d i \right] ^ {\frac {\epsilon}{\epsilon - 1} - 1} = 0 \\ \Rightarrow \quad C _ {i, t} = \lambda^ {\epsilon} p _ {i, t} ^ {- \epsilon} C _ {t} \\ \end{array} $$

>  See MN4 p29 for derivation

$$ \int_ {0} ^ {1} P _ {i, t} C _ {i, t} d i = \int_ {0} ^ {1} P _ {i, t} \left(\frac {P _ {i , t}}{P _ {j , t}}\right) ^ {- \epsilon} C _ {j, t} d i \Rightarrow C _ {j t} = \frac {P _ {j , t} ^ {- \epsilon} \int_ {0} ^ {1} P _ {i , t} C _ {i , t} d i}{\int_ {0} ^ {1} P _ {i , t} ^ {1 - \epsilon} d i} $$

---

Also we could relate this concept to the labour economics content, which is [[CES production function]].