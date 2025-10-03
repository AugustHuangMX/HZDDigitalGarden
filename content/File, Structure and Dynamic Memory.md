---
title: "File, Structure and Dynamic Memory"
---

#C_language 

# Tell It by Myself...


在我个人看来，这个内容和此前所学的各种 C 语言最大的区别是它新增了一些能够从程序之外的文件（如 txt，二进制的图片和音频）读取并且处理的能力，如 `fopen` 和，`fclose` 等

The declaration is:

```C
FILE *fp
```

fp = fopen(“filename”, “mode”)

“r”—reading

“w”—writing

“r+”– open both for reading and writing, if file does not exist, returns NULL

“w+”-- open both for reading and writing, if file does not exist, it will be created

`fclose(fp)` to close a file.

## What is `struct`?

We already know that [Array](Array.md) require all the elements are in the *same* datatype. However, it is necessary to group all the information of different data type. So we need a concept called Structure.



```C
struct Person {
    int age;
    char name[30];
    float height;
};
```

This means we define a structure called 'Person' and the structure contains age, name and height. 

