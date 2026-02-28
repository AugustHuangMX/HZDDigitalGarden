#杂谈 

## Self Introduction (General One)

Good morning, Professor Dorn. It's so exciting to have the chance to interview with you today. To be honest, I didn't expect it could come so fast. My name is Minxing Huang, and I'm currently a master's student studying Econometrics and Mathematical Economics at LSE. Before coming to LSE, I completed my bachelor's degree at the University of Macau. So let me tell you a bit about my research journey, what drives my interest in your work, and what I hope to contribute as a predoc researcher. I know you might have read my CV, so I hope this interview could let you know more about me beyond what's written there.

**[Early Research Experience - 60 seconds]**

At Macau, I started thinking seriously about academic research in my second year. My first real research experience was joining Professor Hongchuan Shen's group, where we studied electric vehicle policy impacts across Chinese provinces. That's where I learned the fundamentals—cleaning messy administrative data with Python, creating geographic visualizations, running basic regressions in R. It was hands-on work, and I loved that immediate connection between data and policy questions.

Then during a summer program at Peking University, I did an independent project on wage discrimination in the English Premier League—the world's most competitive football league. I found that English players earn about 33% less than foreign players with similar performance metrics, even after controlling for age, position, and club characteristics. That project taught me how to think carefully about identifying discrimination mechanisms, and it was my first experience using decomposition methods like Oaxaca-Blinder.

>  Plan B
>  At Macau, I started thinking seriously about academic research in my second year. I did two early projects that taught me the fundamentals: working with Professor Hongchuan Shen on electric vehicle policy impacts across Chinese provinces—that's where I learned to clean administrative data with Python, create spatial visualizations, and run panel regressions—and an independent project on wage discrimination in the English Premier League, where I found English players earn 33% less than foreign players with similar performance. That project introduced me to decomposition methods and taught me to think carefully about identifying discrimination mechanisms.

**[Discovering Mechanism Design - 75 seconds]**

But the real turning point came in my third year when Professor Inácio Bó invited me to join his Micro Theory Reading Group. I was the only undergraduate among PhD students and faculty. Every week, we'd dissect cutting-edge papers on matching theory, contract theory, and mechanism design.

It was intimidating at first, but it transformed how I approach research. I learned that you can use rigorous theory combined with empirical evidence to understand how institutions shape behavior, and how seemingly small design changes can have huge unintended consequences. That experience also taught me how to engage in academic discourse—how to present ideas, defend arguments, and take criticism constructively. I genuinely learned to love those intense intellectual discussions.

**[The Gaokao Project - 90 seconds]**

That led directly to my honors thesis on China's college admissions reform.

China has this massive entrance exam—the Gaokao—that determines college placement for over 10 million students annually. In 2014, the government launched the "New Gaokao" reform to give students more subject choice flexibility. The policy explicitly aimed to "show greater respect for students' talents."

But I wondered: does institutional flexibility actually improve matching? I designed a laboratory experiment with 40 participants across three market structures to directly compare student behavior under the Old versus New mechanisms.

The finding was striking: students under the New Gaokao were **21 to 29 percentage points less likely** to select subjects aligned with their actual strengths. The reform designed to help students paradoxically made things worse—due to increased strategic complexity, cognitive overload, and a rigid Physics-versus-History classification that didn't match students' diverse ability profiles.

This taught me that well-intentioned policy reforms can have serious unintended consequences when we don't carefully consider how real people respond to institutional incentives.

**[Connection to Your Work - 60 seconds]**

These experiences kind of shaped my interest in the labour economics topics, and that's also the main reason why except the three core lectures --- Advanced Micro, Macro and Metrics, I chose Labour Economics as my elective course, and for the essay, since nowadays AI is changing everyone's life. Despite all of my friends in high schools who are doing computer science, as an economic student, I am super curious about how this kind of new technology affect the labour market. And when I was learning from your research, I found that you are considering doing research about it.



**[What I'm Looking For - 45 seconds]**

So why a predoc position, and why with you specifically?

LSE has given me strong theoretical training—I scored 77 out of 100 in Advanced Microeconomics, placing me in the top quartile—but the one-year program naturally limits sustained research engagement. I've designed my own experiment and conducted independent projects, but I need to learn how to work with large-scale administrative datasets, how to construct quasi-experimental research designs when randomization isn't possible, and how to track long-run economic outcomes across regions and decades.

I want to understand how you build these datasets, how you think through identification challenges, and how you turn observational data into credible causal evidence. And crucially, I want to work on research that informs actual policy debates—your work doesn't just report coefficients; it shapes how we think about trade adjustment, automation's impacts, and regional inequality.

**[What I Bring - 30 seconds]**

In terms of what I can offer: I'm proficient in Stata, Python, and R—I passed your Stata coding test, which I know is selective. I have experience designing experiments, managing data collection, cleaning messy administrative data, and working independently. I've demonstrated I can take an idea from theory to empirical design to finished analysis. And honestly, I'm genuinely excited about your research agenda— especially the AI and globalization, and the unintended consequences of economic policies. These are the questions I wake up thinking about.

**[Closing - 15 seconds]**

So I'm very eager to hear more about what you're currently working on and what kinds of projects a predoc might contribute to. And of course, I'm happy to go deeper into any of my research if that would be helpful.

---

## 一、不同场景的解释策略

### 1.1 电梯演讲版本 (30 秒)

**场景**：面试官问 "Can you briefly explain your empirical strategy?"

**你的回答**：

> "I use **Probit regression** because my outcome variable—whether students choose subjects matching their talents—is binary.
> 
> The key advantage over linear regression is that Probit **constrains predicted probabilities between 0 and 1** and allows for **nonlinear effects**.
> 
> My main finding is that the New Gaokao mechanism **reduces the probability** of talent-respecting choices by about **21 percentage points**—that's the marginal effect, which translates the Probit coefficient into an interpretable probability change."

**关键要素**：

- ✅ 说明为什么用（因变量是 binary）
- ✅ 与 OLS 对比（暗示你知道替代方法）
- ✅ 直接给出主要发现
- ✅ 解释 marginal effect（展示你理解 coefficient ≠ 边际效应）

---

### 1.2 标准版本 (2-3 分钟)

**场景**：面试官说 "Walk me through your empirical approach."

**你的回答结构**：

#### **Step 1: 研究问题与数据特征 (20 秒)**

> "My research question is whether the New Gaokao reform increases students' likelihood of choosing subjects aligned with their comparative advantages.
> 
> The outcome variable is **binary**: for each decision in my experiment, I observe whether the student chose a talent-respecting subject combination or not—coded as 1 or 0."

#### **Step 2: 为什么不能用 OLS (30 秒)**

> "A naive approach would be linear regression, but that has three problems:
> 
> **First**, predicted probabilities can exceed 1 or fall below 0, which is nonsensical.
> 
> **Second**, OLS assumes constant marginal effects—meaning going from Old to New Gaokao has the same effect whether the baseline probability is 10% or 90%. That's unrealistic.
> 
> **Third**, there's inherent heteroskedasticity when modeling binary outcomes, which affects inference."

**注意**：这里你展示了对 OLS 局限性的深刻理解，这是面试官想看到的。

#### **Step 3: Probit 模型的优势 (40 秒)**

> "Probit addresses these issues by modeling the probability using a **cumulative normal distribution function**. Specifically:
> 
> $$P(IsTalent = 1) = \Phi(\beta_0 + \beta_1 \cdot IsNew)$$
> 
> where Φ is the standard normal CDF.
> 
> This ensures:
> 
> - Probabilities are **bounded** between 0 and 1
> - Marginal effects are **nonlinear**—they're largest around 50% probability and taper off near the extremes
> - It's based on an **underlying latent variable** interpretation: students have a latent propensity to make optimal choices, and we observe 1 when that propensity crosses a threshold."

#### **Step 4: 解读结果 (40 秒)**

> "The Probit coefficient on IsNew is **-0.73** with a p-value of 0.006, which is statistically significant.
> 
> But the coefficient itself doesn't directly tell us the probability change—that's because of the nonlinearity. So I compute the **average marginal effect**, which is **-0.21**.
> 
> This means: switching from Old to New Gaokao **reduces** the probability that a student makes a talent-respecting choice by **21.2 percentage points**, evaluated at the mean of all covariates.
> 
> This finding is quite robust: in my heterogeneity analysis with interaction terms, the effect ranges from 21 to 29 percentage points across different market structures."

#### **Step 5: 简短总结 (10 秒)**

> "So in short: Probit is the appropriate tool for binary outcomes, and it reveals a substantial, statistically significant, and economically meaningful negative effect of the reform."

---


## What Can You Gain from This Predoc Position?

First, after lots of very rigorous academic training from LSE, I think LSE has provided me with a very solid fundamental background, but the 1 year program has it's own disadvantage. One of it is that a bit lack of the research training. I really want to go into the academic field, so before going straight to PhD, I want to get enough related training.
Second, I love economics. Especially using experiments to answer the real-world economic problems. I want to learn how to design field experiments, how to track participants for a long time, and how to deal with the huge logistical challenges. I want to learn how to bridge the gap between mechanism design theory and empirical causal inference. I want to work on research that actually informs policy.

Third, although I consider myself get very solid academic training in LSE, I find that the textbook knowledge remains a gap between theory and practice. I want to learn how to apply the knowledge I have learned to do real research. Despite this, there's also a course called the social skills. The predoc opportunity gives me the chance to work closely to the faculty members, which helps me to learn how to conduct research in a professional way. I want to learn how to design a research project from scratch, how to manage data collection, how to work independently, and how to present my research findings effectively.

I like working with different senior researchers.





### Question in the paper 

For me, economists always trying to answer one question: how to maximize the utility.


## AI Research

**Brief Research Introduction**

Thank you for your interest in my research. I'm investigating the causal impact of generative AI image tools—specifically DALL-E 2, Midjourney, and Stable Diffusion—on creative freelance labor markets using Upwork platform data.

**Research Motivation:** While recent studies have documented AI's labor market effects, existing work tends to aggregate different AI technologies together. My study specifically isolates the impact of image generation AI, which launched between mid-2022 and early 2023, on creative occupations like graphic design, illustration, and photo editing.

**Methodology:** I'm employing a Difference-in-Differences framework comparing AI-affected creative occupations (treatment group) against occupations unaffected by image AI, such as data entry and translation (control group). The treatment period begins in January 2023. This approach allows me to establish causal identification by controlling for common time trends and occupation-specific factors.

**Data Collection Progress:** I've built a Python-based web scraper to collect job posting data from Upwork's API, spanning 2021 to 2025. So far, I've gathered over 5,000 job postings across 10 occupations—5 treatment and 5 control. The data includes posting timestamps, budget ranges, required skills, and client characteristics. I'm currently in the data cleaning and panel construction phase using Stata.

**Expected Contributions:** My research will provide the first causal estimates specifically for image AI's labor market impact, with real-time evidence on worker displacement and wage compression. This has direct policy relevance as policymakers grapple with AI's labor market disruptions.

I'm currently working on parallel trends verification and plan to conduct several robustness checks, including alternative control group specifications and placebo tests. I'd be happy to discuss any methodological concerns or receive feedback on the research design.

After I failed to implement, I began to trying to deal with a job posting 7 million 

## NEW Gaokao

So let me tell you about this really interesting experimental economics project I worked on about China's college entrance exam reform.

**The Basic Question**

You know how China recently reformed its Gaokao system, right? The old system was super rigid - you either picked science track or liberal arts track, that's it. The new system, called "3+1+2", supposedly gives students way more flexibility - you still take Chinese, Math, and English, but then you choose Physics or History, plus two other subjects from Chemistry, Biology, Politics, and Geography. The government said this would help students "respect their talents" more. But here's the thing - does more choice actually lead to better matching between students' abilities and their subject selections? That's what I wanted to test.

**The Experimental Design**

Instead of just building theoretical models, I actually ran a lab experiment with 40 real participants. This is classic experimental economics methodology - you create a controlled environment where you can observe actual behavior and test your theory.

Here's how it worked: I divided participants into 8 groups of 5 players each. Each group competed for spots at a fictional college that had 4 seats - 2 for "Physics track" and 2 for "History track." The key innovation was that I gave each player a complete ability profile across all subjects, and importantly, _everyone could see everyone else's abilities_. This is actually pretty realistic because in real life, students have a pretty good sense of how they compare to their peers.

I designed three different "markets" - think of them as different competitive environments:

1. **MAJORITY market**: Where most students (like 4 out of 5) are naturally stronger in the same track
2. **BALANCE market**: Where abilities are more evenly distributed
3. **MIXED market**: Where students have mixed strengths across traditionally "science" vs "arts" subjects

Each group played through all three markets, but crucially, four groups experienced the "Old Gaokao" mechanism and four experienced the "New Gaokao" mechanism. This between-subjects design lets me identify the treatment effect.

**The Incentive Mechanism**

This part was really important for experimental validity. I needed participants to actually care about their choices, so I designed a point system:

- 5 points if you get admitted
- Extra 3 points if you got admitted _and_ chose subjects matching your true strengths
- 0 points if not admitted
- But 1 consolation point if you at least tried to respect your talents even though you didn't get in

This incentive structure captures the real-world trade-off students face: Do you go with your strengths and risk not getting in? Or do you strategically pick subjects to maximize admission chances?

**What I Found - The Paradox**

So here's the surprising result: the New Gaokao actually made things _worse_ for talent matching. Students under the New Gaokao mechanism were 21-29 percentage points _less likely_ to choose subjects aligned with their comparative advantages compared to the Old Gaokao. This is statistically significant and holds up across different market structures.

I ran Probit regressions controlling for market type, and the results were pretty robust. Even when I included interaction terms between the New Gaokao treatment and market structure, the main effect stayed negative and significant.

**Why This Happens - Behavioral Insights**

From an experimental economics perspective, I think three mechanisms are at play:

1. **Cognitive overload**: The New Gaokao offers 12 possible combinations versus just 2 in the old system. In the experiment, I literally watched people take way longer to make decisions under the New Gaokao treatment.
    
2. **Strategic complexity**: With more options, there's more room for strategic manipulation. Students started thinking "Well, if everyone good at Physics picks Physics, maybe I should pick History even though I'm better at Physics."
    
3. **Coordination failure**: The rigid track classification (you're still fundamentally "Physics track" or "History track" in terms of university admissions) creates a weird situation where flexibility doesn't actually help much.
    

**Why Experiments Matter Here**

You might ask, why not just use real data from Chinese provinces implementing the reform? Well, there are huge confounds - different provinces, different times, different student populations.

The beauty of the lab experiment is I can hold everything constant except the mechanism itself. Same participants, same ability distributions, same competitive environment - just different rules. That's the power of experimental control. It lets me make causal statements about the mechanism's effect that would be impossible with observational data alone.

Plus, I can observe _actual_ behavior under incentivized conditions, not just hypothetical choices. That's crucial for understanding how real people respond to these institutional designs.

**The Bigger Picture**

This research contributes to experimental mechanism design - using experiments to test how different matching mechanisms perform in practice. It's one thing to prove a mechanism is "strategy-proof" in theory, but another to see how real humans with bounded rationality actually behave under it.

The policy implication is pretty clear: expanding choice alone isn't enough. You need to think carefully about how people will actually respond to the incentive structure you create.

Does this make sense? Happy to dive deeper into any aspect of the experimental design or results!

## Why Dorn 

### AI Research

I watched a youtube video, your talk about "Will I lose my job because of AI". You mentioned that AI won't lead to large scale of [[Unemployment]]. I am not sure if it is right, but I am super eager to find out whether it is correct.

### Globalization

SECOND, YOUR CHINA SHOCK RESEARCH SPEAKS TO QUESTIONS I'VE BEEN THINKING ABOUT MY ENTIRE LIFE. And frankly, I think my China background could add value. I can read Chinese administrative data, understand institutional nuances, and potentially help bridge your U.S.-focused analyses with comparative work on Chinese labor markets. Given how central U.S.-China economic relations remain, this perspective might be useful.


## RA in [[SMU RA]]

I'm currently working as a research assistant on a project investigating 
how language proficiency affects individuals' bargaining power with local 
officials in rural China. 

The project uses a Regression Kink Design, exploiting China's Mandarin 
promotion campaign in the 1980s-90s as a quasi-natural experiment. We 
examine whether improved Mandarin proficiency—especially in regions where 
local dialects differ significantly from Mandarin—enables rural residents 
to negotiate better terms for government subsidies and transfers.

My primary responsibilities include:
- Verifying and refining the data cleaning pipeline for the National Fixed 
  Point Survey (1986-2013)
- Reproducing and validating regression results using the RKD identification 
  strategy
- Conducting validity tests including density checks and covariate balance 
  tests
- Creating publication-quality visualizations for first-stage and reduced-form 
  estimates
- Preparing reproducible Stata code and LaTeX-formatted tables for manuscript 
  preparation

The project is in early stages, and I'm working closely with the team to 
ensure the empirical foundation is solid before we move to drafting.

## China Research

完美！我现在给你一个**60分钟速成包**，让你能在面试中自信地讨论这篇文章。

**一句话总结：**

> 1990-2007年间，中国进口激增导致美国本地劳动力市场（commuting zones）的制造业就业下降、工资降低、失业增加，以及政府转移支付（特别是残疾保险SSDI）大幅上升。

**关键数字（必须记住）：**

- 中国占美国进口份额：1991年0.6% → 2007年4.6%
- 制造业就业/人口比：12.6% → 8.4%（下降了1/3）
- **核心发现**：CZ的进口暴露每增加$1,000/worker → 制造业就业率下降**0.6个百分点**
- 估计：中国进口竞争解释了**21-26%**的美国制造业就业下降

---

### **Part 2: 方法论速成（10分钟）**

#### **1. 核心idea：Commuting Zones (CZs)**

- 把美国分成722个通勤区（commuting zones）
- 不同CZ有不同的产业结构 → 对中国进口的暴露程度不同
- **例子**：San Jose（硅谷）有很多电子制造业 → 高暴露；华盛顿DC没什么制造业 → 低暴露

#### **2. Import exposure变量（核心测量）**

$$\Delta IPW_{uit} = \sum_j \frac{L_{ijt}}{L_{ujt}} \frac{\Delta M^{uc}_{jt}}{L_{it}}$$

**白话翻译**：

- 看每个CZ在不同行业的就业占比
- 乘以这些行业从中国进口的增长
- 再除以CZ的总劳动力
- **结果**：每个CZ面临的"中国进口冲击强度"

#### **3. 识别策略（IV strategy）- 最重要！**

**问题**：美国从中国进口↑ 可能是因为：

- ✅ 中国生产率提高（供给冲击）- 我们想要的
- ❌ 美国需求增加（需求冲击）- 会导致bias

**解决方案**：用其他高收入国家（澳大利亚、丹麦、芬兰、德国、日本等）从中国的进口增长作为**工具变量**

**逻辑**：

> 如果美国、欧洲、日本都同时从中国进口增加，那更可能是因为中国自身的productivity growth和WTO accession，而不是美国特有的需求冲击。

**这是你必须能说清楚的一点！**

---

### **Part 3: 核心结果（10分钟）**

#### **Table 5的关键发现（必看！）**

进口暴露每增加$1,000/worker：

|结果变量|效应|解释|
|---|---|---|
|制造业就业/人口|**-0.6 pp**|大幅下降|
|非制造业就业/人口|-0.18 pp|也下降！|
|失业率|**+0.22 pp**|上升|
|退出劳动力|**+0.55 pp**|大幅上升|
|SSDI领取率|**+0.08 pp**|残疾保险领取增加|

**关键insight**：

1. 人们**不搬走**（Table 4 - population不变）
2. 制造业工作消失后，**没有被非制造业吸收**
3. 很多人**退出劳动力**或**领取残疾保险**
4. 工资也下降（Table 6）

#### **Table 8：政府转移支付**

进口暴露每增加$1,000/worker → 政府转移支付增加**$58/人/年**

- SSDI（残疾保险）：+$8
- 医疗补助：+$18
- TAA（贸易调整援助）：只+$0.23！

**重要发现**：TAA是专门针对贸易失业的项目，但钱很少。实际上是SSDI在"隐性"地为贸易冲击买单。

---

### **Part 4: 如何连接到你的研究（15分钟）- 最关键！**

**准备这段话（背下来）：**

```
When I read your China Shock paper, what resonated most was how you 
identified unintended consequences of economic shocks through careful 
spatial analysis. 

My Gaokao research follows a similar logic at the micro level. Just as 
your work shows that increased import competition had the paradoxical 
effect of reducing employment without triggering mobility responses, my 
experiment found that increased subject choice flexibility paradoxically 
reduced students' ability to signal their true strengths. 

Both findings highlight that expanding options—whether trade openness or 
institutional flexibility—doesn't automatically improve outcomes. The key 
is understanding behavioral responses and adjustment frictions.

Your methodology using commuting zones and shift-share IV inspired me to 
think about quasi-experimental research design. For my current AI project 
at LSE, I'm using difference-in-differences to study how AI image tools 
affect gig economy workers—essentially a technology shock analysis similar 
in spirit to your automation work, but in digital labor markets where 
adjustment happens through platform exit and skill upgrading rather than 
geographic mobility.

What I'd love to learn from working with you is how to construct these 
large-scale spatial analyses using administrative data, and how to think 
through identification when randomization isn't possible.
```

---

### **Part 5: 可能的Follow-up问题（10分钟准备）**

#### **Q1: "What's the shift-share IV exactly?"**

**回答**：

```
The shift-share IV exploits the fact that different commuting zones have 
different initial industrial compositions—the 'share' component. You then 
apply a common shock—import growth from China—to each industry, which is 
the 'shift' component. 

By using China's export growth to other high-income countries as the 
instrument, you're isolating the supply-driven component of Chinese 
imports that's common across destinations, which helps address endogeneity 
concerns about US-specific demand shocks.
```

> 关于 Shift-share IV (from `Gemini`)

传统的 IV（工具变量）并非“做不到”，而是**很难找到**一个既能在**每个地区（Local level）**都不同，又完全**外生（Exogenous）**的变量。

Shift-share IV 的核心优势在于：它不需要你在每个城市都去找一个独特的“意外事件”，而是通过组合**宏观数据**和**历史数据**，“批量制造”出每个城市的工具变量。

以下用经典的**“移民对工资的影响”**（Immigration Puzzle）作为对比例子：

场景：你想研究“移民流入”是否会导致“当地人工资下降”

我们面临的内生性问题是：**移民往往会去经济好、工资本来就在涨的城市（比如伦敦、纽约）。** 这会导致回归结果出现偏差（看起来移民似乎提高了工资）。我们需要一个 IV 来解决这个问题。

---

 1. 传统的 IV 方法（寻找“单一”自然实验）

**做法**：你需要寻找一个特定的、偶然的事件，这个事件**只影响**某些特定城市的移民流入，但**不直接影响**当地经济。

- **例子**：著名的“马列尔偷渡事件”（Mariel Boatlift）。1980年，卡斯特罗突然允许古巴人离境，大量古巴难民涌入**迈阿密**。
    
- **局限性**：
    
    - **太稀缺**：这种完美的“天上掉馅饼”式的自然实验非常少见。你只能研究迈阿密这一个城市，无法推广到全美国或全英国。
        
    - **无法通过数据构建**：你没法给每个城市都通过“天气”、“距离”等传统变量找到一个强有力的、随时间变化的工具变量。
        

 2. Shift-Share IV 方法（“批量制造”工具变量）

**做法**：既然找不到每个城市特有的外部冲击，我们就利用**“由于历史惯性，新移民倾向于去老乡多的地方”**这一规律。

- **构造逻辑**：
    
    1. **Shift (大趋势)**：比如，今年全美国新来了100万墨西哥移民（这是由墨西哥经济决定的，与美国某城市的工资无关）。
        
    2. **Share (老底子)**：查阅10年前的数据，发现美国 **A城** 住了全美 50% 的墨西哥老移民，**B城** 只有 1%。
        
    3. **预测 (IV)**：根据“老乡带老乡”的逻辑，我们**预测**今年会有 50 万墨西哥人去 A 城，1 万人去 B 城。
        
- **对比优势**：
    
    - **全面性**：你不需要等迈阿密发生偷渡事件，也不需要等德州发生飓风。只要有全国层面的移民波动（Shift）和各地的历史分布（Share），你就可以为**全国所有城市**都构造出一个工具变量。
        
    - **分离内生性**：这个预测值（IV）只取决于“全国总人数”和“历史分布”，完全避开了“A城现在工资高所以吸引人”这个内生因素。
        

总结

传统的 IV 就像**“守株待兔”**，必须等待某个地区发生特殊的自然实验；而 Shift-share IV 就像**“人工降雨”**，利用宏观的大趋势（Shift）泼洒下来，结合各地的地形（Share），为每个地区都生成了可用的实验数据。




#### **Q2: "Why don't workers move?"**

**回答**：

```
That's one of the striking findings. Table 4 shows no significant 
population adjustments even with substantial trade exposure. This could 
reflect high mobility costs—especially for non-college workers who are 
overrepresented in manufacturing—or the fact that housing prices and 
transfer benefits partially absorb the shock, reducing incentives to 
relocate. 

This slow adjustment is consistent with Blanchard-Katz and also with the 
sectoral mobility costs literature like Artuç, Chaudhuri, and McLaren.
```

#### **Q3: "What's the economic magnitude?"**

**回答**：

```
Your estimates suggest that the supply-driven component of Chinese import 
competition explains about 21-26% of the aggregate decline in US 
manufacturing employment between 1990 and 2007, which translates to 
roughly 1.5 million manufacturing jobs. 

The remaining decline is attributed to other factors—automation, domestic 
demand shifts, etc. So trade is important but not the whole story.
```

#### **Q4: "What about welfare analysis?"**

**回答**：

```
Section VII is really interesting—you calculate the deadweight losses from 
two channels: the excess burden of taxation needed to fund increased 
transfers (about $33 per capita using Gruber's 40% estimate), and the 
surplus loss from involuntary unemployment using Hicksian elasticities.

But you're careful to note these are medium-run adjustment costs. The 
long-run gains from trade—through lower consumer prices, greater variety, 
firm productivity gains—should still be positive. The paper highlights 
distributional consequences and adjustment frictions, not that trade is 
bad overall.
```

---

### **Part 6: 如果他问你"还读了什么"（诚实版）**

```
To be completely honest, I focused on the China Syndrome paper given time 
constraints preparing for this interview. But I'm very familiar with the 
broader trade and labor literature—I've read Autor-Katz on wage inequality, 
I know the Heckscher-Ohlin vs New Trade Theory debates, and I've engaged 
with the factor content of trade approach in my coursework.

What I find compelling about your work is how it bridges theoretical trade 
models with credible empirical identification using spatial variation. That 
methodological approach is what I want to learn more deeply.

I'm also really interested in your more recent work. I know you've been 
working on automation and robots, and on social capital and upward mobility. 
I'd love to hear more about your current research agenda and where a predoc 
might contribute.
```

**这个回答的好处：**

- ✅ 诚实但不defensive
- ✅ 展示你确实读懂了这篇
- ✅ 表达genuine interest
- ✅ 自然地引导话题到"your current work"

---

####  **面试前30分钟Checklist**

**必须能回答的3个问题：**

1. **"What's the main finding?"** → CZ-level import exposure → manufacturing employment↓, NILF↑, SSDI↑
    
2. **"How do you identify causality?"** → IV using China's exports to other high-income countries
    
3. **"How does this relate to your work?"** → 你准备的"connection"段落


## what is your bigest mistake in your academic career

My biggest mistake in the Gaokao project was not doing proper power 
calculations before determining sample size.

I recruited 40 participants because that felt substantial for a student 
project and matched my logistical constraints. But I didn't systematically 
calculate beforehand what effect sizes I could detect with that sample.

When I ran the analysis, I found statistically significant results—21 to 
29 percentage point reduction in truthful selection under New Gaokao. But 
the standard errors were large, and I couldn't reject equality of effects 
across different market structures even though the point estimates differed 
substantially.

With proper ex-ante power analysis, I might have realized I needed 60-80 
participants to detect heterogeneous effects by market type. Or I might 
have decided to focus only on one market structure but with more groups 
to get tighter estimates.

**WHAT I LEARNED**: Sample size determination isn't just about "more is 
better"—it requires thinking carefully about your research questions, 
your expected effect sizes, and your statistical power. Now I always start 
projects by calculating minimum detectable effects given feasible sample 
sizes.

This also taught me about the trade-off between internal and external 
validity. A small carefully controlled experiment can establish causality 
cleanly, but limited statistical power means you can't answer all the 
questions you want. Sometimes it's better to simplify the design to 
increase power for your core hypothesis.

Going forward, I want to learn how to design studies—whether experimental 
or observational—with appropriate statistical power from the start. And 
in observational work with large administrative data, I want to understand 
how to think about power in more complex settings like difference-in-
differences or IV regressions.

--- 

## Anecdote Experience
My first presentation in Professor Bó's reading group was terrifying.

I'd prepared a 30-slide Beamer presentation summarizing this mechanism 
design paper. I spent days on it—making sure every theorem was properly 
stated, every proof outline was clear, beautiful LaTeX formatting.

When I started presenting, I was so nervous I was speaking way too fast. 
About 10 minutes in, Professor Bó stopped me and said, "Minxing, slow 
down. We have an hour. Take your time."

That simple intervention changed everything. I realized I was treating it 
like a performance I needed to survive rather than an intellectual 
discussion I was facilitating. So I slowed down, started asking the group 
questions, engaged with their reactions.

By the end, we had this great discussion about the paper's assumptions 
and extensions. One PhD student suggested a modification to the model that 
later became part of my Gaokao research design.

**WHAT IT TAUGHT ME**: Academic presentations aren't about showing 
everything you know—they're about facilitating understanding and discussion. 
Now when I present, I build in pauses, ask questions, watch for audience 
reactions. I've learned to see presentations as conversations rather than 
performances.

And it taught me to be comfortable being the least knowledgeable person 
in the room. That's actually when you learn the most.



## AI Research 

That's the course essay I want to write. Basically the idea is inspired by the paper Generative AI as Seniority-Biased Technological Change:  Evidence from U.S. R ́esum ́e and Job Posting Data written by two good phd students in havard. The paper is really good, it uses did and triple did to test the effect, both compared the AI adopted companies nad non adopted. And junior and senior workers. The most change I want to make is to capture the wage effect. So I applied for the freelancer website upwork. But I just got rejected few days ago. Luckily I quickly come up with the plan B. I got a dataset with 7 million job listings including salaries by companies in China, I am doing some descriptive analysis, but the results are not quite good, I am thinking about the next step. I am also considering also using LinkedIn Data to analysis, and the revelio labs data.

So for my labor economics essay, I'm investigating how generative AI—specifically image generation tools like Midjourney and DALL-E—is affecting labor market outcomes for creative workers in the gig economy.

I chose to focus on the visual arts sector for two reasons. First, image generation represents one of the most dramatic and sudden AI capabilities that directly substitutes for human labor. Unlike language models that assist workers, these tools can produce publication-ready graphics in seconds. Second, the gig economy provides a natural laboratory—platforms like Upwork have transparent pricing, and we can observe job postings, wages, and task descriptions in real-time.

**My research design** uses a Difference-in-Differences framework. The treatment group is graphic design freelancers—those most exposed to AI image generation. My control group is data entry workers, who face similar platform dynamics but whose tasks aren't affected by these specific AI tools. The treatment timing is around late 2022 to early 2023, when Midjourney and DALL-E 2 became widely accessible.

The key variables I'm tracking are: job posting volumes, hourly wage offers, project budgets, and required skill levels in job descriptions. I'm collecting this through Python-based web scraping—aiming for about 5,000 job postings spanning 2021 to 2025, which gives me a solid pre-treatment period and enough post-treatment variation.

**For identification**, the parallel trends assumption is crucial. I'm planning to test this by plotting pre-treatment trends for both groups and potentially running a formal event study specification. I'm also considering alternative control groups—maybe video editing or translation work—as robustness checks. And if there are concerns about compositional changes in who posts jobs, I could look at within-firm changes for companies that post in both categories.

**In terms of expected outcomes**, I anticipate seeing three main effects:

First, a negative impact on job volumes for graphic design work—maybe a 15-20% decline post-treatment. The mechanism would be straightforward substitution: clients who previously hired freelancers now just use AI tools themselves.

Second, I expect wage polarization within the treatment group. Lower-skill graphic design jobs—like simple logo design or social media graphics—should see significant wage pressure, potentially declining 20-30%. But higher-skill work—like brand identity systems or illustration that requires creative judgment—might actually see wage increases, because designers who can effectively use AI tools become more productive.

Third, and this is really interesting, I'm expecting to see changes in job descriptions. Post-treatment graphic design postings might increasingly emphasize skills like 'AI tool proficiency' or 'prompt engineering,' while de-emphasizing purely technical skills like 'Photoshop expertise.' This would suggest the nature of creative work is shifting from execution to curation and refinement.

The reason I initially wanted Upwork data is that it's the perfect setting—you have treatment and control in the same platform, clear timing, and observable wages. Since that API access fell through, I'm now working with this Chinese job posting dataset I mentioned. The challenge is that it's not as clean for a DID design—the treatment timing is less obvious, and occupation coding is messier.

That's why I'm also exploring LinkedIn and Revelio Labs data. LinkedIn has global coverage and good job description text, which would help with the skill requirements analysis. Revelio has actual employment outcomes, not just postings, which would let me look at retention and career transitions—like whether graphic designers are exiting the profession entirely.

The broader question I'm trying to answer is: when AI can directly substitute for creative labor, do we see a 'hollowing out' effect similar to what happened with manufacturing automation? Or is this different because the technology is also a tool that augments high-skill workers? Understanding this has real implications for how we think about AI's distributional effects and potentially for policy interventions around worker retraining."



## Questions I want to ask

1. How many groups of professors I would be responsible for? Or I just work for you?
2. Does the department offer seminars opportunities for predocs?
3. Do I have opportunities to join any courses offered by NUS?
4. When can I be able to know the results? 
5. What's the workflow of the traditional


# Second Meet

1. The timeline, when visa 
2. When start the job 
3. When do we 

