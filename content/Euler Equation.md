#Econ/Macro 

The [[Euler Equation]] is the central first-order condition in a dynamic optimization problem, describing the optimal trade-off between consumption today and consumption tomorrow.

For example, the [[Euler Equation]] for the [[Growth Model]] is:

$$
u'(c_{t}) = \beta u'(c_{t+1}) (f'(k_{t+1})+1-\delta) 
$$

>  This is from the [[EC417 Advanced Macroeconomics]] notes (lecture 2)

- The left side of the equation, you could understand as the *marginal cost* of saving. Because once you choose to save one more unit instead of consuming it, you lose this much utility $u'(c_{t})$.
- The right hand side is the *marginal benefit* of saving. Because if you save one more unit, then tomorrow you will have $(f'(k_{t+1})+1-\delta)$ more units of consumption, and the utility you get from that is $\beta u'(c_{t+1}) (f'(k_{t+1})+1-\delta)$. (you need to take the depreciation into consideration).

