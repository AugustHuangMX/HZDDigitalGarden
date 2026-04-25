#Draft

The initial idea is to dive more into the football economics. Hope that Google Gemini could provide some insights in pre-research.

**Proposed title (working):** _"Offsetting Effects: AI Displacement and Augmentation Within Occupations — Evidence from Job Postings Data"_

You can refine this later, but having a working title helps anchor the argument.

---

**Section 1: Introduction (~800 words)**

The introduction needs to do four things efficiently. First, open with the policy-relevant puzzle — AI capabilities are expanding rapidly, exposure measures suggest large shares of the workforce are affected, yet aggregate employment data shows remarkably little disruption. Second, note that this apparent reassurance dissolves when you disaggregate: specific subgroups show clear displacement. Third, state your thesis: the aggregate null result is not evidence of no effect, but an artefact of aggregation over offsetting displacement and productivity effects that operate on different segments of the within-occupation skill distribution. Fourth, preview your contribution — you use job postings data to show that entry-level demand in AI-exposed occupations has declined relative to senior-level demand, providing direct evidence of the compositional shift that aggregate statistics obscure.

The introduction should be crisp and assertive. No broad scene-setting about the history of automation — go straight to the tension in the current evidence.

**Section 2: Theoretical Framework (~1,000 words)**

This is where you lay out the Acemoglu-Restrepo task-based model, but with a specific twist: you apply it at the within-occupation level rather than across occupations. The standard framework decomposes technology's effect into displacement, productivity, and reinstatement channels. You'd present this briefly — readers at LSE will know it — and then make the move that gives your essay its analytical edge.

The key argument is that within any occupation, workers at different career stages perform different task bundles. You could formalise this lightly: suppose occupation _o_ consists of a continuum of tasks, and worker _i_ in that occupation performs a subset of tasks weighted by their experience. Junior workers are concentrated in tasks in the interval [0, _k_], which are more routine and codifiable. Senior workers' task bundles span [0, _N_] but with greater weight on [_k_, _N_] — tasks involving judgement, coordination, client management, and strategic decision-making. When AI automates tasks in [0, _k_], the displacement effect falls disproportionately on juniors, while seniors experience primarily a productivity effect (AI handles the routine components of their broader task bundle, freeing them for higher-value work).

From this you derive the prediction that your data will test: within AI-exposed occupations, demand for entry-level workers should decline relative to demand for senior workers. In non-exposed occupations, no such divergence should appear.

You don't need a full formal model — this is a 6,000-word essay, not a theory paper. But the semi-formal setup shows you can think precisely about mechanisms and gives you something concrete to test. I'd suggest presenting it with just enough notation to be rigorous without turning it into a modelling exercise.

**Section 3: Existing Evidence (~1,000 words)**

This section reviews the literature, but it should be structured around the puzzle rather than organised as a conventional "here is what people have found" survey. I'd suggest organising it in two blocks.

The first block presents studies finding limited aggregate effects: Brynjolfsson et al. (2025) finding flat or negative unemployment effects across exposure percentiles in ADP data for most workers; Humlum and Vestergaard (2025) in Danish data; Johnston and Makridis (2025) finding employment gains in AI-exposed industries; the CPS-based studies that Chandar (2025), Gimbel et al. (2025) and others have produced. Collectively, these suggest no aggregate employment collapse.

The second block presents the evidence of concentrated displacement: Brynjolfsson et al.'s own finding of early-career declines in their "canaries" analysis; Hui et al. (2024) on Upwork freelancers; the IMF working paper by Huang (2024) on regional effects concentrated in specific sectors. You'd highlight that Hui et al. find effects even among high-quality freelancers, which challenges the intuition that skill insulates against displacement.

Then you explicitly state the gap: no paper has directly tested whether the aggregation mechanism — offsetting effects within occupations across seniority — explains why these two sets of findings coexist. That's what you do.

**Section 4: Data and Empirical Strategy (~1,000 words)**

Describe the Revelio Labs job postings data: source (LinkedIn-scraped postings), coverage period (2019–2025), key variables (occupation, seniority level, posted wages if available, required skills, posting volume). Be honest about limitations — this data likely underrepresents freelance and informal labour markets, which is actually fine for your purposes because you're studying the _formal_ labour market where aggregate effects look small.

For the empirical strategy, I'd suggest something cleaner than a full DiD given the parallel trends issues you've encountered. A descriptive decomposition could work well: within AI-exposed occupations, plot the share of postings at each seniority level over time, and show that this composition has shifted toward senior roles since 2022. Then compare this to the same decomposition in non-exposed occupations, where you'd expect no such shift.

You could supplement this with a regression framework — something like posting volume by occupation-seniority-quarter cells, with occupation and quarter fixed effects, and an interaction between seniority level and a post-2022 indicator, estimated separately for high-exposure and low-exposure occupations. This isn't a DiD in the traditional sense, but it gives you a structured way to test whether the seniority gradient in posting changes differs by AI exposure. The identification assumption is weaker than a causal DiD claim, and you should be explicit about that — you're documenting a compositional shift consistent with your theoretical prediction, not claiming airtight causal identification.

For the AI exposure classification, you could use the Eloundou et al. (2023) or Felten et al. (2021) measures to sort occupations into high vs. low exposure groups. Since these have now been validated against actual usage data, they're credible.

**Section 5: Results and Analysis (~1,500 words)**

Present the empirical findings in a logical sequence. Start with descriptive evidence: show the time series of posting volumes by seniority level within high-exposure occupations. If the pattern is there, you should see entry-level postings declining or flattening while senior postings hold steady or grow, with the divergence emerging around 2022–2023. Then show the same plots for low-exposure occupations as a comparison — ideally, no such divergence.

Then move to the regression results. Report the seniority-by-post-period interactions. Discuss magnitudes — how large is the relative decline in entry-level postings? Is it economically meaningful?

If the data allows, you could also look at whether the skill requirements in surviving entry-level postings have changed — are firms asking for AI-related skills in junior roles, suggesting the remaining junior positions are being reshaped rather than just eliminated? That would add a nice additional layer connecting to the task reallocation mechanism.

Be transparent about what the results can and cannot show. You're documenting a compositional shift that's consistent with your theoretical framework. You are _not_ proving that AI caused this shift — there could be confounders (post-pandemic hiring patterns, changes in remote work, macro conditions). Acknowledge these explicitly and explain why the pattern is nonetheless informative.

**Section 6: Discussion (~600 words)**

This is where you step back and draw out the broader implications. Two key points:

First, the measurement implication: if AI's effects are concentrated within occupations across seniority levels, then occupation-level analyses will systematically understate displacement. This has consequences for how we monitor AI's labour market impact — we need seniority-disaggregated data, not just occupation-level aggregates.

Second, the pipeline paradox we discussed: if firms hire fewer juniors because AI substitutes for entry-level tasks, they may be eroding the training ground that produces the experienced workers AI complements. This creates a potential long-run human capital problem that doesn't show up in short-run employment statistics. You can frame this as a training externality — each firm rationally reduces junior hiring, but collectively this degrades the supply of future senior talent.

**Section 7: Conclusion (~300 words)**

Restate the argument concisely. The aggregate null is not reassuring — it's masking a structural shift. Summarise your evidence. Identify limitations honestly. Suggest directions for future research (longitudinal data tracking career trajectories, firm-level analysis of hiring composition changes).

---

A few strategic notes on this structure. The theory section comes before the literature review, which is unconventional but deliberate — by setting up the theoretical prediction first, you frame the literature review as evidence for a puzzle you've already defined, rather than as a survey that leads to a question. This makes the essay feel more like an argument and less like a book report.

The empirical section is modest in its causal claims, which is appropriate. A 6,000-word essay with job postings data cannot compete with Brynjolfsson et al.'s ADP payroll records or Hampole et al.'s IV strategy. But it doesn't need to — your contribution is the _framing_ (the aggregation argument) supported by _suggestive evidence_ that the compositional shift exists. That's a legitimate and valuable contribution at the MSc level.

What do you think of this structure? Any sections that feel too heavy or too light? And shall we discuss the empirical strategy in more detail before you start working with the data?
