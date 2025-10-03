---
title: "Scope of Names"
---

#C_language 

# Tell It by Myself...

It  is a concept in the [C programming language](C%20programming%20language.md), different kinds of 'names' are used to identify the region of the validity.

|Names|Example|Description|
|---|---|---|
| macro|like `#define` |can be used in the whole program|
|function||is also *global*, from the [Function Prototype](Function%20Prototype.md) to the end of the program|
|variable||the variable declared outside of the function is *global*, is declared until the end of the program|
|parameter||only in the *local* and inside the [Function](Function.md)| 

## Example:

```C
#include <stdio.h>
#define PI 3.1415  /* macro (global) */

int num = 1;  /* global variable */
int one(void)
{
    printf("one: num is %d, PI is %f\n", num, PI);
}

int two(int num)  /* input parameter (local) */

{
printf("two: num is %d, PI is %f\n", num, PI);
}

int main(){
    int num = 0;  /* local variable */
    printf("main: num is %d, PI is %f\n", num, PI);
    one();
    two(2);
    return(0);
}
```


---



# Reference 

