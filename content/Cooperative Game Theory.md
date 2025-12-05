#Econ/Micro #GameTheory 

The most significant difference between [[Noncooperative Game Theory]] and [[Cooperative Game Theory]] is whether players could make binding contracts. 

It has the assumption that players are able to discuss together, the key problem we want to solve is no longer *what action should I take?* but *how to share the cooperative surplus?*

Unlike what we have learned from other [[Game Theory]] materials, we have changed our view, we now set a **coalition**. And we will focus on its outcome.

## The Basic Model 

The function $V(\cdot)$ assigns to each coalition a set of possible utility vectors:

$$
V: \mathcal{P}(\{1,\dots,N\}) \implies \mathbb{R}^{|S|}
$$

If $(u^j)_{j \in S} \in V(S)$, it means the members in coalition $S$ can use some matching system to reach to this utility profile.

### Numerical Example

Suppose there are $N=3$ players in the economy and want to divide a pie with 10 slices. But there are only player $1$ and $2$ who decide to form a coalition. Thus $S=\{1,2\}$.

$$
V(\{1,2\}) = \{(u_{1},u_{2}) \in \mathbb{R}^2\}
$$
### A Special Case: Transferable Utility

See [[Transferable Utility]] here.

## Core 

The **Core** is a kind of configuration that no coalition wants to deviate. See a formal definition below.

### Definition 

A partition $\mathcal{S}$ and a utility profile $(u^j)^N_{j=1}$ so that $(u^j)_{j \in S} \in V(S)$ for all $S \in \mathcal{S}$ is in the **core** if for all $S' \in \mathcal{P}(\{1,\dots, N\})$ there does not exists $(\hat{u}^j)_{j \in S'} \in V(S')$ so that $\hat{u}^j > u^j$ for all $j \in S'$.


### The TU Matching 

Consider

$$
V(S) = \begin{cases}
\{(0,\dots,0)\} \quad \text{if} |S| \neq 2\\
\{(u(x),u(y)) : u(x) + u(y) = f(x,y)\} \quad \text{if} S= \{x,y\}
\end{cases}
$$

Thus we could say that $f(x,y)$ is the output that $x,y$ produce if they match to each other. It also means, all the coalitions except those with 2 members produce nothing. Think about *marriage*.

We could represent the matching by an indicator function $m(x,y) \in \{0,1\}$. Thus we could say a matching $(x,y) \mapsto m(x,y)$ and utility profile $(u(x))_{x \in \{1,\dots,N\}}$ is in the core iff:

$$
u(x) + u(y) \geq f(x,y)
$$

which holds with equality if $m(x,y) =1$

>  We focus on a case that suppose $x$ and $y$ didn't match. That means $m(x,y) =0$. If $u(x) + u(y) < f(x,y)$, then $x$ and $y$ could form a coalition and get higher utility. Thus this configuration is not in the core. So it must be that $u(x) + u(y) > f(x,y)$.

**Proposition** The decentralized TU equilibrium matching is output-maximizing.

**Proof** We use *contradiction* method. Suppose not. 

In a decentralized TU equilibrium, it means that for all $x,y$ where $m(x,y) =1$, we have $u(x) + u(y) = f(x,y)$.

If the matching is not output-maximizing, there must exists $x',y'$ where $m(x',y') =0$ but $f(x',y') > u(x') + u(y')$.

$$
\max_{m(x,y)} \sum_{x,y} f(x,y) m(x,y) > \sum_{x,y} (u(x) + u(y)) m(x,y)
$$

That is, there exists blocking coalition. Contradiction!


### Exchange Economy 

Fix an exchange economy $(N,e,u)$, where 

- $N$ is the set of agents
- $e = (e^j)_{j \in N}$ is the initial [[Endowment]]
- $u = (u^j)_{j \in N}$ is the utility function profile

The aim is to define all the feasible utility profiles for coalitions $S \subseteq \{1,\dots,N\}$.

The formal definition is:

$$
V(S) = \left\{ (\tilde{u}^j)_{j\in S} \subseteq \mathbb{R}^{|S|} | \exists(x^j)_{j \in S}: x^j \in \mathbb{R}^L_{+}, u^j(x^j) = \tilde{u}^j \forall u^j \in S, \sum_{j \in S} x^j \leq \sum_{j \in S} e^j   \right\}
$$

The conditions might be too abstract, lets explain.

1. $\exists(x^j)_{j \in S}: x^j \in \mathbb{R}^L_{+}$: Every member in the coalition $S$ will receive a consumption bundle $x$. And it must be non-negative.
2. $u^j(x^j) = \tilde{u}^j \forall u^j \in S$: The utility that member $j$ receives from consumption bundle $x^j$ must be equal to the proposed utility $\tilde{u}^j$.
3. $\sum_{j \in S} x^j \leq \sum_{j \in S} e^j$: The total consumption of all members in coalition $S$ must not exceed their total initial endowment.

>  Notice that the dimension of $x^j$ depends on the types of goods in the economy, that is $L$ here. It is easy to think in the way that there are $N$ agents and each agent has a distinct endowment good, thus $N$ goods. But it is not necessary. There could be multiple agents holding the same type of good.

Since this exchange economy implies that all agents could only exchange endowment within their coalition, it means that smaller coalitions have limited scope for benefiting from resource exchanges.

## [[Core Equivalence Theorem]]

See [[Core Equivalence Theorem]] for more info.

