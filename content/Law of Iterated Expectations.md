It is the mean of $Y$ is the weighted average of the conditional expectation of $Y$ given $X$, weighted by the prob distribution of $X$. Which is also called as **LIE**

$$
E[E(Y|X)]=E(Y)
$$
$$
E(Y)=\sum^l _{i=1}E(Y|X=x_i)P (X=x_i)
$$

The prof of the LIE: 
$$\begin{aligned}

E[E(Y|X)]&=\sum_x E(Y|X=x)P(X=x)\\
&=\sum_x\sum_y yP(Y=y|X=x)P(X=x)\\
&=\sum_x\sum_y yP(Y=y,X=x)\\
&=E(Y)
\end{aligned}$$

