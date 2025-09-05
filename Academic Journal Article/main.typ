#set page(margin: 1in)
#set text(font: "Times New Roman", size: 12pt)
#set par(justify: true, leading: 0.65em)
#set heading(numbering: "1.")

// Title and metadata
#align(center)[
  #text(size: 16pt, weight: "bold")[
    The Effect of Exercise on Daily Body Weight Changes During Low-Carbohydrate Intake: An N-of-1 Study
  ]
  #v(0.3cm)
  
  #text(size: 14pt)[
    [Charles Harrison]
  ]
  
  #v(0.2cm)
  
  #text(size: 11pt)[
    Code and data available at: #link("https://github.com/notxcharles/Body-Composition-Analysis/")[https://github.com/notxcharles/Body-Composition-Analysis/]
  ]
]

#v(0.5cm)

// Abstract
#heading(level: 1, numbering: none)[Abstract]

*Background:* Understanding individual responses to exercise interventions on body weight is crucial for personalised health management. This n-of-1 study examined whether exercise influences daily body weight changes when controlling for calorific intake during periods of low carbohydrate consumption.

*Methods:* A single-subject experimental design was employed using daily measurements from an Omron BF508 digital scale, comprehensive dietary logs, and exercise records. Data was collected over 2.5 years with strict inclusion criteria: daily carbohydrate intake \<100g and complete data availability. After outlier removal using the 1.5×IQR rule, stratified sampling by calorific intake (10-calorie bins) yielded matched samples of 41 observations each for exercise and non-exercise days.

*Results:* The Mann-Whitney U test revealed no significant difference in daily weight changes between exercise and non-exercise days (U = 874.5, p = 0.756). Mean difference was 0.17 kg, with a median difference of 0.1 kg. Multiple validation tests confirmed these findings: permutation test (p = 0.743), Kolmogorov-Smirnov test (p = 0.779), and Brunner-Munzel test (p = 0.758). Effect size measures indicated minimal practical significance (Cliff's δ = 0.040).

*Conclusions:* Under controlled calorific and low-carbohydrate conditions, exercise did not significantly affect daily body weight fluctuations in this individual case. These findings highlight the importance of personalised approaches to understanding exercise effects on body composition metrics.

*Keywords:* n-of-1 study, exercise physiology, body weight, low-carbohydrate diet, personalised medicine

#pagebreak()

// Main content
#heading[Introduction]

The relationship between exercise and body weight changes remains complex and highly individualised, with significant variation in responses across different populations and in differing dietary contexts. While population-level studies provide valuable insights into general trends, they may not capture the nuanced physiological responses experienced by individuals under specific dietary regimens.

N-of-1 studies, also known as single-case experimental designs, offer a rigorous methodology for examining individual responses to interventions over time. This approach is particularly valuable in personalised medicine contexts where understanding individual variation is paramount for optimising health outcomes.

The present study was designed to examine whether daily exercise influences body weight fluctuations in a single individual while controlling for calorific intake and maintaining a low-carbohydrate dietary pattern (≤100g carbohydrates daily). This research addresses a gap in the literature regarding individual-level responses to exercise under controlled nutritional conditions.

#heading(level: 2)[Hypotheses]

- *$H_0$ (Null Hypothesis):* Exercise has no effect on body weight changes day-to-day when controlling for calorific intake and when daily carbohydrate content is less than 100g
- *$H_1$ (Alternative Hypothesis):* Exercise has an effect on body weight changes day-to-day when controlling for calorific intake and when daily carbohydrate content is less than 100g

#heading[Methods]

#heading(level: 2)[Study Design]

This study employed a single-subject experimental design (n-of-1) with repeated measurements over time. The participant served as their own control, with exercise and non-exercise days compared while maintaining consistent dietary constraints.

#heading(level: 2)[Data Collection]

#heading(level: 3)[Anthropometric Measurements]
Daily body composition measurements were obtained using an Omron BF508 digital scale, that providing:
- Body weight (kg)
- Estimated muscle percentage
- Estimated body fat percentage
- Estimated resting metabolic rate
- Estimated visceral fat percentage

#heading(level: 3)[Exercise Records]
Exercise data was recorded with an Apple Watch Series 5 or a Garmin Vívoactive 6 watch and logged through Strava during each exercise session. Each Strava record contained:
- Date of exercise
- Type of exercise performed
- Duration of exercise sessions
- Average heart rate during activity
- Estimated calories burned (calculated by Strava's proprietary algorithms)

#heading(level: 3)[Dietary Assessment]
Comprehensive dietary logs were maintained using MyFitnessPal, including:
- Total daily calorific intake
- Macronutrient composition (carbohydrates, fats, proteins)
- Detailed food item tracking

*Limitation:* Some calorific and macronutrient values were estimated when exact food matches were unavailable in the application database.

#heading(level: 2)[Data Processing]

#heading(level: 3)[Primary Outcome Variable]
Daily weight change was calculated as the difference between consecutive daily measurements:

#align(center)[
  Daily Weight Change = Weight(day n) - Weight(day n-1)
]

#heading(level: 3)[Exercise Classification and Filtering]
The Strava dataset was processed to create a binary exercise classification:
- 0 = No exercise occurred on that day
- 1 = Exercise occurred on that day

Subsequently, all rows where exercise occurred but burned less than 150 calories (as estimated by Strava) were removed from the dataset to focus on exercise sessions of meaningful intensity and duration.

#heading(level: 3)[Dataset Integration]
All datasets (body composition, exercise, and dietary) were merged based on matching dates, creating a comprehensive daily record for analysis.

#heading(level: 3)[Data Cleaning and Inclusion Criteria]
1. Removal of rows with missing (NaN) daily weight change values
2. Exclusion of days with carbohydrate intake >100g
3. Retention of only complete cases with values in all measured variables

This process resulted in two distinct sample populations:
- *Sample Group 1:* Days with no exercise performed and carbohydrate intake \<100g
- *Sample Group 2:* Days with exercise performed (≥150 calories burned as estimated by Strava) and carbohydrate intake \<100g

#heading(level: 3)[Outlier Detection and Removal]
Outliers in daily weight change were identified and removed using the 1.5×IQR (Interquartile Range) rule to ensure robust statistical analysis.

#heading(level: 3)[Sample Matching]
To control for calorific intake effects:
1. Data were stratified into 10-calorie bins
2. Stratified random sampling was employed to select matched observations
3. Final sample sizes: 41 observations per sample group (exercise vs. no exercise)

#heading(level: 2)[Statistical Analysis]

#heading(level: 3)[Assumption Testing]
- *Normality:* Assessed using Shapiro-Wilk tests for each group
- *Equal Variance:* Evaluated using Levene's test

#heading(level: 3)[Primary Analysis]
Given the violation of normality assumptions in one group, the Mann-Whitney U test was selected as the primary statistical test for comparing daily weight changes between exercise and non-exercise days.

#heading(level: 3)[Validation Analyses]
Multiple additional tests were conducted to validate findings:
1. *Permutation Test:* 10,000 iterations with shuffled group labels
2. *Kolmogorov-Smirnov Test:* Distribution shape and location comparison
3. *Bootstrap Confidence Intervals:* Difference in medians assessment
4. *Mood's Median Test:* Median comparison between groups
5. *Brunner-Munzel Test:* Stochastic equality assessment

#heading(level: 3)[Effect Size Measures]
- *Common Language Effect Size:* Probability of group differences
- *Cliff's Delta:* Non-parametric effect size measure
- *Hodges-Lehmann Estimate:* Location shift estimation

#heading[Results]

#heading(level: 2)[Descriptive Statistics]

The matched samples consisted of 41 observations each for exercise and non-exercise days. Calculating summary statistics for each group revealed:
- *Mean difference:* 0.17 kg (exercise vs. non-exercise)
- *Median difference:* 0.1 kg
- *Ratio of standard deviations:* 1.07
#figure(
  image("../4. Inferential analysis and Hypothesis testing/Dataset Plots/Histograms.jpg", width: 80%),
  caption: [
    Overlapping histograms comparing the distributions of weight change values in each sample group
  ],
)
#figure(
  image("../4. Inferential analysis and Hypothesis testing/Dataset Plots/Box Plots.jpg", width: 80%),
  caption: [
    Box plot comparing medians and quartiles between exercise and non-exercise groups
  ],
)
#figure(
  image("../4. Inferential analysis and Hypothesis testing/Dataset Plots/Violin.jpg", width: 80%),
  caption: [
    Violin plots displaying probability density distributions for both sample groups
  ],
)

#heading(level: 2)[Assumption Testing]

*Normality Assessment:* The Shapiro-Wilk test indicated that the exercise sample group's data was normally distributed, while the non-exercise sample group;s data significantly deviated from normality.

*Equal Variance:* Levene's test confirmed that the assumption of equal variances across sample groups was met (p > 0.05).

#heading(level: 2)[Primary Analysis]

The Mann-Whitney U test yielded the following results:
- *Test statistic (U):* 874.5
- *p-value:* 0.756
- *Significance level:* α = 0.05
- *Decision:* Failed to reject H₀

#heading(level: 2)[Validation Analyses]

All validation tests corroborated the primary findings:

1. *Permutation Test:* p = 0.743 (10,000 iterations)
2. *Kolmogorov-Smirnov Test:* p = 0.779
3. *Bootstrap Confidence Intervals:* Supported failure to reject H₀
4. *Mood's Median Test:* No significant difference in medians
5. *Brunner-Munzel Test:* p = 0.758, indicating stochastic equality

#heading(level: 2)[Effect Size Analysis]

Effect size measures consistently indicated minimal practical significance:
- *Common Language Effect Size:* p = 0.756 (probability that exercise group < non-exercise group)
- *Cliff's Delta:* δ = 0.040 (negligible effect size)
- *Hodges-Lehmann Estimate:* 0 (no meaningful location shift)

#heading[Discussion]

#heading(level: 2)[Principal Findings]

This n-of-1 study found no statistically significant effect of exercise on daily body weight changes when controlling for calorific intake during periods of low-carbohydrate consumption. The robust statistical analysis, including multiple validation tests and effect size measures, consistently supported this conclusion.

#heading(level: 2)[Implications for Individual Health Management]

The absence of significant daily weight changes associated with exercise in this individual case has several important implications:

1. *Short-term vs. Long-term Effects:* Daily weight fluctuations may not reflect the longer-term body composition changes associated with regular exercise.

2. *Individual Variation:* These results highlight the importance of personalised approaches to health interventions, as individual responses may differ significantly from population-level expectations.

3. *Methodological Considerations:* The careful control of calorific intake and carbohydrate restriction may have masked exercise effects that might be observed under different dietary conditions.

#heading(level: 2)[Limitations]

Several limitations should be acknowledged:

1. *Single-Subject Design:* Results may not be generalisable to other individuals
2. *Time Frame:* Daily measurements may not capture longer-term exercise adaptations
3. *Exercise Classification:* Binary classification (≥150 calories burned) did not account for varying intensity, duration, or exercise type
4. *Dietary Measurement Precision:* MyFitnessPal food database limitations occasionally required estimation of calorific and macronutrient values
5. *Calorific Expenditure Estimation:* Reliance on Strava's proprietary algorithms for determining exercise threshold, though mitigated by binary conversion
6. *Dietary Restriction:* Results are specific to low-carbohydrate dietary conditions

#heading(level: 2)[Future Research Directions]

Future n-of-1 studies might consider:
- Longer observation periods to capture cumulative effects
- Detailed exercise intensity and duration measurements
- Investigation under different dietary conditions
- Multiple outcome measures beyond daily weight change

#heading[Conclusions]

Under controlled calorific intake and low-carbohydrate dietary conditions, exercise did not significantly influence daily body weight fluctuations in this individual case. The rigorous statistical analysis, including multiple validation approaches, provides confidence in these findings. This study demonstrates the value of n-of-1 methodologies for understanding individual responses to health interventions and emphasises the importance of personalised approaches to exercise and weight management strategies.

The absence of significant daily effects does not negate the potential long-term benefits of regular exercise on overall health and body composition. Rather, these findings suggest that daily weight monitoring may not be the most appropriate metric for assessing short-term exercise effects in individuals following controlled dietary regimens.

#heading[Acknowledgments]

[Add acknowledgments as appropriate]

#heading[Funding]

[Add funding information if applicable]

#heading[Conflicts of Interest]

[Declare any conflicts of interest]

#heading[References]

[References would be added here following appropriate journal formatting guidelines]