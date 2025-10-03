# Tort Law 侵权法

Definition of tort: Wrongful acts that cause harm or injury.

## Comparison between [[Contract Law]] and [[Tort Law]] 

-  [[Contract Law]]: Situation where someone harms you by *breaking a promise* they had made
- [[Tort Law]]: Situation where someone harms you *without having made any promises*. 不存在任何违约情况，所以不可能有合同法。

所以在财产法，合同法之外，需要另一种实体私法

[[Coase]] states that with [[Transaction Cost]], we may not able to reach efficiency under property law.


Previous Conclusion :

1. Property law works well for simultaneous trade
2. Contracts allow for non-simultaneous trade ( You can breach the contract, but you have to compensate.)

### Our Goal:

1. Minimize transaction cost. (Let two parties communicate easier)
2. Allocate rights as efficiently as possible

If we say the [[Property Law]] and the [[Contract Law]] are both *voluntary*, then the [[Tort Law]] is more like *involuntary*, since no body wants to deal with each other previously before harm... That is to say, [[Tort Law]] covers those situations with very high [[Transaction Cost]] to agree anything in advance.

After understanding these, we will move to the [[Tort Law]] .

---

## Classic Legal Theory of [[Tort Law]]

- Plaintiff: 原告, or can be understand like victim
- Defendant: 被告 or can be act as injurer.

The plaintiff must provide 3 basic elements:

1. Harm
2. Causation
3. Breach of duty

### Element 1: Harm

![[截屏2023-11-13 20.23.41.png|400]]

Remember one thing: **If no harm, then no tort**.

Perfect Compensation: restore the victim to original level of well-being. But it will separated by the tangible and intangible harms. (Like emotional damage, pain and suffering, you can't measure them directly by money). The courts are more willing to compensate the tangible ones, like medical costs and so on.

### Element 2: Causation

The defendant must to have caused the harm to the plaintiff.

Proximate Cause: 被告的行为不能与伤害之间间隔太远，否则它不是近因 (Proximate cause)


### Element 3: Breach of Duty

| Strict Liability| Negligence|
|---|---|
|Harm|Harm
|Causation|Causation|
| |Breach of duty (fault)|

When someone breaches a duty he owes to the defendant, and this leads to the harm, the injurer is at fault, or negligent

#### Under the Negligence Rule Method...

I am only liable if I failed to take the required standard of care. 如果我尽力了，但意外还是发生，则我没有过错。

那么问题就被转移到了：这个“我是否尽到应尽的义务（standard of care）”究竟由谁来定义？怎么定义？

	通常来说政府会设立 safety regulation 来确定标准，比如高速限速等。但是也有模糊标准（vague standard），比如对鲁莽驾驶的定义（大雾天还开很快），common law（普通法）就是把你当成一个理性人来预判你的行为

#### Strict liability versus negligence

Strict Liability Rule: 原告一定要证明存在伤害和因果关系。如果原告能够证明被告的行为直接导致了对他的伤害，那么被告就需要承担责任，无论他是否是过错方

Negligence Rule: 过失责任原则。原告必须证明除了有存在和因果关系，还需要证明被告存在过失。如果被告（像之前提到过的）已经尽力了，那么他就不应该被惩罚。

**出题爱这么出！需要注意！**

## Precaution

通过预防来降低意外发生的概率，考试就比较喜欢这么出，因为涉及到概率，那么期望（expectation）也会随之降低。

预防不是施害者才可以做，受害者也可以通过各种手段采取预防。

再次强调：本门课很强调效率！所以自然而然就会带来两个问题：什么才是最优的预防程度呢？我们如何设计一个方法来得到这个最优预防程度？

### Simple economic model for thinking about tort law

为了让模型变得更加简单，我们先来介绍一个简单的单边受害模型 （unilateral harm）。因为现实中往往伤害是同时发生，汽车把自行车撞了，汽车也会有损害，但是这里，我们假设汽车啥事没有。

因此，这里只有一个受害者。

一些标识：

- $x$ 是预防的程度
- $w$ 是每一“单位”预防的成本
- $p(x)$ 是发生意外的概率，自然是和 $x$ 有关
- $A$ 是意外发生后的成本（可以理解为对受害者带来的伤害）自然地，expected cost of accidents is $p(x)A$

![[截屏2023-12-09 11.31.40.png|500]]


我们可以很容易得到我们想要的模型公式：为了让成本最小化，也就是预防的成本和意外发生的成本加起来最小：
$$
min_x\{wx+p(x)A\}
$$
求导之后，得到：

$$
w+p'(x)A = 0
$$

$$
w = -p'(x)A
$$

左边是预防的边际成本，右边是预防的边际收益。

发生的意外的概率符合边际递减，所以它是个反函数形的曲线。

上面建立的模型都是所谓的“最理想的总模型”，它可以让成本最小化，也就是 Efficiency。但是在现实生活中，法院采取的规则可能不一样，这些规则会影响受害者和施害者的决策。本门课出现过的规则如下：（考试百分之百考）

1. No liability rule 
2. Strict liability rule  
3. Negligence rule

### No Liability Rule

No Liability Rule 意味着施害者不需要为意外付出任何代价。这也意味着他没有任何去采取预防的动机。那么，之前提到的模型，就全部由受害者承担，也就是说预防成本和意外发生的成本都由他来负责。受害者的预防是高效的（Efficient）

Victim precaution imposes no externality on injurer。也就是说，受害者采取预防措施防止自己遭受伤害，这些措施不会对施害者有直接的影响，也就是说施害者不会因为受害者的预防措施的实施而承担成本或者获得好处。

结果：

- 施害者：$x = 0$
- 受害者：$x = x^{ * }$

在 No Liability 的情况下，施害者的活动水平是 inefficiently high 的，因为他不需要考虑任何后果。

结论：A rule of no liability leads to an inefficiently high level of injurer activity, but the efficient level of victim activity

### Strict Liability Rule

一句话概括：Perfect Compensation: $D = A$

这是另一种极端：施害者承担所有意外造成的成本。所以施害者会将他的行为带来的外部性内在化，他会采取高效的方式进行活动。

反之，受害者不会采取任何预防水平。

结果：

- 施害者：$x = x^{ * }$
- 受害者：$x = 0$

结论：A rule of strict liability leads to the efficiently level of injurer activity, but an inefficiently high level of victim activity

	Strict Liability 和 No Liability 互为镜像

“补偿的悖论”（paradox of compensation）：是指在设定单一责任规则时存在的问题，即一条规则同时设置了多重激励，但不可能完美地平衡所有的激励。这可能导致一些效率上的损失，因为规则可能会鼓励一方的高效率行为，同时导致另一方的低效率行为。然而，侵权法中存在一些方法或“诀窍”来解决这一悖论，以创造更均衡的激励... 接着往下看：

### Negligence Rule

Injurer is liable if he breached the duty of due care

我们假设法院设定了一个 Legal Standard of Care， $x_n$ 施害者需要在什么情况下承担责任呢？

如果他采取的预防水平低于这个 Standard，那么他承担所有的赔偿，也就是 $D=A$

如果他已经达到了，那么他不需要承担任何责任。

所以对于施害者来说，他的 private cost 就变成了：

$wx + p(x)A,if\ x< x^n$

$wx,if\ x\geq x^n$

如果法院能够完美的设立一个 Standard，也就是 $x_n = x^{ * }$ 那么 Efficiency 就可以达到。

注意到，如果说我们能够设立一个完美的 Standard，那么不仅施害者会在 $x_n$ 预防，受害者也会（因为他知道如果意外真的发生，只会由他来承担责任）

以上提到的都是 Simple Negligence Rule，意思是，我们在考虑责任的时候，只关注施害者的行为。

但是，如果存在：

1. **单纯过失（Simple Negligence）**：在这种情况下，责任的判断只考虑行为人（injurer）的行为。如果行为人未能采取适当的照顾标准，他们将对任何造成的伤害负责。

2. **共同过失（Contributory Negligence）**：如果受害者也存在过失，行为人可以使用共同过失作为辩护。在这种规则下，如果受害者也有过失，行为人可能不必承担任何责任。

3. **比较过失（Comparative Negligence）**：在比较过失规则下，如果双方都有过失，责任将按各自的过失程度分摊。这促进了更加公平的损害赔偿，因为受害者的赔偿会根据他们自己的过失程度减少。

4. **严格责任与共同过失抗辩（Strict Liability with a Defense of Contributory Negligence）**：即使行为人没有过失，他们也可能因造成的伤害而负责，除非受害者有过失。如果受害者有过失，行为人可能不需承担责任。

	需要注意的是，这些方法在最后都能带来有效的预防水平

**自行完成 Discrete Example of Bilateral Precaution**

注意一些要点：

1. 有概率之后算 expectation
2. 注意，如果意外真的发生，并不是两个人共同承担 cost，是由受害者承担（前提是施害者有预防）

注意各种情况的区分：究竟谁是 liable 的，根据题目的要求进行区分


---

结论：


1. 如果一方可以通过采取有效的预防措施来避免责任 

- 导致有效预防
- 但活动水平效率低（过度）

2. 另一方是剩余风险承担者——即使他采取了预防措施，他仍然要承担责任

- 导致有效的预防措施
- 同事维持有效的活动水平

那么，谁来做这个剩余风险承担者呢？答案是会带来更高效率影响的人


#### Steven Shavell, Strict Laibility Versus Negligence

|Accidents Between Strangers |Injurer Precaution|Injurer Activity|
|---|---|---|
|Simple Negligence|Efficient|Too High|
|Strict Liability|Efficient|Efficient|


## Next case: accidents between “sellers and strangers”

这个故事背景建立在完全竞争市场中发生的事故，尤其是涉及到销售者和陌生人（特指不是客户的陌生人），比如出租车司机把行人撞了，但是行人不是乘客。

幻灯片讨论了在不同侵权法规则下，事故发生时商业实体与陌生人之间责任和成本的分配。

严格责任（Strict Liabilitlity）：出租车司机必须为任何事故负责，不论是否有过失。在完全竞争市场中，这意味着事故成本会内化到出租车服务的价格中，导致乘客支付的价格反映了事故的成本。这样一来，乘客在选择乘坐出租车时会考虑到事故风险，从而在需求上反映出对事故风险的内部化。理论上，这将导致出租车司机采取有效的预防措施来最小化私人成本，并使乘客需求达到社会最优水平。

过失责任规则（Negligence Rule）：只有在出租车司机未能采取适当的预防措施的情况下，他们才会对事故负责。因此，司机有动机采取有效的预防措施来避免责任。然而，由于司机不承担剩余风险，事故成本没有被完全内化到价格中，乘客面对的价格可能低于社会成本（即价格不包括潜在的事故成本）。这可能导致乘客对出租车的需求过高，因为他们支付的价格没有反映事故风险的全部社会成本。

| |Injurer Precaution|Injurer Activity|
|---|---|---|
|Accidents Between Strangers | | |
|Simple Negligence|Efficient|Too High|
|Strict Liability|Efficient|Efficient|
|Accidents Between Business and Strangers| | |
|Simple Negligence|Efficient|Too High|
|Strict Liability|Efficient|Efficient|

数学例子：

对于司机来说，在没有任何责任的情况下，他的纯边际成本是：$\$ 10$，在没有预防的情况下，发生意外的概率是千分之一，有预防的情况下，发生的概率是五千分之一，预防的价格是 $\$2$ ，预防发生带来的成本是 $\$5000$

如果是 Strict Liability:

$15>13$ 司机会选择预防，由于是完全竞争市场，所以他会把费用设置在 $\$13$，所以市场的需求就是所有那些认为价值比 $13$ 高的顾客。

如果是 Negligence Rule:

由于司机不会承担责任（如果他预防），所以预防的价格变成了 $\$12$ 所以价格变成了 $12$，但是由于社会成本依然是 $13$ (有一块钱的外部价格没有被内化)所以这个活动是 inefficiently high. 因为出租车的使用率是过高的
 
### Accidents between businesses and their own customers: No Liability

	这个情景引入了一个新的概念，即施害者/受害者能否正确的评估风险。

对于顾客来说，存在三种情况：

1. 他们可以精确判断每个餐厅的风险
2. 他们能精确判断平均风险，具体到哪一个不清楚
3. 他们忽略了风险

#### 在 Strict Liability 情况下：

餐馆会在高效的预防等级，这个预防等级带来的成本会被注入进他的商品价格。这种情况下不管顾客能否判断风险，餐馆都会在高效的水平上预防。

Price of Shellfish = Cost of Shellfish + Expected Cost of Food Poisoning

| |Risk Perception?|Seller Precaution|Buyer Activity|
|---|---|---|---|
|Strict Liability|Yes|Efficient|Efficient|
||No|Efficient|Efficient|

#### 在 Negligence 情况下：

商家依然会选择最有效的预防措施，但是他们不会把意外带来的成本注入到商品价格里。

##### 如果顾客能判断风险

不会有任何问题，需求会在效率的水平上

| |Risk Perception?|Seller Precaution|Buyer Activity|
|---|---|---|---|
|Strict Liability|Yes|Efficient|Efficient|
||No|Efficient|Efficient|
|Negligence|Yes|Efficient|Efficient|
| |No|Efficient|Too High|
|No Liability|Yes|Efficient|Efficient|
| |Average|None|Efficient|
||No|None|Too High|


---

最后的问题：我们如何去定义 Standard Care level 呢？

1947 年的法律案例（U.S. v Carroll Towing），针对这种过失法的制定标准做出了贡献。

在此案中，一艘驳船在纽约港脱离了系泊，漂流并与另一艘船相撞，导致后者沉没。驳船当时无人看管，而负责移动驳船的拖船被认为是事故的原因。拖船所有者反过来声称，驳船所有者也有过失，因为没有在船上配备代理人（称为"bargee"，即驳船管理员）来帮助防止此类事件发生。

案件的中心法律问题是，没有在船上配备“驳船管理员”是否构成了过失。法官莱恩德·汉德在此案中制定了一个测试（现称为汉德公式），以确定是否存在过失。该测试将采取预防措施的负担（B）与事件发生的概率（P）以及可能造成的伤害严重性（L）进行权衡。根据汉德公式，如果 B 小于 P 乘以 L，那么不采取预防措施就是过失。

$$
B<L \times P
$$


因此，为了避免责任，如果这种措施成本合理，则必须采取某种预防措施——成本低于收益

在这个案例的语境中，如果配备驳船管理员的成本（B）小于没有驳船管理员时事故发生的概率（P）与此类事故可能造成的损害或损失的严重性（L）的乘积，那么没有驳船管理员在船上将被视为过失。


但如果预防措施是一个连续变量，我们就可以将其视为边际成本/收益，回顾之前提到的那些式子：

- $x$ 是预防的程度
- $w$ 是每一“单位”预防的成本
- $p(x)$ 是发生意外的概率，自然是和 $x$ 有关
- $A$ 是意外发生后的成本（可以理解为对受害者带来的伤害）自然地，expected cost of accidents is $p(x)A$

所以，Hand Rule 表明：如果 $w<-p'(x)A$ 那么你就是有过失的，因为你可以通过更高的预防水平来达到高效。也就从侧面规定了 $x^{ * }$ 


## To sum up the effects of errors and uncertainty

我们又要把错误分成*随机错误*和*系统性错误*

在**Strict Liability**下：
- **随机错误**在设定损害赔偿额时没有影响，因为赔偿额的随机波动不会改变行为人的激励，他们仍然有动机去采取预防措施。
- **系统性错误**在设定损害赔偿额时会使行为人的激励朝同一个方向偏斜。例如，如果系统性地低估了损害赔偿，那么行为人可能不会采取足够的预防措施。
- 如果没有一致地让行为人负责，可能会导致行为人采取的预防措施减少。

在**Negligence**下：
- **小的错误**，无论是随机的还是系统性的，在设定损害赔偿额时没有影响，因为只有在行为人没有采取适当预防措施的情况下，他们才需要负责。
- **系统性错误**在法定照顾标准中会对预防措施产生一对一的影响。这意味着，如果照顾标准设定过高或过低，都会直接影响行为人采取预防措施的程度。
- **随机错误**在法定照顾标准中会导致更多的预防措施，因为行为人在不确定是否会被认定为过失时，可能会倾向于“宁可信其有，不可信其无”的观点。

结论是
- 当法院能够比较准确地评估**损害赔偿额**时，Strict Liability是更好的制度。
- 当法院能够更好地评估**照顾标准**时，Negligence 更好。
- 当照顾标准不明确时，法院应该倾向于从宽处理，以避免过度激励行为人采取不必要的预防措施。

if $e>0$ that means $x > x^ *$ v.v. 

##### 从行政角度来看：

在**Negligence**下：
- 审判通常更长、更昂贵，因为需要证明行为人的过失行为，这涉及到判断行为人是否采取了应有的照顾标准。
- 然而，过失责任制度可能导致的诉讼数量较少，因为并非每个受害者都有案件。只有在行为人确实疏忽的情况下，受害者才能提起诉讼。

在**Strict Liability**下：
- 通常情况下，只需要证明伤害和因果关系，无需证明行为人的过失，这可能使得审判更短、成本更低。
- 但严格责任制度可能导致更多的诉讼，因为行为人即使没有过失也可能被迫负责。



### Under strict liability:

Random errors in setting damages have no effect: $A + \epsilon$ 

Systematic errors in setting damages will skew the injurer's incentives in the same direction: $A + e + \epsilon > 0$  

When under [[Strict Liability]]:

Cost to the injurer is $wx + P(x)(A + e + \epsilon)$ 

Here, $e$ stands for *systematic error* and $\epsilon$ stands for *random error*, $A + e + \epsilon$ are the social cost in an accidents.

So, injurer tries to minimize the cost,

For the F.O.C condition: $w = -P'(x)(A+e+\epsilon)$ v.s. $-P'(x)A$ which is the *marginal social benefit*

$w$ is the *marginal cost of precaution,* $w = -P'(x)(A+e+\epsilon)$ is the *marginal benefit of precaution to the injurer* (notice that it is not for the whole society)

Once you think about expected cost the injurer minimizes 

$$\mathbb E[wx + P(x)(A+e+\epsilon)] = wx + P(x)(A+e)$$

 $w = -P'(x)(A+e)$ v.s. $-P'(x)A$

![[IMG_FA0F8752D858-1 1.jpeg|600]]

