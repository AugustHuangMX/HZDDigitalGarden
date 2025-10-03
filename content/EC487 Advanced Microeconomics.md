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




