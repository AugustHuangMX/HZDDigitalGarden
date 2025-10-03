---
title: "Array"
---

### 我的想法

C 语言里非常有意思的一个思想，数组

---

## Definition
A simple data type can only store one value at a time.

We could use `int *A` or `int A[]` to represent an array.

> This indicates a very important thinking: an [Array](Array.md) is also a [Pointer](Pointer.md)

> Question: What is the difference between `int A[]` and `int A[n]`?

> Answer: in `int A[]` we don't know the exact size of the array, but in `int A[n]` , the size is exactly *n*.

- In C, array indexes are integers ==beginning at =0== and counting up

> `A[0]` means the first element

For an array that contains 10 element, the *array index* could be 0-9
*Manipulating array element* is very simple , just need to know and understand the definition of Array and Array index.

## How to accessing array elements?

Use `for` [[Loop]]! 

Foe example:

```C
#define SIZE 11
int i, squeare[size];
for (i=0;i<SIZE;i++)
	square[i]=i * i;
```

数组的有效下标范围

It could be `segmentation fault`

*PS: We can create an array that contains no position, that is `A[0]` but it is meaningless*


#### Practice ：

写一个程序，输入数量不确定的 (0 , 9) 范围内的整数，统计每一种数字出现的次数，输入-1 表示结束

自己动手：

```C
#include<stdio.h>
int main(){
	int x;
	scanf("%d", &x);
	
	}
```


## Important

Always remember that once the [Array](Array.md) is declared, we can't change the size of it.

### Reference 

-  [[Programming Science MOC]]
- https://www.javatpoint.com/array-of-structures-in-c
- https://www.geeksforgeeks.org/parallel-array/
