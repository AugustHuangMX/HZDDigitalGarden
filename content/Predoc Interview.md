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

That experience led directly to my honors thesis, which became—I guess you could say—an obsession with China's college admissions system.

Here's the context: China has this massive entrance exam called the Gaokao that determines college placement for over 10 million students annually. In 2014, the government launched the "New Gaokao" reform, which gave students much more flexibility in subject selection. The official policy explicitly stated it should "show greater respect for students' talents." It seemed like a clear improvement—more choice, more freedom, right?

But I wondered: does institutional flexibility actually lead to better matching? So I designed a laboratory experiment with 40 participants, where I could control the competitive environment and directly compare how students behave under the Old versus New Gaokao mechanisms. I created three different market structures to simulate varying degrees of competition.

And here's what I found: students under the New Gaokao were **21 to 29 percentage points less likely** to truthfully select subjects aligned with their actual academic strengths, compared to the Old Gaokao. This was statistically significant at the 1% level using probit regression with market-level controls.

The reform designed to help students paradoxically made things _worse_. Why? I think it's a combination of increased strategic complexity, cognitive overload from having too many options, and the rigid way the government still classified students into Physics versus History tracks—which didn't actually match the diversity of students' ability profiles.

**[Connection to Your Work - 60 seconds]**

These experiences shape my love of being 



**[What I'm Looking For - 45 seconds]**

So why a predoc position, and why with you specifically?

LSE has given me strong theoretical training—I scored 77 out of 100 in Advanced Microeconomics, which put me in the top quartile—but the one-year program naturally limits sustained research engagement. I've designed and executed my own experiment, but it was a lab study with 40 people. Your work shows how to run field experiments at scale, how to track participants over years despite enormous logistical challenges, and crucially, how to design interventions that are "culturally wise" while maintaining scientific rigor.

I want to learn those skills before starting a PhD. I want to understand how to bridge mechanism design theory with empirical causal inference. And I want to work on research that actually informs policy—your negotiation paper doesn't just report coefficients; it calculates that the program generated 7.8 to 16.2 dollars of social benefit for every dollar spent. That's the kind of research I want to contribute to.

**[What I Bring - 30 seconds]**

In terms of what I can offer: I'm proficient in Python, Stata, and R. I have experience designing experiments, managing data collection, and working independently. I've already demonstrated I can take an idea from theory to experimental design to data analysis to finished paper. And honestly, I'm just genuinely excited about your research agenda—strategic behavior, discrimination mechanisms, unintended policy consequences. These are the questions I wake up thinking about.

**[Closing - 15 seconds]**

So I'm very eager to hear more about what you're currently working on and what kinds of projects a predoc might contribute to. And of course, I'm happy to go deeper into any of my research if that would be helpful.

---
非常好的问题！面试时的口头解释和写论文很不同。我给你准备几个版本，从最简洁到详细，以及如何应对follow-up问题。

## 一、不同场景的解释策略

### 1.1 电梯演讲版本 (30秒)

**场景**：面试官问 "Can you briefly explain your empirical strategy?"

**你的回答**：

> "I use **Probit regression** because my outcome variable—whether students choose subjects matching their talents—is binary.
> 
> The key advantage over linear regression is that Probit **constrains predicted probabilities between 0 and 1** and allows for **nonlinear effects**.
> 
> My main finding is that the New Gaokao mechanism **reduces the probability** of talent-respecting choices by about **21 percentage points**—that's the marginal effect, which translates the Probit coefficient into an interpretable probability change."

**关键要素**：

- ✅ 说明为什么用（因变量是binary）
- ✅ 与OLS对比（暗示你知道替代方法）
- ✅ 直接给出主要发现
- ✅ 解释marginal effect（展示你理解coefficient ≠ 边际效应）

---

### 1.2 标准版本 (2-3分钟)

**场景**：面试官说 "Walk me through your empirical approach."

**你的回答结构**：

#### **Step 1: 研究问题与数据特征 (20秒)**

> "My research question is whether the New Gaokao reform increases students' likelihood of choosing subjects aligned with their comparative advantages.
> 
> The outcome variable is **binary**: for each decision in my experiment, I observe whether the student chose a talent-respecting subject combination or not—coded as 1 or 0."

#### **Step 2: 为什么不能用OLS (30秒)**

> "A naive approach would be linear regression, but that has three problems:
> 
> **First**, predicted probabilities can exceed 1 or fall below 0, which is nonsensical.
> 
> **Second**, OLS assumes constant marginal effects—meaning going from Old to New Gaokao has the same effect whether the baseline probability is 10% or 90%. That's unrealistic.
> 
> **Third**, there's inherent heteroskedasticity when modeling binary outcomes, which affects inference."

**注意**：这里你展示了对OLS局限性的深刻理解，这是面试官想看到的。

#### **Step 3: Probit模型的优势 (40秒)**

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

#### **Step 4: 解读结果 (40秒)**

> "The Probit coefficient on IsNew is **-0.73** with a p-value of 0.006, which is statistically significant.
> 
> But the coefficient itself doesn't directly tell us the probability change—that's because of the nonlinearity. So I compute the **average marginal effect**, which is **-0.21**.
> 
> This means: switching from Old to New Gaokao **reduces** the probability that a student makes a talent-respecting choice by **21.2 percentage points**, evaluated at the mean of all covariates.
> 
> This finding is quite robust: in my heterogeneity analysis with interaction terms, the effect ranges from 21 to 29 percentage points across different market structures."

#### **Step 5: 简短总结 (10秒)**

> "So in short: Probit is the appropriate tool for binary outcomes, and it reveals a substantial, statistically significant, and economically meaningful negative effect of the reform."

---


## What Can You Gain from This Predoc Position?

First, after lots of very rigorous academic training from LSE, I think LSE has provided me with a very solid fundamental background, but the 1 year program has it's own disadvantage. One of it is that a bit lack of the research training. I really want to go into the academic field, so before going straight to PhD, I want to get enough related training.
Second, I love economics. Especially using experiments to answer the real-world economic problems. I want to learn how to design field experiments, how to track participants for a long time, and how to deal with the huge logistical challenges. I want to learn how to bridge the gap between mechanism design theory and empirical causal inference. I want to work on research that actually informs policy.
Third, although I consider myself get very solid academic training in LSE, I find that the textbook knowledge remains a gap between theory and practice. I want to learn how to apply the knowledge I have learned to do real research. Despite this, there's also a course called the social skills. The predoc opportunity gives me the chance to work closely to the faculty members, which helps me to learn how to conduct research in a professional way. I want to learn how to design a research project from scratch, how to manage data collection, how to work independently, and how to present my research findings effectively.



I like working with 


## Questions I want to ask

1. How many groups of professors I would be responsible for? Or I just work for you?
2. Does the department offer seminars opportunities for predocs?
3. Do I have opportunities to join any courses offered by NUS?
4. When can I be able to know the results? 
5. What's the workflow of the traditional



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

As a Chinese, I am


