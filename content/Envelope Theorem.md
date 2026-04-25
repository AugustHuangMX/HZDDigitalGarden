#Econ 

We use the [[Bellman Equation]] as an ample to illustrate the [[Envelope Theorem]] in dynamic programming.

## The Setup

Start with the Bellman equation: $$V(a, y) = \max_{c, a'} u(c) + \beta E[V(a', y')|y]$$ subject to: $$c + a' = y + (1+r)a$$ $$a' \geq \underline{a}$$
## Step 1: Form the Lagrangian

$$\mathcal{L} = u(c) + \beta E[V(a', y')|y] + \lambda[y + (1+r)a - c - a'] + \mu[a' - \underline{a}]$$

where:

- $\lambda$ is the multiplier on the budget constraint
- $\mu \geq 0$ is the multiplier on the borrowing constraint

## Step 2: First-Order Conditions

Take FOCs with respect to the **choice variables** $c$ and $a'$:

$$\frac{\partial \mathcal{L}}{\partial c} = 0: \quad u'(c) = \lambda$$

$$\frac{\partial \mathcal{L}}{\partial a'} = 0: \quad \beta E[V_a(a', y')|y] = \lambda - \mu$$

## Step 3: The Envelope Condition (The Key Step!)

Now here's where the envelope condition comes in. We want to know: **how does the value function change when the state variable $a$ increases?**

Take the derivative of the value function with respect to the **state variable** $a$:

$$V_a(a, y) = \frac{\partial}{\partial a}\left[\max_{c, a'} u(c) + \beta E[V(a', y')|y]\right]$$

**The Envelope Theorem says**: When taking the derivative of a **maximized function** with respect to a parameter (here $a$ is the parameter), you can **ignore the effect through the choice variables** (because they're already optimized, so small changes have no first-order effect).

So you only need to differentiate through the places where $a$ appears **directly**:

$$V_a(a, y) = \frac{\partial \mathcal{L}}{\partial a}\bigg|_{c=c^*, a'=a'^*}$$

Looking at the Lagrangian: $$\mathcal{L} = u(c) + \beta E[V(a', y')|y] + \lambda[y + (1+r)a - c - a'] + \mu[a' - \underline{a}]$$

The only place $a$ appears directly is in the term $(1+r)a$:

$$V_a(a, y) = \lambda(1+r)$$

**This is the envelope condition!**

## Economic Intuition

What does $V_a(a,y) = \lambda(1+r)$ mean economically?

- **Left side** $V_a(a,y)$: The marginal value of having one more unit of assets
- **Right side** $\lambda(1+r)$: The marginal utility of wealth ($\lambda$) times the return on assets $(1+r)$

So the envelope condition says: **The value of an extra dollar of assets is equal to the marginal utility of wealth times what that dollar will grow to with interest.**

## Why "Envelope"?

The name comes from the idea that when you have a family of curves (like value functions for different $a$ values), the envelope is the curve that's tangent to all of them. The derivative along the envelope only captures the "direct" effect, not the "indirect" effect through reoptimization.

## Practical Use

In the next period, this becomes: $$V_a(a', y') = \lambda'(1+r)$$

This lets us link the multipliers across time periods, which is how we derive the Euler equation!

Does this help clarify where it comes from? The key insight is that the **envelope theorem lets us ignore the effect through the choice variables** because they're already optimal.

---

In Chinese, it is called 包络定理, emphasizing the idea of an "envelope" of optimized functions.
