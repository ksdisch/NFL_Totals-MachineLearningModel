# dependencies
library(tidyverse)



# PACE
# working directory
setwd('C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources/football_outsiders/Pace')

# 32 team era
# 2021
df2021pace = read.csv('2021 NFL Pace_Time Stats.csv') # read csv
df2021pace <- df2021pace |> mutate(year = 2021) # add unique year column
df2021pace <- df2021pace[c(0:32), ] # select relevant rows from df

# 2020
df2020pace = read.csv('2020 NFL Pace_Time Stats.csv') # read csv
df2020pace <- df2020pace |> mutate(year = 2020) # add unique year column
df2020pace <- df2020pace[c(0:32), ] # select relevant rows from df

# 2019
df2019pace = read.csv('2019 NFL Pace_Time Stats.csv') # read csv
df2019pace <- df2019pace |> mutate(year = 2019) # add unique year column
df2019pace <- df2019pace[c(0:32), ] # select relevant rows from df

# 2018
df2018pace = read.csv('2018 NFL Pace_Time Stats.csv') # read csv
df2018pace <- df2018pace |> mutate(year = 2018) # add unique year column
df2018pace <- df2018pace[c(0:32), ] # select relevant rows from df

# 2017
df2017pace = read.csv('2017 NFL Pace_Time Stats.csv') # read csv
df2017pace <- df2017pace |> mutate(year = 2017) # add unique year column
df2017pace <- df2017pace[c(0:32), ] # select relevant rows from df

# 2016
df2016pace = read.csv('2016 NFL Pace_Time Stats.csv') # read csv
df2016pace <- df2016pace |> mutate(year = 2016) # add unique year column
df2016pace <- df2016pace[c(0:32), ] # select relevant rows from df

# 2015
df2015pace = read.csv('2015 NFL Pace_Time Stats.csv') # read csv
df2015pace <- df2015pace |> mutate(year = 2015) # add unique year column
df2015pace <- df2015pace[c(0:32), ] # select relevant rows from df

# 2014
df2014pace = read.csv('2014 NFL Pace_Time Stats.csv') # read csv
df2014pace <- df2014pace |> mutate(year = 2014) # add unique year column
df2014pace <- df2014pace[c(0:32), ] # select relevant rows from df

# 2013
df2013pace = read.csv('2013 NFL Pace_Time Stats.csv') # read csv
df2013pace <- df2013pace |> mutate(year = 2013) # add unique year column
df2013pace <- df2013pace[c(0:32), ] # select relevant rows from df

# 2012
df2012pace = read.csv('2012 NFL Pace_Time Stats.csv') # read csv
df2012pace <- df2012pace |> mutate(year = 2012) # add unique year column
df2012pace <- df2012pace[c(0:32), ] # select relevant rows from df

# 2011
df2011pace = read.csv('2011 NFL Pace_Time Stats.csv') # read csv
df2011pace <- df2011pace |> mutate(year = 2011) # add unique year column
df2011pace <- df2011pace[c(0:32), ] # select relevant rows from df

# 2010
df2010pace = read.csv('2010 NFL Pace_Time Stats.csv') # read csv
df2010pace <- df2010pace |> mutate(year = 2010) # add unique year column
df2010pace <- df2010pace[c(0:32), ] # select relevant rows from df

# 2009
df2009pace = read.csv('2009 NFL Pace_Time Stats.csv') # read csv
df2009pace <- df2009pace |> mutate(year = 2009) # add unique year column
df2009pace <- df2009pace[c(0:32), ] # select relevant rows from df

# 2008
df2008pace = read.csv('2008 NFL Pace_Time Stats.csv') # read csv
df2008pace <- df2008pace |> mutate(year = 2008) # add unique year column
df2008pace <- df2008pace[c(0:32), ] # select relevant rows from df

# 2007
df2007pace = read.csv('2007 NFL Pace_Time Stats.csv') # read csv
df2007pace <- df2007pace |> mutate(year = 2007) # add unique year column
df2007pace <- df2007pace[c(0:32), ] # select relevant rows from df

# 2006
df2006pace = read.csv('2006 NFL Pace_Time Stats.csv') # read csv
df2006pace <- df2006pace |> mutate(year = 2006) # add unique year column
df2006pace <- df2006pace[c(0:32), ] # select relevant rows from df

# 2005
df2005pace = read.csv('2005 NFL Pace_Time Stats.csv') # read csv
df2005pace <- df2005pace |> mutate(year = 2005) # add unique year column
df2005pace <- df2005pace[c(0:32), ] # select relevant rows from df

# 2004
df2004pace = read.csv('2004 NFL Pace_Time Stats.csv') # read csv
df2004pace <- df2004pace |> mutate(year = 2004) # add unique year column
df2004pace <- df2004pace[c(0:32), ] # select relevant rows from df

# 2003
df2003pace = read.csv('2003 NFL Pace_Time Stats.csv') # read csv
df2003pace <- df2003pace |> mutate(year = 2003) # add unique year column
df2003pace <- df2003pace[c(0:32), ] # select relevant rows from df

# 2002
df2002pace = read.csv('2002 NFL Pace_Time Stats.csv') # read csv
df2002pace <- df2002pace |> mutate(year = 2002) # add unique year column
df2002pace <- df2002pace[c(0:32), ] # select relevant rows from df


# 31 team era
# 2001
df2001pace = read.csv('2001 NFL Pace_Time Stats.csv') # read csv
df2001pace <- df2001pace |> mutate(year = 2001) # add unique year column
df2001pace <- df2001pace[c(0:31), ] # select relevant rows from df

# 2000
df2000pace = read.csv('2000 NFL Pace_Time Stats.csv') # read csv
df2000pace <- df2000pace |> mutate(year = 2000) # add unique year column
df2000pace <- df2000pace[c(0:31), ] # select relevant rows from df

# 1999
df1999pace = read.csv('1999 NFL Pace_Time Stats.csv') # read csv
df1999pace <- df1999pace |> mutate(year = 1999) # add unique year column
df1999pace <- df1999pace[c(0:31), ] # select relevant rows from df


# 30 team era
# 1998
df1998pace = read.csv('1998 NFL Pace_Time Stats.csv') # read csv
df1998pace <- df1998pace |> mutate(year = 1998) # add unique year column
df1998pace <- df1998pace[c(0:30), ] # select relevant rows from df

# 1997
df1997pace = read.csv('1997 NFL Pace_Time Stats.csv') # read csv
df1997pace <- df1997pace |> mutate(year = 1997) # add unique year column
df1997pace <- df1997pace[c(0:30), ] # select relevant rows from df

# 1996
df1996pace = read.csv('1996 NFL Pace_Time Stats.csv') # read csv
df1996pace <- df1996pace |> mutate(year = 1996) # add unique year column
df1996pace <- df1996pace[c(0:30), ] # select relevant rows from df

# 1995
df1995pace = read.csv('1995 NFL Pace_Time Stats.csv') # read csv
df1995pace <- df1995pace |> mutate(year = 1995) # add unique year column
df1995pace <- df1995pace[c(0:30), ] # select relevant rows from df


# 28 team era
# 1994
df1994pace = read.csv('1994 NFL Pace_Time Stats.csv') # read csv
df1994pace <- df1994pace |> mutate(year = 1994) # add unique year column
df1994pace <- df1994pace[c(0:28), ] # select relevant rows from df

# 1993
df1993pace = read.csv('1993 NFL Pace_Time Stats.csv') # read csv
df1993pace <- df1993pace |> mutate(year = 1993) # add unique year column
df1993pace <- df1993pace[c(0:28), ] # select relevant rows from df


# combine and transform yearly dataframes
df_pace <- rbind(df2021pace, df2020pace, df2019pace, df2018pace,
                         df2017pace, df2016pace, df2015pace, df2014pace,
                         df2013pace, df2012pace, df2011pace, df2010pace,
                         df2009pace, df2008pace, df2007pace, df2006pace,
                         df2005pace, df2004pace, df2003pace, df2002pace,
                         df2001pace, df2000pace, df1999pace, df1998pace,
                         df1997pace, df1996pace, df1995pace, df1994pace,
                         df1993pace)

df_pace <- df_pace |>
  select(Team, year, Sec.Play.total., Sec.Play.situationneutral.) |> # drop irrelevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.,
         team = Team,
         schedule_season = year) |> # rename columns
  mutate(team_year = str_c(team, schedule_season))
df_pace$sec_play_total <- as.numeric(df_pace$sec_play_total) # change column data type
df_pace$sec_play_neutral <- as.numeric(df_pace$sec_play_neutral) # change column data type
df_pace <- df_pace |>
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral) / (2)) |> # create composite pace column
  mutate(team = ifelse(as.character(team) == 'CLE1', 'CLE', as.character(team)),
       team = ifelse(as.character(team) == 'HOIL', 'TEN', as.character(team)),
       team = ifelse(as.character(team) == 'LARD', 'LV', as.character(team)),
       team = ifelse(as.character(team) == 'OAK', 'LV', as.character(team)),
       team = ifelse(as.character(team) == 'PHO', 'ARI', as.character(team)),
       team = ifelse(as.character(team) == 'SD', 'LAC', as.character(team)),
       team = ifelse(as.character(team) == 'STL', 'LAR', as.character(team))) |> # fixing team abbrv
  select(team, schedule_season, team_year, sec_play_total, sec_play_neutral, sec_play_composite) # reorder columns

team_list_pace <- as.data.frame(unique(df_pace$team)) # check fixed team abbrv

# write df to csv
write.csv(df_pace, 'C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources/cumulative_pace.csv')




# DVOA
# working directory
setwd('C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources/football_outsiders/Dvoa')

# 2021
df2021dvoa = read.csv('2021 Team DVOA Ratings Overall.csv') # read csv
df2021dvoa <- df2021dvoa |> mutate(year = 2021) # creating new column for year

# 2020
df2020dvoa = read.csv('2020 Team DVOA Ratings Overall.csv') # read csv
df2020dvoa <- df2020dvoa |> mutate(year = 2020) # creating new column for year

# 2019
df2019dvoa = read.csv('2019 Team DVOA Ratings Overall.csv') # read csv
df2019dvoa <- df2019dvoa |> mutate(year = 2019) # creating new column for year

# 2018
df2018dvoa = read.csv('2018 Team DVOA Ratings Overall.csv') # read csv
df2018dvoa <- df2018dvoa |> mutate(year = 2018) # creating new column for year

# 2017
df2017dvoa = read.csv('2017 Team DVOA Ratings Overall.csv') # read csv
df2017dvoa <- df2017dvoa |> mutate(year = 2017) # creating new column for year

# 2016
df2016dvoa = read.csv('2016 Team DVOA Ratings Overall.csv') # read csv
df2016dvoa <- df2016dvoa |> mutate(year = 2016) # creating new column for year

# 2015
df2015dvoa = read.csv('2015 Team DVOA Ratings Overall.csv') # read csv
df2015dvoa <- df2015dvoa |> mutate(year = 2015) # creating new column for year

# 2014
df2014dvoa = read.csv('2014 Team DVOA Ratings Overall.csv') # read csv
df2014dvoa <- df2014dvoa |> mutate(year = 2014) # creating new column for year

# 2013
df2013dvoa = read.csv('2013 Team DVOA Ratings Overall.csv') # read csv
df2013dvoa <- df2013dvoa |> mutate(year = 2013) # creating new column for year

# 2012
df2012dvoa = read.csv('2012 Team DVOA Ratings Overall.csv') # read csv
df2012dvoa <- df2012dvoa |> mutate(year = 2012) # creating new column for year

# 2011
df2011dvoa = read.csv('2011 Team DVOA Ratings Overall.csv') # read csv
df2011dvoa <- df2011dvoa |> mutate(year = 2011) # creating new column for year

# 2010
df2010dvoa = read.csv('2010 Team DVOA Ratings Overall.csv') # read csv
df2010dvoa <- df2010dvoa |> mutate(year = 2010) # creating new column for year

# 2009
df2009dvoa = read.csv('2009 Team DVOA Ratings Overall.csv') # read csv
df2009dvoa <- df2009dvoa |> mutate(year = 2009) # creating new column for year

# 2008
df2008dvoa = read.csv('2008 Team DVOA Ratings Overall.csv') # read csv
df2008dvoa <- df2008dvoa |> mutate(year = 2008) # creating new column for year

# 2007
df2007dvoa = read.csv('2007 Team DVOA Ratings Overall.csv') # read csv
df2007dvoa <- df2007dvoa |> mutate(year = 2007) # creating new column for year

# 2006
df2006dvoa = read.csv('2006 Team DVOA Ratings Overall.csv') # read csv
df2006dvoa <- df2006dvoa |> mutate(year = 2006) # creating new column for year

# 2005
df2005dvoa = read.csv('2005 Team DVOA Ratings Overall.csv') # read csv
df2005dvoa <- df2005dvoa |> mutate(year = 2005) # creating new column for year

# 2004
df2004dvoa = read.csv('2004 Team DVOA Ratings Overall.csv') # read csv
df2004dvoa <- df2004dvoa |> mutate(year = 2004) # creating new column for year

# 2003
df2003dvoa = read.csv('2003 Team DVOA Ratings Overall.csv') # read csv
df2003dvoa <- df2003dvoa |> mutate(year = 2003) # creating new column for year

# 2002
df2002dvoa = read.csv('2002 Team DVOA Ratings Overall.csv') # read csv
df2002dvoa <- df2002dvoa |> mutate(year = 2002) # creating new column for year

# 2001
df2001dvoa = read.csv('2001 Team DVOA Ratings Overall.csv') # read csv
df2001dvoa <- df2001dvoa |> mutate(year = 2001) # creating new column for year

# 2000
df2000dvoa = read.csv('2000 Team DVOA Ratings Overall.csv') # read csv
df2000dvoa <- df2000dvoa |> mutate(year = 2000) # creating new column for year

# 1999
df1999dvoa = read.csv('1999 Team DVOA Ratings Overall.csv') # read csv
df1999dvoa <- df1999dvoa |> mutate(year = 1999) # creating new column for year

# 1998
df1998dvoa = read.csv('1998 Team DVOA Ratings Overall.csv') # read csv
df1998dvoa <- df1998dvoa |> mutate(year = 1998) # creating new column for year

# 1997
df1997dvoa = read.csv('1997 Team DVOA Ratings Overall.csv') # read csv
df1997dvoa <- df1997dvoa |> mutate(year = 1997) # creating new column for year

# 1996
df1996dvoa = read.csv('1996 Team DVOA Ratings Overall.csv') # read csv
df1996dvoa <- df1996dvoa |> mutate(year = 1996) # creating new column for year

# 1995
df1995dvoa = read.csv('1995 Team DVOA Ratings Overall.csv') # read csv
df1995dvoa <- df1995dvoa |> mutate(year = 1995) # creating new column for year

# 1994
df1994dvoa = read.csv('1994 Team DVOA Ratings Overall.csv') # read csv
df1994dvoa <- df1994dvoa |> mutate(year = 1994) # creating new column for year

# 1993
df1993dvoa = read.csv('1993 Team DVOA Ratings Overall.csv') # read csv
df1993dvoa <- df1993dvoa |> mutate(year = 1993) # creating new column for year


# vertically merging yearly dataframs
df_dvoa <- rbind(df2021dvoa, df2020dvoa, df2019dvoa, df2018dvoa, df2017dvoa, df2016dvoa,
                 df2015dvoa, df2014dvoa, df2013dvoa, df2012dvoa, df2011dvoa, df2010dvoa,
                 df2009dvoa, df2008dvoa, df2007dvoa, df2006dvoa, df2005dvoa, df2004dvoa,
                 df2003dvoa, df2002dvoa, df2001dvoa, df2000dvoa, df1999dvoa, df1998dvoa,
                 df1997dvoa, df1996dvoa, df1995dvoa, df1994dvoa, df1993dvoa)

# clean
df_dvoa <- df_dvoa |>
    select(Team, year, Total.DVOA, Weighted.DVOA, Offense.DVOA, 
           Defense.DVOA, Special.Teams.DVOA) |> # select relevant columns
    rename(total_dvoa = Total.DVOA,
       weighted_dvoa = Weighted.DVOA,
       offense_dvoa = Offense.DVOA,
       defense_dvoa = Defense.DVOA,
       special_dvoa = Special.Teams.DVOA) # rename columns

#changing column data types
df_dvoa$total_dvoa <- gsub('%', '', df_dvoa$total_dvoa)
df_dvoa$weighted_dvoa <- gsub('%', '', df_dvoa$weighted_dvoa)
df_dvoa$offense_dvoa <- gsub('%', '', df_dvoa$offense_dvoa)
df_dvoa$defense_dvoa <- gsub('%', '', df_dvoa$defense_dvoa)
df_dvoa$special_dvoa <- gsub('%', '', df_dvoa$special_dvoa)
df_dvoa[,4:7] <- sapply(df_dvoa[,4:7],as.numeric)
df_dvoa <- df_dvoa |> 
  mutate(off_def_difference = offense_dvoa - (defense_dvoa * -1)) # create derived column

# standardizing team abbrv
df_dvoa <- df_dvoa |>
  mutate(Team = ifelse(as.character(Team) == 'CLE1', 'CLE', as.character(Team)),
         Team = ifelse(as.character(Team) == 'HOIL', 'TEN', as.character(Team)),
         Team = ifelse(as.character(Team) == 'LARD', 'LV', as.character(Team)),
         Team = ifelse(as.character(Team) == 'LARM', 'LAR', as.character(Team)),
         Team = ifelse(as.character(Team) == 'OAK', 'LV', as.character(Team)),
         Team = ifelse(as.character(Team) == 'PHX', 'ARI', as.character(Team)),
         Team = ifelse(as.character(Team) == 'SD', 'LAC', as.character(Team)),
         Team = ifelse(as.character(Team) == 'STL', 'LAR', as.character(Team))) |>
  mutate(team_year = str_c(Team, year)) |>
  rename(team = Team, 
         schedule_season = year) |>
  select(team, schedule_season, team_year, total_dvoa, weighted_dvoa, offense_dvoa,
         defense_dvoa, special_dvoa, off_def_difference)

team_list_dvoa <- as.data.frame(unique(df_dvoa$team)) # check fixed team abbrv

# write df to csv
write.csv(df_dvoa, 'C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources/cumulative_dvoa.csv')




# SPREADSPOKE
setwd('C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources')
df_totals <- read.csv('spreadspoke_scores.csv')

df_totals <- df_totals |>
  filter(schedule_season > 1992, schedule_season < 2022) |> # 1993-2021 seasons 
  filter(schedule_playoff == FALSE) |> # no playoffs
  filter(stadium_neutral == FALSE) |> # no neutral site
  mutate(score_total = score_home + score_away, 
         over_under_diff = score_total - over_under_line) |>
  filter(over_under_diff != 0) |>
  mutate(over_binary = ifelse(over_under_diff>0, 1, 0)) |> # remove pushes
  mutate(team_home = ifelse(as.character(team_home) == 'Arizona Cardinals','ARI', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Atlanta Falcons','ATL', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Baltimore Ravens','BAL', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Buffalo Bills','BUF', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Carolina Panthers','CAR', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Chicago Bears','CHI', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Cincinnati Bengals','CIN', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Cleveland Browns','CLE', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Dallas Cowboys','DAL', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Denver Broncos','DEN', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Detroit Lions','DET', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Arizona Cardinals','ARI', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Green Bay Packers','GB', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Houston Oilers','TEN', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Houston Texans','HOU', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Indianapolis Colts','IND', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Jacksonville Jaguars','JAX', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Kansas City Chiefs','KC', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Las Vegas Raiders','LV', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Los Angeles Chargers','LAC', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Los Angeles Raiders','LV', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Los Angeles Rams','LAR', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Miami Dolphins','MIA', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Minnesota Vikings','MIN', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'New England Patriots','NE', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'New Orleans Saints','NO', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'New York Giants','NYG', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'New York Jets','NYJ', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Oakland Raiders','LV', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Philadelphia Eagles','PHI', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Phoenix Cardinals','ARI', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Pittsburgh Steelers','PIT', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'San Diego Chargers','LAC', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'San Francisco 49ers','SF', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Seattle Seahawks','SEA', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'St. Louis Rams','LAR', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Tampa Bay Buccaneers','TB', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Tennessee Titans','TEN', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Tennessee Oilers','TEN', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Washington Commanders','WAS', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Washington Football Team','WAS', as.character(team_home)),
         team_home = ifelse(as.character(team_home) == 'Washington Redskins','WAS', as.character(team_home))) |>
  mutate(team_away = ifelse(as.character(team_away) == 'Arizona Cardinals','ARI', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Atlanta Falcons','ATL', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Baltimore Ravens','BAL', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Buffalo Bills','BUF', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Carolina Panthers','CAR', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Chicago Bears','CHI', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Cincinnati Bengals','CIN', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Cleveland Browns','CLE', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Dallas Cowboys','DAL', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Denver Broncos','DEN', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Detroit Lions','DET', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Arizona Cardinals','ARI', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Green Bay Packers','GB', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Houston Oilers','TEN', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Houston Texans','HOU', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Indianapolis Colts','IND', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Jacksonville Jaguars','JAX', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Kansas City Chiefs','KC', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Las Vegas Raiders','LV', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Los Angeles Chargers','LAC', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Los Angeles Raiders','LV', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Los Angeles Rams','LAR', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Miami Dolphins','MIA', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Minnesota Vikings','MIN', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'New England Patriots','NE', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'New Orleans Saints','NO', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'New York Giants','NYG', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'New York Jets','NYJ', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Oakland Raiders','LV', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Philadelphia Eagles','PHI', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Phoenix Cardinals','ARI', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Pittsburgh Steelers','PIT', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'San Diego Chargers','LAC', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'San Francisco 49ers','SF', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Seattle Seahawks','SEA', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'St. Louis Rams','LAR', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Tampa Bay Buccaneers','TB', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Tennessee Titans','TEN', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Tennessee Oilers','TEN', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Washington Commanders','WAS', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Washington Football Team','WAS', as.character(team_away)),
         team_away = ifelse(as.character(team_away) == 'Washington Redskins','WAS', as.character(team_away))) |>
  mutate(team_home_full = str_c(team_home, schedule_season),
         team_away_full = str_c(team_away, schedule_season)) |>
  select(schedule_date, schedule_season, schedule_week, team_home, team_home_full, team_away, team_away_full, score_home, score_away,
         score_total, over_under_line, over_under_diff, over_binary, spread_favorite)

# write df to csv
write.csv(df_totals, 'C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources/totals_cleaned.csv')