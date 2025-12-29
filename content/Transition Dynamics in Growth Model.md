#LSE/EC417_Macroeconomics 

It's a very important concept in [[Growth Model]].

In this page, we try to answer two questions:

1. Can we analyze the speed of [[Convergence]]?
2. How analyze stability if two- or $N$ -dimensional state $x$? Because now we can no longer draw the [[Phase Diagram]].

Suppose we already arrive at the [[Steady State]], let $y \in \mathbb{R}^n$ and the function $m: \mathbb{R}^n \to \mathbb{R}^n$ define a dynamic system:

$$
\dot{y}(t) = m(y(t))
$$

If it is at [[Steady State]], it's obvious that $m(y^*)= 0$.

Consider a first order approximation of $m$ around $y^*$: (see [[Taylor Expansion]]):

$$
\dot{y} \approx m(y^*) + m'(y^*) (y-y^*)
$$

where $m'(y^*)$ is the $n \times n$ Jacobian of $m$ evaluated at $y^*$, we then define the gap of $y$: $\hat{y} = y - y^*$, thus in the traditional [[Growth Model]], we could have:

$$
\hat{y} = \begin{bmatrix}
c - c^* \\
k - k^*
\end{bmatrix}
$$

The Jacobian of $m$ is $A$, in this example, $A$ is

$$
A = m'(y^*) = \begin{bmatrix}
\frac{\partial  \dot{c}}{\partial c} & \frac{\partial  \dot{c}}{\partial k} \\
\frac{\partial  \dot{k}}{\partial c} & \frac{\partial  \dot{k}}{\partial k}
\end{bmatrix}
$$

We have $\dot{\hat{y}} \approx A \hat{y}$, it simply means that how $y$ would evolve around the steady state if the economy is deviated from the [[Steady State]].

To solve this system, we need to find the eigenvalues and eigenvectors of matrix $A$. From `Acemoglu`, with initial value $\hat{y}(0)$, and let $A$ be a $n \times n$  matrix. Suppose that $\ell \leq n$ of the eigenvalues of $A$ have negative real parts. Then there exists an $\ell$ -dimensional subspace $L$ of $\mathbb{R}^n$ such that starting from any $\hat{y}(0) \in L$, we have $\hat{y}(t) \to 0$ as $t \to \infty$. If all eigenvalues of $A$ have negative real parts, then $L = \mathbb{R}^n$.

Simply saying:

- if $\ell = m$, we have "saddle-path stable", we have a unique optimal trajectory. And the negative eigenvalue would govern the *speed of convergence*.
- if $\ell < m$, we have "unstable", there would be infinite trajectories diverging from the steady state. $y(t)$ does not converge to steady state.
- if $\ell > m$, multiple optimal trajectories.

>  We skip the proof of this theorem because it is unlikely to be in the exams.

## Linearized [[Growth Model]]

We continue using the traditional [[Growth Model]] as an example. The dynamic system is:

$$
A = \begin{bmatrix}
0 & \frac{1}{\sigma} f''(k^*)c^* \\
-1 & \rho
\end{bmatrix}
$$

We then introduce how to find the eigenvalues of matrix $A$.

### Eigenvalues and Eigenvectors

The eigenvalue $\lambda$ should satisfy:

$$
\det(A - \lambda I) = 0
$$
where $I$ is the identity matrix. Thus we have:

$$
A - \lambda I = \begin{bmatrix} 
- \lambda  &  \frac{1}{\sigma} f''(k^*)c^* \\
-1  & \rho - \lambda
\end{bmatrix} 
$$

Then calculate the determinant:

$$
\det(A - \lambda I) = (- \lambda)(\rho - \lambda) - \left(-1 \cdot \frac{1}{\sigma} f''(k^*)c^* \right) = \lambda^2 - \rho \lambda + \frac{1}{\sigma} f''(k^*)c^*
$$

Thus we have the eigenvalue equation:

$$
\lambda^2 - \rho \lambda + \frac{1}{\sigma} f''(k^*)c^* = 0
$$

Simply calculation leads:

$$
\lambda_{1,2} =  = \frac{\rho \pm \sqrt{\rho^2 - 4 \cdot \frac{1}{\sigma} f''(k^*)c^*}}{2}
$$

Since $f''(k^*) < 0$, thus the two eigenvalues have opposite signs, we let $\lambda_{1} < 0 < \lambda_{2}$, then we have $\ell = 1$, it is saddle-path stable.

Now we introduce how to solve the matrix differential equation.

### Solution to Matrix Differential Equation

We try to solve the following equation:

$$
\dot{\hat{y}} = A \hat{y} \quad \hat{y}(0) = \hat{y}_{0}
$$

> The intuition is we diogonalize matrix $A$ to decouple the system. Thus we have $n$ independent differential equations.

Step 1: We dioagonalize matrix $A$.

Suppose $A$ has $n$ linearly independent eigenvectors, we denote the eigenvectors as $v_1, v_2, \ldots, v_n$ and construct matrix $P$ as:

- $P = (v_{1},v_{2},\dots, v_{n})$
- Diagonal matrix: $\Lambda = \text{diag}(\lambda_{1}, \lambda_{2}, \dots,\lambda_{n})$

By definition, we have $AP = P \Lambda$ , thus we have

$$
A = P \Lambda P^{-1}
$$

For example, recall that $$
A = \begin{bmatrix}
0 & \frac{1}{\sigma} f''(k^*)c^* \\
-1 & \rho
\end{bmatrix}
$$

We suppose the eigenvalues are $\lambda_1$ and $\lambda_2$, eigenvectors are:

$$
v_1 = \begin{bmatrix}
v_{11} \\
v_{12}
\end{bmatrix} \quad v_2= \begin{bmatrix}
v_{21} \\
v_{22}
\end{bmatrix}
$$

Thus, we have:
$$
P = \begin{bmatrix}
v_{11} & v_{21} \\
v_{12} & v_{22}
\end{bmatrix} \quad \Lambda = \begin{bmatrix}
\lambda_1 & 0 \\
0 & \lambda_2
\end{bmatrix}
$$

