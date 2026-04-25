#Econ/Macro 

$$
\tilde {y} _ {t} = - \frac {1}{\sigma} \left(i _ {t} - \mathbb {E} _ {t} \left(\pi_ {t + 1}\right) - r _ {t} ^ {n}\right) + \mathbb {E} _ {t} \left(\tilde {y} _ {t + 1}\right)
$$

> The derivation could refer to MN4 Lecture 5 p.29

Basically, the [[Dynamic IS Equation]] comes from the [[Euler Equation]] of household, and we rewrite it in terms of the output gap version.

**Core Intuition**: The output gap today (compared with the natural output) depends on the real interest rate gap and expected future output gap (the first half and the second half).

Lets see term by term:

- $i_{t} - \mathbb{E}_{t}(\pi_{t+1})$: it is the *ex-ante real interest rate*.
- $r_{t}^n$: the *natural rate of interest*: the real rate that would prevail under flexible prices (the [[Real Business Cycle]]).
- So the first term measures how far the actual real rate is **above** the natural rate. When the gap is positive, the central bank is effectively too tight. discouraging consumption and investment, so output falls below the natural level.
- $1/\sigma$: it is the elasticity of intertemporal substitution - it governs how sensitive household are to interest rate changes. Larger $1/\sigma$ means household respond more aggressively to rate deviation.
- The last term simply reflects the *forward looking* nature: if households expect a positive output gap tomorrow (good time ahead), they consume more today, raising today's output gap.

>  $\sigma$ comes from the CRRA utility function, it measures the relative risk aversion. Higher sigma means people prefer *consumption smoothing*.


