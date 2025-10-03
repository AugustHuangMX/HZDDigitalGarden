---
title: "Tuple"
sr-due: 2023-04-30
sr-interval: 13
sr-ease: 270
---
#programming 

### 我的想法

[Tuple](Tuple.md) 是 Python 里的一个重要的基本概念

常见的表达形式：

```python
3,5,7,11
```

思考和 [List](List) 的区别。

---

In Python, it is a sequence of values separated by **commas**(逗号)

```python
nums = (1, 2, 3, 4, 5)
```

The fact is that we even don't need to use commas.

It is quite similar to [Array](Array.md) in C, if we scan:

```python
print(nums[0])
```

Its output will be `1`, because there index numbers start at 0. (that is the similarity)

In the same tuple, the elements type could not be the same. 

Note that the element in a tuple could not change! That means that if we print:

```python
nums = 1,2,3,4,5
nums[0] = 3
```

It will occur an *error* ! This is different from [Array](Array.md) in C

## Difference to [List](List.md)

- Tuples are faster
- Tuple can't be changed,  so when we know the data won't change,  it could be efficient and can protect from being changed
- "It can be used as keys in a dictionary, while [[list]] can't"（这段话是 PPT 里的，但是不太清楚啥意思）

### Reference 

