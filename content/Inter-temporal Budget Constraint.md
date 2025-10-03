---
title: "Intertemporal Budget Constraint"
sr-due: 2023-04-26
sr-interval: 3
sr-ease: 250
---

#macro 


We first assume $u=lnC_1+\beta ln C_2$

使用对数的原因（个人理解）：因为取对数可以很好的把两个 part, $C_1$ 和 $C_2$ 分割开来，这样可以让计算更加简介，与此同时也不需要去管 $U$ 的变形，因为求导只求极限的 $C$

$C_1$: Consumption when young

$C_2$: Consumption when old

$\beta$: the importance of $C_2$

$Y_1$: income when young

$Y_2$: income when old

$S_1$: saving

$r$: interest rate

## 2-period model

又可以称为跨期预算收束，see [[Inter-temporal Budget Constraint]]

$Y_1=C_1+S_1$

$Y_2+(1+r)S_1=C_2$

*This is called the 2-period model*

Since $U=ln(Y_1-S_1)+\beta ln[Y_2+(1+r)S_1]$

求导之后可以得到F.O.C

$$S_1^ * = \frac{\beta Y_1}{1+\beta}- \frac {Y_2}{(1+r)(1+ \beta )}$$

Note:

1. $r$ affects $C_1 ^ * ,C_2 ^ * ,S_1 ^ *$
2. If $Y_1\uparrow,C_1^ * ,C_2^ * , S_1 ^ *$ will all increase.
3. If $Y_2 \uparrow,C_1^ * ,C_2^ *$ will increase, but $S_1 ^ *$ will decrease, ==why?==

![](截屏2023-02-27%2022.57.24.png)

![](截屏2023-02-27%2022.57.48.png)

So we have to come to a knowledge that is called the [[Life-time budget constraint]]

And using the methods of [Endowment](Endowment.md), we can test whether it is a borrower or a saver.

## The Changes

Different changes could lead different changes in Equilibruim and [Endowment](Endowment.md)

The basic variables could be seperated as:

1. Changes in income $Y_1$ and $Y_2$ 
2. Changes in interest rate

And the changes in interest rate can then be defined as [[Subtitution Effect]] and [[Income Effect]]

The first situation could be very simple, because you just need to calculate again with the new value, but if we change the interest rate, it could be "interesting".

Recall the diagram of [Life-time budget constraint](Life-time%20budget%20constraint.md), the slope of the curve is $1+r$, so that if we change the interest rate, the slope of the curve changes,

### For a saver:

Think in [Subtitution Effect](Subtitution%20Effect) and [Income Effect](Income%20Effect.md), 

![](截屏2023-04-06%2016.04.54.png)

### For a borrower

The only thing need to do is to save more. Because when $r$ increases, then interest payment increases, it could suffer a loss, so to borrow less (save more)

![](截屏2023-04-06%2016.06.20.png)

>IE and SE would leed to same direction for a borrower

### Summary

| As $r$ increases| Income Effect| Subtitution Effect|
|---|---|---|
|Saver|reduce saving|increase saving|
|Borrower|increase saving (by borrow less)|increase saving|


### Reference 

-  https://zhuanlan.zhihu.com/p/48895899