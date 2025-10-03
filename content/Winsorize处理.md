---
title: "Winsorize处理"
tags:
- Statistics
---

#Statistics 

# Tell It by Myself...

[Winsorize处理](Winsorize处理.md)是一种对样本（通常是大样本）极端值处理的办法，[Winsorize处理](Winsorize处理.md)也叫缩尾处理，自己选择要缩尾的百分数（比如 1%）

合理联想：去掉一个最高分和去掉一个最低分。

```R
# [winsorize函数]
winsorize <- function(data,p = 0.01,drop = FALSE){ 
	q <- 1-p
	trim <- quantile(data,c(p,q),na.rm = T) #缺失值不参与
	if (drop == FALSE){
		data[data < trim[1]] <- trim[1]
		data[data > trim[2]] <- trim[2]
	}
	else if(drop == TRUE){
		data[data < trim[1]] <- NA
		data[data > trim[2]] <- NA
	}
	data
```


---



# Reference 

