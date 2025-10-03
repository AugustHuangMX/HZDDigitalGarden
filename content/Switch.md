[[Programming Science MOC]]
#C_language #permanent 
多路分支 switch-case

根据输入某一个值来确认输出什么，会比 if else 更加优秀
如：
```C
switch(type){
case 1:
	printf("你好");
	break;
case 2:
	printf("早上好");
case 3:
...
}
```

这样可以不像 if-else 语句一样一行一行的试，直接能跳到想要的地方。
注意：
- 控制表达式（也就是 type）只能是整数型的结果，也就是只能是 int 而不是 double。
-  case 和 case 存在在一个“相同的空间里面”，如果没有 break 那么会不断地往前做，所以通常每一个 case 都会加上一个 break。Case 不是划分，case 只是入口。