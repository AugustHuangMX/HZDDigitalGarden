[[Numerical Analysis MOC]]
#input #permanent #math

# 5.1 Principle of iterative methods
## 5.1.1 Fixed point iteration

#### Nonlinear equations
Finding a root of $f(x)=0$ is really common. 


#### Existence of root for $f(x)=0$
**Lemma 5.1**  Let f be a *continuous* function on (a, b). If $f(a)f(b)\leq0$, 
Then $\exists \xi \in [a,b]$ such that $f(\xi)=0$
**Proof** 
step 1: 证明了当 x 取到 a 或者 b 的时候，如果对应的函数都取到零的时候，也就是说这个时候 $\xi$ 肯定存在
step 2：利用反证的思想，如果 fafb 不等于 0，那么也就是说 fafb 要小于 0，那么取到 0 的值一定在这个开区间的某一个点上，利用 Intermediate value theorem（介值定理） 就一定存在
**note：** $\xi$ 不一定是个特征值

----

#### Fixed point of a function
**原文内容**
>Given a function φ(x) on [a, b]. A point ξ ∈ [a, b] is called a **fixed point** of φ(x) on [a, b] if ξ = φ(ξ).
• In this chapter, we are going to solve f (x) = 0 by finding fixed point of a function related to f (x).
• Now let us discuss the existence of fixed point.

比如 $f(2)=2$ 就是一个典型的 fixed point。我们将利用这个思想通过寻找 fixed point 来尝试解出 $f(x)=0$ 

#### Existence of fixed point
>**Theorem 5.1. (Fixed Point Theorem (FPT))** 
>Suppose that φ(x) is continuous on [a, b], and if φ(x) ∈ [a, b] for all x ∈ [a, b].
Then, ∃ ξ ∈ [a, b] such that ξ = φ(ξ).
**Proof** 
Let f (x) ≡ x − φ(x). Then, 
f (a) = a − φ(a) ≤ 0 and f (b) = b − φ(b) ≥ 0 since φ(a), φ(b) ∈ [a, b]. Consequently, f (a) f (b) ≤ 0, with f defined and continuous on the closed interval [a, b]. By Theorem 5.1, ∃ ξ ∈ [a, b] such that 0 = f (ξ) = ξ − φ(ξ).

**解析证明过程**：我们不是要尝试证明存在有一个 x 和 φ(x) 相等吗，那我们就直接构造一个函数 $f(x)=x-\phi(x)$ 然后直接利用前文提到的 IVT 即可解出答案。

#### Relationship between f(x) = 0 and x = φ(x)
>• Let $x^*$ be a fixed point of φ(x). If we choose 
>φ(x) ≡ x + f (x), 
>then $x^*$ satisfies the equation f (x) = 0.
• Any other choice for φ(x) so that fixed point of φ(x) is a root of f (x) = 0? Yes! E.g., 
φ(x) ≡ x − 2 f (x), φ(x) ≡ x −f (x)/ f′(x), · · · 
• For numerical methods, it is important to choose a (x) that satisfies the assumptions in FPT, see next section.

**Example**
>Consider the function $f (x) = e^x-2x - 1$ on $[1, 2]$.
Clearly, the equation $f (x) = 0$ has a root in $[1, 2]$ (Why?).
To rewrite $f (x) = 0$ to $x = φ(x)$, we may choose 
• $φ(x) =1/2 (e^x− 1)$ (not satisfies assumptions in FPT) 
	This φ does not map the interval $[1, 2]$ to itself.
• $φ(x) = ln (2 x + 1)$(satisfies assumptions in FPT) 
	As $φ(1) ∈ [1, 2], φ(2) ∈ [1, 2]$ and φ is monotonic increasing, it follows that $φ(x) ∈ [1, 2]$.

拿到这个函数的时候呢，我们就需要去构造一个函数φ(x)来使得φ(x)=x，这样做的目的是为了算出 fixed point，（参考 FTP 的定义）
那么就会有两种方法，一种就是简单的移项，一种比较高级，进行一个 ln，依旧是互相相同的。
- 第一个方程不满足 FPT，因为φ(x)的值域超了
- 第二个方程满足。

**Remarks**
>• Although the ability to verify the existence of a solution to the equation f (x) = 0 is important, none of what has been said so far provides a method for solving this equation.
>• In the following we will come to the construction of an algorithm for computing an approximation to the fixed point ξ of the function φ(x), and will thereby supply an approximate solution to the equivalent equation f (x) = 0.

其实就是预告，该如何去解方程。
引入一种迭代法（iterative method）去寻找 fixed point。也就是寻找定义域内 $x=\phi (x)$
#### The fixed point iteration (FPI)
思路非常朴素和直接，就是先假设一个 $x_0$，这个 $x_0$ 就是 fixed point 计算 $x_1=\phi (x_0)$  ，如果 $x_1=x_0$，那 $x_1$ 就是 FP。否则就计算下一组：$x_2=\phi (x_1)$。
整个这个重复的过程（**iterative formula**）可以写作
$$x_{k+1}=\phi(x_k),  k=0,1,2 ...$$
在这里，$\phi(x)$ 就被称为迭代方程（**iterative function**）
## 5.1.2 Convergence of fixed point iteration

## 5.1.3 How fast the fixed point iteration converges?


# 5.2 Acceleration of iterative methods








##### 问题栏：待解决
1. 从 p18 一直出现的 L 代表着什么？
2. 