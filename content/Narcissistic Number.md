---
title: "Narcissistic Number"
---

#C_language 

# Tell It by Myself...

This is a typical `Cprogramming` question, it tells how to separate the 3 numbers: 它的中文名是：水仙花数

The question is: 

> 输出所有的“水仙花数”，所谓的“水仙花数”是指一个三位数其各位数字的立方和等于该数本身，例如153是“水仙花数”，因为：$153 = 1^3 + 5^3 + 3^3$。

# Do it by myself

```C
#include <stdio.h>
int main(){
	int i,j,k;
	for (int n = 100;n<1000;n++){
	i = n/100;
	j = (n-i*100)/10
	k = n%10;
	if (n == i*i*i+j*j*j+k*k*k){
	printf ("%d ",n);
	}
	}
	return 0;
}
```

---



# Reference 

