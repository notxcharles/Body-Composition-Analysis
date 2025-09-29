# The Effect of Exercise on Daily Body Weight Changes During Post-Chemotherapy Recovery:  
### An N-of-1 Study of Neurological Rehabilitation Following Stage 4 Brain Cancer Treatment

This repository accompanies my academic article examining the relationship between daily exercise and body weight fluctuations during post-chemotherapy recovery. The study focuses on an **N-of-1 design**, tracking outcomes in the context of neurological rehabilitation after Stage 4 brain cancer treatment.

📄 **[Read the full article (PDF)](./Academic%20Journal%20Article/Submission/main.pdf)**

## Summary

- **Objective:** To examine whether engaging in exercise is associated with measurable short-term body weight changes during recovery from chemotherapy
- **Methods:** Daily body weight was recorded and compared across exercise and non-exercise days.  
- **Conclusions:** Under controlled calorific and low-carbohydrate conditions, exercise did **not** significantly affect daily body weight fluctuations in this individual case.

## Repository Contents
- `Academic Journal Article\main.pdf` — Full academic article
- `1. Inspect, Clean and Validate Dataset\CleanedData`: Collected data sets of weight measurements, exercise, nutrition
-  `4. Inferential analysis and Hypothesis testing\Data Analysis.ipynb`: Python code used for data analysis

## Run order of Notebooks

1. Inspect, Clean and Validate Dataset
   - Files were cleaned. Null rows and any invalid data was removed.
   - The orginal data set files were removed as these contained personal data
2. Descriptive Analysis
   1. Run `\2. Descriptive Analysis\Prepare_StrengthData.ipynb` first
   2. Run any other `.ipynb` from the `\2. Descriptive Analysis` directory
3. Exploratory Data Analysis
   - Exploring relationships between variables, etc
4. Inferential analysis and Hypothesis testing
   1. `\4. Inferential analysis and Hypothesis testing\Prepare Hypothesis Dataset.ipynb`: Preparing records for the study. This involved removing some rows with invalid values, calculating the maximum number of rows for each group, etc.
   2. `\4. Inferential analysis and Hypothesis testing\Selecting Records For Analysis.ipynb`: Randomly selecting the maximum number of rows, creating two groups of data: one for days where exercise was carried out, the other for days where exercise was not carried out
   3. `4. Inferential analysis and Hypothesis testing\Data Analysis.ipynb`: Any data analysis to compare the groups. This process is detailed within the pdf article
