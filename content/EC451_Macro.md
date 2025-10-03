


# Recursive

## Finite-period

Dynamic Programming. Consider again a finite-period saving problem:

$$\begin{align}
max_{{C_{t},B_{t+1}}} \sum^T_{t=0} \beta^t u(C_{t}) \\
\text{s.t.} B_{t+1} = RB_{t} + Y_{t} -C_{t} \\
B_{T+1} \geq 0
\end{align}
$$

From previous learnings, we could both get the [[Euler Equation]] and the [[Transversality Condition]]:

- EC: $u'(C_{t}) = \beta R u' (C_{t+1})$
- TC: $B_{T+1} = 0$

The idea of the recursive methods is to start with the last period and move backwards. If not do so, we would have a large system with $2 \times (T+1)$ equations and $2 \times (T+1)$ unknowns, which would be impossible to solve using [[Largrangian Multiplier]].

If we use recursive, we would only have one equation. This is why we study this lecture.




## Bellman Equation

The intuition of [[Bellman Equation]] is that: "Today's greatest happiness = Today's utility + The discounted value of future happiness.", which could be written as:

$$
V(B) = max_{B'} \{u(RB-B') + \beta V(B')\}
$$

While Bellman Equation is for discrete time, we would introduce HJB equation to solve continuous time problem.

# Todo List 

## Lecture 3 


#### **🎯 Big Picture First (5-Minute Task)**

- [x] **Skim the entire document.** Don't try to understand it. Just look at the headings, the equations, and the graphs. Get a feel for the shape of the lecture. What are the main sections? (e.g., "Recursive approach," "HJB equation," "Stochastic HJB").

---

#### **Part 1: The "Why" - Thinking Backwards (Focus Session 1: 25 mins)**

The goal here is to understand _why_ this recursive method is useful.

- [x] Read the first page to understand the difference between the standard "sequential" method and the "recursive" method.
    
- [x] In your own words, what is the main problem with the sequential method as the time horizon (T) gets bigger?
    
- [x] **Hands-On Derivation:** Grab a pen and paper.
    
    - [ ] Solve the problem for **Period T**. The agent just consumes everything left. Write down the equations for
        
        CT​ and the value function VT.
        
    - [ ] Now, solve for **Period T-1**. Use the VT​ you just found as part of the maximization problem. Derive the equations for
        
        BT​ and CT−1​ yourself.
        
- [ ] **Check-In:** Do you see the pattern? You solve the future first (VT​) to make the best decision today.
    

---

#### **Part 2: The Main Tool - The Bellman Equation (Focus Session 2: 25 mins)**

Now, we generalize that backward-thinking into one powerful equation for an infinite horizon.

- [ ] Find and write down the main
    
    **Bellman equation** on page 45.
    
- [ ] **Define the key pieces** in your own words:
    
    - What is the **state variable**, B? (Hint: It summarizes the past) 6.
        
    - What is the **value function**, V(B)? (Hint: It summarizes the future) 7.
        
    - What is the **policy function**, g(B)? (Hint: It's your optimal rule or plan) 8888.
        
- [ ] Follow the example for the
    
    **infinitely-lived agent** 9. How does taking the limit
    
    T→∞ actually _simplify_ the problem?10101010.
    
- [ ] Find the famous results for this specific problem: what is the optimal rule for consumption (Ct​) and savings (Bt+1​)? Write them down11.
    

---

#### **Part 3: Continuous Time - The HJB Equation (Focus Session 3: 25 mins)**

This part looks intimidating, but it's just the Bellman equation when time flows continuously instead of in steps.

- [ ] Follow the derivation of the Hamilton-Jacobi-Bellman (HJB) equation. Don't get lost in the algebra. Focus on the core idea: they take the time step
    
    Δ and let it go to zero121212121212121212.
    
- [ ] Find and write down the final
    
    **HJB equation**13.
    
- [ ] **Spot the difference:** Put the Bellman equation and the HJB equation side-by-side. What's different? (Hint: look for β vs. ρ, and V(B′) vs. V′(B)).
    
- [ ] Look at the example solution 14. Notice it uses the same "guess and verify" strategy. You don't need to re-derive it, just see how the method is applied.
    

---

#### **Part 4: Adding Reality - Uncertainty! (Focus Session 4: 30 mins)**

This is where dynamic programming really shines. How do we make decisions when the future is random?

- [ ] Find the Bellman equation for a problem
    
    **with uncertainty**15. What is the one new symbol in the equation? (Answer: The expectation operator,
    
    E).
    
- [ ]
    
    **Ito's Lemma:** Skim this section16. You don't need to be a math genius here. The key takeaway is:
    
    _Ito's Lemma is the tool we must use to analyze functions of random variables in continuous time._
    
- [ ] Find the
    
    **Stochastic HJB equation**17. Compare it to the regular HJB. What is the new term that appears? (Hint: It involves
    
    σ2 and V′′(B)). This new piece is the term that accounts for risk/volatility.
    
- [ ] Jump to the end of the notes. The model predicts that the distribution of wealth follows a
    
    **Pareto distribution**18. According to the notes, what happens to the number of rich people if the return on assets,
    
    r, increases?19.
    

---

#### **✅ Final Review (15-Minute Task)**

- [ ] Go back through your notes and the checklist.
    
- [ ] Try to explain to yourself (or a friend, or a pet!) the difference between the Bellman equation and the HJB equation in one simple sentence.
    
- [ ] In one sentence, explain what adding uncertainty does to the HJB equation.
    

You've got this! By breaking it down into focused, bite-sized sessions, you can master this material.