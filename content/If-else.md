---
sr-due: 2023-05-01
sr-interval: 14
sr-ease: 270
---

[[Programming Science MOC]]

#programming 

>Requirement:
Input: a, b, c
Output: if they form a right triangle or not

Design: 利用到了 [[Switch]] 的思想

要注意 `if` 后面需要加括号，以及 `if` 之后其实是一个“状态”的描述，需要使用两个等号等。

For right triangle

```C
#include<stdio.h>
int main(){
float a,b,c;
scanf("%f",&a);
scanf("%f",&b);
scanf("%f",&c);
if (a*a+b*b==c*c||a*a+c*c==b*b||b*b+c*c==a*a)
	{printf("those input form a right triangle");}
else
	printf("those input could not form a right triangle");

	return 0;
}

```

==注意**第七行**需要写两个等号！==

#### Integration

介绍了一种从 1 数到 100 的方法，利用 while 循环

```C
#include<stdio.h>
int main(){
	int count, sum;
	count =1;
	sum=0;
	while(count<=100)
	{
		sum=sum+count;
		count = count + 1;}
printf("%d\n",sum);

return 0;
}
```


