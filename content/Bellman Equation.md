#Econ/Macro  #LSE/EC417_Macroeconomics 

The [[Bellman Equation]] is a fundamental concept in dynamic programming and optimal control theory. It provides a recursive decomposition of the value function, which represents the maximum value that can be achieved from a given state. It has some very good properties, compared with the Lagrangian method, the "Old fashioned" way.

1. You don't need to calculate entire path period by period.
2. You can solve the problem backwards, which is very useful in many cases.


$$
V(\hat{x_{0}}) = \max_{\{\alpha_{t}\}^\infty_{t=0}} \sum_{i=1}^{N} \beta^t r(x_{t} , \alpha_{t})
$$

subject to

$$
x_{t+1} = g(x_{t}, \alpha_{t})
$$






## Application : Consumption-Saving Problem:

Assume that income is deterministic and constant $y_{t} = y$.

$$
\begin{align}
\max_{\{a_{t+1}\}}
\end{align}
$$

>  The interesting part here is the $a'$ doesn't denote the derivative, but the next period's variable. 



## Stochastic Dynamic Programming

Recall the sequence formulation of household problem:

$$
\begin{align}
\max_{\{a_{t+1}\}^\infty_{t = 0}} \mathbb{E}_{0} \sum_{t=0}^\infty \beta^t u(c_{t}) \\
\text{subject to} \\
c_{t} + a_{t+1} \leq y_{t} + (1+r) a_{t}  \\
a_{t+1} \geq \underline{a} \\
a_{0} \text{is given} 
\end{align}
$$

Thus we could have the recursive formulation for Bellman equation:

$$
V(a,y) = \max_{c,a'} u(c) + \beta \mathbb{E} [ V(a',y') | y ]
$$

subject to $c+ a' < y+ Ra$ and $a' \geq \underline{a}$

The policy functions here are $a' = g(a,y)$ and $c = h(a,y)$.

 > What is a policy function? Here the policy isn't the government policy, but the decision rule that tells us how much to consume/save given the current state (wealth level).
 
 We could use a *cash-on-hand* method to simplify it: we let $x = y+ Ra$, then $x$ is a state variable which denotes your wealth received at the beginning of the period. 

>  The case-on-hand strategy is kind of trick to make the computer programming easier. Because we don't need to track both $a$ and $y$, but only $x$. 

Then, one nice thing that could happen is we could use $s$ to denote the savings, thus $x' = Rs + y'$.

> One thing important here is we have to assume $y$ is i.i.d. Because only it is i.i.d., the previous value $y$ doesn't provide any information to $y'$, so we don't need to track it in the state variable. In this setting, we only care about $x$!


## Stochastic Bellman Equation

Thus our [[Bellman Equation]] becomes: 

$$
\begin{align}
V(x) = \max_{c,s} u(c) + \beta \mathbb{E} [ V(Rs + y') ] \\
\text{subject to} \\
c+ s \leq x \\
s\geq  \underline{a}
\end{align}
$$

We could then use [[Lagrangian Multiplier]] method to solve it:

$$
\begin{align}
V(a,y)  = \max_{c,a'} u(c) + \beta  \mathbb{E}[V(a',y'|y)] + \lambda[y+(1+r)a-c-a'] + \mu [a' - \underline{a}] \\
\text{subject to } \mu\geq_{0}, \lambda \geq 0
\end{align}
$$

Taking the FOC, we get:

$$
\begin{align}
u'(c) = \lambda \\
\beta \mathbb{E}[V_{a} (a',y') | y] = \lambda - \mu
\end{align}
$$

From [[Envelope Theorem]], we have:

$$
V_{a}(a,y) = \lambda (1+r)
$$

In the next period, it becomes:

$$
V_a(a', y') = \lambda'(1+r)
$$


Thus we could use this to substitute back to the FOC:

$$
\lambda - \mu = \beta (1+r) \mathbb{E}[\lambda' | y]
$$

and

$$ 
u'(c) = \beta (1+r) \mathbb{E}[u'(c') | y] + \mu
$$

So the [[Euler Equation]] is easy to get from here!

$$
u'(c) \geq \beta (1+r) \mathbb{E}[u'(c') | y]
$$

Because $\mu \geq 0$

### Markov Process: How does it work?

An important property the Markov Process has is the **Memoryless** property, which means that the future state only depends on the current state, not the entire history.

Some settings:

- $y= \{y_{1}, \dots, y_{J}\}$: Finite number of income realizations
- $\Pr(y_{t+1} = y_{j'}| y_{t} = y_{t-1}, y_{t-2})\dots$ = $\Pr(y_{t+1} = y_{j'}| y_{t} = y_{j}) = p_{jj'}$


For example, $p_{11} = \Pr(y_{t+1} = y_{1}|y_{t} = y_{1})$

#### The transition matrix $P$

To fully understand it, we raise a concrete numerical example:

$$
P = \begin{bmatrix}
0.7 & 0.25  &  0.05 \\
0.2 & 0.6 & 0.2 \\
0.05 & 0.25 & 0.7
\end{bmatrix}
$$

Since it is a $3 \times 3$ setting, we also have income realizations that $y = \{{y_{1},y_{2},y_{3}}\}$  that $y_{1}<y_{2}<y_{3}$.

>  There are two ways to think about $y$ here. One is that the probability you would have income $y_{j}$ in period $t$. The other way is that you could think about there are three different types of households, type 1 always has income $y_{1}$, type 2 always has income $y_{2}$, and type 3 always has income $y_{3}$. And the $p$ you get is the proportion of each type in the economy.

How to read this matrix?

- Step1: Read the rows. Each row represents your current income state.
- Step2: Read the columns. Each column represents your next period income state.
- Step3: Read the value. Each value represents the probability of moving from current income state to next period income state.

For example, in $p_{jj'} = p_{11}$, it means if your current income is $y_{1}$, then the probability that your next period income is still $y_{1}$ is $0.7$.

Thus $\forall j, \sum^J_{j' = 1} = 1$

This numerical example also shows income persistence if you look at the diagonal values, which are relatively large.

#### The stationary distribution $\pi$

The stationary distribution $\pi = \{\pi_{1}, \pi_{2}, \pi_{3}\}$ tells: in the long run, what fraction of time do you spend in each income state?

How it solves:

$$
\pi = P^T \pi
$$


Written out for our 3-state example: 

$$\begin{pmatrix} \pi_1 \\ \pi_2 \\ \pi_3 \end{pmatrix} = \begin{pmatrix} 0.7 & 0.2 & 0.05 \\ 0.25 & 0.6 & 0.25 \\ 0.05 & 0.2 & 0.7 \end{pmatrix} \begin{pmatrix} \pi_1 \\ \pi_2 \\ \pi_3 \end{pmatrix}$$


This gives three equations:

$$
\begin{align}
0.7 \pi_1 + 0.2 \pi_2 + 0.05 \pi_3 = \pi_1 \\
0.25 \pi_1 + 0.6 \pi_2 + 0.2 \pi_3 = \pi_2 \\
0.05 \pi_1 + 0.2 \pi_2 + 0.7 \pi_3 = \pi_3
\end{align}
$$

Also a constraint: $\pi_1 + \pi_2 + \pi_3 = 1$

There are four equations with three unknowns, we could solve it to get the exact values of $\pi$.

The stationary distribution tells us the long-run fraction of time the process spends in each state. For example, if $\pi_1 = 0.5$, it means that in the long run, the process will be in state $y_1$ half of the time. Or 50% of households would have income $y_1$ in the long run.

### How does it connect with [[Bellman Equation]]?

With stochastic income, the Bellman equation becomes:

$$
\begin{align}
V(a,y_{j}) = \max_{c,a'} u(c) + \beta \sum^J_{j'=1} V(a',y_{j'}) p_{jj'} \\
\text{subject to} \\
c+ a' \leq y_{j} + (1+r) a \\
a' \geq  \underline{a}
\end{align}
$$

[[Euler Equation]] is:

$$
u'(c) \geq \beta (1+r) \sum^J_{j' = 1} u'(c') p_{jj'}
$$

### Finding the Stationary Distribution

You could find the python code example to find the stationary distribution of a Markov process

#### Code Example

```Python
# Value Function Iteration with IID Income

# Greg Kaplan 2017

# Translated by Tom Sweeney Dec 2020

  

import numpy as np

import matplotlib.pyplot as plt

from scipy.optimize import fsolve

from discrete_normal import discrete_normal

  

# PARAMETERS

  

## preferences

risk_aver = 2

beta = 0.95

  

## returns

r = 0.03

R = 1+r

  

## income risk: discretized N(mu,sigma^2)

mu_y = 1

sd_y = 0.2

ny = 5

  

## asset grids

na = 500

amax = 20

borrow_lim = 0

agrid_par = 1 # 1 for linear, 0 for L-shaped

  

## computation

max_iter = 1000

tol_iter = 1.0e-6

Nsim = 50000

Tsim = 500

  

# OPTIONS

Display = 1

DoSimulate = 1

MakePlots = 1

  

# DRAW RANDOM NUMBERS

  

np.random.seed(2020)

yrand = np.random.rand(Nsim,Tsim)

  

# SET UP GRIDS

  

## assets

agrid = np.linspace(0,1,na).reshape(na,1)

agrid = agrid**(1/agrid_par)

agrid = borrow_lim + (amax-borrow_lim)*agrid

  

## income: disretize normal distribution

width = fsolve(lambda x: discrete_normal(ny,mu_y,sd_y,x)[0],2)

temp, ygrid, ydist = discrete_normal(ny,mu_y,sd_y,width)

ycumdist = np.cumsum(ydist)

  

# UTILITY FUNCTION

  

if risk_aver==1:

u = lambda c: np.log(c)

else:

u = lambda c: (c**(1-risk_aver)-1)/(1-risk_aver)

  

# INITIALIZE VALUE FUNCTION

  

Vguess = np.zeros((na,ny))

for iy in range(0,ny):

Vguess[:,iy] = u(r*agrid[0]+ygrid[iy])/(1-beta)

  

### Vguess = np.ones((na,ny))

  

# ITERATE ON VALUE FUNCTION

  

V = Vguess.copy()

  

Vdiff = 1

Iter = 0

  

while Iter <= max_iter and Vdiff > tol_iter:

Iter = Iter + 1

Vlast = V.copy()

V = np.zeros((na,ny))

sav = np.zeros((na,ny))

savind = np.zeros((na,ny), dtype=int)

con = np.zeros((na,ny))

## loop over assets

for ia in range(0,na):

## loop over income

for iy in range(0,ny):

cash = R*agrid[ia] + ygrid[iy]

Vchoice = u(np.maximum(cash-agrid,1.0e-10)) + beta*(Vlast @ ydist)

V[ia,iy] = np.max(Vchoice)

savind[ia,iy] = np.argmax(Vchoice)

sav[ia,iy] = agrid[savind[ia,iy]]

con[ia,iy] = cash - sav[ia,iy]

Vdiff = np.max(abs(V-Vlast))

if Display >= 1:

print('Iteration no. ' + str(Iter), ' max val fn diff is ' + str(Vdiff))

# SIMULATE

if DoSimulate == 1:

yindsim = np.zeros((Nsim,Tsim), dtype=int)

aindsim = np.zeros((Nsim,Tsim), dtype=int)

## initial assets

aindsim[:,0] = 0

## loop over time periods

for it in range(0,Tsim):

if Display >= 1 and (it+1)%100 == 0:

print(' Simulating, time period ' + str(it+1))

### income realization: note we vectorize simulations at once because

### of matlab, in other languages we would loop over individuals

yindsim[yrand[:,it]<=ycumdist[0],it] = 0

for iy in range(1,ny):

yindsim[np.logical_and(yrand[:,it]>ycumdist[iy-1], yrand[:,it]<=ycumdist[iy]),it] = iy

## asset choice

if it < Tsim-1:

for iy in range(0,ny):

aindsim[yindsim[:,it]==iy,it+1] = savind[aindsim[yindsim[:,it]==iy,it],iy]

  

## assign actual asset and income values

asim = agrid[aindsim]

ysim = ygrid[yindsim]

  

# MAKE PLOTS

if MakePlots==1:

## consumption policy function

plt.plot(agrid,con[:,0],'b-',label = 'Lowest income state')

plt.plot(agrid,con[:,ny-1],'r-', label = 'Highest income state')

plt.grid()

plt.xlim((0,amax))

### plt.title('Consumption Policy Function')

plt.title('Consumption')

plt.legend()

plt.show()

  

## savings policy function

plt.plot(agrid,sav[:,0]-agrid[:,0],'b-')

plt.plot(agrid,sav[:,ny-1]-agrid[:,0],'r-')

plt.plot(agrid,np.zeros((na,1)),'k',linewidth=0.5)

plt.grid()

plt.xlim((0,amax))

### plt.title('Savings Policy Function (a''-a)')

plt.title('Savings')

plt.show()

## nice zoom

xlimits = (0,1)

xlimind = np.ones(na, dtype=bool)

if np.min(agrid) < xlimits[0]:

xlimind = np.logical_and(xlimind,(agrid[:,0]>=np.max(agrid[agrid<xlimits[0]])))

elif np.min(agrid) > xlimits[1]:

xlimind = 0

if np.max(agrid) > xlimits[1]:

xlimind = np.logical_and(xlimind,(agrid[:,0]<=np.min(agrid[agrid>xlimits[1]])))

elif np.max(agrid) < xlimits[0]:

xlimind = 0

  

## consumption policy function: zoomed in

plt.plot(agrid[xlimind],con[xlimind,0],'b-o',linewidth=2)

plt.plot(agrid[xlimind],con[xlimind,ny-1],'r-o',linewidth=2)

plt.grid()

plt.xlim(xlimits)

plt.title('Consumption: Zoomed')

plt.show()

  

## savings policy function: zoomed in

plt.plot(agrid[xlimind],sav[xlimind,0]-agrid[xlimind,0],'b-o',linewidth=2)

plt.plot(agrid[xlimind],sav[xlimind,ny-1]-agrid[xlimind,0],'r-o',linewidth=2)

plt.plot(agrid,np.zeros((na,1)),'k',linewidth =0.5)

plt.grid()

plt.xlim(xlimits)

plt.title('Savings: Zoomed (a\'-a)')

plt.show()

  

## income distribution

plt.hist(ysim[:,Tsim-1],len(ygrid),facecolor=(0,0.5,0.5),edgecolor='blue')

plt.ylabel('')

plt.title('Income distribution')

plt.show()

  

## asset distribution

plt.hist(asim[:,Tsim-1],40,facecolor=(.7,.7,.7),edgecolor='black')

plt.ylabel('')

plt.title('Asset distribution')

plt.show()

  

## convergence check

plt.plot(range(0,Tsim),np.mean(asim,0),'k-',linewidth=1.5)

plt.xlabel('Time Period')

plt.title('Mean Asset Convergence')

plt.show()

  

## asset distribution statistics

aysim = asim[:,Tsim-1]/np.mean(ysim[:,Tsim-1])

print('Mean assets: ' + str(np.mean(aysim)))

print('Fraction borrowing constrained: ' + str(np.sum(aysim==borrow_lim)/Nsim * 100) + '%')

print('10th Percentile: ' + str(np.quantile(aysim,.1)))

print('50th Percentile: ' + str(np.quantile(aysim,.5)))

print('90th Percentile: ' + str(np.quantile(aysim,.9)))

print('99th Percentile: ' + str(np.quantile(aysim,.99)))
```







### Different Methods 

`to be done`.



---

# To-do List

- [x] Practice in [[Growth Model]]
- [x] What is policy variable?
- [x] How to understand $\ell$?

