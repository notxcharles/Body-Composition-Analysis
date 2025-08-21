# Body-Composition-Analysis

I've got data that contains my nutritional macros, body weight and composition, exercise information and more. I'd like 
to see if I can reject/fail to reject these hypotheses:

## Potential hypotheses:
- Exercising doesn't burn any additional calories
  - H0: exercise has no effect on body weight change 
  - H1: exercise has an effect on body weight change
  - It is my hypothesis that exercise doesn't burn any calories beyond the base rate
    - Eg: If I need 3000 calories per day to maintain my weight, doing exercise to burn 500 calories won't result in a 
    net calorie deficit
      - In this scenario, if exercising did burn calories, I would expect the net calories for the day to be 2500
- Eating in a calorie surplus means more muscle growth
  - I need to find at what calorie intake approximately results in no weight gain, this is my base calorific needs
  - Comparing base calorific needs vs surplus calorific need days muscle mass gains
  - H0: Days when in a calorie surplus, when eating (bodyweight, kg * 1.8g protein) had a bigger effect on muscle mass 
  gains
  - H1: Calorie surplus doesn't affect muscle mass gains

## Data Sources
### MyFitnessPal
*/DataInput/MyFitnessPal/file.csv*<br>
- I've logged what I have eaten each day with a high degree of accuracy. 
- I try to log all snacks I have and down to the number of sweets that I might have. 
- On nights out I look back through receipts or try and estimate what drinks I drank to add to MyFitnessPal

### Body Weight
*/DataInput/Weights and Total Cal Intake/file.csv*<br>
- I have tracked my body weight, BMI, Body Fat %, Muscle %, Visceral Fat % and RMI using Omron's BF508.
- All of these stats are estimated, however I have used the same set of scales throughout. Some data is missing, which 
I will fill with estimated values
- There is a significant amount of missing data between May 2022 and May 2023. This was because I lacked the strength 
to be able to balance and remain stable enough on the scales for long enough for them to measure my body composition

### Exercise Information
**Apply Health**
- All recorded workout data will be in Apple Health<br>

**Manual Imports**<br>
*/DataInput/My Workout Data/file.csv*
- For the first year+ of working out, I only recorded a paper copy of my exercises/weight/reps. I need to digitise 
these<br>

**Strong App**<br>
*/DataInput/Strong App/file.csv*
- Workout data from September 2024 is recorded using the Strong App<br>

**Strava**<br>
*/DataInput/Strava/file.csv*
- All running data will be on Strava. *if it's not on Strava, you haven't done it*<br>

**Garmin**
- Recent running data is primarily recorded and logged first on Garmin, then sent to Strava for additional logging
