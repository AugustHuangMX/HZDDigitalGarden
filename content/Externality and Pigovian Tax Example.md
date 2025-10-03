## Related Knowledge background: 

- [[Pigou Tax]]
- [[Externality]], [[Externalities and Public Goods]]
- [[Externalities with High Transaction Cost]]

## Question Background

A fishery is an open-access resource that allows anyone who wants to enter it and catch fish. The average number of fish a boat can catch each day depends on the number of boats fishing. Specifically, the number of fish a single boat catches is given by $Q = 24 − 0.5 N$, where $Q$ is the quantity of fish per boat, and $N$ is the total number of boats on the water. The opportunity cost of fishing is $\$10$ per day for each fisherman. The market price for a fish is $\$1$.

### Question 1

*How many boats will fish each day? How much fish will each boat bring in and how much profit will they earn?*

Since if this fishery is profitable, there would be more and more boats come in, until there is no profit. ($\pi = 0$)

So, 

$$
\begin{aligned}
\pi &= TR-TC\\
0&=(24-0.5N) * 1-10\\
N&=28
\end{aligned}
$$
So there would be $28$ boats and the quantity of fish would be $10$.
### Question 2

*What is the efficient number of boats on the water each day?*

Since the *efficient* means the $\pi_{max}$, so we have to take the derivative. Also notice, for private, $\pi = 14-0.5N$, for public, $\Pi = 14N-0.5N^2$. So,

$$
\begin{aligned}
\Pi = 14N-0.5N^2\\
\frac{\delta \Pi}{\delta N}=14-N=0
\end{aligned}
$$

So $N^{ * }=14$.

### Question 3

*What is the Deadweight Loss (loss in social gains) from allowing open access to the fishery?*

$$
\Pi_{max} = 14 * 14 - 0.5 * 14 * 14 = 98
$$

So the $DWL=98$ (Because the reality is $\Pi = 0$)

### Question 4

*Suppose boats are charged a fee to fish on the lake each day.
What fee would lead to the efficient number of boats on the lake?*

Suppose there exists a tax $t$, so,

$\pi = 14 - 0.5N - t$

In order to make $N$ to be $14$, so make when $N = 14, \pi = 0$

So $t = 7$

(Similar method about [[Pigou Tax]])
