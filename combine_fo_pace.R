# dependencies
library(tidyverse)

# working directory
setwd('C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources/football_outsiders/Pace')

# 32 team era
# 2021
df2021pace = read.csv('2021 NFL Pace_Time Stats.csv') # read csv
df2021pace <- df2021pace |>
  mutate(year = 2021) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2021pace$sec_play_total <- as.numeric(df2021pace$sec_play_total)
df2021pace$sec_play_neutral <- as.numeric(df2021pace$sec_play_neutral)
df2021pace <- df2021pace[c(0:32), ] # selecting relevant rows
df2021pace <- df2021pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2020
df2020pace = read.csv('2020 NFL Pace_Time Stats.csv') # read csv
df2020pace <- df2020pace |>
  mutate(year = 2020) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2020pace$sec_play_total <- as.numeric(df2020pace$sec_play_total)
df2020pace$sec_play_neutral <- as.numeric(df2020pace$sec_play_neutral)
df2020pace <- df2020pace[c(0:32), ] # selecting relevant rows
df2020pace <- df2020pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2019
df2019pace = read.csv('2019 NFL Pace_Time Stats.csv') # read csv
df2019pace <- df2019pace |>
  mutate(year = 2019) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2019pace$sec_play_total <- as.numeric(df2019pace$sec_play_total)
df2019pace$sec_play_neutral <- as.numeric(df2019pace$sec_play_neutral)
df2019pace <- df2019pace[c(0:32), ] # selecting relevant rows
df2019pace <- df2019pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2018
df2018pace = read.csv('2018 NFL Pace_Time Stats.csv') # read csv
df2018pace <- df2018pace |>
  mutate(year = 2018) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2018pace$sec_play_total <- as.numeric(df2018pace$sec_play_total)
df2018pace$sec_play_neutral <- as.numeric(df2018pace$sec_play_neutral)
df2018pace <- df2018pace[c(0:32), ] # selecting relevant rows
df2018pace <- df2018pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2017
df2017pace = read.csv('2017 NFL Pace_Time Stats.csv') # read csv
df2017pace <- df2017pace |>
  mutate(year = 2017) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2017pace$sec_play_total <- as.numeric(df2017pace$sec_play_total)
df2017pace$sec_play_neutral <- as.numeric(df2017pace$sec_play_neutral)
df2017pace <- df2017pace[c(0:32), ] # selecting relevant rows
df2017pace <- df2017pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2016
df2016pace = read.csv('2016 NFL Pace_Time Stats.csv') # read csv
df2016pace <- df2016pace |>
  mutate(year = 2016) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2016pace$sec_play_total <- as.numeric(df2016pace$sec_play_total)
df2016pace$sec_play_neutral <- as.numeric(df2016pace$sec_play_neutral)
df2016pace <- df2016pace[c(0:32), ] # selecting relevant rows
df2016pace <- df2016pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2015
df2015pace = read.csv('2015 NFL Pace_Time Stats.csv') # read csv
df2015pace <- df2015pace |>
  mutate(year = 2015) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2015pace$sec_play_total <- as.numeric(df2015pace$sec_play_total)
df2015pace$sec_play_neutral <- as.numeric(df2015pace$sec_play_neutral)
df2015pace <- df2015pace[c(0:32), ] # selecting relevant rows
df2015pace <- df2015pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2014
df2014pace = read.csv('2014 NFL Pace_Time Stats.csv') # read csv
df2014pace <- df2014pace |>
  mutate(year = 2014) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2014pace$sec_play_total <- as.numeric(df2014pace$sec_play_total)
df2014pace$sec_play_neutral <- as.numeric(df2014pace$sec_play_neutral)
df2014pace <- df2014pace[c(0:32), ] # selecting relevant rows
df2014pace <- df2014pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2013
df2013pace = read.csv('2013 NFL Pace_Time Stats.csv') # read csv
df2013pace <- df2013pace |>
  mutate(year = 2013) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2013pace$sec_play_total <- as.numeric(df2013pace$sec_play_total)
df2013pace$sec_play_neutral <- as.numeric(df2013pace$sec_play_neutral)
df2013pace <- df2013pace[c(0:32), ] # selecting relevant rows
df2013pace <- df2013pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2012
df2012pace = read.csv('2012 NFL Pace_Time Stats.csv') # read csv
df2012pace <- df2012pace |>
  mutate(year = 2012) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2012pace$sec_play_total <- as.numeric(df2012pace$sec_play_total)
df2012pace$sec_play_neutral <- as.numeric(df2012pace$sec_play_neutral)
df2012pace <- df2012pace[c(0:32), ] # selecting relevant rows
df2012pace <- df2012pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2011
df2011pace = read.csv('2011 NFL Pace_Time Stats.csv') # read csv
df2011pace <- df2011pace |>
  mutate(year = 2011) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2011pace$sec_play_total <- as.numeric(df2011pace$sec_play_total)
df2011pace$sec_play_neutral <- as.numeric(df2011pace$sec_play_neutral)
df2011pace <- df2011pace[c(0:32), ] # selecting relevant rows
df2011pace <- df2011pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2010
df2010pace = read.csv('2010 NFL Pace_Time Stats.csv') # read csv
df2010pace <- df2010pace |>
  mutate(year = 2010) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2010pace$sec_play_total <- as.numeric(df2010pace$sec_play_total)
df2010pace$sec_play_neutral <- as.numeric(df2010pace$sec_play_neutral)
df2010pace <- df2010pace[c(0:32), ] # selecting relevant rows
df2010pace <- df2010pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2009
df2009pace = read.csv('2009 NFL Pace_Time Stats.csv') # read csv
df2009pace <- df2009pace |>
  mutate(year = 2009) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2009pace$sec_play_total <- as.numeric(df2009pace$sec_play_total)
df2009pace$sec_play_neutral <- as.numeric(df2009pace$sec_play_neutral)
df2009pace <- df2009pace[c(0:32), ] # selecting relevant rows
df2009pace <- df2009pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2008
df2008pace = read.csv('2008 NFL Pace_Time Stats.csv') # read csv
df2008pace <- df2008pace |>
  mutate(year = 2008) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2008pace$sec_play_total <- as.numeric(df2008pace$sec_play_total)
df2008pace$sec_play_neutral <- as.numeric(df2008pace$sec_play_neutral)
df2008pace <- df2008pace[c(0:32), ] # selecting relevant rows
df2008pace <- df2008pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2007
df2007pace = read.csv('2007 NFL Pace_Time Stats.csv') # read csv
df2007pace <- df2007pace |>
  mutate(year = 2007) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2007pace$sec_play_total <- as.numeric(df2007pace$sec_play_total)
df2007pace$sec_play_neutral <- as.numeric(df2007pace$sec_play_neutral)
df2007pace <- df2007pace[c(0:32), ] # selecting relevant rows
df2007pace <- df2007pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2006
df2006pace = read.csv('2006 NFL Pace_Time Stats.csv') # read csv
df2006pace <- df2006pace |>
  mutate(year = 2006) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2006pace$sec_play_total <- as.numeric(df2006pace$sec_play_total)
df2006pace$sec_play_neutral <- as.numeric(df2006pace$sec_play_neutral)
df2006pace <- df2006pace[c(0:32), ] # selecting relevant rows
df2006pace <- df2006pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2005
df2005pace = read.csv('2005 NFL Pace_Time Stats.csv') # read csv
df2005pace <- df2005pace |>
  mutate(year = 2005) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2005pace$sec_play_total <- as.numeric(df2005pace$sec_play_total)
df2005pace$sec_play_neutral <- as.numeric(df2005pace$sec_play_neutral)
df2005pace <- df2005pace[c(0:32), ] # selecting relevant rows
df2005pace <- df2005pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2004
df2004pace = read.csv('2004 NFL Pace_Time Stats.csv') # read csv
df2004pace <- df2004pace |>
  mutate(year = 2004) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2004pace$sec_play_total <- as.numeric(df2004pace$sec_play_total)
df2004pace$sec_play_neutral <- as.numeric(df2004pace$sec_play_neutral)
df2004pace <- df2004pace[c(0:32), ] # selecting relevant rows
df2004pace <- df2004pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2003
df2003pace = read.csv('2003 NFL Pace_Time Stats.csv') # read csv
df2003pace <- df2003pace |>
  mutate(year = 2003) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2003pace$sec_play_total <- as.numeric(df2003pace$sec_play_total)
df2003pace$sec_play_neutral <- as.numeric(df2003pace$sec_play_neutral)
df2003pace <- df2003pace[c(0:32), ] # selecting relevant rows
df2003pace <- df2003pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2002
df2002pace = read.csv('2002 NFL Pace_Time Stats.csv') # read csv
df2002pace <- df2002pace |>
  mutate(year = 2002) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2002pace$sec_play_total <- as.numeric(df2002pace$sec_play_total)
df2002pace$sec_play_neutral <- as.numeric(df2002pace$sec_play_neutral)
df2002pace <- df2002pace[c(0:32), ] # selecting relevant rows
df2002pace <- df2002pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column



# 31 team era
# 2001
df2001pace = read.csv('2001 NFL Pace_Time Stats.csv') # read csv
df2001pace <- df2001pace |>
  mutate(year = 2001) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2001pace$sec_play_total <- as.numeric(df2001pace$sec_play_total)
df2001pace$sec_play_neutral <- as.numeric(df2001pace$sec_play_neutral)
df2001pace <- df2001pace[c(0:31), ] # selecting relevant rows
df2001pace <- df2001pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2001
df2001pace = read.csv('2001 NFL Pace_Time Stats.csv') # read csv
df2001pace <- df2001pace |>
  mutate(year = 2001) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2001pace$sec_play_total <- as.numeric(df2001pace$sec_play_total)
df2001pace$sec_play_neutral <- as.numeric(df2001pace$sec_play_neutral)
df2001pace <- df2001pace[c(0:31), ] # selecting relevant rows
df2001pace <- df2001pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 2000
df2000pace = read.csv('2000 NFL Pace_Time Stats.csv') # read csv
df2000pace <- df2000pace |>
  mutate(year = 2000) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df2000pace$sec_play_total <- as.numeric(df2000pace$sec_play_total)
df2000pace$sec_play_neutral <- as.numeric(df2000pace$sec_play_neutral)
df2000pace <- df2000pace[c(0:31), ] # selecting relevant rows
df2000pace <- df2000pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 1999
df1999pace = read.csv('1999 NFL Pace_Time Stats.csv') # read csv
df1999pace <- df1999pace |>
  mutate(year = 1999) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df1999pace$sec_play_total <- as.numeric(df1999pace$sec_play_total)
df1999pace$sec_play_neutral <- as.numeric(df1999pace$sec_play_neutral)
df1999pace <- df1999pace[c(0:31), ] # selecting relevant rows
df1999pace <- df1999pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column



# 30 team era
# 1998
df1998pace = read.csv('1998 NFL Pace_Time Stats.csv') # read csv
df1998pace <- df1998pace |>
  mutate(year = 1998) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df1998pace$sec_play_total <- as.numeric(df1998pace$sec_play_total)
df1998pace$sec_play_neutral <- as.numeric(df1998pace$sec_play_neutral)
df1998pace <- df1998pace[c(0:30), ] # selecting relevant rows
df1998pace <- df1998pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 1997
df1997pace = read.csv('1997 NFL Pace_Time Stats.csv') # read csv
df1997pace <- df1997pace |>
  mutate(year = 1997) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df1997pace$sec_play_total <- as.numeric(df1997pace$sec_play_total)
df1997pace$sec_play_neutral <- as.numeric(df1997pace$sec_play_neutral)
df1997pace <- df1997pace[c(0:30), ] # selecting relevant rows
df1997pace <- df1997pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 1996
df1996pace = read.csv('1996 NFL Pace_Time Stats.csv') # read csv
df1996pace <- df1996pace |>
  mutate(year = 1996) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df1996pace$sec_play_total <- as.numeric(df1996pace$sec_play_total)
df1996pace$sec_play_neutral <- as.numeric(df1996pace$sec_play_neutral)
df1996pace <- df1996pace[c(0:30), ] # selecting relevant rows
df1996pace <- df1996pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 1995
df1995pace = read.csv('1995 NFL Pace_Time Stats.csv') # read csv
df1995pace <- df1995pace |>
  mutate(year = 1995) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df1995pace$sec_play_total <- as.numeric(df1995pace$sec_play_total)
df1995pace$sec_play_neutral <- as.numeric(df1995pace$sec_play_neutral)
df1995pace <- df1995pace[c(0:30), ] # selecting relevant rows
df1995pace <- df1995pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column



# 28 team era
# 1994
df1994pace = read.csv('1994 NFL Pace_Time Stats.csv') # read csv
df1994pace <- df1994pace |>
  mutate(year = 1994) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df1994pace$sec_play_total <- as.numeric(df1994pace$sec_play_total)
df1994pace$sec_play_neutral <- as.numeric(df1994pace$sec_play_neutral)
df1994pace <- df1994pace[c(0:28), ] # selecting relevant rows
df1994pace <- df1994pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column

# 1993
df1993pace = read.csv('1993 NFL Pace_Time Stats.csv') # read csv
df1993pace <- df1993pace |>
  mutate(year = 1993) |> # creating new column for year
  mutate(team_year = str_c(Team, year)) |> # concatenate team_year code 
  select(Team, year, team_year, Sec.Play.total., Sec.Play.situationneutral.) |> # select relevant columns
  rename(sec_play_total = Sec.Play.total.,
         sec_play_neutral = Sec.Play.situationneutral.) # rename columns
#changing column data types
df1993pace$sec_play_total <- as.numeric(df1993pace$sec_play_total)
df1993pace$sec_play_neutral <- as.numeric(df1993pace$sec_play_neutral)
df1993pace <- df1993pace[c(0:28), ] # selecting relevant rows
df1993pace <- df1993pace |> 
  mutate(sec_play_composite = (sec_play_total + sec_play_neutral)/(2)) # create composite pace column



# combine yearly pace
df_pace <- rbind(df2021pace, df2020pace, df2019pace, df2018pace, df2017pace, df2016pace, df2015pace, 
                 df2014pace, df2013pace, df2012pace, df2011pace, df2010pace, df2009pace, df2008pace,
                 df2007pace, df2006pace, df2005pace, df2004pace, df2003pace, df2002pace, df2001pace,
                 df2000pace, df1999pace, df1998pace, df1997pace, df1996pace, df1995pace, df1994pace,
                 df1994pace)

# write df to csv
write.csv(df_pace, 'C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources/football_outsiders/Pace/cumulative_pace.csv')




# practice attempt function
# pace_load_transform <- function(year_df, year_input) {
#   year_df <- year_df |>
#     mutate(year = year_input) |>
#     mutate(team_year = str_c(Team, year))
# }
# df <-
#   list.files(path = "C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources/football_outsiders/Pace",
#              pattern = "*.csv") |> 
#   map_df(~read_csv(.))
# 
# list_csv_files <- list.files(path = "C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources/football_outsiders/Pace")
# df2 = do.call(rbind, lapply(list_csv_files, function(x) read.csv(x, stringsAsFactors = FALSE)))
# df2
# 
# tbl <-
#   list.files(pattern = "*.csv") %>% 
#   map_df(~read_csv(.))
# 
# data_files <- list.files("C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources/football_outsiders/Pace")
# for(i in 1:length(data_files)) {                              
#   assign(paste0("dfwassup", i),                                   
#          read.csv2(paste0("C:/Users/david/OneDrive/DataScience_BootCamp_22/Module20_FinalProject/Resources/football_outsiders/Pace/",
#                           data_files[i])))
# }
