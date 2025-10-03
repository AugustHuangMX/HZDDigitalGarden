
---
title: "Pointer"
---

#programming 

# Tell It by Myself...

The [Pointer](Pointer.md) can be also told as address, every data has occupied certain numbers of  bytes, and to 

For example 
```C
int *p = i;
```
That p would be the address of the `i`

Example:
```C
  float x, y;
  x = 3.14; y = 2.839;
	  printf("&x=%p &y=%p\n",&x,&y);
```

Or, 

```C
int a = 1;
int *p = &a; //&a 表示取 a 的地址，也就是说指针 p 的内容是 a 的地址
printf("%p\n",&a); //打印 a 的地址
printf("%p\n",&p); //打印指针 p 指向的地址
```

The `*` is an unary operator, we can use it to get the pointer's value of the address.
（意思是可以通过指针来访问想要得到的值）



---



# Reference 

