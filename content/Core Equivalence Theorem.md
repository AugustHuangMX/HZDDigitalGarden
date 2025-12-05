#LSE/EC484_Econometrics_Analysis 

It is obvious that the [[Competitive Equilibrium]] are all core equilibrium, but now all core equilibrium are [[Competitive Equilibrium]].

The main statement of this when the number of agents in the economy grows, the set of core equilibria converges to the set of competitive equilibria.


## Formal Statement

Let the economy has $N$ **distinct** consumer types, yet $K$ versions of the same consumers, i.e.,

$$
\{1_{1},1_{2},\dots 1_{K},\dots,N_{1},N_{2},\dots N_{K}\}
$$

In total, there are $NK$ many consumers.

**Lemma** Consider an exchange economy with $N$ types and $K$ agents of the same type. Posit that utilities are increasing, strictly quasi-concave and continuous. For any allocation in the core, two consumers of identical type $n_{k_{1}}, n_{k_{2}}$ consume the same bundle.

Why is this conclusion significant?

Intuition: If individuals of the same type consume differently, it indicates an "unfair" allocation of resources. Thus, one can construct an "equalising" blocking coalition. By virtue of strict subconvexity, the average bundle improves outcomes for all.

The **proof** of this lemma is quite elegant. First, we construct a kind of “不幸者联盟”, for every type $n$ we pick consumer $n_{k(n)}$ so that

$$
u^n(x^{n_{k(n)}}) \leq u^n(x^{n_{k}}), \forall k \neq k(n)
$$

Then we develop a coalition of the deprived:

$$
S = \{1_{k(1)}, 2_{k(2), \dots, N_{k(N)}}\}
$$

For this coalition, we construct a new allocation profile: every agent gets the average bundle of their type in the original allocation, i.e.,

$$
\bar{x}^n = \frac{1}{K} \sum_{j = 1}^K x^{n_j}
$$
The new allocation is of course weakly better of.

$$
u^n(\bar{x}^n) \geq \min\{u^n(x^{n_{1}},\dots, u^n(x^{n_{K}}))\}
$$
Also we could verify that $(\bar{x}^n)^N_{n=1}$ is feasible for coalition $S$. $\square$

Now we are able to prove the main **Theorem**!

**Theorem**: Posit that $u^j$ is strictly quasi-concave, increasing, continuous. Suppose that the type allocation $(x^j)^N_{j=1}$ gives rise to a utility profile that, irrespective of how many representatives of every type there are, i.e., for all $K$, lies in the core of every exchange economy

$$
(NK,(e^j)^N_{j=1},(u^j)^N_{j=1})
$$

And suppose that all [[Endowment]] are strictly interior. Then this allocation $(x^j)^N_{j=1}$ occurs in a [[Walrasian Equilibrium]].

**Proof** Think about $K$ in the replicated economy. From the lemma, we already have that in any core allocation, all consumers of the same type consume the same bundle. Thus we could denote the consumption of type $n$ as $x^n$.

The method is still by *contradiction*. And the tool is [[Hyperplane Separation Theorem]]

