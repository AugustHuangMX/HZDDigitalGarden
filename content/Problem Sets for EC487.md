
# Problem Set 1
## Exercise 1 (zero-sum games with a star player)

Consider a finite strategic game with $N+1$ players where $A^j$ denotes player $j$ 's finite action set and 1 is the star player in a star network: every player $j \neq 1$ exclusively interacts with player 1 as reflected by the utility functions
$$u^1: A^1 \times A^2 \times \dots \times A^{N+1} \to \mathbb{R} \quad \text{and} \quad u^j: A^1 \times A^j \to \mathbb{R} \quad \forall j \neq 1.$$
Denote $s^j \in \Delta(A^j)$ a mixed strategy.

1.  Define expected utility $v^1(s^1, \dots, s^{N+1})$ and $v^j(s^1, s^j)$ for all $j \neq 1$.
   
We can get some intuitions from `lecture 1 page 14`, expected utility is are all the combinations together:

$$
v^1(s^1, \dots, s^{N+1}) = \sum_{a^1 \in A^1} \dots \sum_{a^{N+1} \in A^{N+1}} \left( \prod_{j=1}^{N+1} s^j(a^j) \right) u^1(a^1, \dots, a^{N+1})
$$

$s$ here mean is the probability of choosing action $a$, so we multiply all the probabilities together and multiply the utility to get the expected utility.



2.  Define the notion of Nash equilibrium in mixed strategies.

Now assume that the game is zero-sum in that
$$u^1(a^1, \dots, a^{N+1}) + \sum_{j=2}^{N+1} u^j(a^1, a^j) = 0 \quad \forall (a^1, \dots, a^{N+1}) \in A^1 \times A^2 \times \dots \times A^{N+1}.$$
We then extend von Neumann's characterization from two-player games to many-player games with a star player.

3.  Show that there exists a Nash equilibrium $s^* = (s^{*1}, \dots, s^{*N+1})$ if and only if
    $$\min_{(s^2, \dots, s^{N+1})} \max_{s^1} v^1(s^1, \dots, s^{N+1}) = \max_{s^1} \min_{(s^2, \dots, s^{N+1})} v^1(s^1, \dots, s^{N+1}).$$
    *Deduce that the expected utility of player 1 is identical across all equilibria.*

4.  Prove or disprove by example that expected utility of players $j \neq 1$ is identical across all equilibria.



---

Remarks: It is easy for us to be confused about what does $\Delta$ mean in the notions. It means the set of all possible probability distributions over the action set $A^j$.




## Exercise 3 (comparative statics in Nash bargaining)

Let $X = [0, 1] \cup \{d\}$ be the set of alternatives. And consider utility function $x \mapsto u^1(x)$ that is increasing and utility function $x \mapsto u^2(x)$ that is decreasing on $[0, 1]$.

1.  Prove that the Nash bargaining solution $x^*$ to the problem $(X, u^1, u^2, d)$ is unique if both $x \mapsto u^1(x) - u^1(d)$ and $x \mapsto u^2(x) - u^2(d)$ are strictly log concave.




2.  Consider two player 1 utility functions, $\tilde{u}^1(x)$ and $\hat{u}^1(x)$, that are both increasing. Denote $\tilde{x}^*$ the smallest Nash bargaining solution for $(X, \tilde{u}^1, u^2, d)$ and $\hat{x}^*$ the smallest Nash bargaining solution for $(X, \hat{u}^1, u^2, d)$.
    
    (i) Prove that $\tilde{x}^* \geq \hat{x}^*$ if for all $1 > x_3 > x_2 > 0$ it holds that
        $$ \frac{\tilde{u}^1(x_3) - \tilde{u}^1(x_2)}{\tilde{u}^1(x_2) - \tilde{u}^1(d)} \geq \frac{\hat{u}^1(x_3) - \hat{u}^1(x_2)}{\hat{u}^1(x_2) - \hat{u}^1(d)}. $$
    
    (ii) Interpret the implied preferences over decision problems where the player must choose between alternative $x_2$ with probability 1 and alternative $x_3$ with probability $p$.