# input data from sql csv, engineer features, output csv for ML Model

#dependency
library(tidyverse)

# working directory
setwd('C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject')

# import data
dfSQL <- read.csv('nfl_sql_dataset.csv')

# engineer features
dfML <- dfSQL |>
  mutate(dvoa_total_cumulative = home_total_dvoa + away_total_dvoa,
         dvoa_total_difference = abs(home_total_dvoa - away_total_dvoa),
         dvoa_weighted_cumulative = home_weighted_dvoa + away_weighted_dvoa,
         dvoa_weighted_difference = abs(home_weighted_dvoa - away_weighted_dvoa),
         dvoa_offense_cumulative = home_offense_dvoa + away_offense_dvoa,
         dvoa_offense_difference = abs(home_offense_dvoa - away_offense_dvoa),
         dvoa_defense_cumulative = home_defense_dvoa + away_defense_dvoa,
         dvoa_defense_difference = abs(home_defense_dvoa - away_defense_dvoa),
         dvoa_special_cumulative = home_special_dvoa + away_defense_dvoa,
         dvoa_special_difference = abs(home_special_dvoa - away_special_dvoa),
         dvoa_home_offense_matchup = home_offense_dvoa + away_defense_dvoa,
         dvoa_away_offense_matchup = away_offense_dvoa + home_defense_dvoa,
         composite_pace_average = (home_sec_play_composite + away_sec_play_composite)/2,
         composite_pace_difference = abs(home_sec_play_composite - away_sec_play_composite)) |>
  mutate(offense_matchup_cumulative = dvoa_home_offense_matchup + dvoa_away_offense_matchup,
         offense_matchup_difference = abs(dvoa_home_offense_matchup - dvoa_away_offense_matchup))

# export data for ML Model
write.csv(dfML, 'C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/nfl_ml_dataset.csv')
