#LSE/EC423_Labour 

This page mainly serves as a notes for my course `EC423 Labour Economics Lecture 1`

---

- `page1-17` : Female labour force participation has been increasing overtime, and the wage gap is also decreasing (compared with men), though still earn less than men.
- `page25` 如何理解Standard errors are clustered at the individual level.？
	- 当数据是 [[Panel Data]]的时候，也就是说同一个 MBA 学生（在课件的设定里）在毕业之后多个年份 $t$ 都有观测值。
	- 问题在于，同一个 $i$ 在不同年份的 $\epsilon_{it}$ 很有可能是相关的（例如，如果一个人的 unobserved ability 偏高，那么整体 $\epsilon_{it}$ 可能都偏高），这就违反了我们对于 OLS 的基本假设。
	- 最好的解决办法就是 cluster at the individual level，允许同一个人的 error term 相关，只要求不同个体之间的残差不相关。这会使标准误变大。
- Extensive Margin and Intensive Margin 概念区别：
	- **Extensive margin：** 参不参与（yes or no的决策）——即是否进入劳动市场工作
	- **Intensive margin：** 参与了之后，参与多少（degree的决策）——即工作多少小时
- 