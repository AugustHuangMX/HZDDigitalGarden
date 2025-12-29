#LSE/EC487_Advanced_Microeconomics 

**Definition** A finite [[Simultaneous Move Game]] is a tuple $(N,A,u)$ consisting of

- a finite number of players $j \in\{1,\dots,N\}$.
- for each $j \in \{1,\dots,N\}$ a finite non-empty action set $A^j$, where $A = \times^N_{j=1}A^j$.
> Here, $A$ is the [[Cartesian product]] of all players' action sets, representing the set of all possible action profiles. $\times$ denotes the Cartesian product operation.
- for each $j \in \{1,\dots,N\}$ preferences represented by a utility function $u^j: A \to \mathbb{R}; u = (u^j)^N_{j=1}$.
> Here, $u^j$ assigns a real-valued utility to each action profile in $A$, representing player $j$ 's preferences over the outcomes of the game. While $u$ means the collection of all players' utility functions.

Players by default move *simultaneously*. (See [[Simultaneous Move Game]]), which means you do not observe others' choices, you predict.



$$\begin{aligned} \sum_{j \in S} u_j &\geq v(S) \\ \sum_{j \in T} u_j &\geq v(T) \\ \sum_{j \in N \setminus (S \cup T)} u_j &\geq v(N \setminus (S \cup T)) \stackrel{\text{零和}}{=} v(N) - v(S \cup T) \end{aligned}$$