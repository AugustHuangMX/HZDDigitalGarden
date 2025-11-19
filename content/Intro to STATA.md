---
title: "Intro to STATA"
---

#

## Data types

Data output format: eg: `% 9.0 g`, `% 9.2 f`, `% 10.7 e`

Byte, int and long generally represent integer values, 

double and float are generally the format of decimal values

g: General format; F: fixed format; E: scientific counting method

## Data Import

Type `use + path/filename` 

例如：`use "C:/Users/YourName/Documents/mydata.dta"`

-  `describe` 介绍了数据集的基本信息
- `summarize` 提供了变量的描述性统计
- `tabulate` 用于生成频率表，比如如果我想知道黑人在数据集中的比例，就可以使用 `tabulate black`
	如果我想知道“What proportion is black, under 40?”，那么我可以使用 `tabulate black if age < 40`
- `twoway` 用于绘制散点图、折线图等二维图形，比如 `twoway (scatter yvar xvar)` 会绘制 yvar 对 xvar 的散点图

---

Always remember: All stata regression commands work the same way:

`Command DependentVariable IndependentVariables, Options`



# Reference 

