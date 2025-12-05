#GameTheory #Exercise

*Manifesto: 宣言*

This is a problem set question from [[EC487 Advanced Microeconomics]], related to the [[Game Theory]] stuff. 

## Question

Three players, two politicians $j \in \{1, 2\}$ and one voter, play an extensive-form game:

- **stage 1** each politician $j \in \{1, 2\}$ simultaneously proposes an electoral manifesto $M^j \in \{\{x\}, \{x, y\}\} \equiv \mathcal{M}$
- **stage 2** the voter elects one of the two politicians $j \in \{1, 2\}$
- **stage 3** nature draws a payoff-relevant state $\theta \in \{x, y\} \equiv \Theta$ that is equal to $y$ with probability $p: 0 < p < \frac{1}{2}$ and $x$ with probability $1 - p$
- **stage 4** the elected politician $j$ chooses a policy $a \in M^j \subset A \equiv \{x, y\}$

**Preferences over terminal histories $(M^1, M^2, j, \theta, a)$ are as follows:**

- **voter utility** is one if $a = \theta$, zero otherwise
- **elected politician utility** is $b + 1$ if $a = y$ and equal to $b > 0$ otherwise
- **non-elected politician utility** is one if $a = y$ and zero otherwise

Having studied the stages 1-4 game in the lecture, we now consider the complete-information infinite horizon game that repeats stages 1-4 each period. Stage game utility is discounted at rate $\delta$ and normalized by $1 - \delta$. E.g., politician utility when elected and choosing policy $y$ each period is

$$(1-\delta) \sum_{k=0}^{\infty} \delta^k (b+1) = (b+1).$$
### The Tasks

1. Characterize the set of $(\delta, b, p)$ for which there exists an **SPE** of the repeated game in which on-path elected politicians play $a = x$.

We first clarify what is on-path and what is off-path here. On-path means that the actions that are taken according to the equilibrium strategies, while off-path means actions that deviate from the equilibrium strategies.

Before answering the question, I would want to discuss more about the **stage 3**: what is the nature draws a payoff-relevant state $\theta$. Here, $\theta$ means a specific state that what the voter prefers. The voter prefers policy $x$ when $\theta = x$, and prefers policy $y$ when $\theta = y$. It's not a proportion, it's just a state that determines the voter's preference.

#### Story

In this question, since the on-path elected politicians play $a=x$, every politician $j$ would proposes $M^j = \{x\}$. Without generality, lets say at **stage 2**, the voter chooses politician 1. At **stage 3**, it doesn't matter what $\theta$ is since the elected politician would always choose $a=x$ at **stage 4**.

Using the backward induction to verify it.

- At **stage 4**, since $M^j = \{x\}$, you only play $a=x$. The elected politician 1 gets utility $b$, the non-elected politician 2 gets utility $0$, and the voter gets utility $1$.
- At **stage 3**, No action involved.
- At **stage 2**, the voter would choose either politician since both would propose $M^j = \{x\}$. The voter gets utility $1$ regardless of the choice.

We think about the motivation to deviate. When does the penalty happens? It happens at **stage 1** when a politician $j$ proposes a manifesto with $y$ which is $\{x,y\}$ here. The action of the voter is not to vote him and vote the other one. Thus it's natural that such $X_{j}$ is a SPE.






2. Characterize the set of $(\delta, b, p)$ for which there exists an **SPE** of the repeated game in which on-path elected politicians play $a = y$.
    
3. Characterize the set of $(\delta, b, p)$ for which there exists an **SPE** of the repeated game in which on-path elected politicians match the state $a = \theta$.
    
4. Which policy is easier to sustain on-path in an **SPE** of the repeated game: matching the (voter-preferred) state $a = \theta$ or selecting the (politician-preferred) policy $a = y$?
    
