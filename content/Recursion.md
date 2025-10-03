
#programming 

# Tell It by Myself...
 
视频链接： https://youtu.be/WPSeyjX1-4s

C 语言递归的含义即 C 语言可以调用函数本身

Very famous recursion function:
```C
int factorial (int n) {
    if (n == 0) {
        return 1;
    } else {
        return n * factorial (n - 1);
    }
}
```

The `factorial(n-1)` is the recursion body, it calls itself.

## Requirement

1. It needs to repeat itself
2. It needs an *end*.

