We define the  as 

$$
Bias(\hat \theta_n):=E[\hat\theta_n-\theta]=E(\hat\theta_n)-\theta
$$
Recall that for i.i.d. sample $X 1, · · · , Xn$, we have $s^2_X= \frac{1}{n−1}\sum^n_{i=1}(X_i −\overline X)^2$.
Show $E (s^2_X) = \sigma^2_X.$

First, 
$$
\begin{aligned}
E(s^2_X)=E(\frac{1}{n-1}\sum^n_{i=1}(X_i-\overline X)^2)
\\=\frac{1}{n-1}\sum^n_{i=1}E[(X_i-\overline X)^2]
\end{aligned}
$$
Since $Y_i=X_i-\overline X$ , $E(Y_i)=E(X_i-\overline X)=E(X_i)-\mu _X$ 

Since $Cov(X_i,\overline X)=Cov(X_i,\frac{1}{n})=\frac{1}{n}\sigma_X^2$




$$\begin{aligned}
E(X_i-\overline X)^2=Var(X_i-\overline X)
\\=Var(X_i)-2Cov(X_i,\overline X)+Var(\overline X)
\\
\end{aligned}
$$