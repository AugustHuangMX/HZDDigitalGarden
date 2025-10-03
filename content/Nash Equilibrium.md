#Econ/Micro #GameTheory

See [[Pure-Strategy Nash Equilibrium]], [[Mixed-Strategy Nash Equilibrium]], [[Subgame Perfect Nash Equilibrium]] and so on.

## Definition

A strategy profile $s^{ * } = (s^{ * }_1,s^{ * }_2)$ is a [[Nash Equilibrium]] if

1. $u_1(s^{ * })\geq u_1(s_1,s^{ * }_2)$ for all $s_1$ and 
2. $u_2(s^{ * })\geq u_2(s^{ * }_1,s_2)$ for all $s_2$

=> No player can be strictly better off by solely changing her strategy.

> 本质上，这是划线法的一种数学体现。

We need to make sure that if  *the other* player plays this strategy, we would like to play this certain strategy. So preferably, in a $2\times 2$ game, each student would like to think about it twice.

> In a Nash equilibrium, each player maximizes her payoff given a certain prediction.

If no one wants to deviate from the strategy profile $s^{ * }$ unilaterally, then $s^{ * }$ is the [[Nash Equilibrium]].

## Example:

|     | L   | R   |
| --- | --- | --- |
| U   | 1,0 | 4,1 |
| M   | 2,2 | 3,1 |
| D   | 0,4 | 5,1 |

We can figure out there is no dominated strategy here, (see [[Iterated Dominance]])

However, there exists a [[Nash Equilibrium]].

Assume that we fix player 2 to play $L$, for player 1, her best response is $M$. If we fix player 2 to play $R$, for player 1, her best response is $D$.

1. If player 1 plays $U$, player 2 plays $R$
2. ...
3. ...

So we could easily get a [[Nash Equilibrium]]: $(M,L)$

