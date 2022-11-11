## Topic
The federal law prohibiting sports gambling in the US was overturned by the Supreme Court in 2018. Over 30 states have since legalized the activity, with nearly two dozen also allowing online gambling (as opposed to just in person at a sportsbook within a casino). During 2021, an estimated 25% of adults bet on sports in some capacity*. With this growth in popularity, we set out to build a model to help bettors predict the outcomes of America's most popular sport: the National Football League.

We will use binary classification/supervised machine learning to predict whether the total points in an NFL game will be more or less than the total set by the oddsmakers.

*[Source](https://morningconsult.com/2022/01/18/sports-betting-trends/)

## Reason(s) We Selected This Topic
As more states continue to legalize sports betting, the industry continues to grow. As such, being able to apply data analysis and machine learning to sports and betting continues to become a more valuable skillset. Along with being a marketable skill, our group are all big fans of sports, so this was a topic that piqued our interest.

## Questions We Hope to Answer With the Data
- Will a given NFL game's total score go over or fall under the total set by the oddsmakers?

## Data Source(s)
- [spreadspoke_scores.csv](https://github.com/ksdisch/nfl-ml/blob/main/Resources/spreadspoke_scores.csv) - csv file found on Kaggle containing National Football League (NFL) game results dating back to 1966 with betting odds information since 1979. 
    - Data obtained from [Kaggle Datasets](https://www.kaggle.com/datasets/tobycrabtree/nfl-scores-and-betting-data?select=spreadspoke_scores.csv)
- [Cumulative DVOA](https://github.com/ksdisch/nfl-ml/blob/main/Resources/cumulative_dvoa.csv) csv file
    - Data obtained from [Football Outsiders](https://www.footballoutsiders.com/stats/nfl/team-efficiency/2022/regular)
- [Cumulative Pace](https://github.com/ksdisch/nfl-ml/blob/main/Resources/cumulative_pace.csv) csv file
    - Data obtained from [Football Outsiders Pace page](https://www.footballoutsiders.com/stats/nfl/pace-stats/2022)

## Technologies Used

### Data Cleaning and Analysis
[An Attempt](https://github.com/ksdisch/nfl-ml/blob/main/Scraping.ipynb) was made to scrape data from Football Outsiders automatically using a Jupyter notebook and Python. For now, the individual yearly tables were manually downloaded as csv files. Football Outsiders earned its reputation with the creation of its main statistic, DVOA, which stands for Defense-adjusted Value Over Average. From their definition of the statistic, DVOA "breaks down the entire season play-by-play, comparing success on each play to the league average based on a number of variables including down, distance, location on field, current score gap, quarter, and opponent quality." ([Source](https://www.footballoutsiders.com/info/glossary#:~:text=DVOA%20stands%20for%20Defense%2Dadjusted,this%20stat%20is%20called%20VOA.))

The dataset from Kaggle containing the game information and totals did not require any scraping. The input data from Kaggle and Football Outsiders were joined and cleaned into cumulative csv's using an [r script](https://github.com/ksdisch/nfl-ml/blob/main/clean_transform_inputdata.R).  

### Database Storage
The cumulative DVOA, cumulative pace (how quickly teams snap the ball), and cleaned game data were imported into pgAdmin and joined into one dataset using [postgreSQL](https://github.com/ksdisch/nfl-ml/blob/main/database_schema.sql). [This dataset](https://github.com/ksdisch/nfl-ml/blob/main/nfl_sql_dataset.csv) could be imported directly into the Machine Learning Model, but another [r script](https://github.com/ksdisch/nfl-ml/blob/main/feature_engineering.R) was used to engineer features. [This dataset](https://github.com/ksdisch/nfl-ml/blob/main/nfl_ml_dataset.csv) was exported to the Machine Learning Model.  

### Machine Learning
[SciKitLearn](https://scikit-learn.org/stable/) is the ML library we'll be using to create our classification model that will attempt to correctly classify NFL games into hitting the over or under on their game total (as determined by betting markets). We've been testing several algorithms and comparing their results as we continue to improve and refine the dataset and model.

### Technologies for Dashboard
The following technologies will be used to create a dashboard as well as the visualizations within the dashboard.

[Dashboard](https://public.tableau.com/app/profile/kyle.disch3835/viz/nfl-ml-dashboard/Dashboard1)

[Storyboard](https://docs.google.com/presentation/d/1on4g_O0ENLiW1l6hNNdP82h1n6grY03nF5TZdy5VbZk/edit#slide=id.g17e48b405d8_0_65)

#### Tableau
Tableau is one of the most widely used data analysis and visualization tools in the world today. Tableau has become almost ubiquitous in today's professional world because it gives analysts the ability to create powerful analytic dashboards that tell a clear story and can be easily shared with others. Tableau is able to take any kind of data from nearly every system, and turn it into actionable insights with speed and ease.

#### Google Slides Presentation
Please click this [link](https://docs.google.com/presentation/d/1on4g_O0ENLiW1l6hNNdP82h1n6grY03nF5TZdy5VbZk/edit?usp=sharing) to view the Google Slides draft presentation: 

#### Dashboard Interactive Element(s)
Please click this [link](https://public.tableau.com/app/profile/kyle.disch3835/viz/nfl-ml-story/Story1?publish=yes) to view the Tableau interactive dashboard.

### Model
Data was read into the Machine Learning model using a Jupyter notebook. Output labels were defined based on if the actual final score was higher than the Over Under Total (1 = Over, 0 = Under). Input data was preprocessed and fed into several Machine Learning Algorithms and compared based on their Accuracy Scores.

![image](https://user-images.githubusercontent.com/107162310/201263003-6cbfdad8-d680-43cc-bd1e-cd35fa5e2c45.png)

2 of the 20 models tested reached an arbitrary limit of 55% Accuracy Score. Those models were the Ridge Classifier & the Linear Discriminant Analysis Classifier.

The benefits of continuing to use the LDA classifier include its ease of use and speed. One of its limitations include its assumption that the data has a normal distribution. LDA classifiers are used in facial recognition and the medical field. ([Source](https://www.knowledgehut.com/blog/data-science/linear-discriminant-analysis-for-machine-learning) by Priyankur Sarkar)

The benefits of continuing to use the Ridge Classifier include its ability to help reduce sensitivity to noisy data (like a game where 22 people run all over a field in pursuit of an oblong shaped pigskin) by penalizing the coefficients of highly correlated variables. One of its limitations for our purposes would be that it may require more data to be highly accurate than a sport with only 500+ datapoints per year can provide. ([Source](https://vitalflux.com/ridge-regression-concepts-python-example/) by Ajitesh Kumar)


#### Feature Engineering & Selection
The team was able to apply some of its deep knowledge and interest in NFL data when it came time to engineer and select the features to be used in the model. For instance, DVOA and pace data came with multiple columns looking at those statistics from several angles for both teams in a given matchup, including cumulative or weighted columns. In some cases, we could intuit that there was no need to ask the model to include some base features when the cumulative or weighted features already addressed them. To be certain, during segment two of the project, several suspect features were isolated and removed from the model testing and the accuracy scores were compared to the results of the model when it had included them. For results that showed no change to accuracy, or even an improvement, those features were kept out of the final model.

#### Training Data
The data was split into training and testing sets using the Sklearn train_test_split function. By default, this function assigns 75% of the dataset to be used during the training of the model while the remaining 25% is used to test the model.

### Results of the Model
Our model was able to show an accuracy of 55%. Per the Action Network, a prominent sports betting website, a profitable bettor must win at least 52.4% of their bets. The Action Network would consider winning at a 55% rate to be "a good year". ([Source](https://www.actionnetwork.com/legal-online-sports-betting/sports-betting-survey-gender-income-winning-percentage-may-24))
