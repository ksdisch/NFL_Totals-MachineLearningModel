# NFL Over/Under Prediction Machine Learning Model

## Topic
We will use binary classification/supervised machine learning to predict whether the total points in an NFL game will be more or less than the total set by the oddsmakers.

## Reason(s) We Selected This Topic
As more states continue to legalize sports betting, the industry continues to grow. As such, being able to apply data analysis and machine learning to sports and betting continues to become a more valuable skillset. Along with being a marketable skill, our group are all big fans of sports, so this was a topic that piqued our interest.

## Data Source(s)
- spreadspoke_scores.csv - csv file found on Kaggle containing National Football League (NFL) game results dating back to 1966 with betting odds information since 1979. 
    - https://www.kaggle.com/datasets/tobycrabtree/nfl-scores-and-betting-data?select=spreadspoke_scores.csv
- Cumulative_Defensive_Pace.xlsx
    - Obtained from footballoutsiders.com
- Cumulative_DVOA.xlsx
    - Obtained from footballoutsiders.com
- Cumulative_Offensive_Pace.xlsx
    - Obtained from footballoutsiders.com
- Cumulative_Total_Pace.xlsx
    - Obtained from footballoutsiders.com

## Questions We Hope to Answer With the Data
- Will a given NFL game's total score go over or fall under the total set by the oddsmakers?

## Communication Protocols
Our group has been meeting in Zoom breakout rooms on Tuesdays and Thursdays from 6 PM - 8 PM. To supplement these meetings, we also communicate throughout the week in a group on Slack.

## Technologies Used

### Data Cleaning and Analysis
For the initial exploration of the data, Excel will be used to clean the data and perform an exploratory analysis. Further analysis will be completed using Pandas

### Database Storage
Considering AWS for storage and Postgres for management

### Machine Learning
SciKitLearn is the ML library we'll be using to create our classification model that will attempt to correctly classify NFL games into hitting the over or under on their game total (as determined by betting markets). We've been testing several algorithms and comparing their results as we continue to improve and refine the dataset and model.

### Technologies for Dashboard
The following technologies will be used to create a dashboard as well as the visualizations within the dashboard.

[Dashboard](https://public.tableau.com/app/profile/kyle.disch3835/viz/nfl-ml-dashboard/Dashboard1)

#### Tableau
Tableau is one of the most widely used data analysis and visualization tools in the world today. Tableau has become almost ubiquitous in today's professional world because it gives analysts the ability to create powerful analytic dashboards that tell a clear story and can be easily shared with others. Tableau is able to take any kind of data from nearly every system, and turn it into actionable insights with speed and ease.

#### Dashboard Interactive Element(s)
- The visualizations in the dashboard will have marker labels that pop-up when the user hovers over them. These markers give users deeper insight into individual data points.
- User selected data and/or filters: At least one visualization in the dashboard will include a drop down list of features for the user to choose from. The user's choice will either be the main data for the visualization, or a filter that alters the visualization.This will allow users to explore the data themself in a straightforward and digestible manner.

### Model
Data was read into the provisional Machine Learning model using a jupyter notebook.\
Output labels were defined based on if the actual final score was higher than the Over Under Total (1 = Over, 0 = Under).\
Input data was preprocessed and fed into several Machine Learning Algorithms and compared based on their Accuracy Scores.

<img width="227" alt="Screenshot 2022-10-26 191007" src="https://user-images.githubusercontent.com/102050273/198155572-5bc456f1-1a34-49e5-96fa-ebffa647a027.png">

