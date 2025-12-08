#LSE/EC487_Advanced_Microeconomics 

Players choose their strategies. In a game, they lottery over their action sets:

$$
S^j = \Delta (A^j) = \left\{ s^j: A^j \to \mathbb{R}_{+} \text{s.t.} \quad \sum_{a^j \in A^j} s^j(a^j) = 1 \right\}
$$

and $S = \times_{j=1}^N S^j$.

The easiest way to understand $s^j$ is that it is a probability distribution over the action set $A^j$.

Knowing everyone's strategy (and actions), the expected payoff for player $j$ is:

$$
v^j(s^j,s^{-j}) = \sum_{a^1 \in A^1} \dots \sum_{a^N \in A^N} u^j(a^1,\dots,a^N)s^1(a^1) \cdots s^N(a^N)
$$
Implications: Given a strategy profile $(s^j,s^{-j})$, individual beliefs and other players' strategies coincide, "no surprise"!

