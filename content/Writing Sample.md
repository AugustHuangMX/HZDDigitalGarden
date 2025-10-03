

## 盛大林读书笔记

群体防策略 [[Weak Priority Ordering]] 

提出 DAO 机制本质上是在 DA 机制上引入了一个 oversize 的框架（一种改进），这种改进最好是群体防策略的

我们先来考虑旧高考的内容：我的初步设想是：在这个匹配市场中有五个学校，然后有 10000 名学生，由于有研究已经证明中国学生更在乎学校，所以我暂时让学生的偏好相同（假设学校一最好，学校五最弱），每个学生拥有不同的考试分数，其中，语文数学英语为满分 150 分，物理、化学、生物、历史、地理、政治各满分为 100 分，在旧高考体系中，考生只有选择两种赛道，一种是理科赛道（选考物理、化学、生物），一种是文科赛道（选考政治、历史和化学）。我们假设一个学校有一定量的入学名额，面向文科/理科设立了独立的名额，为了保证真实性，理科名额要多于文科名额。


---

个人框架

## Model 

Let's set up a basic economics model for the Chinese college admissions problem.

**Model**

We have a set of students, denoted by $S = \{s_1, s_2,..., s_n\}$, and a set of colleges, denoted by $C = \{c_1, c_2,..., c_m\}$. Each student $s_i$ has a type $\theta_i = (\theta_i^1, \theta_i^2,..., \theta_i^k)$, where $\theta_i^j$ represents the student's score in subject $j$. Each college $c_j$ has a capacity $q_j$ and a preference ordering $\succ_j$ over the students.

**Assumptions**

1. **Complete Information**: The types of all students are publicly known.
3. **Responsive Preferences**: For each college $c_j$, the preference ordering $\succ_j$ is responsive to the types of the students, meaning that if $s_i \succ_j s_k$, then $u_i(c_j) > u_k(c_j)$.

**Mechanism**

A mechanism $\mathcal{M} = (M, \phi)$ consists of a message space $M$ and an allocation function $\phi: M \rightarrow C$. Each student $s_i$ submits a message $m_i \in M$, and the mechanism assigns each student to a college based on the submitted messages.

**Desirable Properties**

We would like the mechanism to satisfy the following properties:

1. **Pareto Efficiency**: The mechanism should allocate students to colleges in a way that maximizes total welfare.
2. **Fairness**: The mechanism should be fair in the sense that it does not discriminate against certain students or colleges.
3. **Incentive Compatibility**: The mechanism should be designed such that it is in each student's best interest to truthfully report their type.




Todo

- [ ] Strategy proof 
- [ ] 可以设计一个真的 truth telling 的表格
- [ ] 重新定义 Talent Respect.





