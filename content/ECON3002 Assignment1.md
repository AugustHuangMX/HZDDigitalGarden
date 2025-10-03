1. (“$R^2$ and Correlation Coefficient”) Show that the regression $R^2$ in the linear regression of $Y$ on $X$ is the squared value of the sample correlation between $X$ and $Y$ . That is, show that $R^2=r^2_{xy}$ 

**Answer:** We expect that $R^2=\frac{ESS}{TSS}$ 

$$
\begin{aligned}
R^2 &= \frac{ESS}{RSS}\\
R^2 &= \frac{\sum_{i=1}^n(\hat Y_i-\overline Y_i)}{\sum_{i=1}^n(Y_i-\overline Y_i)}\\
&= \frac{\beta_1^2 Var(X)}{Var(Y)}\\
&= \frac{(r_{xy}\times\frac{s_y}{s_x})^2\times Var(X)}{Var(Y)}\\
&= \frac{(r_{xy}\times\frac{s_y}{s_x})^2\times s_x^2}{s_y^2}\\
&=r_{xy}^2 
\end{aligned}
$$



