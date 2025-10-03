---
title: "P chart"
---

#Statistics 

### 我的想法

中文名叫做属性控制图，思路跟 [x chart](x%20chart.md) 类似的。比较大的区别是 [P chart](P%20chart.md) 讨论的是 proportion 

---

## Step

First, calculate their average, whether the sample is fail or not?

$$
\overline p=\frac{\sum^{k}_{j = 1}\hat p_j}{k}
$$
### Equations

The center line is $\overline p$

Lower control limit = $\overline p - 3\sqrt{ \frac {\overline p(1 - \overline p)}{n}}$

Upper control limit = $\overline p + 3\sqrt{ \frac {\overline p(1 - \overline p)}{n}}$

> If the lower control limit is negative (seems to be very familiar) set it to be 0.


## Pattern test

Like the one in the [x chart](x%20chart.md), we also have pattern test to test whether we can say the fail rate.




### Reference 

