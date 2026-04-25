#Econ/Micro #LSE/EC487_Advanced_Microeconomics 

## Background

This is a topic from [[Mechanism Design]] .

[[General Mechanism]] is different from [[Direct Mechanism]]

---

In [[General Mechanism]], the agent is able to send any message $m$ from the message space $\mathcal{M}$. The mechanism then maps this message to an outcome through a function:

$$g: \mathcal{M} \rightarrow X$$

**Key features:**
- The message space $\mathcal{M}$ can be **arbitrary**—not necessarily related to the type space $\Theta$
- The agent must **strategically choose** which message $m$ to send based on their private type $\theta$
- The agent's optimization problem: $m^*(\theta) = \arg\max_{m \in \mathcal{M}} u(\theta, g(m))$

This framework is very flexible but can be complex to analyze, as we need to consider the agent's full strategic response across the entire message space.

---

## Direct Mechanism

In contrast, a **Direct Mechanism** simplifies the problem by setting the message space equal to the type space: $\mathcal{M} = \Theta$. The agent is simply asked to **report their type directly**.

$$g: \Theta \rightarrow X$$

**Key features:**
- The agent reports $\hat{\theta} \in \Theta$ (a reported type, which may or may not be truthful)
- Much simpler structure—no need to analyze complex message spaces
- If the mechanism satisfies **Incentive Compatibility (IC)**, then truthful reporting $\hat{\theta} = \theta$ is optimal for the agent

---

## Comparison Summary

| Aspect | General Mechanism | Direct Mechanism |
|--------|-------------------|------------------|
| Message Space | Arbitrary $\mathcal{M}$ | Type space $\Theta$ |
| Agent's Action | Strategically choose $m \in \mathcal{M}$ | Report type $\hat{\theta}$ |
| Complexity | Can be complex | Simple and tractable |
| Analysis | More difficult | Easier to characterize |

---

## The Revelation Principle

The crucial result that connects these two approaches is the **Revelation Principle**:

> For any general mechanism and its equilibrium outcome, there exists an equivalent direct mechanism where truthful reporting is a Bayesian-Nash equilibrium.

**Implications:**
1. We can **restrict attention to direct mechanisms** without loss of generality when searching for optimal mechanisms
2. Any outcome achievable by some general mechanism can also be achieved by an incentive-compatible direct mechanism
3. This dramatically simplifies mechanism design problems

**Intuition:** If an agent of type $\theta$ optimally sends message $m^*(\theta)$ in a general mechanism, we can construct a direct mechanism that produces the same outcome by directly asking the agent to report $\theta$ and then computing $g(m^*(\theta))$.

---

## Connection to [[A Simple Screening Example]]

The screening problem in [[A Simple Screening Example]] implicitly applies the Revelation Principle:

- The seller designs a menu of contracts $\{(q(\theta), p(\theta))\}_{\theta \in \Theta}$
- The buyer chooses which contract to accept, effectively revealing their type
- This is a **direct mechanism** where truthful type revelation is incentive compatible

The fact that we can focus on designing such menus (rather than more complex message spaces) is justified by the Revelation Principle.

---

## Further Reading

- [[Mechanism Design]] 

