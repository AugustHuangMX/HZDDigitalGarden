#metrics #timeseries

这是一个多变量的自回归系统，类似于 Autoregression。取名为 Vector Autoregression。它的核心含义是，如果说 $Y$ 的过去值（lag 值）无法对 $X$ 的现值做任何贡献的话，we could say that $Y$ does not Granger cause variable $X$ .

In the example, 

$$

X _ {t} = \beta_ {x x} X _ {t - 1} + \beta_ {x y} Y _ {t - 1} + \beta_ {x z} Z _ {t - 1} + \gamma_ {x x} X _ {t - 2} + \gamma_ {x y} Y _ {t - 2} + \gamma_ {x z} Z _ {t - 2} + u _ {t}

$$

that is to say, $\beta_{xy} = \gamma_{xy} = 0$

But this still leaves possibility that $Y$ *may* still have some influence to $X$ through some indirect direction, like maybe through $Z$ . To rule out all,  we say that variable $Y$ is not Granger Causally-Prior to variable $X$ iff the lags of $Y$ are not significant in the autoregressive equation for variable $X$ also not significant in all other autoregressions in the **VAR** system.


## Prediction

Under this system, we basically are using $X_{t-1}, Y_{t-1}, Z_{t-1}, X_{t-2}, Y_{t-2}, Z_{t-2}$ to predict $X_{t}, Y_{t}, Z_{t}$ . As said in page 2 in lecture notes, it is like the Engineering "black-box" approach.

## Temporal Correlation
Temporal Correlation is the basis of [[Time-Series Analysis]], it basically means the same variable has correlation in different period, i.e. $\text{Cov}(X_{t}, X_{t-k}) \neq 0$ .


---

## Try to Answer Question 2(b) in `Pset 4`

GnC means *Granger non-Causal*, GnCP means *Granger non-Causal Priority*

We could form three equations from the question:

$$X_t = \beta_{xx}X_{t-1} + \beta_{xy}Y_{t-1} + \beta_{xz}Z_{t-1} + \gamma_{xx}X_{t-2} + \gamma_{xy}Y_{t-2} + \gamma_{xz}Z_{t-2} + u_t$$

$$Y_t = \beta_{yx}X_{t-1} + \beta_{yy}Y_{t-1} + \beta_{yz}Z_{t-1} + \gamma_{yx}X_{t-2} + \gamma_{yy}Y_{t-2} + \gamma_{yz}Z_{t-2} + v_t$$

$$Z_t = \beta_{zx}X_{t-1} + \beta_{zy}Y_{t-1} + \beta_{zz}Z_{t-1} + \gamma_{zx}X_{t-2} + \gamma_{zy}Y_{t-2} + \gamma_{zz}Z_{t-2} + w_t$$

---

**Granger non-Causality (GnC)**

$Y$ does not Granger-cause $X$： $$\beta_{xy} = \gamma_{xy} = 0$$

$X$ does not Granger-cause $Y$：$$\beta_{yx} = \gamma_{yx} = 0$$

$Z$ does not Granger-cause $X$：$$\beta_{xz} = \gamma_{xz} = 0$$

$X$ does not Granger-cause $Z$： $$\beta_{zx} = \gamma_{zx} = 0$$

$Z$ does not Granger-cause $Y$：$$\beta_{yz} = \gamma_{yz} = 0$$

$Y$ does not Granger-cause $Z$：$$\beta_{zy} = \gamma_{zy} = 0$$

---

**Granger non-Causal Priority (GnCP)**

$Y$ is not Granger Causally-Prior to $X$：$Y$ 's lags are insignificant in every equation: $$\beta_{xy} = \gamma_{xy} = \beta_{yy} = \gamma_{yy} = \beta_{zy} = \gamma_{zy} = 0$$

$X$ is not Granger Causally-Prior to $Y$：$$\beta_{xx} = \gamma_{xx} = \beta_{yx} = \gamma_{yx} = \beta_{zx} = \gamma_{zx} = 0$$

$Z$ is not Granger Causally-Prior to $X$：$$\beta_{xz} = \gamma_{xz} = \beta_{yz} = \gamma_{yz} = \beta_{zz} = \gamma_{zz} = 0$$

We could also form other equations using the same logic.

