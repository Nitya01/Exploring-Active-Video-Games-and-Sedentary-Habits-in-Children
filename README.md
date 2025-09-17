# Exploring Active Video Games and Sedentary Habits in Children  

---

## 📖 Introduction  

The primary goal of this project is to shed light on the health and well-being of children, as they represent the future of our society. Recent statistics reveal that **65.7% of boys and 64.6% of girls aged 2–17 years spend more than 2 hours on screen time per weekday**, not including schoolwork.  

Given this, our study focused on **Active Video Games (AVG)** as a potential intervention to reduce sedentary behaviors and promote physical activity in children aged 8–12. We examined whether AVG could offset sedentary screen-based activities and analyzed influencing factors.  

This work is valuable for:  
- **Parents:** finding ways to manage screen time and encourage healthier lifestyles.  
- **Educators:** shaping school physical activity strategies.  
- **Policymakers:** designing health initiatives aligned with evolving recreation trends.  

**Dataset Source:** [data.gov – ARS Active Video Game Study](https://catalog.data.gov/dataset/data-from-the-influence-of-active-video-game-play-upon-physical-activity-and-screen-based--b0ba5)  

---

## ⚙️ Data Pre-processing  

### 1.1 Questionnaire & 24-Hour Recall (Python)  
- Cleaned missing values using **mean imputation** via `pandas`.  
- Preserved rows with minor missing data to avoid bias.  
- Standardized date formats to `YYYY-MM-DD`.  

### 1.2 Actigraph & Liking Data (R)  
- Used **listwise deletion** for missing values (2–10 entries only).  
- Retained robust dataset for reliable analysis.  

### 1.3 Data Integration (Tableau)  
- Joined **Questionnaire + 24h Recall + Demographics** using volunteer ID.  
- Created a derived `vol-num` for consistency.  
- Linked **Actigraph + Liking Scores** for autonomy and activity dashboards.  
- Opted for **extract-based Tableau connections** for faster performance.  

---

## 📊 Data Visualization & Analysis  

### 3.1 Demographic Description  
- **Gender Distribution (Pie Chart):** Orange = Male, Blue = Female. Balanced sample (24 males, 28 females).  
- **Race Distribution (Treemap):** ~80% White. Very few African American & Native Hawaiian participants → results not generalizable.  
- **Height/Weight (Box Plots):** Similar across genders. Suggests future targeted questions on physical condition.  
- **Age Distribution (Stacked Bar):** Most participants = 11 years old. Results most applicable to <12.  

---

### 3.2 Autonomy Shapes Activity  
- **High autonomy (child chooses game)** → Increased **MVPA**.  
- **Low autonomy (predetermined game)** → Decline in activity, more sedentary.  
- **Key Insights:**  
  - High autonomy boosts intrinsic motivation.  
  - Males consistently show higher MVPA.  
  - “Some activity” level declined in both groups by week 10.  

---

### 3.3 Physical Activity Trend & BREQ-2 Scores  
- **Total Physical Activity Trend (Line Chart):** Decreased as study progressed → more time allocated to video games.  
- **By Gender (Double Line):** Both genders declined; females more sedentary.  
- **BREQ-2 Scores (Bar by Race & Gender):**  
  - White males slight increase, White females slight decrease.  
  - Asian & Multi-racial participants → declines.  
  - Overall: AVG had **limited effect on motivation**.  

---

### 3.4 Liking Scores vs Activity  
- **Activity Variation (Side-by-Side Bars):** Sedentary behavior dominates; light/moderate/vigorous declined.  
- **Sedentary vs Traditional AVGs (Scatter):** Initially higher liking for sedentary AVGs → equalized with traditional AVGs by week 10.  
- **Gender-Specific Trends (Stacked Bars):**  
  - Females: Initial enthusiasm for sedentary AVGs dropped below baseline by week 10.  
  - Males: Stable patterns; spike in traditional games at week 6.  
- **AVG vs MVPA (Bubble Scatter):** No strong link between liking AVGs and MVPA. Slight positive correlation between AVG_S and AVG_T.  

---

## 🔎 Discussion  

### Revisions  
- Switched from **Talend → Python/R** for cleaning, and **Tableau** for merging.  
- Enabled smoother integration and visualization.  

### Challenges  
- Lack of a data dictionary delayed work.  
- Volunteer IDs missing in one file → merging issues.  
- Resolved by filtering NULL values in Tableau.  

### Further Insights  
- Need **larger, racially balanced sample**.  
- Suggest targeted questions for subgroups showing unique patterns.  

### Feedback Incorporated  
1. **Data dictionary** added for clarity.  
2. **Cohesive visual narrative** ensured across dashboards.  

---

## ✅ Conclusion  

- **Increased AVG usage correlated with *decreased overall physical activity*.**  
- **BREQ-2 scores** showed minimal pre/post difference → AVGs did not motivate sustained physical activity.  
- **Autonomy** enhanced MVPA, but both autonomy groups declined in “some activity.”  
- **Gender differences:**  
  - Females: Declining interest in AVGs.  
  - Males: Stable patterns with spike in traditional game liking.  
- Future studies should **expand participant diversity** and test race/gender influences more deeply.  

---

## 📚 References  

1. Ufholz, K. E., Flack, K. D., & Roemmich, J. N. (2022). *The influence of active video game play upon physical activity and screen-based activities in sedentary children*. PLOS ONE, 17(6). https://doi.org/10.1371/journal.pone.0269057  
2. C, F., & J, H. (2015). *How children use active videogames and the association between screen time and physical activity.* Games for Health Journal. https://pubmed.ncbi.nlm.nih.gov/26182219/  
3. Agricultural Research Service. (2023). *Data from: The influence of active video game play upon physical activity and screen-based activities in sedentary children.* [Data Catalog](https://catalog.data.gov/dataset/data-from-the-influence-of-active-video-game-play-upon-physical-activity-and-screen-based--b0ba5)  
