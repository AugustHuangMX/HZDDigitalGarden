#LSE/EC487_Advanced_Microeconomics 

**Proposition** The following are equivalent in any finite two player zero-sum game:

- $$\min_{s^{-j} \in S^{-j}} \max_{s^{j} \in S^{j}} v^j(s^j,s^{-j}) = \max_{s^{j} \in S^{j}}  \min_{s^{-j} \in S^{-j}}v^j(s^j,s^{-j}) \quad \forall j \in \{1,2\}$$
- There exists a [[Nash Equilibrium]] $s^* \in S$.

Recall that this proposition is only suitable for the two player [[Zero Sum Game]], (also recall the [[Simultaneous Move Game]])

## Proof

We first prove the $(<=)$ direction.

Assume that there exists a Nash Equilibrium $s^* \in S$. We would definitely have

$$
\max_{s^j} v^j(s^j,s^{-j}) \geq \max_{s^j} \min_{s^{-j}} v^j(s^j,s^{-j}) \quad \text{for all} \quad s^{-j} 
$$

> It's obvious that you can't be worse than the worst.

Since it is in the [[Nash Equilibrium]], by definition, all $j$ would have no incentive to deviate from $s^*$. Thus we have:

$$
\min_{s^{-j}} \max_{s^{j}} v^j(s^j,s^{-j}) \leq \max_{s^{j}} v^j(s^j,s^{*-j}) \quad \text{for all} \quad s^{j}
$$

Otherwise $-j$ would like to deviate from $s^{*-j}$.

Also, notice that

$$
\max_{s^{j}} v^j(s^j,s^{*-j}) = v^j(s^{*j},s^{*-j}) = \min_{s^{-j}} v^j(s^{*j},s^{-j})
$$

Combining these three inequalities, we have:

$$
\min_{s^{-j}} \max_{s^{j}} v^j(s^j,s^{-j}) \leq \max_{s^{j}} \min_{s^{-j}} v^j(s^j,s^{-j})
$$

The other direction $(=>)$ is a bit more complicated.

Suppose

$$\min_{s^{-j} \in S^{-j}} \max_{s^{j} \in S^{j}} v^j(s^j,s^{-j}) = \max_{s^{j} \in S^{j}}  \min_{s^{-j} \in S^{-j}}v^j(s^j,s^{-j}) \quad \forall j \in \{1,2\}$$
holds.

And assume that in [[Nash Equilibrium]], we have $s^* = (s^{*1}, s^{*2})$.

And for player $1$, we have:

$$
s^{*1} \in \arg \max_{s^{1} \in S^{1}} \min_{s^{2} \in S^{2}} v^{1}(s^{1}, s^{2})
$$
Also,

$$
v^1(s^{*1},s^2) \geq \min_{s^{2} \in S^{2}} v^{1}(s^{*1}, s^{2}) = \max_{s^{1} \in S^{1}} \min_{s^{2} \in S^{2}} v^{1}(s^{1}, s^{2}) = \min_{s^{2} \in S^{2}} \max_{s^{1} \in S^{1}} v^{1}(s^{1}, s^{2}) \quad \forall s^{2} \in S^{2}
$$

And notice that

$$
\min_{s^{2} \in S^{2}} \max_{s^{1} \in S^{1}} v^{1}(s^{1}, s^{2}) = \max_{s^{1} \in S^{1}} v^{1}(s^{1}, s^{*2}) 
$$

Thus we have:

$$
v^1(s^{*1},s^2) \geq \max_{s^{1} \in S^{1}} v^{1}(s^{1}, s^{*2}) \quad \forall s^{2} \in S^{2}
$$

Similarly, we can also prove that for player $2$:
$$
v^2(s^{1},s^{*2}) \geq \max_{s^{2} \in S^{2}} v^{2}(s^{*1}, s^{2}) \quad \forall s^{1} \in S^{1}
$$

Thus, no player would like to deviate from $s^*$, and $s^*$ is a Nash Equilibrium.

---

## Connection With [[Nash Equilibrium]]

This theorem provides proof that the relationship between [[Nash Equilibrium]] and the Min Max = Max Min 

