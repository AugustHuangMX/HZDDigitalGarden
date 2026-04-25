#Econ/Macro 

**Natural output** $y_t^n$ is the level of output that would prevail if all prices were perfectly flexible — i.e., the RBC equilibrium output within the same [[New Keynesian Model]].

**Core intuition:** The NK model has two "layers." Strip away the nominal rigidities ([[Calvo Price]]), and you're left with a standard RBC economy where markets clear perfectly. The output in that frictionless version is $y_t^n$. It moves only in response to **real** shocks (primarily technology $a_t$), not monetary shocks — because with flexible prices, money is neutral.

**Why it matters:** Natural output serves as the **benchmark** against which we measure the distortion caused by sticky prices. The **output gap** is defined as:

$$\tilde{y}_t = y_t - y_t^n$$

This gap captures how far the actual economy deviates from where it _would_ be without nominal frictions. It's the key variable in the NKPC:

$$\pi_t = \kappa \tilde{y}_t + \beta E_t(\pi_{t+1})$$

and the [[Dynamic IS equation]]:

$$\tilde{y}_t = -\frac{1}{\sigma}(i_t - E_t[\pi_{t+1}] - r_t^n) + E_t(\tilde{y}_{t+1})$$

**The key takeaway:** Inflation isn't driven by the level of output itself, but by how much output exceeds (or falls short of) its natural, flexible-price level. When $\tilde{y}_t > 0$, real marginal costs are above their flexible-price level, putting upward pressure on inflation. The central bank's job is essentially to close this gap — steering actual output toward $y_t^n$ — which simultaneously stabilizes inflation (this is the "divine coincidence" result).
