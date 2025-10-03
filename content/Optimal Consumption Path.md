#Econ/Macro 

How to understand the [[Optimal Consumption Path]]? From the [[ECON4004 Advanced Macroeconomics]], we use the [[Hamiltonian]] to solve the households' [[Consumption]] decisions. The typical [[Hamiltonian]] function $H$ looks like:

$$
H = \ln C+ \lambda(rK + wL - C)
$$

The term next to $\lambda$ is the [[Asset-accumulation Equation]], where

$$
\dot{K} = rK + wL -C
$$

noted that $\dot{K} = \frac{\delta K}{\delta t}$ is the change in the level of capital with respect to time $t$. When $\dot{K}=0$, then we could consider this as the [[Steady State]].

After taking the first order condition of [[Hamiltonian]], we get:

$$
\begin{align}
\frac{\delta H}{\delta C}  & = \frac{1}{C} - \lambda = 0 \\
\frac{\delta H}{\delta K} & = \lambda r = \lambda \rho - \dot{\lambda} \\
\end{align}
$$
Since $\frac{1}{C} = \lambda$, we take the log of these two terms, and we get:

$$
\ln C = - \ln\lambda
$$
we take the derivative of these two terms in respect to $t$:

$$
\frac{\delta \ln C}{\delta t} = \frac{1}{C} \frac{\delta C}{\delta t} = \frac{\dot{C}}{C}
$$

same for $\delta \lambda$, so

$$
\frac{\dot{C}}{C} = -\frac{\dot{\lambda}}{\lambda}
$$

Then we could get 

$$
\frac{\dot{C}}{C} = r-\rho
$$

And this is the [[Optimal Consumption Path]]. The intuition is that, if $r>\rho$, this means that the return to capital is higher than the discount rate $\rho$. So the optimal behavior is to save more and consume less today.