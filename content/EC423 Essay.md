#Research 


**两个 empirical section 的分工需要更明确。** "General DiD" 和 "Mobility" 之间有一个潜在的重叠问题：你的 General DiD（hiring share event study）和 Mobility 的 extensive margin（transition rate DiD）回答的是相关但不同的问题。前者是"谁被雇进来了"（demand side），后者是"谁离开了，去了哪里"（supply side/individual trajectory）。论文里需要把这个区分讲清楚，否则读者会觉得你跑了两个类似的 DiD。

**关于 identification strategy 的篇幅分配，我比较担心。** 你现在有三层 empirical evidence，每一层都有自己的 identification concern：General DiD 有 parallel trends 问题（你已经发现了 pre-trend），Mobility 有 selection 问题（Heckman 已经在处理），两者都依赖 Eloundou et al. 的 AI exposure measure（measurement error concern）。如果 identification strategy 只是一小段，marker 会觉得你跑了很多 regression 但没有认真想清楚 what identifies what。


## 大致的字数分配

Introduction（~500 words）：motivation、contribution、preview of results。

Theoretical Framework（~800 words）：A&T extension，CES model 的三个 predictions。不需要太长——formal enough to generate testable predictions，但不要变成一个 theory paper。

Data and Identification Strategy（~1000 words）：这里是 marker 最看重的地方。需要覆盖 Revelio 数据的描述和 representativeness、AI exposure measure 的构建和 pre-commitment rationale、DiD 的 identifying assumption（parallel trends）以及你怎么处理 pre-trend（trend-adjusted specification as bounds）、Mobility 分析的 identification（Heckman setup + exclusion restriction justification）。把这些放在一个统一的 section 里而不是分散到各个 empirical subsection，这样 marker 一眼就能看到你的 identification thinking 是系统性的。

Empirical Results（~1200 words）：Part A 是 Compositional Shift（hiring share DiD + event study），Part B 是 Career Mobility（extensive margin → intensive margin → Heckman → wage）。这里只报结果和 interpretation，identification 的讨论已经在上一节完成了。

Discussion（~500 words）：跟文献对话（BCC, KT, H&L），selection concern 的两种 interpretation，limitations。

Conclusion（~300 words）。

这样加起来大约 4300 words for text，剩下 ~1700 words 的空间给 equations（按 page equivalent 计算）和你可能需要的 buffer。

**关于 education controls：** 我建议不要在正文里加这个。你还没处理 education 数据，merge 和清洗需要时间，而且加了 controls 之后如果结果不变，它只值一句话（"results are robust to controlling for education"）；如果结果变了，你需要大篇幅讨论为什么——这两种情况的 cost-benefit 都不好。更好的做法是在 discussion 里提一句 "future work could incorporate individual-level characteristics such as education"，把它作为 limitation 而不是 analysis。

你觉得这个框架合理吗？如果 agree 我们就接着跑 extensive margin。




1. Just do the rough DID, honest DID. 
2. Do a regression version.
3. second parametration. some measures cumulatative. some way to 
4. which version DID. Rough paper (honest )
5. got back to the question.
6. having 
7. connect with the people from Guy's 
8. make the question tight.



---

# Todos

- [x] Unemployment Rates for Recent College Graduates vs Overall rates 图添加
	- [x] 同时也可以考虑一下这个图是放在 Appendix 还是 Data
注：由于不显著，直接取消。
- [ ] 


