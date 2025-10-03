---
title: "Function"
---

#programming 

# Tell It by Myself...

Use `int`  xxx to create a function

提取一个可以“重复调用” “单纯朴素”的部分构成一个函数，让 main 函数也看起来更加简洁。

可以减少写很多段几乎一模一样的代码，

>代码复制是程序质量不良的体现！

It receives 0 or more *parameters* and send back 0 or 1 *value*


## Definition

In the beginning of the function for example

```C
void sum(int begin, int end)
```

The void means what type of value you want to return. It can also be `int` . In fact, in my first year class, there are a lot of function begin with `int`.

> `void` here means we don't return any value.

## Use the function

If we want to use the function, we have to write

```C
functionname(function value)
```

Even if we don't have function value, still need to write `()`

`function()` is the symbol to tell the computer we are going to use the function!

## The [[Return Value]]

`return` means 2 things:

1. We stop the function
2. We send back (return) a value

Remember if we use `void` we can't use the return with value (you can write function with return, but it is meaningless) 


The function has precedence relationship. So we usually write the function before the main function (the machine read the code from top to bottom)
==But , we use a method called [[Function Prototype]] ==
That is, we should
1. Declare the function at first
2. Write the function definition at last (even after the main function!)

