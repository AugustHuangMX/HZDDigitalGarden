#interview

## Possible Quetions:

1. What is [[Analysis of Variance]]
2. What is [[K Means Clustering]]
3. 

---

## 📋 Presentation结构（12分钟版）

### **推荐结构（按时间分配）：**

```
1. Introduction & Research Question (1.5 min)
2. Data & Preprocessing (2 min)
3. Methodology: Measurement Construction (3 min)
4. Validation (4 min)
5. Key Findings (1 min)
6. Limitations & Conclusion (0.5 min)
```

## Presentation Tips

### **语速控制：**
- 正常语速：150词/分钟
- 12分钟 ≈ 1800词
- 上面的outline大约1500词，留3分钟给问答

### **关键技巧：**

1. **准备"暂停点"**
    
    ```
    每讲完一个部分，停顿2秒
    给教授提问的机会
    ```
    
2. **准备转场语**
    
    ```
    "Now let me move to the validation..."
    "Next, I'll show you the key findings..."
    ```
    
3. **提前打开所有材料**
    
    ```
    - report.pdf
    - 关键figures（单独打开）
    - validation_report.txt
    ```
    

---

## ❓ 预判可能的问题

### **Question 1: 为什么选这5个省份？**

**Answer:**

```
"I chose these 5 provinces to maximize variation:
- Guangdong and Zhejiang: developed, private-economy-led
- Liaoning: SOE-dominated, provides contrast
- Sichuan and Xinjiang: western regions, mid-level development

This selection helps validate the measurement's 
discriminatory power."
```

---

### **Question 2: 权重怎么定的？**

**Answer:**

```
"Weights are theoretically motivated:
- Core concepts (2.0): highest, as direct mentions 
  are the strongest signal
- Weighted score (1.5): comprehensive but avoid 
  double-counting with core frequency
- Sentence ratio (1.0): captures prominence
- Co-occurrence (0.5): supplementary signal

Robustness check shows results are not overly 
sensitive to weighting - correlation with equal 
weights is 0.751."
```

---

### **Question 3: 局限性是什么？**

**Answer:**

```
"Three main limitations:

1. Mention vs action gap: Reports may overstate 
   or understate actual support
   
2. Sample size: Only 5 provinces, 75 observations
   limits generalizability
   
3. Keyword-based approach: Cannot fully capture 
   context or irony

Future work could combine this with behavioral 
data like fiscal expenditure or firm growth."
```

---

### **Question 4: Liaoning 2016年为什么突然这么高？**

**Answer:**

```
"Excellent observation! This spike likely reflects 
the 'New Round of Northeast Revitalization' policy 
launched in 2016.

This actually validates the measurement - it's 
sensitive to real policy changes.

The subsequent decline might reflect shift back 
to other priorities or the economic data 
fabrication scandal in 2017."
```

---

### **Question 5: 为什么用dictionary而不是machine learning？**

**Answer:**

```
"Three reasons:

1. Sample size: 75 observations too small for 
   supervised learning
   
2. Interpretability: Dictionary approach is 
   transparent and explainable
   
3. Concept alignment: Keywords directly correspond 
   to our theoretical construct

For this application, dictionary-based approach 
is more appropriate than black-box ML methods."
```

---

## ⏰ 时间管理

### **练习时计时：**

```
Part 1: Introduction (1.5 min) ✓ 
Part 2: Data (2 min) ✓
Part 3: Method (3 min) ✓
Part 4: Validation (4 min) ✓
Part 5: Findings (1 min) ✓
Part 6: Conclusion (0.5 min) ✓
────────────────────────
Total: 12 minutes
留3分钟给提问
```

**建议练习3-5遍**，确保：

- 不超时
- 每部分流畅
- 能灵活应对打断

---

## 技术细节

[[Text Analysis]] 主要分为 3 步，先就是 text cleaning，然后是



# Presentation Script: Text Analysis of Provincial Government Work Reports


**Speaker: Minxing Huang**

**Duration: ~12 minutes**

**Audience: Academic/Research Setting**
  

## Opening (1 minute)

**[No slides needed - Eye contact with audience]**

  

Good morning/afternoon prof Hu. Today, I'm going to present my text analysis project on Chinese provincial government work reports.

The analysis consists of three main steps:

STEP 1: MEASUREMENT CONSTRUCTION
I developed a keyword-based measurement to quantify provincial attention to private economy. This involved building a dictionary of 107 keywords and calculating multiple text indicators.

STEP 2: VALIDATION
I validated this measurement using five methods - including face validity, internal consistency, and known-groups validity - to ensure it's both valid and reliable.

STEP 3: STATISTICAL ANALYSIS  
I applied the validated measurement to analyse provincial differences and temporal trends, trying to figure out some interesting effects.

Now let me walk you through each step in detail..."

---

## Section 1: Research Design & Data (2 minutes)

**[Show: PDF Page 3-4 - Introduction Section]**

Let me start with our research design.

**Task Overview:**

We collected government work reports from **five provinces** over **15 years** (2008-2022), giving us 75 documents in total. The provinces we selected are:

1. **Guangdong** - Economically advanced, strong private sector
2. **Zhejiang** - Most developed private economy in China
3. **Liaoning** - Old industrial base, state-owned enterprise dominated
4. **Sichuan** - Western region, mid-level development
5. **Xinjiang** - Western region, developing economy

**[Show: PDF Page 5 - Table 1: Text Preprocessing Statistics]**

Looking at the raw data, you can see that report lengths vary significantly - from Liaoning's average of 14,411 characters to Guangdong's 22,541 characters. This variation necessitated careful normalization in our analysis.

---

## Section 2: Text Preprocessing (1.5 minutes)

**[Show: PDF Page 5 - Section 2.2: Text Preprocessing]**

Before analysis, we performed extensive text preprocessing:

**Step 1: Text Cleaning**

- Removed HTML tags, URLs, and special symbols
- Eliminated headers, footers, and non-content sections
- Standardized formatting

**Step 2: Chinese Word Segmentation**

This is crucial for Chinese text analysis. In English environment, we have space, which is easier, luckily, we have `jieba` to solve this We used the jieba segmentation tool with **35 custom vocabulary terms** specifically added to improve accuracy for policy-related language. For example, we added terms like "民营经济" (private economy), "营商环境" (business environment), and "市场准入" (market access) as single tokens rather than letting the algorithm split them.

We also removed **89 stop words** - common words like "的" (of), "了" (grammatical particle) that don't carry substantive meaning. "I removed 89 stop words - common Chinese function words like '的', '了', '是' - because they're high-frequency but meaningless. This helps focus on substantive content words that actually indicate policy attention."

## Section 3: Keyword Dictionary Construction (2.5 minutes)

**[Show: PDF Page 6 - Table 2: Keyword Dictionary Structure]**

Now, the heart of our methodology: **the keyword dictionary**.

We constructed a dictionary containing **107 keywords** organized into **six categories**, each with different weights:

**Category 1: Core Concept Words (Weight: 3.0)**

- 15 words directly mentioning private economy
- Examples: "民营经济" (private economy), "民营企业" (private enterprises)
- **Why weight 3.0?** These are the most direct indicators of policy attention


**Category 2: Specific Policy Measures (Weight: 2.0)**

- 35 words representing concrete policy tools
- Examples: "减税降费" (tax reduction), "融资支持" (financing support), "营商环境" (business environment)
- **Why weight 2.0?** These indicate substantive government action, not just rhetoric


**Category 3: Positive Policy Words (Weight: 1.5)**

- 21 words like "支持" (support), "促进" (promote), "优化" (optimize)
- **Important caveat:** These only count when co-occurring with core words in the same sentence

**Categories 4-5: Enterprise-related and Reform-related (Weight: 1.0-1.5)**

- Supporting vocabulary that provides context

**Category 6: Negative/Constraint Words (Weight: -0.5)**

- 10 words like "监管" (supervision), "规范" (regulate)
- Used for robustness checks

**The weighting logic:** Direct mentions matter most, followed by concrete policies, then contextual support. This reflects the difference between just talking about private economy versus actually implementing supportive policies.

---
## Section 4: Measurement Construction (2 minutes)

**[Show: PDF Page 7 - Equation and Section 2.4]**

Our final measurement integrates **four dimensions** into a single score:

**Formula:**

```

Score = 2.0×CoreFreq + 1.5×WeightedScore + 1.0×SentRatio + 0.5×Cooccur

```

Let me explain each component:

**1. CoreFreq (α₁=2.0):**

- Frequency of core concept words per 1,000 words
- Normalizes for document length

**2. WeightedScore (α₂=1.5):**

- Sum of all keyword frequencies multiplied by their weights
- Captures both quantity and quality of mentions

**3. SentRatio (α₃=1.0):**

- Proportion of sentences containing core words
- Measures how pervasive the topic is throughout the document

**4. Cooccur (α₄=0.5):**

- Number of times core words co-occur with positive policy words in the same sentence
- Distinguishes between mere mentions and positive policy framing

The weights (2.0, 1.5, 1.0, 0.5) give progressively more importance to direct mentions and comprehensive coverage.

---

## Section 5: Validation Methods (3 minutes)

**[Show: PDF Pages 7-10 - Section 3: Validation Analysis]**

Now, the critical question: **How do we know our measurement is valid?** We employed five validation methods:

> "Each validation method addresses a different concern 
> about measurement quality. No single method is sufficient - we need multiple approaches to build confidence."
> 
> "This checks whether my 5 indicators are measuring 
> the SAME construct or DIFFERENT things.
> 
> Concern it addresses:
> What if I accidentally combined unrelated indicators?
> For example, what if one indicator actually measures 
> report length rather than policy attention?
> 
> Cronbach's α = 0.868 confirms all indicators 
> consistently measure the same concept - attention 
> to private economy."

### 5.1 Face Validity: Extreme Case Examination

**[Show: PDF Page 8 - Table 3: Extreme Cases]**

We examined the highest and lowest scoring cases:

- **Highest score: Zhejiang 2013 (243.73)**
- Sample sentences: "vigorously optimize private economy development environment," "accelerate removal of institutional barriers"
- This makes perfect sense - Zhejiang is known for its private economy!
- **Lowest score: Liaoning 2009 (90.69)**
- Only brief mentions like "support non-public economy development"
- Consistent with Liaoning's SOE-dominated structure

**Validation result:** ✓ Scores align with reality


### 5.2 Internal Consistency

**[Show: PDF Page 9 - Table 4: Internal Consistency Test]**

Cronbach's α = **0.868** (excellent, above 0.8 threshold)

All four dimensions correlate positively with the final score:

- Weighted score: 0.994*** (very strong)
- Co-occurrence: 0.511***
- Sentence ratio: 0.428***
- Core frequency: 0.394***

**Validation result:** ✓ Our dimensions work together coherently

### 5.3 Known-Groups Validity

**[Show: PDF Page 9-10 - Figure 1 & Table 5: Provincial Rankings]**

Does our measurement capture known economic differences?

**Provincial rankings:**

1. Guangdong (183.06)
2. Zhejiang (179.92)
3. Sichuan (165.86)
4. Xinjiang (156.85)
5. Liaoning (149.63)

**Statistical test:** Guangdong/Zhejiang significantly higher than Liaoning (p=0.001)

**Validation result:** ✓ Rankings match real-world private economy development levels


> "This validates against EXTERNAL reality.
> 
> Concern it addresses:
> What if my measurement is internally consistent 
> but completely wrong? Like measuring the wrong thing 
> consistently?
> 
> We KNOW Guangdong and Zhejiang have more developed 
> private economies than Liaoning. If my measurement 
> doesn't capture this known difference, it's invalid.
> 
> Result: Guangdong/Zhejiang significantly > Liaoning 
> (p=0.001) ✓ Captures known differences."

  
### 5.4 Temporal Validity

**[Show: PDF Page 10]**

Can we capture major policy shifts?

- 2013: Third Plenary Session emphasized "market's decisive role"
- Our measurement: Average score increased from 161.42 to 169.89 (+5.2%)

**Validation result:** ✓ Sensitive to policy changes

> "This checks SENSITIVITY to policy changes.
> 
> Concern it addresses:
> What if my measurement is just random noise that 
> doesn't respond to real policy shifts?
> 
> 2013 Third Plenum was a major policy event. 
> If the measurement is valid, we should see changes 
> around this time.
> 
> Result: Score increased 5.2% after 2013 ✓ 
> Sensitive to policy events."

### 5.5 Robustness Check

**[Show: PDF Page 10]**

Alternative weighting schemes:

- Equal weights: correlation = 0.751 (fairly robust)
- Core words only: correlation = 0.394 (multi-dimensional better)

**Validation result:** ✓ Results not overly sensitive to weight choice

> "This tests whether results depend on ARBITRARY CHOICES.
> 
> Concern it addresses:
> What if the results only work because I carefully 
> tuned the weights? What if slightly different weights 
> give completely different conclusions?
> 
> I tested alternative weighting schemes:
> - Equal weights: correlation = 0.751
> - Core keywords only: correlation = 0.394
> 
> The ranking remains largely stable, confirming 
> results are not overly sensitive to my specific choices."


---

## Section 6: Key Findings (2.5 minutes)

**[Show: PDF Pages 11-14 - Section 4: Statistical Analysis]**

Now let me share our main findings:

### Finding 1: Stable Hierarchies with High Variation

**[Show: PDF Page 11 - Table 6: Descriptive Statistics]**

- **Guangdong:** Most stable (CV=7.06%), consistently high
- **Liaoning:** Most volatile (CV=26.73%), dramatic increase from 90.69 (2009) to 207.67 (2016)
- This 127% increase in Liaoning reflects deliberate policy reorientation

### Finding 2: "Catch-Up Effect"

**[Show: PDF Page 13 - Table 8: Temporal Trends & Figure 2]**
 
Linear trend analysis reveals:

- **Liaoning:** +6.90 points/year*** (+35% total)
- **Xinjiang:** +2.44 points/year** (+17% total)
- **Guangdong:** -2.48 points/year*** (-21% total)
- **Zhejiang:** -3.27 points/year* (-4% total)

**Interpretation:** This is NOT evidence that advanced provinces are reducing support. Rather:

1. **Base effect:** Already at high levels, limited room to grow
2. **Policy normalization:** Private economy support is now routine, needs less emphasis
3. **Agenda evolution:** Focus shifting to quality development, innovation

Meanwhile, Liaoning and Xinjiang show "catch-up" - late adopters increasing policy attention rapidly.

### Finding 3: Policy Milestone Effects

**[Show: PDF Page 15 - Figure 4: Annual Change Rate]**

Notable spikes:

- **2013:** Post-18th Party Congress reforms
- **2015-2016:** Supply-side reforms, "Mass Entrepreneurship and Innovation"
- **2018:** Private Enterprise Symposium

Our measurement successfully captures these real-world policy moments.

### Finding 4: Regional Clustering

**[Show: PDF Page 14 - Figure 3: Heatmap]**

K-means clustering (k=3) produces:

- **High group:** Guangdong, Zhejiang (average 181.5)
- **Medium group:** Sichuan (165.86)
- **Low group:** Xinjiang, Liaoning (average 153.2)

This classification perfectly mirrors China's private economy geography.

---

## Section 7: Limitations & Future Directions (1 minute)

**[No slide needed - Brief verbal remarks]**

Of course, our study has limitations:

1. **Text vs. Reality Gap:** High rhetoric doesn't guarantee effective implementation
2. **Dictionary Coverage:** 107 keywords can't capture all policy nuances
3. **Sample Size:** Only 5 provinces - larger sample would strengthen claims
4. **Causality:** We measure correlation, not whether policies actually affect private sector outcomes


**Future research could:**

- Link our scores to economic outcomes (GDP, employment, firm growth)
- Expand to all 31 provinces
- Incorporate machine learning for automated keyword discovery
- Conduct comparative studies with other document types

---

## Conclusion (30 seconds)

**[Show: PDF Page 16 - Conclusion section]**

To summarize:

✓ We developed a **valid, reliable measurement** of policy attention to private economy
✓ Our multi-dimensional approach (frequency + weighting + context + co-occurrence) **outperforms simple keyword counting**
✓ Results reveal **meaningful patterns**: regional hierarchies, catch-up dynamics, policy responses to national initiatives
✓ The methodology is **replicable and extensible** to other policy domains or countries


Thank you for your attention. I'm happy to take any questions.


---

  

## Q&A Preparation Notes

  

**Potential Questions:**

  

**Q: Why not use machine learning/word embeddings?**

A: Dictionary-based methods are more transparent and interpretable. We know exactly why a document scores high. ML would be black-box. For policy analysis, interpretability matters.

  

**Q: How did you determine weights?**

A: Based on theoretical reasoning about what signals genuine policy attention. Core concepts (direct mentions) > Concrete policies (actions) > General support language. We validated robustness with alternative weights.

  

**Q: Could this be gamed?**

A: Yes, governments could artificially inflate keywords. But co-occurrence requirements and sentence ratio metrics make simple keyword-stuffing less effective. We measure substantive discussion, not just mentions.

  

**Q: What about local government reports?**

A: Excellent extension! Provincial reports set direction, but city/county implementation varies. Analyzing local reports could reveal vertical policy transmission patterns.

  

**Q: Statistical significance of trends?**

A: See Table 8, page 13 - Liaoning and Xinjiang trends significant at p<0.01 and p<0.05 respectively. Declining trends also significant.



## Timing Guide

| Section | Duration | Cumulative |
|---------|----------|------------|
| Opening | 1:00 | 1:00 |
| Research Design | 2:00 | 3:00 |
| Preprocessing | 1:30 | 4:30 |
| Dictionary | 2:30 | 7:00 |
| Measurement | 2:00 | 9:00 |
| Validation | 3:00 | 12:00 |
| Findings | 2:30 | 14:30 |
| Limitations | 1:00 | 15:30 |
| Conclusion | 0:30 | 16:00 |

**Target: 12-14 minutes with natural pacing**

  

---


## Presentation Tips

  

1. **Pace yourself:** 130-150 words per minute (this script is ~1,900 words = 12-14 min)

2. **Pause after key points:** Especially after showing complex tables/figures

3. **Use pointer/cursor:** Help audience locate specific data in tables

4. **Maintain eye contact:** Don't just read slides

5. **Emphasize validation:** This is what makes our method credible

6. **Tell the story:** It's not just numbers - it's about China's economic transformation

  

---

  

## PDF Page Reference Guide

  

| Content | PDF Pages |

|---------|-----------|

| Title & Abstract | 1 |

| Table of Contents | 2 |

| Introduction & Province Selection | 3-4 |

| Text Preprocessing Table | 5 |

| Dictionary Structure Table | 6 |

| Measurement Formula | 7 |

| Extreme Cases Table | 8 |

| Internal Consistency & Known Groups | 9 |

| Temporal Validity & Robustness | 10 |

| Descriptive Statistics Table | 11 |

| ANOVA & Pairwise Comparisons | 12 |

| Temporal Trends Table & Time Series | 13 |

| Heatmap & Clustering | 14 |

| Advanced Visualizations | 15 |

| Conclusion | 16 |