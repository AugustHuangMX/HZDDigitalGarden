#output #project #fleeting
视频链接：
https://www.youtube.com/watch?v=5yL-RGWbMgk&t=3317s

**This paper:**
1. Key facts on missing characteristics
2. Novel model to impute missing values
3. Implications for asset pricing

**Key questions: Does missing data matter and how should we deal with it?**
It is an empirical study of what is there in the structure of missing data,  and to propose another way on how to deal with this issue.

4 key stylized facts:
1. Missing data is prevalent
2. Missingness particularly severe for multiple characteristics
3. Data is not missing at random. That is all missing datas have connections.
4. Returns depend on missingness

Method: **A cross-sectional and time-series factor model** for characteristics
>2.17 看到了 14：04，有时间回来继续看...


### Characteristics are persistent
- Many characteristics are very persistent，也就是过去的值可以为 missing data 提供信息
- Characteristics are cross-sectionally correlated（特征是横截面相关的）不能将横截面的数据简单的归因为 0，[[卢曼笔记盒/Missing data#^ddf657|横截面定义]]
- 

### Model
Characteristics form a 3-dimensional vector space:
- *Cross-sectional stock dimension* $i=1,...,Nt$
- *Time-series dimension* $t=1,...,T$
- *Different characteristics* $I=1,...,L$
**Goal:** A low-dimensional model for cross-sectional and time-series dependency
## 感想
1. 可能机器学习非常重要

## 陌生名词定义：
**Cross-section:** **横截面数据**，也称截面数据、静态数据，是[统计学]( https://zh.wikipedia.org/wiki/%E7%BB%9F%E8%AE%A1%E5%AD%A6 "统计学")与[计量经济学]( https://zh.wikipedia.org/wiki/%E8%AE%A1%E9%87%8F%E7%BB%8F%E6%B5%8E%E5%AD%A6 "计量经济学")中的一类数据集，通过观察许多主体（如个人、公司、国家、地区等）在同一时间点或同一时间段截面上反映一个总体的一批（或全部）个体的同一特征变量的观测值。例如，经济普查数据、人口普查数据、家庭收入调查数据。[横断面数据分析](https://zh.wikipedia.org/w/index.php?title=%E6%A8%AA%E6%96%AD%E9%9D%A2%E7%A0%94%E7%A9%B6&action=edit&redlink=1)通常比较被选择的主体的差异。
与之相对的是时间序列数据，小规模数据或者[聚集数据](https://zh.wikipedia.org/w/index.php?title=%E8%81%9A%E9%9B%86%E6%95%B0%E6%8D%AE&action=edit&redlink=1)在一系列时间点上被观测。[面板数据](https://zh.wikipedia.org/wiki/%E9%9D%A2%E6%9D%BF%E6%95%B0%E6%8D%AE "面板数据")（或称纵向数据）是截面数据与时间序列数据的结合。面板数据不同于**混合横截面数据**（pooled cross-sectional data）。面板数据是对 同一主体的不同时间点的观测值。混合横截面数据是在不同时点从同一个大总体内部分别抽样，将所得到的数据混合起来的一种数据集。如许多关于个人、家庭和企业的调查，每隔一段时间，常常是每隔一年，重复进行一次，如果每个时期都抽取一个随机样本，那么把所得到的随机样本合并起来就给出一个混合横截面。 


# 重要文章：

[[Large Dimensional Latent Factor Modeling with Missing Observations and Applications to Causal Inference]]

