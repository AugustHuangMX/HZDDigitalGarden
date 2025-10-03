1. Regress endogeous regressor $X$ on $Z$, get $\hat X$

$$
X=\pi_0 +\pi_1 Z +V
$$

And then we get a proper $\hat X$

2. Regress $Y$ on $\hat X$

$$
Y_i = \beta_0+\beta_1 X_i + u_i
$$

$$
= \beta_0+\beta_1 (\hat X_i +\hat V) + u_i
$$
$$
= \beta_0+\beta_1 \hat X_i +\beta_1 \hat V + u_i
$$

For $\hat \beta_1 = \frac{S_{\hat X Y}}{S^2_{\hat X}}$ 

$$
=\frac{S_{\hat X, \beta_0+\beta_1 \hat X_i +\beta_1 \hat V + u_i}}{S_\hat X}
$$

$$
=\frac{\beta_1 S^2_\hat X}{S^2_\hat X}+\frac{ S_{\hat X,u}}{S^2_\hat X}+\frac{ S_{\hat X,\beta_1,\hat V}}{S^2_\hat X}
$$

- Textbook