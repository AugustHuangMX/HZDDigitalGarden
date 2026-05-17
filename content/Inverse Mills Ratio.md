#metrics 
## Background


---

$$
\lambda(c) = \frac{\phi(c)}{1-\Phi(c)}
$$

Intuitively, the denominator $1-\Phi(c)$ means the ratio of the truncated people (probability of $Y>c$ )

$\phi(c)$ 代表在截断点处的密度（刚好在边界上的人有多“密集”）

那么比值就能算出来在截断处附近的密度相对于剩余人群的集中程度。如果 $\lambda$ 越大，说明截断越严格，剩下的人就会越少，而且越集中在截断点附近。

分成两种情况：

### 一元情况

最简单的情况，如果 $Z \sim N(0,1)$，那么：

$$
\mathbb{E}[Z|Z>c] = \frac{\phi(c)}{1-\Phi(c)} = \lambda(c)
$$

### 二元情况

如果 $(X,Y)$ jointly normal, $Y \sim N(0,1)$ , $\mathbb{E}[X] = 0$ ,

$$
\mathbb{E}[X|Y>c] = \text{Cov}(X,Y)  \frac{\phi(c)}{1-\Phi(c)}
$$

同时也是符合直觉的：左半边可以理解为 $Y$ 的信息能够在多大程度上传递给 $X$，而有半边则是熟悉的这个**截断**有多严格。

---

## Reference

1. EC423 Topic 3
2. EC484 

