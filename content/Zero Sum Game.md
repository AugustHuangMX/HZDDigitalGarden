#Econ/Micro #GameTheory 

A [[Zero-Sum Game]] is a special type of [[Game Theory|game]] where one player's gain is exactly balanced by the losses of other players. In other words, the total benefit to all players in the game adds up to zero.

A two player [[Zero Sum Game]] is a normal form game where $N=2$ and $u^1(a) = -u^2(a)$

>  Corollary: If a two player zero-sum game has an equilibrium, then equilibrium payoffs are unique.

## The min-max theorem 

Now, consider there are two players, player 1 and player 2. We consider an upper bound and a lower bound.

### Lower Bound

Imagine that for player 1, he is a very pessimistic player, and he thinks that player 2 will always play the best response to his action. So he will choose his action to maximize his minimum payoff. This is called the maximin strategy, that is,

$$
min_{s^2} v^1(s^1,s^2)
$$
Thus, among all the "worst" actions, the player 1 will choose the action that maximizes his minimum payoff, which is called the maximin value.

$$
max_{s^1}min_{s^2} v^1(s^1,s^2)
$$

So this is the lower bound for player 1. ANY other *equilibrium payoff* must give player 1 at least this value.

### Upper Bound 

Now, suppose for player 1, he could observe player 2's action before he chooses his action. Then, he will choose his action to maximize his payoff given player 2's action. That is,

$$
max_{s^1} v^1(s^1,s^2)
$$

However, the player 2 isn't a fool. He would choose that how to minimize the payoff of player 1. So, the player 2 will choose his action to minimize the maximum payoff of player 1. This is called the minimax value.

$$
min_{s^2}max_{s^1}v^1(s^1,s^2)
$$

The magic thing is that, in any finite two-player zero-sum game, the maximin value is **equal** to the minimax value. This is called the min-max theorem.


