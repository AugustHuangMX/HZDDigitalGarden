[[Numerical Analysis MOC]]
#input #permanent #math 
# Chapter 3 Rootfinding
## 3.1 The Bisection method
也就是俗称的二分法？假设在定义域 $a\leq x \leq b$ 中，$f(a)f(b)<0$，在这里 $f(x)$ 肯定是有变号的，在 $[a,b]$ 中必变号过一次，又因为是连续的，也就是一定出现过*至少一次*$f(x)=0$。The Bisection method 就是通过进行一些流程来找出什么时候变号了。
在此基础上，引入 error tolerance $\epsilon>0$。
1. Define $c=(a+b)/2$
2. If $b-c \leq \epsilon$, then accept $c$ as root and stop
3. If sin $[f(b)]$ * $[f(c)]$  $\leq 0$,then set $a=c$. Otherwise, set $b=c$. Return to step 1
>感想：很像 C 语言的题...

每进行一次这样的运算，整个定义域都会减半。第二步的检验迟早都会成立。
**例题 3.1.1**
### 3.1.1 Error Bounds
“误差范围”
由上，很容易得出 $b_{n+1}-a_{n+1}=1/2(b_n-a_n)$，$n \geq 0$
那么迭代下去就会变成：$b_n-a_n=\frac{1}{2^{n-1}}(b-a)$

