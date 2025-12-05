#LSE/EC487_Advanced_Microeconomics 

[[Transferable Utility]] is a special case in the [[Cooperative Game Theory]].

See some basic setting from [[Cooperative Game Theory]]:

The function $V(\cdot)$ assigns to each coalition a set of possible utility vectors:

$$
V: \mathcal{P}(\{1,\dots,N\}) \implies \mathbb{R}^{|S|}
$$

If $(u^j)_{j \in S} \in V(S)$, it means the members in coalition $S$ can use some matching system to reach to this utility profile.

here we add some definitions:

A coalitional game with transferable payoffs consists of:

- a finite set $N$ (the set of players)
- a function $v$ that associates with every nonempty subset $S$ of $N$ (a coalition) a real number $v(S)$ (the worth of coalition).

$$
V(S) = \left\{ (u^j)_{j \in S} : \sum_{j \in S} u^j = v(S) \right\}
$$

> Remark: Here, $v(S)$ is a scalar, it represents the worth of the coalition. But $V(S)$ could still be a set, it represents all the utility profiles that sum up to $v(S)$.
> 

For example, if $S = \{1,2\}$, and $v(S) = 10$, then

$$
V(S) = \{(u_{1},u_{2}): u_{1}+u_{2} = 10\}
$$



