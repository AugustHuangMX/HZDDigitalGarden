---
title: "Slicing"
sr-due: 2023-04-20
sr-interval: 3
sr-ease: 250
---

#programming 

### 我的想法

顾名思义就是编程里用来切片的手法，在 CISC 1001 里正式的学习，但是感觉在最早接触是在 [[MATLAB]] 和 [[R]] 。

---

>Slicing means to retrieve a range of items from a sequence ([Tuple](Tuple.md), [List](List.md) or [[String]])

For example in [Tuple](Tuple.md)

```python
nums = 1,2,3,4,5
tup[1:4]
> (2,3,4)
```

Note that it doesn't contain the last element! (`5` in location 4)


```python
nums = 1,2,3,4,5
tup[0::2]
> (1,3,5)
```

`::` 代表间隔（stride）

## Negative

The slicing technique is quite interesting, it can be negative!

-1 is the last item. In the example, it is `5`

```python
nums = 1,2,3,4,5
tup[-4:-2]
> (2,3)
```

Still notice that no *last element*



### Reference 

