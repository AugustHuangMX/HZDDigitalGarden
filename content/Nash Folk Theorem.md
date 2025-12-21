#LSE/EC487_Advanced_Microeconomics 

Consider a finite stage game $(N,A,u)$, where:

- $N  =\{1,2,\dots n\}$ the set of players
- $A = A_{1}\times A_{2}\times\dots \times A_{n}$ the action sets.
- $u = \{u_{1}\dots u_{n}\}$ the stage games payoffs.

The game is repeated infinitely with discount factor $\delta \in (0,1)$, and the player payoffs are:

$$
U^j (a_{0},a_{1},\dots) = (1-\delta) \sum_{t=1}^\infty \delta^t u^j(a_{t})
$$


We recall the [[Min-Max = Max-Min]] strategy here, we define the lowest payoff other players can force upon player $j$ in any stage game:

$$
V^j_{\min\max} = \min_{a^{-j} \in A^{-j}} \max_{a^j \in A^j} u^j(a^j,a^{-j})
$$

The minmax admits a straightforward interpretation as an extensive-form game: other players move first to punish player $j$; $j$ subsequently [[Best Response]].

We could then define that, a payoff profile $W = (W^j)^N_{j=1}$ is individually rational if $W^j \geq V^j_{\min\max}$ for all $j$.

## Proposition

Thus we are able to make the proposition of [[Nash Folk Theorem]]

Let $W$ a feasible and strictly individually rational payoff profile of the stage game $(N,A,u)$. Then for all $\epsilon >0$ such that $W^j - \epsilon > V^j_{\min\max}$ uniformly for all players $j$, there exists $\underline{\delta} >0$ such that any infinitely repeated game where $\delta \geq \underline{\delta}$ there exists a [[Nash Equilibrium]] whose equilibrium payoff profile is $\epsilon$ close to $W$.

---

Some hints to prove [[Nash Folk Theorem]] with a unique action profile.

We construct the game $N=\{1,\dots,n\}$ where for all players, we define their [[Strategy]] $s^j$ as:

- Cooperate State (initial state):
	- at $t=0$, play $a^j$.
	- Then at history $h = \{a,a,a, \dots,\}$ always play $a^j$
- Punishment State:
	- Once at $t$, if observe a player $i$ doesn't play $a^{i}$, then from the start of ${t+1}$, every player $j \neq i$ plays $a^{-i}_{\min\max}$ where $a^{-i}_{\min\max} = \arg\min_{a^-i} u_{i}(a^{-i},a^i)$

We want to show that if $\underline{\delta}$ is big enough, no player wants to play off-path

Suppose on path:

$$
U^j_{\text{Cooperate}} = (1-\delta) \sum_{t=0} \delta^t u^j(a)
$$

Since we normalize with $(1-\delta)$, thus $U^j_{\text{Cooperate}} = u^j(a)$.

If off-path:

If player $j$ decides to off-path at $t=0$, then he would get a deviation utility $\tilde{u}$, then he gets $V^j_{\min\max}$ forever.

Thus,

$$
U^j_{Deviate} = (1-\delta) \max_{a^{'j}} u^j(a^{'j},a^{-j}) + \delta V^j_{\min\max} 
$$

Only when $U^j_{Coo}\geq U^j_{Dev}$, $j$ won't have incentive to deviate, thus 

$$
u^j(a) \geq (1-\delta) \max_{a^{'j}} u^j(a^{'j},a^{-j}) + \delta V^j_{\min\max}
$$

We could get 

$$
\underline{\delta} \geq  1 - \frac{u^j(a) - V^j_{\min\max}}{\max_{a^{'j}}u^j(a^{'j},a^{-j}) - V^j_{\min\max}}
$$

Since $u^j(a) > V^j_{\min\max}$ (because people are rational), we have $\underline{\delta} < 1$.

Thus we pick the highest $\underline{\delta}$ among all $j$, where $\delta = \max_{j \in {1,\dots,n}}\underline{\delta}_{j}$

The conclusion is, if we let $\delta \geq \max_{j \in {1,\dots,n}}\underline{\delta}_{j}$, then nobody wants to play off-path, everyone would play $a$.


