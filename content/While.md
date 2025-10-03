## Example  1：数数几位数
示例代码：
```c
int x;
int n=0;
scanf("%d",&x);
n++;
x/=10;
while(x>0){
	n++;
	x/=10;
}
printf("%d\n",n);
return 0;
```
 
 循环体内要有改变条件的机会，否则会陷入无尽的循环捏

## Example 2: 

```python
x = "abcdef"
i = "a"
while i in x:
    x = x[:-1]
    print(i, end = " ")

```

The key point is that the `x = x[:-1]` is a kind of deduction. It would reduce the last word in the variable `x`, since it is a [[While]] function, it would continue reducing until `a` disappear. 

*Other Explanation:* the `end = " "` define the output after you print the result. So the answer here maybe `a a a a a`


