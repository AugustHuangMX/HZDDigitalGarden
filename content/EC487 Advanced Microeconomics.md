#GameTheory #Econ/Micro 

This course is mainly about the [[Game Theory]] stuff.

# Lecture 1

>  Definition 1.1 A finite normal-form game is a tuple $(N,A,u)$:
>  - $N = {1, ..., n}$ is a finite set of players.
>  - Each player $j$ has a finite action set $A^j$. Let $A = \times^N_{j = 1} A^j$.
>  - Each player $j$ has a utility function $u^j: A \to \mathbb{R}$. that represents preferences over $A$. We define as $u = (u^j)^N_{j=1}$ .

Notice that, *Mixed Strategy* allows for **randomization**. We use the simplex notation $\Delta(A^j)$ to denote the set of all probability distributions over $A^j$:

$$
S^j = \Delta(A^j) = \left\{ s^j: A^j \to \mathbb{R}_{+} \text{s.t.} \sum_{a^j \in A^j}s^j(a^j) = 1 \right\}
$$

and $S = \times^N_{j=1} S^j$ . Here $S$ means the set of all possible mixed strategy profiles.

$j$ here represents a specific player.

## [[Nash Equilibrium]]

Unlike in the undergrad, we give a more general definition of [[Nash Equilibrium]] here:

A strategy profile $s^{ * } \in S$ is a [[Nash Equilibrium]] if

$$
v^j(s^{ * j},s^{ * -j}) \geq v^j(s^{  j},s^{ * -j}) 
$$
for all $s^j \in S^j$ and for all players $j \in \{1,\dots,N\}$.

>  Here, $s^{-j}$ means the strategy profile of all players except player $j$.

## [[Zero Sum Game]]


# Lecture 2 

## What is $\Delta(X)$

We first need to denote that $\Delta (X)$ is the probability simplex over a finite set $X$.

$$
\Delta(X) = \{ p: X \to \mathbb{R}_+ \text{ s.t. } \sum_{x \in X} p(x) = 1 \}
$$

For example, $\Delta(A^j)$ is all mixed strategies for player $j$, if $A^j = \{L,R\}$, then $\Delta(A^j) = \{(p,1-p) : p \in [0,1]\}$, which means all ways to randomize between left and right.

## Belief 

The belief is written as $\mu^j \in \Delta (A^{-j})$, intuitively, it means a probability distribution over what all **other** players might play. In [[Nash Equilibrium]], belief about other player's actions had to be *consistent* with their strategies, i.e.,

$$
\mu^j(a^{-j}) = \prod_{i \neq j} s^i (a^i)
$$

>  The intuition of this consistency condition is that, it requires **beliefs match reality**.

>  Again, we recall that $a^j$ is an element, it stands for what $j$ actually plays, while $s^j$ is a function, it stands for the probability distribution over all possible actions. And $s^j(a^j)$ means the probability that player $j$ plays action $a^j$. 
>  The upper letter case, like $A^j$, means the set of all possible actions.


Combining the correlated beliefs (and strategies), we could define player $j$ 's expected utility as follows:

$$
v^j(s^j,\mu^j) = \sum_{a^j \in A^j} \sum_{a^{-j} \in A^{-j}} s^j(a^j) \mu^j(a^{-j}) u^j(a^j,a^{-j})
$$

>  Note that, here we use $\mu^j$ instead of $s^{-j}$, because we want to emphasize the belief part. But in [[Nash Equilibrium]], they are consistent, so it doesn't matter which one you use.

This equation, to be honest, is quite abstract at the first slight, we think about it step by step:

- Step 1: We first consider if the player $j$ plays pure action $a^j$ and opponents also play pure profile $a^{-j}$, utility is very simple:
	$$
	u^j(a^j,a^{-j})
	$$
- Step 2: Now, if player $j$ isn't sure what opponents will play, so he would have a belief $\mu^j$ about it. Then, the expected utility for player $j$ if he plays pure action $a^j$ is: 
	$$
	\sum_{a^{-j} \in A^{-j}} \mu^j(a^{-j}) u^j(a^j,a^{-j})
	$$
- Step 3: Now, player $j$ also randomizes his action, using his mixed strategies $s^j$, then the expected utility for player $j$ is:
	$$
	\sum_{a^j \in A^j} s^j(a^j) \left( \sum_{a^{-j} \in A^{-j}} \mu^j(a^{-j}) u^j(a^j,a^{-j}) \right)
	$$ 

By rearranging the terms, we get the equation below: 

$$
v^j(s^j,\mu^j) = \sum_{a^j \in A^j} \sum_{a^{-j} \in A^{-j}} s^j(a^j) \mu^j(a^{-j}) u^j(a^j,a^{-j})
$$

> [!example]  Definition
> A player $j$ action $a^j \in A^j$ is a [[Best Response]] $BR^j(\mu^j)$ against belief $\mu^j \in \Delta(A^{-j})$ if $a^j \in\text{argmax}_{\tilde{a}^j} v^j(a^j, \mu^j)$


## Rationality

If a player is **rational**, the weakest decision criterion for him is not to apply in any situation that are never [[Best Response]].


> [!example]  Definition (Never a [[Best Response]])
> An action $a^j \in A^j$ is never a [[Best Response]] if there doesn't exist any belief $\mu^j \in \Delta(A^{-j})$ such that $a^j \in BR^j(\mu^j)$.




## Correlated Beliefs and Uncorrelated Beliefs


This distinction is crucial for understanding the difference between Nash equilibrium and more general solution concepts.
### Uncorrelated Beliefs

**Uncorrelated beliefs** assume opponents play independently. Player $j$ believes each opponent $i$ mixes according to some strategy $s^i$, and their joint actions are statistically independent:

$$\mu^j(a^{-j}) = \prod_{i \neq j} s^i(a^i)$$

This means: "The probability of seeing action profile $a^{-j}$ equals the product of individual probabilities."

**Example**: In a 3-player game, if Player 3 believes:

- Player 1 plays Left with probability 0.5
- Player 2 plays Up with probability 0.3

Then Player 3 must believe:

- $\mu^3(Left, Up) = 0.5 \times 0.3 = 0.15$
- $\mu^3(Left, Down) = 0.5 \times 0.7 = 0.35$
- $\mu^3(Right, Up) = 0.5 \times 0.3 = 0.15$
- $\mu^3(Right, Down) = 0.5 \times 0.7 = 0.35$

### Correlated Beliefs

**Correlated beliefs** allow players to believe opponents' actions are statistically dependent. Now $\mu^j \in \triangle(A^{-j})$ can be any probability distribution.

**Example**: Player 3 could believe:

- $\mu^3(Left, Up) = 0.6$
- $\mu^3(Right, Down) = 0.4$
- $\mu^3(Left, Down) = 0$
- $\mu^3(Right, Up) = 0$

This cannot arise from independent mixing! Players 1 and 2 seem to coordinate - when one goes Left/Up, the other does too.


## [[Dominant Strategy]]


> [!example]  Definition (Strictly Dominated)
> An action $a^j$ is strictly dominated by a strategy $s^j\in \Delta(A^j)$ if 
> $$
> u^j(a^j,a^{-j}) < \sum_{\tilde{a}^j \in A^j} s^j(\tilde{a}^j) u^j(\tilde{a}^j,a^{-j}) \quad \forall a^{-j} \in A^{-j}
> $$


It's easy to come up with the idea that $a^j$ would never a BR iff it is **strictly dominated**. 

>  There would be a proof in the `lecture 2`, redo it.


> [!example]  Definition (Recursive Rationalizability)

$\mu^i_{t+1} [a^i]$



>  Common knowledge of rationality is "stronger" than rationality alone.


See the [[Problem Sets for EC487]] for more applications.



