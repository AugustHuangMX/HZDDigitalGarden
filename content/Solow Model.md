#macro 

The [[Solow Model]] (or Solow Growth Model) focuses on **long-run** economic growth.

1. Recall from [[Cobb-Douglas Production Function]],

$$
Y = AK^\alpha L^{1-\alpha}
$$

$\alpha$ is the capital intensity. usually, $[0.3,0.5]$

2. Capital Accumulation Equation
$$
\dot{K}=I - \delta K
$$
- $I$: investment


3. Investment Equation (What's new here)

$$
I = sY
$$
- $s \in (0,1)$ is the investment rate, usually $(10\%,50\%)$ in the data. 

> Note: $s$ is the parameter. 

4. National Income Account (In a close economy)

$$
Y = C + I +\underbrace{  G +NX }_{ =0 }
$$

so $C = (1-s)Y$


Summary of the solow model 


The Central Equation of [Solow Model](Solow%20Model.md) is:

$$
\Delta k = sf(k)-\delta k
$$

or we could write as: (after I study [[ECON4004 Advanced Macroeconomics]])

$$
\dot{K} = sY - \delta K
$$

> This is a one-dimensional dynamic system 

So the growth rate of the capital would be:

$$
\frac{\dot{K}}{K} = sA\left( \frac{L}{K} \right)^{1-\alpha} - \delta
$$
It determines the behaviors of capital over time => determines behavior of all the other endogenous variables because they all depend on $k$ .

[Per Capital Production Function](Per%20Capital%20Production%20Function.md)

[[Consumption Per Person]]

![](截屏2023-05-12%2020.40.26.png)

![[截屏2025-03-18 10.07.16.png|500]]

Or we could draw like this: the difference is how we treat the **vertical axis**.


When $sy=sk^\alpha = \delta k$ , which means $\Delta k= 0$, that means the *investment is just enough to cover the depreciation*. The [[Steady State]] occur.

We use $k^ {*}$ to represents the [Steady State](Steady%20State) situation.

Then we can move to the methodcalled [[Golden Rule]]

The technological progress is assumed *exogenous* (i.e. the value of $g$ is given)

That means: 

$$
\frac {\Delta E}{E}=g
$$


---

## Exercise 

Q1: Derive the steady-state level of $K$ and $Y$. (Hint: set $\dot{K} = 0$, so we could derive $K^*$, put $K^*$ into the production function for $Y^*$.)

*Answer:* $\dot{K} = 0 \implies sA\left(  \frac{L}{K} \right)^{1-\alpha} = \delta \implies K^* = (\frac{sA}{\delta})^{1/1-\alpha}L$

Q2: What happens when $s$ increases?



The Phase Diagram:

![[截屏2025-03-18 10.13.21.png|400]]

Comparative Static: $s\uparrow$.

At $K^*$, we have an increase in $s$, $\frac{\dot{K}}{K}$ becomes positive in the short-run. So, $K_{t}$ rises over time and converges to $K^{* *}$. At the new steady state, $K$ remains constant in the long-run. 

Effects of a higher saving rate:

$s \uparrow$: 

- a higher growth of $K$ in the short-run. 
- a higher level of $K$ in the long-run.

Here, we do not have economic growth in the long-run. When $K$ converges to a steady state, output $Y$ also converges to a steady state.

---

Since the capital accumulation itself won't generate so much increase in output $Y$ **in the long-run**, To sustain growth in the long-run, we need technological progress (i.e. growth in $A$).

We assume that $\frac{\dot{A}}{A} = g >0$, here $g$ is a parameter.

The [[Solow Model]] treats $g$ as **exogenous**.

From 

$$
\begin{align}
Y  & = A K^\alpha L^{1-\alpha} \\
\ln Y  &  = \ln A + \alpha \ln K + (1-\alpha) \ln L \\
\frac{\delta \ln Y}{\delta t} &  = \frac{1}{Y} \frac{\delta Y}{\delta t} = \frac{\dot{Y}}{Y}  \\
\frac{\dot{Y}}{Y} &  = \frac{\dot{A}}{A} + \frac{\alpha \dot{K}}{K}
\end{align}

$$


2. $\dot{K} = I -\delta K = sY -\delta K \implies \frac{\dot{K}}{K} = s \frac{Y}{K} - \delta$

> Balanced Growth Path: Each variable grows at a constant rate in the long-run. So steady-state is a special case of balanced growth path, which is 0

On the BGP, $\frac{\dot{K}}{K}$ is constant (in the long-run).  so of course $\frac{Y}{K}$ is constant. The conclusion is that $\frac{\dot{Y}}{Y} = \frac{\dot{K}}{K}$ in the long-run.

> The train of thought is definition -> implication 

We combine the equations, then we could get 

$$
\frac{\dot{Y}}{Y} = \frac{g}{1-\alpha}
$$

- If $g = 0$, then $\frac{\dot{Y}}{Y} = 0$ in the long-run.

### Empirical Implications

In the data, $\frac{\dot{Y}}{Y} \approx 2\%$ in the long-run among developed countries  

$g=(1-\alpha)2\%$, since $\alpha \in [\frac{1}{3}, \frac{1}{2}]$, so $g \in [1\%, 1.3\%]$

A $1\% - 1.3\%$ technology growth rate over 2 centuries could increase income level from $\$1000$ to $\$52k$ 

The [[Solow Model]] tells us that: technological progress is crucial for economic growth in the long-run.

However, the [[Solow Model]] *does not tell us where technological progress comes from.* It assumes $g$ to be a parameter. It only allows us to explore the proximate causes (capital and technology) of growth.

We want to go one step further to explore the *fundamental causes* of growth.

Two important parameters:

1. $g = \frac{\dot{A}}{A}$ determines the long-run growth rate.
2. $s = \frac{I}{Y}$ determines the long-run level of output.

The question is why do these two parameters differ across countries?

---

[[Ramsey Model]]


