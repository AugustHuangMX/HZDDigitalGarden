[[Time-Series Analysis]]
#Statistics #permanent 
## Three-period moving average
The moving average could be smoother than the *raw data*
>Lag 是指一个事件或现象相对于另一个事件或现象的时间延迟。在统计学和时间序列分析中，lag 通常用于描述两个变量之间的时间关系，即一个变量的变化如何影响另一个变量的变化，以及它们之间是否存在滞后效应。举个例子，假设我们想研究某个城市的空气污染水平和人们的健康状况之间的关系。如果我们发现空气污染水平的增加会导致人们健康状况的恶化，那么我们可以进一步研究它们之间的时间关系。在这种情况下，我们可以使用 lag 来描述它们之间的时间延迟。例如，我们可以研究空气污染水平的增加在几天或几周后对人们健康状况的影响，这就是一个 lag 的问题。如果我们发现人们健康状况的恶化在空气污染水平增加后的第二天才开始出现，那么我们就可以说存在一个 1 天的 lag 效应。在时间序列分析中，lag 也常用于描述一个变量自身的时间延迟效应。例如，我们可以研究某个经济指标在过去几个月或几年中的变化对未来几个月或几年的影响，这就是一个自回归（autoregressive）模型，其中 lag 表示变量自身的时间延迟。需要注意的是，lag 并不一定表示因果关系，它只是用于描述两个变量之间的时间关系。在研究因果关系时，需要进行更加严格的实证分析

The moving average method is a good way to reduce the random variable (see [[Time-Series Components]])
Of course we can do *even number* of observations included in the moving average. However, notice that the average will be placed between in the middle of period (1 and 2 would be 1.5)
